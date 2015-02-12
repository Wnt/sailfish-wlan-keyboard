#include "http_server.h"
#include "utils.h"
#include <QDebug>
#include <QFile>
#include <qtcpserver.h>
#include <qhttpserver/qhttpserver.h>
#include <qhttpserver/qhttprequest.h>
#include <qhttpserver/qhttpresponse.h>

http_server::http_server(QObject *parent): QObject(parent), m_isRunning(false){
    this->m_server = new QHttpServer(this);
}

http_server:: ~ http_server() {
    if (m_isRunning) {
        stopServer();
    }
    delete(this->m_server);
}

// ---------------------------------------------------
// header http_server
// ---------------------------------------------------

void http_server::startServer(qint16 port) {
    qDebug() << "Starting httpServer on port " << m_server;

    this->m_port = port;
    if (m_server->listen(port)) {

        connect(m_server, SIGNAL(newRequest(QHttpRequest*, QHttpResponse*)),
                this, SLOT(handleRequest(QHttpRequest*, QHttpResponse*)));

        m_isRunning = true;
        emit runningChanged(true);
        qDebug() << "HttpServer successfully started";
    }
    else {
        qDebug() << "Error in starting httpServer, error: " << m_server->getEngine()->errorString();
    }
}

void http_server::stopServer() {
    if (m_isRunning) {
        m_server->close();
        disconnect(m_server, SIGNAL(newRequest(QHttpRequest*, QHttpResponse*)),
                   this, SLOT(handleRequest(QHttpRequest*, QHttpResponse*)));

        m_isRunning = false;
        emit runningChanged(false);
    }
}

bool http_server::isRunning() const{
    return m_isRunning;
}

void http_server::setStaticContent(QString filePath){
    qDebug() << "static content set " << filePath;
    this->m_staticContent = filePath;
}

QString http_server::getStaticContent() {
    return this->m_staticContent;
}

qint16 http_server::getPort() const{
    return this->m_port;
}

QString http_server::getIp() const{
    return Utils::getIpAddress();
}

QString http_server::getFullAddress() const {
    QString addr = "-";
    if (m_isRunning)
        addr = "http://" + getIp() + ":" + QString::number(getPort());

    return addr;
}

void http_server::handleRequest(QHttpRequest *req, QHttpResponse *resp) {
    qDebug() << "handling new request using path: " << req->path()
             << " remoteAddress: " << req->remoteAddress()
             <<  "methodString: " <<req->methodString()
             << " body-size: " << req->body().size();

    QString content;
    QFile file;
    file.setFileName(this->m_staticContent);

    if(file.open(QIODevice::ReadOnly) == 0) {
        content="Error in opening file!";
    }
    else {
        QTextStream in(&file);
        content = in.readAll();
        emit modifyStaticContent(&content);
    }
    resp->setHeader("Content-Length", QString::number(content.size()));
    resp->writeHead(200);
    resp->end(content.toUtf8());
    file.close();
}




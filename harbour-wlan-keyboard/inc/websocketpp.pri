QT       += core gui quick

INCLUDEPATH += \
    $$PWDD \
    $$PWDD/websocketpp

HEADERS += \
    $$PWD/websocketpp/base64/base64.hpp \
    $$PWD/websocketpp/client.hpp \
    $$PWD/websocketpp/close.hpp \
    $$PWD/websocketpp/common/chrono.hpp \
    $$PWD/websocketpp/common/connection_hdl.hpp \
    $$PWD/websocketpp/common/cpp11.hpp \
    $$PWD/websocketpp/common/functional.hpp \
    $$PWD/websocketpp/common/md5.hpp \
    $$PWD/websocketpp/common/memory.hpp \
    $$PWD/websocketpp/common/network.hpp \
    $$PWD/websocketpp/common/platforms.hpp \
    $$PWD/websocketpp/common/random.hpp \
    $$PWD/websocketpp/common/regex.hpp \
    $$PWD/websocketpp/common/stdint.hpp \
    $$PWD/websocketpp/common/system_error.hpp \
    $$PWD/websocketpp/common/thread.hpp \
    $$PWD/websocketpp/concurrency/basic.hpp \
    $$PWD/websocketpp/concurrency/none.hpp \
    $$PWD/websocketpp/config/asio.hpp \
    $$PWD/websocketpp/config/asio_client.hpp \
    $$PWD/websocketpp/config/asio_no_tls.hpp \
    $$PWD/websocketpp/config/asio_no_tls_client.hpp \
    $$PWD/websocketpp/config/boost_config.hpp \
    $$PWD/websocketpp/config/core.hpp \
    $$PWD/websocketpp/config/core_client.hpp \
    $$PWD/websocketpp/config/debug.hpp \
    $$PWD/websocketpp/config/debug_asio.hpp \
    $$PWD/websocketpp/config/debug_asio_no_tls.hpp \
    $$PWD/websocketpp/connection.hpp \
    $$PWD/websocketpp/connection_base.hpp \
    $$PWD/websocketpp/endpoint.hpp \
    $$PWD/websocketpp/endpoint_base.hpp \
    $$PWD/websocketpp/error.hpp \
    $$PWD/websocketpp/error_container.hpp \
    $$PWD/websocketpp/extensions/extension.hpp \
    $$PWD/websocketpp/extensions/permessage_deflate/disabled.hpp \
    $$PWD/websocketpp/extensions/permessage_deflate/enabled.hpp \
    $$PWD/websocketpp/frame.hpp \
    $$PWD/websocketpp/http/constants.hpp \
    $$PWD/websocketpp/http/impl/parser.hpp \
    $$PWD/websocketpp/http/impl/request.hpp \
    $$PWD/websocketpp/http/impl/response.hpp \
    $$PWD/websocketpp/http/parser.hpp \
    $$PWD/websocketpp/http/request.hpp \
    $$PWD/websocketpp/http/response.hpp \
    $$PWD/websocketpp/impl/connection_impl.hpp \
    $$PWD/websocketpp/impl/endpoint_impl.hpp \
    $$PWD/websocketpp/impl/utilities_impl.hpp \
    $$PWD/websocketpp/logger/basic.hpp \
    $$PWD/websocketpp/logger/levels.hpp \
    $$PWD/websocketpp/logger/stub.hpp \
    $$PWD/websocketpp/message_buffer/alloc.hpp \
    $$PWD/websocketpp/message_buffer/message.hpp \
    $$PWD/websocketpp/message_buffer/pool.hpp \
    $$PWD/websocketpp/processors/base.hpp \
    $$PWD/websocketpp/processors/hybi00.hpp \
    $$PWD/websocketpp/processors/hybi07.hpp \
    $$PWD/websocketpp/processors/hybi08.hpp \
    $$PWD/websocketpp/processors/hybi13.hpp \
    $$PWD/websocketpp/processors/processor.hpp \
    $$PWD/websocketpp/random/none.hpp \
    $$PWD/websocketpp/random/random_device.hpp \
    $$PWD/websocketpp/roles/client_endpoint.hpp \
    $$PWD/websocketpp/roles/server_endpoint.hpp \
    $$PWD/websocketpp/server.hpp \
    $$PWD/websocketpp/sha1/sha1.hpp \
    $$PWD/websocketpp/transport/asio/base.hpp \
    $$PWD/websocketpp/transport/asio/connection.hpp \
    $$PWD/websocketpp/transport/asio/endpoint.hpp \
    $$PWD/websocketpp/transport/asio/security/base.hpp \
    $$PWD/websocketpp/transport/asio/security/none.hpp \
    $$PWD/websocketpp/transport/asio/security/tls.hpp \
    $$PWD/websocketpp/transport/base/connection.hpp \
    $$PWD/websocketpp/transport/base/endpoint.hpp \
    $$PWD/websocketpp/transport/iostream/base.hpp \
    $$PWD/websocketpp/transport/iostream/connection.hpp \
    $$PWD/websocketpp/transport/iostream/endpoint.hpp \
    $$PWD/websocketpp/uri.hpp \
    $$PWD/websocketpp/utf8_validator.hpp \
    $$PWD/websocketpp/utilities.hpp \
    $$PWD/websocketpp/version.hpp
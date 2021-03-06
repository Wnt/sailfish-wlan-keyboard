# 
# Do NOT Edit the Auto-generated Part!
# Generated by: spectacle version 0.27
# 

Name:       harbour-wlan-keyboard

# >> macros
# list here all the libraries your RPM installs
%define __requires_exclude ^libqhttpserver|libQtWebsocket.*$
%define __provides_exclude_from ^%{_datadir}/.*$
# << macros

%{!?qtc_qmake:%define qtc_qmake %qmake}
%{!?qtc_qmake5:%define qtc_qmake5 %qmake5}
%{!?qtc_make:%define qtc_make make}
%{?qtc_builddir:%define _builddir %qtc_builddir}
Summary:    The sailfish-wlan-keyboard provides an easy way to use you your computer keyboard to type on your phone.
Version:    0.3.2
Release:    1
Group:      Qt/Qt
License:    GNU GENERAL PUBLIC LICENSE Version 3
URL:        https://github.com/abertschi/sailfish-wlan-keyboard
Source0:    %{name}-%{version}.tar.bz2
Source100:  harbour-wlan-keyboard.yaml
Requires:   sailfishsilica-qt5 >= 0.10.9
BuildRequires:  pkgconfig(sailfishapp) >= 1.0.2
BuildRequires:  pkgconfig(Qt5Core)
BuildRequires:  pkgconfig(Qt5Qml)
BuildRequires:  pkgconfig(Qt5Quick)
BuildRequires:  libsailfishapp-launcher
BuildRequires:  desktop-file-utils

%description
Simply connect your phone to WIFI or USB and browse a website on your computer published by your phone. Keystrokes being entered there are transmitted to your phone and inserted at your cursor position. No hassle any longer with tiny smartphone keyboards or just too big fingers.


%prep
%setup -q -n %{name}-%{version}

# >> setup
# << setup

%build
# >> build pre
# << build pre

%qtc_qmake5 

%qtc_make %{?_smp_mflags}

# >> build post
# << build post

%install
rm -rf %{buildroot}
# >> install pre
# << install pre
%qmake5_install

# >> install post
# << install post

desktop-file-install --delete-original       \
  --dir %{buildroot}%{_datadir}/applications             \
   %{buildroot}%{_datadir}/applications/*.desktop

%files
%defattr(-,root,root,-)
%{_bindir}
%{_datadir}/%{name}
%{_datadir}/applications/%{name}.desktop
%{_datadir}/icons/hicolor/86x86/apps/%{name}.png
# >> files
# << files

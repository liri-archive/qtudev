find_package(Umockdev REQUIRED)

liri_add_test(tst_qtudev
    SOURCES
        tst_udev.cpp
    DEFINES
        QT_NO_KEYWORDS
    LIBRARIES
        Liri::Qt5Udev
        PkgConfig::Umockdev
)

import qbs 1.0

QtApplication {
    name: "tst_qtudev"
    type: base.concat(["autotest"])
    condition: project.autotestEnabled

    Depends { name: "lirideployment" }
    Depends {
        name: "Qt"
        submodules: ["gui", "testlib"]
        versionAtLeast: project.minimumQtVersion
    }
    Depends { name: "Qt5Udev" }
    Depends { name: "umockdev" }

    Qt.core.enableKeywords: false

    files: ["*.cpp"]
}

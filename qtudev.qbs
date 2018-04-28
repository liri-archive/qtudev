import qbs 1.0

Project {
    name: "QtUDev"

    readonly property string version: "1.0.0"
    readonly property var versionParts: version.split('.').map(function(part) { return parseInt(part); })

    readonly property string minimumQtVersion: "5.8.0"

    property bool useStaticAnalyzer: false

    property bool autotestEnabled: false
    property stringList autotestArguments: []
    property stringList autotestWrapper: []

    condition: qbs.targetOS.contains("linux") && !qbs.targetOS.contains("android")

    minimumQbsVersion: "1.9.0"

    qbsSearchPaths: ["qbs"]

    references: [
        "src/deployment.qbs",
        "src/udev/udev.qbs",
        "tests/auto/auto.qbs",
    ]
}

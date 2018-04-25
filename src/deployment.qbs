import qbs 1.0

Project {
    name: "Deployment"

    InstallPackage {
        name: "qtudev-artifacts"
        targetName: name
        builtByDefault: false

        archiver.type: "tar"
        archiver.outputDirectory: project.buildDirectory

        Depends { name: "Qt5Udev" }
        Depends { name: "Qt5Udev-pkgconfig" }
        Depends { name: "Qt5Udev-qbs" }
        Depends { productTypes: ["installable"] }
    }
}

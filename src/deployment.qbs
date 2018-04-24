import qbs 1.0

Project {
    name: "Deployment"

    InstallPackage {
        name: "qtudev-artifacts"
        targetName: name
        builtByDefault: false

        archiver.type: "tar"
        archiver.outputDirectory: project.buildDirectory

        Depends { name: "Qt5UDev" }
        Depends { name: "Qt5UDev-pkgconfig" }
        Depends { name: "Qt5UDev-qbs" }
        Depends { productTypes: ["installable"] }
    }
}

import qbs 1.0

Project {
    name: "Autotests"

    references: [
        "udev/udev.qbs",
    ]

    AutotestRunner {
        Depends { name: "lirideployment" }

        builtByDefault: project.autotestEnabled
        name: "qtudev-autotest"
        arguments: project.autotestArguments
        wrapper: project.autotestWrapper
        environment: {
            var env = base;
            env.push("LD_LIBRARY_PATH=" + FileInfo.joinPaths(qbs.installRoot, qbs.installPrefix, lirideployment.libDir));
            return env;
        }
    }
}

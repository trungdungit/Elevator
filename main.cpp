#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "elevator.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    //create event loop
    QGuiApplication app(argc, argv);
    //access C++ components to qml
    qmlRegisterType<Elevator>("io.dev.qt", 1, 0, "Elevator");
    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    //load file main.qml
    engine.load(url);

    return app.exec();
}

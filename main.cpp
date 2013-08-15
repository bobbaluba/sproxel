#include "MainWindow.h"
#include "ImportExport.h"
#include "script.h"
#include "ConsoleWidget.h"
#include "pyConsole.h"

#include <QtGui>
#include <QApplication>


MainWindow *main_window=NULL;


int main(int argc, char *argv[])
{
    QString filename = "";
    if (argc > 1)
        filename = argv[1];

    QApplication a(argc, argv);

    register_builtin_importers_exporters();

#ifdef SPROXEL_USE_PYTHON
#ifndef _WIN32
    init_script(argc>=1 ? argv[0] : "sproxel");
#else
    init_script(argc>=1 ? argv[0] : "sproxel.exe");
#endif
#endif

    MainWindow window(filename);
    main_window=&window;
    window.show();

#ifdef SPROXEL_USE_PYTHON
    script_set_main_window(&window);
    scan_plugins();
    register_plugins();
    //get_python_console_widget()->toggleViewAction()->setChecked(true);
#endif

    int r=a.exec();
#ifdef SPROXEL_USE_PYTHON
    unregister_plugins();
    close_script();
#endif
    main_window=NULL;
    return r;
}

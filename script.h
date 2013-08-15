#ifndef __SPROXEL_SCRIPT_H__
#define __SPROXEL_SCRIPT_H__

#ifdef SPROXEL_USE_PYTHON

#if defined(__APPLE__)
#include <Python/Python.h>
#else
#  include <Python.h>
#endif


void init_script(const char *exe_path);
void close_script();

void script_set_main_window(class MainWindow *);

void scan_plugins();
void register_plugins();
void unregister_plugins();

bool run_script(const class QString &filename);


extern class QDir exe_dir;

extern PyObject *py_save_project, *py_load_project;


PyObject* qstr_to_py(const QString &str);

bool py_to_qstr(PyObject *o, QString &str);

#endif
#endif

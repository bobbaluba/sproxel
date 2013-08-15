#-------------------------------------------------
#
# SPROXEL sprite-ish voxel editor
#
#-------------------------------------------------

QT       += core gui opengl

#LIBS += -lpython
#DEFINES += SPROXEL_USE_PYTHON

TARGET = sproxel
TEMPLATE = app

unix:!macx {
  INCLUDEPATH += Imath
  CONFIG += link_pkgconfig
  PKGCONFIG += glu python2
  QMAKE_CXXFLAGS += -std=c++0x
  DEFINES += SPROXEL_USE_PYTHON
}

macx {
  INCLUDEPATH += Imath
  ICON = sproxel.icns
}

win32 {
  INCLUDEPATH += Imath
  DEFINES += NOMINMAX
  QMAKE_CXXFLAGS += -wd4996
  RC_FILE = sproxel.rc
}

SOURCES += \
    GLCamera.cpp \
    GLModelWidget.cpp \
    MainWindow.cpp \
    main.cpp \
    NewGridDialog.cpp \
    PreferencesDialog.cpp \
    PaletteWidget.cpp \
    LayersWidget.cpp \
    ProjectWidget.cpp \
    Tools.cpp \
    UndoManager.cpp \
    ImportExport.cpp \
    SproxelProject.cpp \
    script.cpp \
    pyConsole.cpp \
    pyBindings.cpp \
    pyImportExport.cpp \
    Imath/ImathVec.cpp \
    Imath/ImathShear.cpp \
    Imath/ImathRandom.cpp \
    Imath/ImathMatrixAlgo.cpp \
    Imath/ImathFun.cpp \
    Imath/ImathColorAlgo.cpp \
    Imath/ImathBox.cpp \
    Imath/IexBaseExc.cpp

HEADERS  += \
    Foundation.h \
    GLCamera.h \
    GLModelWidget.h \
    GameVoxelGrid.h \
    VoxelGridGroup.h \
    SproxelProject.h \
    MainWindow.h \
    NewGridDialog.h \
    PreferencesDialog.h \
    PaletteWidget.h \
    LayersWidget.h \
    ProjectWidget.h \
    Tools.h \
    UndoManager.h \
    ImportExport.h \
    script.h \
    pyConsole.h \
    pyBindings.h \
    ConsoleWidget.h \
    Imath/ImathVecAlgo.h \
    Imath/ImathVec.h \
    Imath/ImathSphere.h \
    Imath/ImathShear.h \
    Imath/ImathRoots.h \
    Imath/ImathRandom.h \
    Imath/ImathQuat.h \
    Imath/ImathPlatform.h \
    Imath/ImathPlane.h \
    Imath/ImathMatrixAlgo.h \
    Imath/ImathMatrix.h \
    Imath/ImathMath.h \
    Imath/ImathLineAlgo.h \
    Imath/ImathLine.h \
    Imath/ImathLimits.h \
    Imath/ImathInterval.h \
    Imath/ImathInt64.h \
    Imath/ImathHalfLimits.h \
    Imath/ImathGLU.h \
    Imath/ImathGL.h \
    Imath/ImathFun.h \
    Imath/ImathFrustum.h \
    Imath/ImathFrame.h \
    Imath/ImathExc.h \
    Imath/ImathEuler.h \
    Imath/ImathColorAlgo.h \
    Imath/ImathColor.h \
    Imath/ImathBoxAlgo.h \
    Imath/ImathBox.h \
    Imath/IexBaseExc.h \
    Imath/half.h

FORMS += \
    NewGridDialog.ui

RESOURCES += \
    sproxel.qrc

#include "translation.h"

Translation::Translation( /*QGuiApplication *app,*/ QObject *parent)
    : QObject(parent)
{
    translator1.load(":/translator/string_us.qm");
    translator2.load(":/translator/string_vn.qm");
    m_app->installTranslator(&translator1);
}

QString Translation::getEmptyString()
{
    return "";
}

QString Translation::currentLanguage()
{
    return m_currentLanguage;
}

void Translation::setCurrentLanguage(QString language)
{
    if (0 == language.compare("VN"))
        m_app->installTranslator(&translator2);
    else
        m_app->installTranslator(&translator1);

    m_currentLanguage = language;
    emit languageChanged();
}

void Translation::selectLanguage(QString language)
{
    setCurrentLanguage(language);
}

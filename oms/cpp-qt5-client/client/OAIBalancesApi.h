/**
 * OMS - REST API ...@
 * OMS Project
 *
 * The version of the OpenAPI document: v1
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#ifndef OAI_OAIBalancesApi_H
#define OAI_OAIBalancesApi_H

#include "OAIHttpRequest.h"

#include "OAIBalance.h"
#include <QString>

#include <QObject>

namespace OpenAPI {

class OAIBalancesApi : public QObject {
    Q_OBJECT

public:
    OAIBalancesApi(const QString &scheme = "http", const QString &host = "localhost", int port = 3001, const QString &basePath = "", const int timeOut = 0);
    ~OAIBalancesApi();

    void setScheme(const QString &scheme);
    void setHost(const QString &host);
    void setPort(int port);
    void setBasePath(const QString &basePath);
    void setTimeOut(const int timeOut);
    void setWorkingDirectory(const QString &path);
    void addHeaders(const QString &key, const QString &value);
    void enableRequestCompression();
    void enableResponseCompression();
    void abortRequests();

    void v1BalancesGet(const QString &exchange_id);

private:
    QString _scheme, _host;
    int _port;
    QString _basePath;
    int _timeOut;
    QString _workingDirectory;
    QMap<QString, QString> defaultHeaders;
    bool isResponseCompressionEnabled;
    bool isRequestCompressionEnabled;

    void v1BalancesGetCallback(OAIHttpRequestWorker *worker);

signals:

    void v1BalancesGetSignal(QList<OAIBalance> summary);

    void v1BalancesGetSignalFull(OAIHttpRequestWorker *worker, QList<OAIBalance> summary);

    void v1BalancesGetSignalE(QList<OAIBalance> summary, QNetworkReply::NetworkError error_type, QString error_str);

    void v1BalancesGetSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);

    void abortRequestsSignal(); 
};

} // namespace OpenAPI
#endif

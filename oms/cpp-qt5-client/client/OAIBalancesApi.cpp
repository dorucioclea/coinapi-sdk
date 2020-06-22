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

#include "OAIBalancesApi.h"
#include "OAIHelpers.h"

#include <QJsonArray>
#include <QJsonDocument>

namespace OpenAPI {

OAIBalancesApi::OAIBalancesApi(const QString &scheme, const QString &host, int port, const QString &basePath, const int timeOut)
    : _scheme(scheme),
      _host(host),
      _port(port),
      _basePath(basePath),
      _timeOut(timeOut),
      isResponseCompressionEnabled(false),
      isRequestCompressionEnabled(false) {}

OAIBalancesApi::~OAIBalancesApi() {
}

void OAIBalancesApi::setScheme(const QString &scheme) {
    _scheme = scheme;
}

void OAIBalancesApi::setHost(const QString &host) {
    _host = host;
}

void OAIBalancesApi::setPort(int port) {
    _port = port;
}

void OAIBalancesApi::setBasePath(const QString &basePath) {
    _basePath = basePath;
}

void OAIBalancesApi::setTimeOut(const int timeOut) {
    _timeOut = timeOut;
}

void OAIBalancesApi::setWorkingDirectory(const QString &path) {
    _workingDirectory = path;
}

void OAIBalancesApi::addHeaders(const QString &key, const QString &value) {
    defaultHeaders.insert(key, value);
}

void OAIBalancesApi::enableRequestCompression() {
    isRequestCompressionEnabled = true;
}

void OAIBalancesApi::enableResponseCompression() {
    isResponseCompressionEnabled = true;
}

void OAIBalancesApi::abortRequests(){
    emit abortRequestsSignal();
}

void OAIBalancesApi::v1BalancesGet(const QString &exchange_id) {
    QString fullPath = QString("%1://%2%3%4%5")
                           .arg(_scheme)
                           .arg(_host)
                           .arg(_port ? ":" + QString::number(_port) : "")
                           .arg(_basePath)
                           .arg("/v1/balances");

    if (fullPath.indexOf("?") > 0)
        fullPath.append("&");
    else
        fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("exchange_id")).append("=").append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(exchange_id)));

    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker(this);
    worker->setTimeOut(_timeOut);
    worker->setWorkingDirectory(_workingDirectory);
    OAIHttpRequestInput input(fullPath, "GET");

    foreach (QString key, this->defaultHeaders.keys()) { input.headers.insert(key, this->defaultHeaders.value(key)); }

    connect(worker, &OAIHttpRequestWorker::on_execution_finished, this, &OAIBalancesApi::v1BalancesGetCallback);
    connect(this, &OAIBalancesApi::abortRequestsSignal, worker, &QObject::deleteLater); 
    worker->execute(&input);
}

void OAIBalancesApi::v1BalancesGetCallback(OAIHttpRequestWorker *worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    } else {
        msg = "Error: " + worker->error_str;
        error_str = QString("%1, %2").arg(worker->error_str).arg(QString(worker->response));
    }
    QList<OAIBalance> output;
    QString json(worker->response);
    QByteArray array(json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonArray jsonArray = doc.array();
    foreach (QJsonValue obj, jsonArray) {
        OAIBalance val;
        ::OpenAPI::fromJsonValue(val, obj);
        output.append(val);
    }
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit v1BalancesGetSignal(output);
        emit v1BalancesGetSignalFull(worker, output);
    } else {
        emit v1BalancesGetSignalE(output, error_type, error_str);
        emit v1BalancesGetSignalEFull(worker, error_type, error_str);
    }
}

} // namespace OpenAPI

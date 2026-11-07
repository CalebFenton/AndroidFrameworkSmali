.class public Landroid/app/appsearch/aidl/IAppSearchManager$Default;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/app/appsearch/aidl/IAppSearchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/aidl/IAppSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public blacklist commitBlob(Landroid/app/appsearch/aidl/CommitBlobAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist getDocuments(Landroid/app/appsearch/aidl/GetDocumentsAidlRequest;Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist getNamespaces(Landroid/app/appsearch/aidl/GetNamespacesAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist getNextPage(Landroid/app/appsearch/aidl/GetNextPageAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist getSchema(Landroid/app/appsearch/aidl/GetSchemaAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist getStorageInfo(Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist globalSearch(Landroid/app/appsearch/aidl/GlobalSearchAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist initialize(Landroid/app/appsearch/aidl/InitializeAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist invalidateNextPageToken(Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist openBlobForRead(Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist openBlobForWrite(Landroid/app/appsearch/aidl/OpenBlobForWriteAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist persistToDisk(Landroid/app/appsearch/aidl/PersistToDiskAidlRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist putDocuments(Landroid/app/appsearch/aidl/PutDocumentsAidlRequest;Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist putDocumentsFromFile(Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist registerObserverCallback(Landroid/app/appsearch/aidl/RegisterObserverCallbackAidlRequest;Landroid/app/appsearch/aidl/IAppSearchObserverProxy;)Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public blacklist removeBlob(Landroid/app/appsearch/aidl/RemoveBlobAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist removeByDocumentId(Landroid/app/appsearch/aidl/RemoveByDocumentIdAidlRequest;Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist removeByQuery(Landroid/app/appsearch/aidl/RemoveByQueryAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist reportUsage(Landroid/app/appsearch/aidl/ReportUsageAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist search(Landroid/app/appsearch/aidl/SearchAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist searchSuggestion(Landroid/app/appsearch/aidl/SearchSuggestionAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist setBlobVisibility(Landroid/app/appsearch/aidl/SetBlobVisibilityAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist setSchema(Landroid/app/appsearch/aidl/SetSchemaAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public blacklist unregisterObserverCallback(Landroid/app/appsearch/aidl/UnregisterObserverCallbackAidlRequest;Landroid/app/appsearch/aidl/IAppSearchObserverProxy;)Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public blacklist writeSearchResultsToFile(Landroid/app/appsearch/aidl/WriteSearchResultsToFileAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

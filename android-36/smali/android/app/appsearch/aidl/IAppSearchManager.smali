.class public interface abstract Landroid/app/appsearch/aidl/IAppSearchManager;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/aidl/IAppSearchManager$Stub;,
        Landroid/app/appsearch/aidl/IAppSearchManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.appsearch.aidl.IAppSearchManager"


# virtual methods
.method public abstract blacklist commitBlob(Landroid/app/appsearch/aidl/CommitBlobAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDocuments(Landroid/app/appsearch/aidl/GetDocumentsAidlRequest;Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getNamespaces(Landroid/app/appsearch/aidl/GetNamespacesAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getNextPage(Landroid/app/appsearch/aidl/GetNextPageAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSchema(Landroid/app/appsearch/aidl/GetSchemaAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getStorageInfo(Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist globalSearch(Landroid/app/appsearch/aidl/GlobalSearchAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist initialize(Landroid/app/appsearch/aidl/InitializeAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist invalidateNextPageToken(Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist openBlobForRead(Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist openBlobForWrite(Landroid/app/appsearch/aidl/OpenBlobForWriteAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist persistToDisk(Landroid/app/appsearch/aidl/PersistToDiskAidlRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist putDocuments(Landroid/app/appsearch/aidl/PutDocumentsAidlRequest;Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist putDocumentsFromFile(Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerObserverCallback(Landroid/app/appsearch/aidl/RegisterObserverCallbackAidlRequest;Landroid/app/appsearch/aidl/IAppSearchObserverProxy;)Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeBlob(Landroid/app/appsearch/aidl/RemoveBlobAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeByDocumentId(Landroid/app/appsearch/aidl/RemoveByDocumentIdAidlRequest;Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeByQuery(Landroid/app/appsearch/aidl/RemoveByQueryAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist reportUsage(Landroid/app/appsearch/aidl/ReportUsageAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist search(Landroid/app/appsearch/aidl/SearchAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist searchSuggestion(Landroid/app/appsearch/aidl/SearchSuggestionAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setBlobVisibility(Landroid/app/appsearch/aidl/SetBlobVisibilityAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setSchema(Landroid/app/appsearch/aidl/SetSchemaAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterObserverCallback(Landroid/app/appsearch/aidl/UnregisterObserverCallbackAidlRequest;Landroid/app/appsearch/aidl/IAppSearchObserverProxy;)Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist writeSearchResultsToFile(Landroid/app/appsearch/aidl/WriteSearchResultsToFileAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

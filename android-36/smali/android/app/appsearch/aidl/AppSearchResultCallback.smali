.class public abstract Landroid/app/appsearch/aidl/AppSearchResultCallback;
.super Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract blacklist onResult(Landroid/app/appsearch/AppSearchResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;)V"
        }
    .end annotation
.end method

.method public blacklist onResult(Landroid/app/appsearch/aidl/AppSearchResultParcel;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/appsearch/aidl/AppSearchResultParcel;->getResult()Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/aidl/AppSearchResultCallback;->onResult(Landroid/app/appsearch/AppSearchResult;)V

    return-void
.end method

.method public blacklist onResultV2(Landroid/app/appsearch/aidl/AppSearchResultParcelV2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->getResult()Landroid/app/appsearch/AppSearchResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/appsearch/aidl/AppSearchResultCallback;->onResult(Landroid/app/appsearch/AppSearchResult;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

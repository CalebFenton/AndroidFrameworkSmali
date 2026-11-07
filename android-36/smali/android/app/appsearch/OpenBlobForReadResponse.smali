.class public final Landroid/app/appsearch/OpenBlobForReadResponse;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/OpenBlobForReadResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mResultParcel:Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/OpenBlobForReadResponseCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/OpenBlobForReadResponseCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/OpenBlobForReadResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/appsearch/AppSearchBatchResult;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->fromBlobHandleToPfd(Landroid/app/appsearch/AppSearchBatchResult;)Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/appsearch/OpenBlobForReadResponse;-><init>(Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/app/appsearch/OpenBlobForReadResponse;->mResultParcel:Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/OpenBlobForReadResponse;->mResultParcel:Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->getResult()Landroid/app/appsearch/AppSearchBatchResult;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->getSuccesses()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :catch_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_22

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 30
    .line 31
    :try_start_1e
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_12

    .line 32
    .line 33
    .line 34
    goto :goto_12

    .line 35
    :cond_22
    return-void
.end method

.method public whitelist getResult()Landroid/app/appsearch/AppSearchBatchResult;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/OpenBlobForReadResponse;->mResultParcel:Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->getResult()Landroid/app/appsearch/AppSearchBatchResult;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/OpenBlobForReadResponseCreator;->writeToParcel(Landroid/app/appsearch/OpenBlobForReadResponse;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

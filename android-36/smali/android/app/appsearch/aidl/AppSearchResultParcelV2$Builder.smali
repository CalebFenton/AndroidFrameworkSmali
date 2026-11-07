.class final Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/aidl/AppSearchResultParcelV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mCommitBlobResponse:Landroid/app/appsearch/CommitBlobResponse;

.field private blacklist mErrorMessage:Ljava/lang/String;

.field private blacklist mOpenBlobForReadResponse:Landroid/app/appsearch/OpenBlobForReadResponse;

.field private blacklist mOpenBlobForWriteResponse:Landroid/app/appsearch/OpenBlobForWriteResponse;

.field private blacklist mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private blacklist mRemoveBlobResponse:Landroid/app/appsearch/RemoveBlobResponse;

.field private final blacklist mResultCode:I

.field private final blacklist mWriteParcelMode:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->mWriteParcelMode:I

    .line 5
    .line 6
    iput p2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->mResultCode:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method blacklist build()Landroid/app/appsearch/aidl/AppSearchResultParcelV2;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/appsearch/aidl/AppSearchResultParcelV2<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    .line 2
    .line 3
    iget v1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->mWriteParcelMode:I

    .line 4
    .line 5
    iget v2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->mResultCode:I

    .line 6
    .line 7
    iget-object v3, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->mErrorMessage:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    iget-object v5, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->mOpenBlobForWriteResponse:Landroid/app/appsearch/OpenBlobForWriteResponse;

    .line 12
    .line 13
    iget-object v6, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->mCommitBlobResponse:Landroid/app/appsearch/CommitBlobResponse;

    .line 14
    .line 15
    iget-object v7, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->mOpenBlobForReadResponse:Landroid/app/appsearch/OpenBlobForReadResponse;

    .line 16
    .line 17
    iget-object v8, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->mRemoveBlobResponse:Landroid/app/appsearch/RemoveBlobResponse;

    .line 18
    .line 19
    invoke-direct/range {v0 .. v8}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;-><init>(IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/appsearch/OpenBlobForWriteResponse;Landroid/app/appsearch/CommitBlobResponse;Landroid/app/appsearch/OpenBlobForReadResponse;Landroid/app/appsearch/RemoveBlobResponse;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method blacklist setCommitBlobResponse(Landroid/app/appsearch/CommitBlobResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/CommitBlobResponse;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->mCommitBlobResponse:Landroid/app/appsearch/CommitBlobResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method blacklist setErrorMessage(Ljava/lang/String;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->mErrorMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method blacklist setOpenBlobForReadResponse(Landroid/app/appsearch/OpenBlobForReadResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/OpenBlobForReadResponse;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->mOpenBlobForReadResponse:Landroid/app/appsearch/OpenBlobForReadResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method blacklist setOpenBlobForWriteResponse(Landroid/app/appsearch/OpenBlobForWriteResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/OpenBlobForWriteResponse;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->mOpenBlobForWriteResponse:Landroid/app/appsearch/OpenBlobForWriteResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method blacklist setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method blacklist setRemoveBlobResponse(Landroid/app/appsearch/RemoveBlobResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/RemoveBlobResponse;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->mRemoveBlobResponse:Landroid/app/appsearch/RemoveBlobResponse;

    .line 2
    .line 3
    return-object p0
.end method

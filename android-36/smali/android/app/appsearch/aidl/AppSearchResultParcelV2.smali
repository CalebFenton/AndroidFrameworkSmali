.class public final Landroid/app/appsearch/aidl/AppSearchResultParcelV2;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/aidl/AppSearchResultParcelV2;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CREATOR_WITHOUT_BLOB:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/aidl/AppSearchResultParcelV2;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "AppSearchResultParcelV2"


# instance fields
.field blacklist mCommitBlobResponse:Landroid/app/appsearch/CommitBlobResponse;

.field blacklist mErrorMessage:Ljava/lang/String;

.field blacklist mOpenBlobForReadResponse:Landroid/app/appsearch/OpenBlobForReadResponse;

.field blacklist mOpenBlobForWriteResponse:Landroid/app/appsearch/OpenBlobForWriteResponse;

.field blacklist mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field blacklist mRemoveBlobResponse:Landroid/app/appsearch/RemoveBlobResponse;

.field blacklist mResultCached:Landroid/app/appsearch/AppSearchResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;"
        }
    .end annotation
.end field

.field blacklist mResultCode:I

.field blacklist mWriteParcelMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2Creator;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2Creator;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->CREATOR_WITHOUT_BLOB:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    return-void
.end method

.method constructor blacklist <init>(IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/appsearch/OpenBlobForWriteResponse;Landroid/app/appsearch/CommitBlobResponse;Landroid/app/appsearch/OpenBlobForReadResponse;Landroid/app/appsearch/RemoveBlobResponse;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mWriteParcelMode:I

    .line 3
    iput p2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mResultCode:I

    .line 4
    iput-object p3, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mErrorMessage:Ljava/lang/String;

    if-nez p2, :cond_4a

    .line 5
    iput-object p4, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 6
    iput-object p5, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mOpenBlobForWriteResponse:Landroid/app/appsearch/OpenBlobForWriteResponse;

    .line 7
    iput-object p6, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mCommitBlobResponse:Landroid/app/appsearch/CommitBlobResponse;

    .line 8
    iput-object p7, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mOpenBlobForReadResponse:Landroid/app/appsearch/OpenBlobForReadResponse;

    .line 9
    iput-object p8, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mRemoveBlobResponse:Landroid/app/appsearch/RemoveBlobResponse;

    if-eqz p4, :cond_1e

    .line 10
    invoke-static {p4}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void

    :cond_1e
    if-eqz p5, :cond_27

    .line 11
    invoke-static {p5}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void

    :cond_27
    if-eqz p6, :cond_30

    .line 12
    invoke-static {p6}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void

    :cond_30
    if-eqz p7, :cond_39

    .line 13
    invoke-static {p7}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void

    :cond_39
    if-eqz p8, :cond_42

    .line 14
    invoke-static {p8}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void

    :cond_42
    const/4 p1, 0x0

    .line 15
    invoke-static {p1}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void

    .line 16
    :cond_4a
    invoke-static {p2, p3}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(ILjava/lang/String;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void
.end method

.method static blacklist directlyReadFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcelV2<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->CREATOR_WITHOUT_BLOB:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    .line 8
    .line 9
    return-object p0
.end method

.method static blacklist directlyWriteToParcel(Landroid/app/appsearch/aidl/AppSearchResultParcelV2;Landroid/os/Parcel;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/aidl/AppSearchResultParcelV2<",
            "*>;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2Creator;->writeToParcel(Landroid/app/appsearch/aidl/AppSearchResultParcelV2;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static blacklist fromCommitBlobResponseParcel(Landroid/app/appsearch/CommitBlobResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/CommitBlobResponse;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcelV2<",
            "Landroid/app/appsearch/CommitBlobResponse;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->setCommitBlobResponse(Landroid/app/appsearch/CommitBlobResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static blacklist fromFailedResult(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1d

    .line 6
    .line 7
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-direct {v0, v1, v2}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;-><init>(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->setErrorMessage(Ljava/lang/String;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "Creating a failed AppSearchResultParcelV2 from a successful response"

    .line 33
    .line 34
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public static blacklist fromOpenBlobForReadResponse(Landroid/app/appsearch/OpenBlobForReadResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/OpenBlobForReadResponse;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcelV2<",
            "Landroid/app/appsearch/OpenBlobForReadResponse;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->setOpenBlobForReadResponse(Landroid/app/appsearch/OpenBlobForReadResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static blacklist fromOpenBlobForWriteResponse(Landroid/app/appsearch/OpenBlobForWriteResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/OpenBlobForWriteResponse;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcelV2<",
            "Landroid/app/appsearch/OpenBlobForWriteResponse;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->setOpenBlobForWriteResponse(Landroid/app/appsearch/OpenBlobForWriteResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static blacklist fromParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcelV2<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static blacklist fromRemoveBlobResponseParcel(Landroid/app/appsearch/RemoveBlobResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/RemoveBlobResponse;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcelV2<",
            "Landroid/app/appsearch/RemoveBlobResponse;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->setRemoveBlobResponse(Landroid/app/appsearch/RemoveBlobResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static blacklist fromVoid()Landroid/app/appsearch/aidl/AppSearchResultParcelV2;
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method


# virtual methods
.method public blacklist getResult()Landroid/app/appsearch/AppSearchResult;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    iget v0, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mWriteParcelMode:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mWriteParcelMode:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_28

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v0, v2, :cond_12

    .line 13
    .line 14
    or-int/2addr p2, v1

    .line 15
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->directlyWriteToParcel(Landroid/app/appsearch/aidl/AppSearchResultParcelV2;Landroid/os/Parcel;I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "Cannot write AppSearchResultParcelV2 to Parcel with unknown model: "

    .line 24
    .line 25
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget p0, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mWriteParcelMode:I

    .line 29
    .line 30
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_28
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :try_start_2c
    invoke-static {p0, v0, p2}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->directlyWriteToParcel(Landroid/app/appsearch/aidl/AppSearchResultParcelV2;Landroid/os/Parcel;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 49
    .line 50
    .line 51
    move-result-object p0
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3a

    .line 52
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p0}, Landroid/app/appsearch/ParcelableUtil;->writeBlob(Landroid/os/Parcel;[B)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_3a
    move-exception p0

    .line 60
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

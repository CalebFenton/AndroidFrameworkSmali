.class public final Landroid/app/appsearch/CommitBlobResponse;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/CommitBlobResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mResultParcel:Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/CommitBlobResponseCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/CommitBlobResponseCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/CommitBlobResponse;->CREATOR:Landroid/os/Parcelable$Creator;

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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->fromBlobHandleToVoid(Landroid/app/appsearch/AppSearchBatchResult;)Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/appsearch/CommitBlobResponse;-><init>(Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/app/appsearch/CommitBlobResponse;->mResultParcel:Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;

    return-void
.end method


# virtual methods
.method public blacklist getResponseParcel()Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/CommitBlobResponse;->mResultParcel:Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getResult()Landroid/app/appsearch/AppSearchBatchResult;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/CommitBlobResponse;->mResultParcel:Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;

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
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/CommitBlobResponseCreator;->writeToParcel(Landroid/app/appsearch/CommitBlobResponse;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

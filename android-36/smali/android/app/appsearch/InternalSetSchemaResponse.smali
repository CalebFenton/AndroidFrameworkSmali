.class public Landroid/app/appsearch/InternalSetSchemaResponse;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/InternalSetSchemaResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mErrorMessage:Ljava/lang/String;

.field private final blacklist mIsSuccess:Z

.field private final blacklist mSetSchemaResponse:Landroid/app/appsearch/SetSchemaResponse;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/InternalSetSchemaResponseCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/InternalSetSchemaResponseCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/InternalSetSchemaResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor blacklist <init>(ZLandroid/app/appsearch/SetSchemaResponse;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-boolean p1, p0, Landroid/app/appsearch/InternalSetSchemaResponse;->mIsSuccess:Z

    .line 8
    .line 9
    iput-object p2, p0, Landroid/app/appsearch/InternalSetSchemaResponse;->mSetSchemaResponse:Landroid/app/appsearch/SetSchemaResponse;

    .line 10
    .line 11
    iput-object p3, p0, Landroid/app/appsearch/InternalSetSchemaResponse;->mErrorMessage:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static blacklist newFailedSetSchemaResponse(Landroid/app/appsearch/SetSchemaResponse;Ljava/lang/String;)Landroid/app/appsearch/InternalSetSchemaResponse;
    .registers 4

    .line 1
    new-instance v0, Landroid/app/appsearch/InternalSetSchemaResponse;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p0, p1}, Landroid/app/appsearch/InternalSetSchemaResponse;-><init>(ZLandroid/app/appsearch/SetSchemaResponse;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static blacklist newSuccessfulSetSchemaResponse(Landroid/app/appsearch/SetSchemaResponse;)Landroid/app/appsearch/InternalSetSchemaResponse;
    .registers 4

    .line 1
    new-instance v0, Landroid/app/appsearch/InternalSetSchemaResponse;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, p0, v2}, Landroid/app/appsearch/InternalSetSchemaResponse;-><init>(ZLandroid/app/appsearch/SetSchemaResponse;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public blacklist getErrorMessage()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/InternalSetSchemaResponse;->mErrorMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getSetSchemaResponse()Landroid/app/appsearch/SetSchemaResponse;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/InternalSetSchemaResponse;->mSetSchemaResponse:Landroid/app/appsearch/SetSchemaResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist isSuccess()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroid/app/appsearch/InternalSetSchemaResponse;->mIsSuccess:Z

    .line 2
    .line 3
    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/InternalSetSchemaResponseCreator;->writeToParcel(Landroid/app/appsearch/InternalSetSchemaResponse;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

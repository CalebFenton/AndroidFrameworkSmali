.class public Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/SetSchemaResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MigrationFailure"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDocumentId:Ljava/lang/String;

.field final blacklist mErrorMessage:Ljava/lang/String;

.field private final blacklist mNamespace:Ljava/lang/String;

.field final blacklist mResultCode:I

.field private final blacklist mSchemaType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/MigrationFailureCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/MigrationFailureCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/AppSearchResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/AppSearchResult<",
            "*>;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 8
    iput-object p1, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mNamespace:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mDocumentId:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mSchemaType:Ljava/lang/String;

    .line 11
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p4}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "failedResult was actually successful"

    .line 13
    invoke-static {p1, p2}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 14
    invoke-virtual {p4}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mErrorMessage:Ljava/lang/String;

    .line 15
    invoke-virtual {p4}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    move-result p1

    iput p1, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mResultCode:I

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mNamespace:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mDocumentId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mSchemaType:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mErrorMessage:Ljava/lang/String;

    .line 6
    iput p5, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mResultCode:I

    return-void
.end method


# virtual methods
.method public whitelist getAppSearchResult()Landroid/app/appsearch/AppSearchResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/appsearch/AppSearchResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mResultCode:I

    .line 2
    .line 3
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mErrorMessage:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, p0}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(ILjava/lang/String;)Landroid/app/appsearch/AppSearchResult;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public whitelist getDocumentId()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mDocumentId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getNamespace()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mNamespace:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getSchemaType()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mSchemaType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MigrationFailure { schemaType: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->getSchemaType()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", namespace: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->getNamespace()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", documentId: "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->getDocumentId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ", appSearchResult: "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->getAppSearchResult()Landroid/app/appsearch/AppSearchResult;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, "}"

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/MigrationFailureCreator;->writeToParcel(Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.class public final Landroid/health/connect/ReadMedicalResourcesPageRequest;
.super Landroid/health/connect/ReadMedicalResourcesRequest;
.source "ReadMedicalResourcesPageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mPageToken:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "pageToken"    # Ljava/lang/String;
    .param p2, "pageSize"    # I

    .line 66
    invoke-direct {p0, p2}, Landroid/health/connect/ReadMedicalResourcesRequest;-><init>(I)V

    .line 67
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Landroid/health/connect/ReadMedicalResourcesPageRequest;->mPageToken:Ljava/lang/String;

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/health/connect/ReadMedicalResourcesPageRequest-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/health/connect/ReadMedicalResourcesPageRequest;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 79
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 80
    :cond_4
    instance-of v1, p1, Landroid/health/connect/ReadMedicalResourcesPageRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    move-object v1, p1

    check-cast v1, Landroid/health/connect/ReadMedicalResourcesPageRequest;

    .line 81
    .local v1, "that":Landroid/health/connect/ReadMedicalResourcesPageRequest;
    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesPageRequest;->getPageToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/ReadMedicalResourcesPageRequest;->getPageToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesPageRequest;->getPageSize()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/ReadMedicalResourcesPageRequest;->getPageSize()I

    move-result v4

    if-ne v3, v4, :cond_25

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    return v0

    .line 80
    .end local v1    # "that":Landroid/health/connect/ReadMedicalResourcesPageRequest;
    :cond_27
    return v2
.end method

.method public whitelist getPageToken()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/health/connect/ReadMedicalResourcesPageRequest;->mPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 86
    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesPageRequest;->getPageToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesPageRequest;->getPageSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toParcel()Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;
    .registers 2

    .line 106
    new-instance v0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;

    invoke-direct {v0, p0}, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;-><init>(Landroid/health/connect/ReadMedicalResourcesPageRequest;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{pageToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesPageRequest;->getPageToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesPageRequest;->getPageSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    return-object v0
.end method

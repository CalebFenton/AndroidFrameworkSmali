.class public final Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;
.super Ljava/lang/Object;
.source "ReadMedicalResourcesPageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/ReadMedicalResourcesPageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mPageSize:I

.field private blacklist mPageToken:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;)V
    .registers 3
    .param p1, "other"    # Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;->mPageSize:I

    .line 127
    iget-object v0, p1, Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;->mPageToken:Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;->mPageToken:Ljava/lang/String;

    .line 128
    iget v0, p1, Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;->mPageSize:I

    iput v0, p0, Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;->mPageSize:I

    .line 129
    return-void
.end method

.method public constructor whitelist <init>(Landroid/health/connect/ReadMedicalResourcesPageRequest;)V
    .registers 3
    .param p1, "other"    # Landroid/health/connect/ReadMedicalResourcesPageRequest;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;->mPageSize:I

    .line 133
    invoke-virtual {p1}, Landroid/health/connect/ReadMedicalResourcesPageRequest;->getPageToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;->mPageToken:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/health/connect/ReadMedicalResourcesPageRequest;->getPageSize()I

    move-result v0

    iput v0, p0, Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;->mPageSize:I

    .line 135
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pageToken"    # Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;->mPageSize:I

    .line 121
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iput-object p1, p0, Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;->mPageToken:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/ReadMedicalResourcesPageRequest;
    .registers 5

    .line 170
    new-instance v0, Landroid/health/connect/ReadMedicalResourcesPageRequest;

    iget-object v1, p0, Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;->mPageToken:Ljava/lang/String;

    iget v2, p0, Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;->mPageSize:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/ReadMedicalResourcesPageRequest;-><init>(Ljava/lang/String;ILandroid/health/connect/ReadMedicalResourcesPageRequest-IA;)V

    return-object v0
.end method

.method public whitelist setPageSize(I)Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;
    .registers 5
    .param p1, "pageSize"    # I

    .line 159
    const/16 v0, 0x1388

    const-string v1, "pageSize"

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(IIILjava/lang/String;)V

    .line 160
    iput p1, p0, Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;->mPageSize:I

    .line 161
    return-object p0
.end method

.method public whitelist setPageToken(Ljava/lang/String;)Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;
    .registers 2
    .param p1, "pageToken"    # Ljava/lang/String;

    .line 143
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iput-object p1, p0, Landroid/health/connect/ReadMedicalResourcesPageRequest$Builder;->mPageToken:Ljava/lang/String;

    .line 145
    return-object p0
.end method

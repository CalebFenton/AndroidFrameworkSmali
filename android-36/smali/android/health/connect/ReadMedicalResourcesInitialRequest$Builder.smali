.class public final Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;
.super Ljava/lang/Object;
.source "ReadMedicalResourcesInitialRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/ReadMedicalResourcesInitialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDataSourceIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMedicalResourceType:I

.field private blacklist mPageSize:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "medicalResourceType"    # I

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    .line 143
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mPageSize:I

    .line 153
    invoke-static {p1}, Landroid/health/connect/datatypes/MedicalResource;->validateMedicalResourceType(I)V

    .line 154
    iput p1, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mMedicalResourceType:I

    .line 155
    return-void
.end method

.method public constructor whitelist <init>(Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;)V
    .registers 4
    .param p1, "other"    # Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    .line 143
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mPageSize:I

    .line 159
    iget v0, p1, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mMedicalResourceType:I

    iput v0, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mMedicalResourceType:I

    .line 160
    iget-object v0, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    iget-object v1, p1, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget v0, p1, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mPageSize:I

    iput v0, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mPageSize:I

    .line 162
    return-void
.end method

.method public constructor whitelist <init>(Landroid/health/connect/ReadMedicalResourcesInitialRequest;)V
    .registers 4
    .param p1, "other"    # Landroid/health/connect/ReadMedicalResourcesInitialRequest;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    .line 143
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mPageSize:I

    .line 166
    invoke-virtual {p1}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getMedicalResourceType()I

    move-result v0

    iput v0, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mMedicalResourceType:I

    .line 167
    iget-object v0, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getDataSourceIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 168
    invoke-virtual {p1}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getPageSize()I

    move-result v0

    iput v0, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mPageSize:I

    .line 169
    return-void
.end method


# virtual methods
.method public whitelist addDataSourceId(Ljava/lang/String;)Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;
    .registers 3
    .param p1, "dataSourceId"    # Ljava/lang/String;

    .line 195
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 197
    iget-object v0, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    return-object p0
.end method

.method public whitelist addDataSourceIds(Ljava/util/Set;)Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;"
        }
    .end annotation

    .line 213
    .local p1, "dataSourceIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-static {p1}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 215
    iget-object v0, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 216
    return-object p0
.end method

.method public whitelist build()Landroid/health/connect/ReadMedicalResourcesInitialRequest;
    .registers 6

    .line 248
    new-instance v0, Landroid/health/connect/ReadMedicalResourcesInitialRequest;

    iget v1, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mMedicalResourceType:I

    iget-object v2, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    iget v3, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mPageSize:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;-><init>(ILjava/util/Set;ILandroid/health/connect/ReadMedicalResourcesInitialRequest-IA;)V

    return-object v0
.end method

.method public whitelist clearDataSourceIds()Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 223
    return-object p0
.end method

.method public whitelist setMedicalResourceType(I)Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;
    .registers 2
    .param p1, "medicalResourceType"    # I

    .line 179
    invoke-static {p1}, Landroid/health/connect/datatypes/MedicalResource;->validateMedicalResourceType(I)V

    .line 180
    iput p1, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mMedicalResourceType:I

    .line 181
    return-object p0
.end method

.method public whitelist setPageSize(I)Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;
    .registers 5
    .param p1, "pageSize"    # I

    .line 237
    const/16 v0, 0x1388

    const-string v1, "pageSize"

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(IIILjava/lang/String;)V

    .line 238
    iput p1, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;->mPageSize:I

    .line 239
    return-object p0
.end method

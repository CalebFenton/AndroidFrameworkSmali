.class public final Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;
.super Ljava/lang/Object;
.source "DeleteMedicalResourcesRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/DeleteMedicalResourcesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mDataSourceIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMedicalResourceTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mMedicalResourceTypes:Ljava/util/Set;

    .line 171
    return-void
.end method

.method public constructor whitelist <init>(Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;)V
    .registers 4
    .param p1, "other"    # Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mMedicalResourceTypes:Ljava/util/Set;

    .line 175
    iget-object v0, p0, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    iget-object v1, p1, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 176
    iget-object v0, p0, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mMedicalResourceTypes:Ljava/util/Set;

    iget-object v1, p1, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mMedicalResourceTypes:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 177
    return-void
.end method

.method public constructor whitelist <init>(Landroid/health/connect/DeleteMedicalResourcesRequest;)V
    .registers 4
    .param p1, "other"    # Landroid/health/connect/DeleteMedicalResourcesRequest;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mMedicalResourceTypes:Ljava/util/Set;

    .line 181
    iget-object v0, p0, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/health/connect/DeleteMedicalResourcesRequest;->getDataSourceIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object v0, p0, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mMedicalResourceTypes:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/health/connect/DeleteMedicalResourcesRequest;->getMedicalResourceTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 183
    return-void
.end method


# virtual methods
.method public whitelist addDataSourceId(Ljava/lang/String;)Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;
    .registers 4
    .param p1, "dataSourceId"    # Ljava/lang/String;

    .line 196
    iget-object v0, p0, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 198
    return-object p0
.end method

.method public whitelist addMedicalResourceType(I)Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;
    .registers 4
    .param p1, "resourceType"    # I

    .line 208
    invoke-static {p1}, Landroid/health/connect/datatypes/MedicalResource;->validateMedicalResourceType(I)V

    .line 209
    iget-object v0, p0, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mMedicalResourceTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    return-object p0
.end method

.method public whitelist build()Landroid/health/connect/DeleteMedicalResourcesRequest;
    .registers 5

    .line 236
    new-instance v0, Landroid/health/connect/DeleteMedicalResourcesRequest;

    iget-object v1, p0, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    iget-object v2, p0, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mMedicalResourceTypes:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/DeleteMedicalResourcesRequest;-><init>(Ljava/util/Set;Ljava/util/Set;Landroid/health/connect/DeleteMedicalResourcesRequest-IA;)V

    return-object v0
.end method

.method public whitelist clearDataSourceIds()Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;
    .registers 2

    .line 216
    iget-object v0, p0, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mDataSourceIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 217
    return-object p0
.end method

.method public whitelist clearMedicalResourceTypes()Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;->mMedicalResourceTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 224
    return-object p0
.end method

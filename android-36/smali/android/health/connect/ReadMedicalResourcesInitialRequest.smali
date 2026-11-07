.class public final Landroid/health/connect/ReadMedicalResourcesInitialRequest;
.super Landroid/health/connect/ReadMedicalResourcesRequest;
.source "ReadMedicalResourcesInitialRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/ReadMedicalResourcesInitialRequest$Builder;
    }
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

.field private final blacklist mMedicalResourceType:I


# direct methods
.method private constructor blacklist <init>(ILjava/util/Set;I)V
    .registers 4
    .param p1, "medicalResourceType"    # I
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 78
    .local p2, "dataSourceIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Landroid/health/connect/ReadMedicalResourcesRequest;-><init>(I)V

    .line 79
    invoke-static {p1}, Landroid/health/connect/datatypes/MedicalResource;->validateMedicalResourceType(I)V

    .line 80
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p2}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 83
    iput p1, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->mMedicalResourceType:I

    .line 84
    iput-object p2, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->mDataSourceIds:Ljava/util/Set;

    .line 85
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/Set;ILandroid/health/connect/ReadMedicalResourcesInitialRequest-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;-><init>(ILjava/util/Set;I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 104
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 105
    :cond_4
    instance-of v1, p1, Landroid/health/connect/ReadMedicalResourcesInitialRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    move-object v1, p1

    check-cast v1, Landroid/health/connect/ReadMedicalResourcesInitialRequest;

    .line 107
    .local v1, "that":Landroid/health/connect/ReadMedicalResourcesInitialRequest;
    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getMedicalResourceType()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getMedicalResourceType()I

    move-result v4

    if-ne v3, v4, :cond_2f

    .line 108
    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getDataSourceIds()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getDataSourceIds()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 109
    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getPageSize()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getPageSize()I

    move-result v4

    if-ne v3, v4, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v2

    .line 107
    :goto_30
    return v0

    .line 105
    .end local v1    # "that":Landroid/health/connect/ReadMedicalResourcesInitialRequest;
    :cond_31
    return v2
.end method

.method public whitelist getDataSourceIds()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->mDataSourceIds:Ljava/util/Set;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getMedicalResourceType()I
    .registers 2

    .line 90
    iget v0, p0, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->mMedicalResourceType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 114
    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getMedicalResourceType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getDataSourceIds()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getPageSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toParcel()Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;
    .registers 2

    .line 136
    new-instance v0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;

    invoke-direct {v0, p0}, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;-><init>(Landroid/health/connect/ReadMedicalResourcesInitialRequest;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{medicalResourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getMedicalResourceType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",dataSourceIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getDataSourceIds()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getPageSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    return-object v0
.end method

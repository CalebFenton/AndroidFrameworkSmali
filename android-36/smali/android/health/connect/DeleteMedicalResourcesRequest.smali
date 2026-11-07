.class public final Landroid/health/connect/DeleteMedicalResourcesRequest;
.super Ljava/lang/Object;
.source "DeleteMedicalResourcesRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/DeleteMedicalResourcesRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/DeleteMedicalResourcesRequest;",
            ">;"
        }
    .end annotation
.end field


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
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 94
    new-instance v0, Landroid/health/connect/DeleteMedicalResourcesRequest$1;

    invoke-direct {v0}, Landroid/health/connect/DeleteMedicalResourcesRequest$1;-><init>()V

    sput-object v0, Landroid/health/connect/DeleteMedicalResourcesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 80
    .local v0, "dataSourceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 81
    .local v1, "resourceTypes":[I
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    array-length v2, v1

    if-eqz v2, :cond_24

    goto :goto_2c

    .line 82
    :cond_24
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Empty data sources and resource types in parcel"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_2c
    :goto_2c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/health/connect/DeleteMedicalResourcesRequest;->mDataSourceIds:Ljava/util/Set;

    .line 85
    iget-object v2, p0, Landroid/health/connect/DeleteMedicalResourcesRequest;->mDataSourceIds:Ljava/util/Set;

    invoke-static {v2}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 86
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/health/connect/DeleteMedicalResourcesRequest;->mMedicalResourceTypes:Ljava/util/Set;

    .line 87
    array-length v2, v1

    const/4 v3, 0x0

    :goto_41
    if-ge v3, v2, :cond_54

    aget v4, v1, v3

    .line 88
    .local v4, "resourceType":I
    invoke-static {v4}, Landroid/health/connect/datatypes/MedicalResource;->validateMedicalResourceType(I)V

    .line 89
    iget-object v5, p0, Landroid/health/connect/DeleteMedicalResourcesRequest;->mMedicalResourceTypes:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v4    # "resourceType":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 91
    :cond_54
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/DeleteMedicalResourcesRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/DeleteMedicalResourcesRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "dataSourceIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "medicalResourceTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_18

    .line 63
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No restrictions specified for delete. The request must restrict by data source or resource type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_18
    :goto_18
    invoke-static {p1}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 68
    new-instance v0, Landroid/health/connect/DeleteMedicalResourcesRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/health/connect/DeleteMedicalResourcesRequest$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 69
    iput-object p1, p0, Landroid/health/connect/DeleteMedicalResourcesRequest;->mDataSourceIds:Ljava/util/Set;

    .line 70
    iput-object p2, p0, Landroid/health/connect/DeleteMedicalResourcesRequest;->mMedicalResourceTypes:Ljava/util/Set;

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Set;Ljava/util/Set;Landroid/health/connect/DeleteMedicalResourcesRequest-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/health/connect/DeleteMedicalResourcesRequest;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 144
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 145
    :cond_4
    instance-of v1, p1, Landroid/health/connect/DeleteMedicalResourcesRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    move-object v1, p1

    check-cast v1, Landroid/health/connect/DeleteMedicalResourcesRequest;

    .line 146
    .local v1, "that":Landroid/health/connect/DeleteMedicalResourcesRequest;
    iget-object v3, p0, Landroid/health/connect/DeleteMedicalResourcesRequest;->mDataSourceIds:Ljava/util/Set;

    iget-object v4, v1, Landroid/health/connect/DeleteMedicalResourcesRequest;->mDataSourceIds:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/health/connect/DeleteMedicalResourcesRequest;->mMedicalResourceTypes:Ljava/util/Set;

    iget-object v4, v1, Landroid/health/connect/DeleteMedicalResourcesRequest;->mMedicalResourceTypes:Ljava/util/Set;

    .line 147
    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    .line 146
    :goto_22
    return v0

    .line 145
    .end local v1    # "that":Landroid/health/connect/DeleteMedicalResourcesRequest;
    :cond_23
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

    .line 117
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/health/connect/DeleteMedicalResourcesRequest;->mDataSourceIds:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getMedicalResourceTypes()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/health/connect/DeleteMedicalResourcesRequest;->mMedicalResourceTypes:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 152
    iget-object v0, p0, Landroid/health/connect/DeleteMedicalResourcesRequest;->mDataSourceIds:Ljava/util/Set;

    iget-object v1, p0, Landroid/health/connect/DeleteMedicalResourcesRequest;->mMedicalResourceTypes:Ljava/util/Set;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "dataSourceIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/health/connect/DeleteMedicalResourcesRequest;->mDataSourceIds:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, ",medicalResourceTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/health/connect/DeleteMedicalResourcesRequest;->mMedicalResourceTypes:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/health/connect/DeleteMedicalResourcesRequest;->mDataSourceIds:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 139
    iget-object v0, p0, Landroid/health/connect/DeleteMedicalResourcesRequest;->mMedicalResourceTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/DeleteMedicalResourcesRequest$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/health/connect/DeleteMedicalResourcesRequest$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 140
    return-void
.end method

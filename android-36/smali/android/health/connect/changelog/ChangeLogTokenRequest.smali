.class public final Landroid/health/connect/changelog/ChangeLogTokenRequest;
.super Ljava/lang/Object;
.source "ChangeLogTokenRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/changelog/ChangeLogTokenRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/changelog/ChangeLogTokenRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDataOriginFilters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRecordTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 94
    new-instance v0, Landroid/health/connect/changelog/ChangeLogTokenRequest$1;

    invoke-direct {v0}, Landroid/health/connect/changelog/ChangeLogTokenRequest$1;-><init>()V

    sput-object v0, Landroid/health/connect/changelog/ChangeLogTokenRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v0

    .line 80
    .local v0, "healthConnectMappings":Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 81
    .local v1, "recordTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_2b

    aget v5, v2, v4

    .line 82
    .local v5, "recordType":I
    nop

    .line 83
    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordIdToExternalRecordClassMap()Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 82
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v5    # "recordType":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 85
    :cond_2b
    iput-object v1, p0, Landroid/health/connect/changelog/ChangeLogTokenRequest;->mRecordTypes:Ljava/util/Set;

    .line 86
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 87
    .local v2, "dataOrigin":Ljava/util/Set;, "Ljava/util/Set<Landroid/health/connect/datatypes/DataOrigin;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 88
    .local v4, "packageName":Ljava/lang/String;
    new-instance v5, Landroid/health/connect/datatypes/DataOrigin$Builder;

    invoke-direct {v5}, Landroid/health/connect/datatypes/DataOrigin$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/health/connect/datatypes/DataOrigin$Builder;->setPackageName(Ljava/lang/String;)Landroid/health/connect/datatypes/DataOrigin$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/health/connect/datatypes/DataOrigin$Builder;->build()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_3a

    .line 90
    :cond_57
    iput-object v2, p0, Landroid/health/connect/changelog/ChangeLogTokenRequest;->mDataOriginFilters:Ljava/util/Set;

    .line 91
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/changelog/ChangeLogTokenRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/changelog/ChangeLogTokenRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Set;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;>;)V"
        }
    .end annotation

    .line 51
    .local p1, "dataOriginFilters":Ljava/util/Set;, "Ljava/util/Set<Landroid/health/connect/datatypes/DataOrigin;>;"
    .local p2, "recordTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-direct {p0, p2}, Landroid/health/connect/changelog/ChangeLogTokenRequest;->verifyRecordTypes(Ljava/util/Set;)V

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Landroid/health/connect/changelog/ChangeLogTokenRequest;->mDataOriginFilters:Ljava/util/Set;

    .line 57
    iput-object p2, p0, Landroid/health/connect/changelog/ChangeLogTokenRequest;->mRecordTypes:Ljava/util/Set;

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Set;Ljava/util/Set;Landroid/health/connect/changelog/ChangeLogTokenRequest-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/health/connect/changelog/ChangeLogTokenRequest;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private blacklist getPackageNames()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/health/connect/changelog/ChangeLogTokenRequest;->mDataOriginFilters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v0, "packageNamesToFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/health/connect/changelog/ChangeLogTokenRequest;->mDataOriginFilters:Ljava/util/Set;

    new-instance v2, Landroid/health/connect/changelog/ChangeLogTokenRequest$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/health/connect/changelog/ChangeLogTokenRequest$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 175
    return-object v0
.end method

.method private blacklist getRecordTypesAsInteger()[I
    .registers 7

    .line 162
    iget-object v0, p0, Landroid/health/connect/changelog/ChangeLogTokenRequest;->mRecordTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 163
    .local v0, "recordTypes":[I
    const/4 v1, 0x0

    .line 164
    .local v1, "index":I
    iget-object v2, p0, Landroid/health/connect/changelog/ChangeLogTokenRequest;->mRecordTypes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 165
    .local v3, "recordClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;"
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordType(Ljava/lang/Class;)I

    move-result v5

    aput v5, v0, v1

    .line 166
    .end local v3    # "recordClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;"
    move v1, v4

    goto :goto_f

    .line 167
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :cond_29
    return-object v0
.end method

.method static synthetic blacklist lambda$getPackageNames$1(Ljava/util/List;Landroid/health/connect/datatypes/DataOrigin;)V
    .registers 3
    .param p0, "packageNamesToFilter"    # Ljava/util/List;
    .param p1, "dataOrigin"    # Landroid/health/connect/datatypes/DataOrigin;

    .line 174
    invoke-virtual {p1}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$verifyRecordTypes$0(Ljava/lang/Class;)Z
    .registers 2
    .param p0, "recordType"    # Ljava/lang/Class;

    .line 68
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p0}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->hasRecordType(Ljava/lang/Class;)Z

    move-result v0

    .line 68
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist verifyRecordTypes(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;>;)V"
        }
    .end annotation

    .line 61
    .local p1, "recordTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 64
    nop

    .line 65
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/changelog/ChangeLogTokenRequest$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/health/connect/changelog/ChangeLogTokenRequest$$ExternalSyntheticLambda1;-><init>()V

    .line 66
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/changelog/ChangeLogTokenRequest$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/health/connect/changelog/ChangeLogTokenRequest$$ExternalSyntheticLambda2;-><init>()V

    .line 70
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 71
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 72
    .local v0, "invalidRecordTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 76
    return-void

    .line 73
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested record types must not contain any of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    .end local v0    # "invalidRecordTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested record types must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDataOriginFilters()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroid/health/connect/changelog/ChangeLogTokenRequest;->mDataOriginFilters:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getPackageNamesToFilter()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Landroid/health/connect/changelog/ChangeLogTokenRequest;->getPackageNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRecordTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/health/connect/changelog/ChangeLogTokenRequest;->mRecordTypes:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getRecordTypesArray()[I
    .registers 2

    .line 126
    invoke-direct {p0}, Landroid/health/connect/changelog/ChangeLogTokenRequest;->getRecordTypesAsInteger()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRecordTypesList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Landroid/health/connect/changelog/ChangeLogTokenRequest;->getRecordTypesAsInteger()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 156
    invoke-direct {p0}, Landroid/health/connect/changelog/ChangeLogTokenRequest;->getRecordTypesAsInteger()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    invoke-direct {p0}, Landroid/health/connect/changelog/ChangeLogTokenRequest;->getPackageNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 158
    return-void
.end method

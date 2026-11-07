.class public final Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;
.super Ljava/lang/Object;
.source "HealthConnectMappings.java"


# static fields
.field private static volatile blacklist sHealthConnectMappings:Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;


# instance fields
.field private final blacklist mDataCategoryToWritePermissionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHealthDataCategories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPermissionCategoryToReadPermissionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPermissionCategoryToWritePermissionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRecordClassToRecordIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRecordIdToDescriptorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRecordIdToInternalRecordClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mRecordIdToRecordClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mRecordMapper:Landroid/health/connect/internal/datatypes/utils/RecordMapper;

.field private final blacklist mWritePermissionToDataCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->getInstance()Landroid/health/connect/internal/datatypes/utils/RecordMapper;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mRecordMapper:Landroid/health/connect/internal/datatypes/utils/RecordMapper;

    .line 88
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptors;->getAllDataTypeDescriptors()Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "dataTypeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;>;"
    nop

    .line 91
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 92
    new-instance v1, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda3;-><init>()V

    .line 95
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    .line 92
    invoke-static {v0, v1, v2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->toArrayMap(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/ArrayMap;

    move-result-object v1

    goto :goto_27

    .line 96
    :cond_22
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    :goto_27
    iput-object v1, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mRecordIdToDescriptorMap:Ljava/util/Map;

    .line 98
    nop

    .line 99
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 100
    new-instance v1, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda5;-><init>()V

    new-instance v2, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->toArrayMap(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/ArrayMap;

    move-result-object v1

    goto :goto_44

    .line 104
    :cond_3f
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    :goto_44
    iput-object v1, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mPermissionCategoryToReadPermissionMap:Ljava/util/Map;

    .line 106
    nop

    .line 107
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 108
    new-instance v1, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda5;-><init>()V

    new-instance v2, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->toArrayMap(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/ArrayMap;

    move-result-object v1

    goto :goto_61

    .line 112
    :cond_5c
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    :goto_61
    iput-object v1, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mPermissionCategoryToWritePermissionMap:Ljava/util/Map;

    .line 114
    nop

    .line 115
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 116
    new-instance v1, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->toArrayMap(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/ArrayMap;

    move-result-object v1

    goto :goto_7e

    .line 120
    :cond_79
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    :goto_7e
    iput-object v1, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mWritePermissionToDataCategoryMap:Ljava/util/Map;

    .line 122
    nop

    .line 123
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 124
    invoke-static {v0}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getDataCategoryToWritePermissionsMap(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v1

    goto :goto_91

    .line 125
    :cond_8c
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    :goto_91
    iput-object v1, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mDataCategoryToWritePermissionsMap:Ljava/util/Map;

    .line 127
    nop

    .line 128
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 129
    new-instance v1, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda3;-><init>()V

    new-instance v2, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->toArrayMap(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/ArrayMap;

    move-result-object v1

    goto :goto_ae

    .line 133
    :cond_a9
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    :goto_ae
    iput-object v1, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 135
    nop

    .line 136
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 137
    new-instance v1, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda3;-><init>()V

    new-instance v2, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->toArrayMap(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/ArrayMap;

    move-result-object v1

    goto :goto_cb

    .line 141
    :cond_c6
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    :goto_cb
    iput-object v1, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mRecordIdToRecordClassMap:Ljava/util/Map;

    .line 143
    nop

    .line 144
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 145
    new-instance v1, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda4;-><init>()V

    new-instance v2, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->toArrayMap(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/ArrayMap;

    move-result-object v1

    goto :goto_e8

    .line 149
    :cond_e3
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    :goto_e8
    iput-object v1, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mRecordClassToRecordIdMap:Ljava/util/Map;

    .line 151
    nop

    .line 152
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 153
    new-instance v1, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->toArraySet(Ljava/util/Collection;Ljava/util/function/Function;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_100

    .line 154
    :cond_fb
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    :goto_100
    iput-object v1, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mHealthDataCategories:Ljava/util/Set;

    .line 155
    return-void
.end method

.method private static blacklist getDataCategoryToWritePermissionsMap(Ljava/util/List;)Landroid/util/ArrayMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 315
    .local p0, "descriptors":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;>;"
    nop

    .line 316
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda1;-><init>()V

    .line 321
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    .line 320
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 318
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 317
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 323
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 324
    .local v1, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;[Ljava/lang/String;>;"
    new-instance v2, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda2;-><init>(Landroid/util/ArrayMap;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 325
    return-object v1
.end method

.method public static blacklist getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;
    .registers 1

    .line 67
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->sHealthConnectMappings:Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    if-nez v0, :cond_b

    .line 68
    new-instance v0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;-><init>()V

    sput-object v0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->sHealthConnectMappings:Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    .line 70
    :cond_b
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->sHealthConnectMappings:Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    return-object v0
.end method

.method static synthetic blacklist lambda$getDataCategoryToWritePermissionsMap$0(Landroid/util/ArrayMap;Ljava/lang/Integer;Ljava/util/Set;)V
    .registers 4
    .param p0, "result"    # Landroid/util/ArrayMap;
    .param p1, "k"    # Ljava/lang/Integer;
    .param p2, "v"    # Ljava/util/Set;

    .line 324
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static blacklist resetInstanceForTesting()V
    .registers 1

    .line 80
    new-instance v0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;-><init>()V

    sput-object v0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->sHealthConnectMappings:Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    .line 81
    return-void
.end method

.method private static blacklist toArrayMap(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;TK;>;",
            "Ljava/util/function/Function<",
            "TT;TV;>;)",
            "Landroid/util/ArrayMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 330
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "keyFunc":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TK;>;"
    .local p2, "valueFunc":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TV;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 332
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 333
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 334
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 335
    .local v4, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_d

    .line 338
    :cond_23
    return-object v0
.end method

.method private static blacklist toArraySet(Ljava/util/Collection;Ljava/util/function/Function;)Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;TR;>;)",
            "Landroid/util/ArraySet<",
            "TR;>;"
        }
    .end annotation

    .line 342
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "mapFunc":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TR;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 344
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TR;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 345
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 346
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_d

    .line 348
    :cond_1f
    return-object v0
.end method


# virtual methods
.method public blacklist getAllHealthDataCategories()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 299
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 300
    nop

    .line 301
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 302
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 303
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 304
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 305
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 306
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 307
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 300
    invoke-static/range {v1 .. v7}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 310
    :cond_2f
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mHealthDataCategories:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getAllRecordTypeIdentifiers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 163
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v0

    if-nez v0, :cond_9

    .line 164
    sget-object v0, Landroid/health/connect/datatypes/RecordTypeIdentifier;->VALID_TYPES:Ljava/util/Set;

    return-object v0

    .line 167
    :cond_9
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mRecordIdToDescriptorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHealthDataCategoryForWritePermission(Ljava/lang/String;)I
    .registers 4
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 211
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v0

    if-nez v0, :cond_b

    .line 212
    invoke-static {p1}, Landroid/health/connect/HealthPermissions;->getHealthDataCategoryForWritePermission(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 215
    :cond_b
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mWritePermissionToDataCategoryMap:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getHealthPermissionCategoryForRecordType(I)I
    .registers 5
    .param p1, "recordType"    # I

    .line 273
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v0

    if-nez v0, :cond_b

    .line 274
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper;->getHealthPermissionCategoryForRecordType(I)I

    move-result v0

    return v0

    .line 278
    :cond_b
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mRecordIdToDescriptorMap:Ljava/util/Map;

    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported record type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    .line 281
    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->getPermissionCategory()I

    move-result v0

    .line 278
    return v0
.end method

.method public blacklist getHealthReadPermission(I)Ljava/lang/String;
    .registers 5
    .param p1, "permissionCategory"    # I

    .line 184
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v0

    if-nez v0, :cond_b

    .line 185
    invoke-static {p1}, Landroid/health/connect/HealthPermissions;->getHealthReadPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :cond_b
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mPermissionCategoryToReadPermissionMap:Ljava/util/Map;

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read permission not found for permission category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getHealthWritePermission(I)Ljava/lang/String;
    .registers 5
    .param p1, "permissionCategory"    # I

    .line 195
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v0

    if-nez v0, :cond_b

    .line 196
    invoke-static {p1}, Landroid/health/connect/HealthPermissions;->getHealthWritePermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_b
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mPermissionCategoryToWritePermissionMap:Ljava/util/Map;

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write permission not found for permission category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRecordCategoryForRecordType(I)I
    .registers 5
    .param p1, "recordType"    # I

    .line 287
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v0

    if-nez v0, :cond_b

    .line 288
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/utils/RecordTypeRecordCategoryMapper;->getRecordCategoryForRecordType(I)I

    move-result v0

    return v0

    .line 291
    :cond_b
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mRecordIdToDescriptorMap:Ljava/util/Map;

    .line 292
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported record type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    .line 294
    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->getDataCategory()I

    move-result v0

    .line 291
    return v0
.end method

.method public blacklist getRecordIdToExternalRecordClassMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;>;"
        }
    .end annotation

    .line 243
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v0

    if-nez v0, :cond_d

    .line 244
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mRecordMapper:Landroid/health/connect/internal/datatypes/utils/RecordMapper;

    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->getRecordIdToExternalRecordClassMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 247
    :cond_d
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mRecordIdToRecordClassMap:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getRecordIdToInternalRecordClassMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;>;>;"
        }
    .end annotation

    .line 234
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v0

    if-nez v0, :cond_d

    .line 235
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mRecordMapper:Landroid/health/connect/internal/datatypes/utils/RecordMapper;

    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->getRecordIdToInternalRecordClassMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 238
    :cond_d
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getRecordType(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;)I"
        }
    .end annotation

    .line 253
    .local p1, "recordClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;"
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v0

    if-nez v0, :cond_d

    .line 254
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mRecordMapper:Landroid/health/connect/internal/datatypes/utils/RecordMapper;

    invoke-virtual {v0, p1}, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->getRecordType(Ljava/lang/Class;)I

    move-result v0

    return v0

    .line 257
    :cond_d
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mRecordClassToRecordIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getWriteHealthPermissionsFor(I)[Ljava/lang/String;
    .registers 5
    .param p1, "dataCategory"    # I

    .line 223
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v0

    if-nez v0, :cond_b

    .line 224
    invoke-static {p1}, Landroid/health/connect/HealthPermissions;->getWriteHealthPermissionsFor(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 227
    :cond_b
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mDataCategoryToWritePermissionsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasRecordType(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;)Z"
        }
    .end annotation

    .line 262
    .local p1, "recordClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;"
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v0

    if-nez v0, :cond_d

    .line 263
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mRecordMapper:Landroid/health/connect/internal/datatypes/utils/RecordMapper;

    invoke-virtual {v0, p1}, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->hasRecordType(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 266
    :cond_d
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mRecordClassToRecordIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isWritePermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v0

    if-nez v0, :cond_b

    .line 176
    invoke-static {p1}, Landroid/health/connect/HealthPermissions;->isWritePermission(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 179
    :cond_b
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->mWritePermissionToDataCategoryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

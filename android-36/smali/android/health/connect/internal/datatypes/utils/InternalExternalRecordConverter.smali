.class public final Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;
.super Ljava/lang/Object;
.source "InternalExternalRecordConverter.java"


# static fields
.field private static volatile blacklist sInternalExternalRecordConverter:Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;


# instance fields
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


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    nop

    .line 47
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordIdToInternalRecordClassMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 48
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;
    .registers 2

    const-class v0, Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;

    monitor-enter v0

    .line 52
    :try_start_3
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;->sInternalExternalRecordConverter:Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;

    if-nez v1, :cond_e

    .line 53
    new-instance v1, Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;

    invoke-direct {v1}, Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;-><init>()V

    sput-object v1, Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;->sInternalExternalRecordConverter:Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;

    .line 56
    :cond_e
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;->sInternalExternalRecordConverter:Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 51
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public blacklist getExternalRecords(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;>;)",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/Record;",
            ">;"
        }
    .end annotation

    .line 82
    .local p1, "recordInternals":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/RecordInternal<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v0, "externalRecordList":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/Record;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/internal/datatypes/RecordInternal;

    .line 86
    .local v2, "recordInternal":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<*>;"
    :try_start_19
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/Record;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_20} :catch_21

    .line 93
    goto :goto_2f

    .line 87
    :catch_21
    move-exception v3

    .line 88
    .local v3, "illegalArgumentException":Ljava/lang/IllegalArgumentException;
    nop

    .line 89
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 90
    const-string v5, "Unknown Intdef value"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 94
    .end local v2    # "recordInternal":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<*>;"
    .end local v3    # "illegalArgumentException":Ljava/lang/IllegalArgumentException;
    :goto_2f
    goto :goto_d

    .line 91
    .restart local v2    # "recordInternal":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<*>;"
    .restart local v3    # "illegalArgumentException":Ljava/lang/IllegalArgumentException;
    :cond_30
    throw v3

    .line 96
    .end local v2    # "recordInternal":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<*>;"
    .end local v3    # "illegalArgumentException":Ljava/lang/IllegalArgumentException;
    :cond_31
    return-object v0
.end method

.method public blacklist newInternalRecord(I)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 64
    .local v0, "recordClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/internal/datatypes/RecordInternal<*>;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/4 v1, 0x0

    :try_start_10
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/internal/datatypes/RecordInternal;
    :try_end_1e
    .catch Ljava/lang/InstantiationException; {:try_start_10 .. :try_end_1e} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_1e} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_1e} :catch_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_1e} :catch_20

    .line 73
    .local v1, "recordInternal":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<*>;"
    nop

    .line 75
    return-object v1

    .line 68
    .end local v1    # "recordInternal":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<*>;"
    :catch_20
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

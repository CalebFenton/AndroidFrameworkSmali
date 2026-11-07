.class public final Lcom/android/healthfitness/flags/AconfigFlagHelper;
.super Ljava/lang/Object;
.source "AconfigFlagHelper.java"


# static fields
.field public static final blacklist DB_VERSION_TO_DB_FLAG_MAP:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/function/BooleanSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/healthfitness/flags/AconfigFlagHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/healthfitness/flags/AconfigFlagHelper;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/healthfitness/flags/AconfigFlagHelper;->DB_VERSION_TO_DB_FLAG_MAP:Ljava/util/TreeMap;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist getDbVersion()I
    .registers 5

    const-class v0, Lcom/android/healthfitness/flags/AconfigFlagHelper;

    monitor-enter v0

    .line 55
    :try_start_3
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->infraToGuardDbChanges()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_42

    if-nez v1, :cond_d

    .line 56
    monitor-exit v0

    const/16 v0, 0xe

    return v0

    .line 59
    :cond_d
    const/16 v1, 0xe

    .line 60
    .local v1, "dbVersion":I
    :try_start_f
    invoke-static {}, Lcom/android/healthfitness/flags/AconfigFlagHelper;->getDbVersionToDbFlagMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 61
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/function/BooleanSupplier;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/BooleanSupplier;

    invoke-interface {v4}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v4

    if-nez v4, :cond_34

    .line 62
    goto :goto_40

    .line 64
    :cond_34
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_3e
    .catchall {:try_start_f .. :try_end_3e} :catchall_42

    move v1, v4

    .line 65
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/function/BooleanSupplier;>;"
    goto :goto_1b

    .line 67
    :cond_40
    :goto_40
    monitor-exit v0

    return v1

    .line 54
    .end local v1    # "dbVersion":I
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private static blacklist getDbVersionToDbFlagMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/function/BooleanSupplier;",
            ">;"
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/android/healthfitness/flags/AconfigFlagHelper;->DB_VERSION_TO_DB_FLAG_MAP:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 124
    sget-object v0, Lcom/android/healthfitness/flags/AconfigFlagHelper;->DB_VERSION_TO_DB_FLAG_MAP:Ljava/util/TreeMap;

    return-object v0

    .line 127
    :cond_b
    sget-object v0, Lcom/android/healthfitness/flags/AconfigFlagHelper;->DB_VERSION_TO_DB_FLAG_MAP:Ljava/util/TreeMap;

    .line 128
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/healthfitness/flags/AconfigFlagHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/healthfitness/flags/AconfigFlagHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/healthfitness/flags/AconfigFlagHelper;->DB_VERSION_TO_DB_FLAG_MAP:Ljava/util/TreeMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/healthfitness/flags/AconfigFlagHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/healthfitness/flags/AconfigFlagHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/healthfitness/flags/AconfigFlagHelper;->DB_VERSION_TO_DB_FLAG_MAP:Ljava/util/TreeMap;

    .line 131
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/healthfitness/flags/AconfigFlagHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/healthfitness/flags/AconfigFlagHelper$$ExternalSyntheticLambda2;-><init>()V

    .line 130
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/healthfitness/flags/AconfigFlagHelper;->DB_VERSION_TO_DB_FLAG_MAP:Ljava/util/TreeMap;

    .line 133
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/healthfitness/flags/AconfigFlagHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/healthfitness/flags/AconfigFlagHelper$$ExternalSyntheticLambda3;-><init>()V

    .line 132
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/healthfitness/flags/AconfigFlagHelper;->DB_VERSION_TO_DB_FLAG_MAP:Ljava/util/TreeMap;

    return-object v0
.end method

.method public static blacklist isActivityIntensityEnabled()Z
    .registers 1

    .line 145
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->activityIntensity()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 146
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/healthfitness/flags/AconfigFlagHelper;->isDbFlagEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 147
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 145
    :goto_17
    return v0
.end method

.method public static blacklist isCloudBackupRestoreEnabled()Z
    .registers 1

    .line 157
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->cloudBackupAndRestore()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 158
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/android/healthfitness/flags/AconfigFlagHelper;->isDbFlagEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 157
    :goto_11
    return v0
.end method

.method private static declared-synchronized blacklist isDbFlagEnabled(I)Z
    .registers 3
    .param p0, "dbVersion"    # I

    const-class v0, Lcom/android/healthfitness/flags/AconfigFlagHelper;

    monitor-enter v0

    .line 102
    :try_start_3
    invoke-static {}, Lcom/android/healthfitness/flags/AconfigFlagHelper;->getDbVersion()I

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    if-lt v1, p0, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 102
    .end local p0    # "dbVersion":I
    :catchall_e
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p0
.end method

.method public static blacklist isEcosystemMetricsEnabled()Z
    .registers 1

    .line 152
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->ecosystemMetrics()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/healthfitness/flags/AconfigFlagHelper;->isDbFlagEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static declared-synchronized blacklist isPersonalHealthRecordEnabled()Z
    .registers 2

    const-class v0, Lcom/android/healthfitness/flags/AconfigFlagHelper;

    monitor-enter v0

    .line 140
    :try_start_3
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->personalHealthRecord()Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/android/healthfitness/flags/AconfigFlagHelper;->isDbFlagEnabled(I)Z

    move-result v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_16

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    monitor-exit v0

    return v1

    .line 140
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

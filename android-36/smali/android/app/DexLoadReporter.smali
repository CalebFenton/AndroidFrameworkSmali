.class Landroid/app/DexLoadReporter;
.super Ljava/lang/Object;
.source "DexLoadReporter.java"

# interfaces
.implements Ldalvik/system/BaseDexClassLoader$Reporter;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist INSTANCE:Landroid/app/DexLoadReporter;

.field private static final blacklist TAG:Ljava/lang/String; = "DexLoadReporter"


# instance fields
.field private final blacklist mDataDirs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/app/DexLoadReporter;

    invoke-direct {v0}, Landroid/app/DexLoadReporter;-><init>()V

    sput-object v0, Landroid/app/DexLoadReporter;->INSTANCE:Landroid/app/DexLoadReporter;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/DexLoadReporter;->mDataDirs:Ljava/util/Set;

    .line 61
    return-void
.end method

.method static blacklist getInstance()Landroid/app/DexLoadReporter;
    .registers 1

    .line 64
    sget-object v0, Landroid/app/DexLoadReporter;->INSTANCE:Landroid/app/DexLoadReporter;

    return-object v0
.end method

.method private blacklist isSecondaryDexFile(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "dataDirs"    # [Ljava/lang/String;

    .line 181
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p2, v2

    .line 182
    .local v3, "dataDir":Ljava/lang/String;
    invoke-static {v3, p1}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 183
    const/4 v0, 0x1

    return v0

    .line 181
    .end local v3    # "dataDir":Ljava/lang/String;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 186
    :cond_12
    return v1
.end method

.method private blacklist notifyPackageManager(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p1, "classLoaderContextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "packageName":Ljava/lang/String;
    :try_start_4
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 108
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-interface {v1, v0, p1, v2}, Landroid/content/pm/IPackageManager;->notifyDexLoad(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    .line 111
    goto :goto_2d

    .line 109
    :catch_14
    move-exception v1

    .line 110
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notify PM about dex load for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexLoadReporter"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_2d
    return-void
.end method

.method private blacklist registerSecondaryDexForProfiling(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "dataDirs"    # [Ljava/lang/String;

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/app/DexLoadReporter;->isSecondaryDexFile(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 133
    return-void

    .line 139
    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "dexPathFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "oat"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v1, "secondaryProfileDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".cur.prof"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    .local v2, "secondaryCurProfile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".prof"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    .local v3, "secondaryRefProfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "DexLoadReporter"

    if-nez v4, :cond_75

    .line 149
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_75

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not create the profile directory: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 157
    :cond_75
    :try_start_75
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_8e

    .line 166
    nop

    .line 171
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    .line 170
    const/4 v8, 0x4

    invoke-static {v4, v5, v6, v7, v8}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 176
    return-void

    .line 161
    :catch_8e
    move-exception v4

    .line 162
    .local v4, "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create profile for secondary dex "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 163
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 162
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method private blacklist registerSecondaryDexForProfiling(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "dexPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "dalvik.vm.dexopt.secondary"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 116
    return-void

    .line 122
    :cond_a
    iget-object v0, p0, Landroid/app/DexLoadReporter;->mDataDirs:Ljava/util/Set;

    monitor-enter v0

    .line 123
    :try_start_d
    iget-object v2, p0, Landroid/app/DexLoadReporter;->mDataDirs:Ljava/util/Set;

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 124
    .local v1, "dataDirs":[Ljava/lang/String;
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_2d

    .line 125
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    .local v2, "dexPath":Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Landroid/app/DexLoadReporter;->registerSecondaryDexForProfiling(Ljava/lang/String;[Ljava/lang/String;)V

    .line 127
    .end local v2    # "dexPath":Ljava/lang/String;
    goto :goto_1c

    .line 128
    :cond_2c
    return-void

    .line 124
    .end local v1    # "dataDirs":[Ljava/lang/String;
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method


# virtual methods
.method blacklist registerAppDataDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dataDir"    # Ljava/lang/String;

    .line 81
    if-eqz p2, :cond_f

    .line 82
    iget-object v0, p0, Landroid/app/DexLoadReporter;->mDataDirs:Ljava/util/Set;

    monitor-enter v0

    .line 83
    :try_start_5
    iget-object v1, p0, Landroid/app/DexLoadReporter;->mDataDirs:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1

    .line 86
    :cond_f
    :goto_f
    return-void
.end method

.method public blacklist test-api report(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p1, "classLoaderContextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 91
    const-string v0, "DexLoadReporter"

    const-string v1, "Bad call to DexLoadReporter: empty classLoaderContextMap"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 97
    :cond_e
    invoke-direct {p0, p1}, Landroid/app/DexLoadReporter;->notifyPackageManager(Ljava/util/Map;)V

    .line 100
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/DexLoadReporter;->registerSecondaryDexForProfiling(Ljava/util/Set;)V

    .line 101
    return-void
.end method

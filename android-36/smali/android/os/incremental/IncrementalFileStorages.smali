.class public final Landroid/os/incremental/IncrementalFileStorages;
.super Ljava/lang/Object;
.source "IncrementalFileStorages.java"


# static fields
.field private static final blacklist SYSTEM_DATA_LOADER_PACKAGE:Ljava/lang/String; = "android"

.field private static final blacklist TAG:Ljava/lang/String; = "IncrementalFileStorages"


# instance fields
.field private blacklist mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

.field private final blacklist mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field private blacklist mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

.field private final blacklist mStageDir:Ljava/io/File;


# direct methods
.method private constructor blacklist <init>(Ljava/io/File;Ljava/io/File;Landroid/os/incremental/IncrementalManager;Landroid/content/pm/DataLoaderParams;)V
    .registers 10
    .param p1, "stageDir"    # Ljava/io/File;
    .param p2, "inheritedDir"    # Ljava/io/File;
    .param p3, "incrementalManager"    # Landroid/os/incremental/IncrementalManager;
    .param p4, "dataLoaderParams"    # Landroid/content/pm/DataLoaderParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    :try_start_3
    iput-object p1, p0, Landroid/os/incremental/IncrementalFileStorages;->mStageDir:Ljava/io/File;

    .line 115
    iput-object p3, p0, Landroid/os/incremental/IncrementalFileStorages;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 116
    const/4 v0, 0x5

    if-eqz p2, :cond_71

    .line 117
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 118
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 119
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v1

    iput-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    .line 120
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    if-eqz v1, :cond_71

    .line 121
    const-string v1, "android"

    .line 122
    invoke-virtual {p4}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 123
    .local v1, "systemDataLoader":Z
    if-eqz v1, :cond_45

    iget-object v2, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {v2}, Landroid/os/incremental/IncrementalStorage;->isFullyLoaded()Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_45

    .line 125
    :cond_3d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Inherited storage has missing pages."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalFileStorages;
    .end local p1    # "stageDir":Ljava/io/File;
    .end local p2    # "inheritedDir":Ljava/io/File;
    .end local p3    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    .end local p4    # "dataLoaderParams":Landroid/content/pm/DataLoaderParams;
    throw v0

    .line 128
    .restart local p0    # "this":Landroid/os/incremental/IncrementalFileStorages;
    .restart local p1    # "stageDir":Ljava/io/File;
    .restart local p2    # "inheritedDir":Ljava/io/File;
    .restart local p3    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    .restart local p4    # "dataLoaderParams":Landroid/content/pm/DataLoaderParams;
    :cond_45
    :goto_45
    iget-object v2, p0, Landroid/os/incremental/IncrementalFileStorages;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {v2, v3, v4, v0}, Landroid/os/incremental/IncrementalManager;->createStorage(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;I)Landroid/os/incremental/IncrementalStorage;

    move-result-object v0

    iput-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    .line 131
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    if-eqz v0, :cond_58

    .line 135
    return-void

    .line 132
    :cond_58
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t create linked incremental storage at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalFileStorages;
    .end local p1    # "stageDir":Ljava/io/File;
    .end local p2    # "inheritedDir":Ljava/io/File;
    .end local p3    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    .end local p4    # "dataLoaderParams":Landroid/content/pm/DataLoaderParams;
    throw v0

    .line 139
    .end local v1    # "systemDataLoader":Z
    .restart local p0    # "this":Landroid/os/incremental/IncrementalFileStorages;
    .restart local p1    # "stageDir":Ljava/io/File;
    .restart local p2    # "inheritedDir":Ljava/io/File;
    .restart local p3    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    .restart local p4    # "dataLoaderParams":Landroid/content/pm/DataLoaderParams;
    :cond_71
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p4, v0}, Landroid/os/incremental/IncrementalManager;->createStorage(Ljava/lang/String;Landroid/content/pm/DataLoaderParams;I)Landroid/os/incremental/IncrementalStorage;

    move-result-object v0

    iput-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    .line 142
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    if-eqz v0, :cond_83

    .line 149
    nop

    .line 150
    return-void

    .line 143
    :cond_83
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create incremental storage at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalFileStorages;
    .end local p1    # "stageDir":Ljava/io/File;
    .end local p2    # "inheritedDir":Ljava/io/File;
    .end local p3    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    .end local p4    # "dataLoaderParams":Landroid/content/pm/DataLoaderParams;
    throw v0
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9c} :catch_9c

    .line 146
    .restart local p0    # "this":Landroid/os/incremental/IncrementalFileStorages;
    .restart local p1    # "stageDir":Ljava/io/File;
    .restart local p2    # "inheritedDir":Ljava/io/File;
    .restart local p3    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    .restart local p4    # "dataLoaderParams":Landroid/content/pm/DataLoaderParams;
    :catch_9c
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Landroid/os/incremental/IncrementalFileStorages;->cleanUp()Landroid/os/incremental/IncrementalStorage;

    .line 148
    throw v0
.end method

.method private blacklist addApkFile(Landroid/content/pm/InstallationFileParcel;)V
    .registers 12
    .param p1, "apk"    # Landroid/content/pm/InstallationFileParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v1, p1, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    .line 154
    .local v1, "apkName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/os/incremental/IncrementalFileStorages;->mStageDir:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v0

    .line 155
    .local v9, "targetFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 156
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    iget-wide v2, p1, Landroid/content/pm/InstallationFileParcel;->size:J

    iget-object v6, p1, Landroid/content/pm/InstallationFileParcel;->metadata:[B

    iget-object v7, p1, Landroid/content/pm/InstallationFileParcel;->signature:[B

    const/4 v8, 0x0

    const/16 v4, 0x1ff

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/os/incremental/IncrementalStorage;->makeFile(Ljava/lang/String;JILjava/util/UUID;[B[B[B)V

    .line 159
    :cond_1f
    return-void
.end method

.method private blacklist cleanUp()Landroid/os/incremental/IncrementalStorage;
    .registers 4

    .line 219
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    .line 220
    .local v0, "defaultStorage":Landroid/os/incremental/IncrementalStorage;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    .line 221
    iput-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    .line 222
    if-nez v0, :cond_a

    .line 223
    return-object v1

    .line 227
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    iget-object v2, p0, Landroid/os/incremental/IncrementalFileStorages;->mStageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/incremental/IncrementalManager;->unregisterLoadingProgressCallbacks(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mStageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/incremental/IncrementalStorage;->unBind(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1e} :catch_1f

    .line 230
    goto :goto_20

    .line 229
    :catch_1f
    move-exception v1

    .line 231
    :goto_20
    return-object v0
.end method

.method public static blacklist initialize(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;Ljava/util/List;[Landroid/os/incremental/PerUidReadTimeouts;Landroid/content/pm/IPackageLoadingProgressCallback;)Landroid/os/incremental/IncrementalFileStorages;
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stageDir"    # Ljava/io/File;
    .param p2, "inheritedDir"    # Ljava/io/File;
    .param p3, "dataLoaderParams"    # Landroid/content/pm/DataLoaderParams;
    .param p4, "statusListener"    # Landroid/content/pm/IDataLoaderStatusListener;
    .param p5, "healthCheckParams"    # Landroid/os/incremental/StorageHealthCheckParams;
    .param p6, "healthListener"    # Landroid/os/incremental/IStorageHealthListener;
    .param p8, "perUidReadTimeouts"    # [Landroid/os/incremental/PerUidReadTimeouts;
    .param p9, "progressCallback"    # Landroid/content/pm/IPackageLoadingProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Landroid/content/pm/DataLoaderParams;",
            "Landroid/content/pm/IDataLoaderStatusListener;",
            "Landroid/os/incremental/StorageHealthCheckParams;",
            "Landroid/os/incremental/IStorageHealthListener;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstallationFileParcel;",
            ">;[",
            "Landroid/os/incremental/PerUidReadTimeouts;",
            "Landroid/content/pm/IPackageLoadingProgressCallback;",
            ")",
            "Landroid/os/incremental/IncrementalFileStorages;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    .local p7, "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    move-object/from16 v1, p9

    const-string/jumbo v0, "incremental"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/incremental/IncrementalManager;

    .line 80
    .local v2, "incrementalManager":Landroid/os/incremental/IncrementalManager;
    if-eqz v2, :cond_7d

    .line 84
    new-instance v0, Landroid/os/incremental/IncrementalFileStorages;

    invoke-direct {v0, p1, p2, v2, p3}, Landroid/os/incremental/IncrementalFileStorages;-><init>(Ljava/io/File;Ljava/io/File;Landroid/os/incremental/IncrementalManager;Landroid/content/pm/DataLoaderParams;)V

    move-object v3, v0

    .line 86
    .local v3, "result":Landroid/os/incremental/IncrementalFileStorages;
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/InstallationFileParcel;

    .line 87
    .local v4, "file":Landroid/content/pm/InstallationFileParcel;
    iget v5, v4, Landroid/content/pm/InstallationFileParcel;->location:I

    if-nez v5, :cond_4f

    .line 89
    :try_start_28
    invoke-direct {v3, v4}, Landroid/os/incremental/IncrementalFileStorages;->addApkFile(Landroid/content/pm/InstallationFileParcel;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2d

    .line 93
    nop

    .line 97
    .end local v4    # "file":Landroid/content/pm/InstallationFileParcel;
    goto :goto_18

    .line 90
    .restart local v4    # "file":Landroid/content/pm/InstallationFileParcel;
    :catch_2d
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to add file to IncFS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4f
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown file location: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/content/pm/InstallationFileParcel;->location:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    .end local v4    # "file":Landroid/content/pm/InstallationFileParcel;
    :cond_6a
    if-eqz v1, :cond_73

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    .line 103
    :cond_73
    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v3 .. v8}, Landroid/os/incremental/IncrementalFileStorages;->startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)V

    .line 106
    return-object v3

    .line 81
    .end local v3    # "result":Landroid/os/incremental/IncrementalFileStorages;
    :cond_7d
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Failed to obtain incrementalManager."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist cleanUpAndMarkComplete()V
    .registers 2

    .line 212
    invoke-direct {p0}, Landroid/os/incremental/IncrementalFileStorages;->cleanUp()Landroid/os/incremental/IncrementalStorage;

    move-result-object v0

    .line 213
    .local v0, "defaultStorage":Landroid/os/incremental/IncrementalStorage;
    if-eqz v0, :cond_9

    .line 214
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalStorage;->onInstallationComplete()V

    .line 216
    :cond_9
    return-void
.end method

.method public blacklist disallowReadLogs()V
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalStorage;->disallowReadLogs()V

    .line 206
    return-void
.end method

.method public blacklist makeFile(Ljava/lang/String;[BI)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # [B
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    array-length v1, p2

    int-to-long v2, v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v8, p2

    move v4, p3

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "content":[B
    .end local p3    # "mode":I
    .local v1, "name":Ljava/lang/String;
    .local v4, "mode":I
    .local v8, "content":[B
    invoke-virtual/range {v0 .. v8}, Landroid/os/incremental/IncrementalStorage;->makeFile(Ljava/lang/String;JILjava/util/UUID;[B[B[B)V

    .line 184
    return-void
.end method

.method public blacklist makeLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "fromBase"    # Ljava/lang/String;
    .param p3, "toBase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    if-nez v0, :cond_6

    .line 192
    const/4 v0, 0x0

    return v0

    .line 194
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v0, "sourcePath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v1, "destPath":Ljava/io/File;
    iget-object v2, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/incremental/IncrementalStorage;->makeLink(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V

    .line 198
    const/4 v2, 0x1

    return v2
.end method

.method public blacklist startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)V
    .registers 12
    .param p1, "dataLoaderParams"    # Landroid/content/pm/DataLoaderParams;
    .param p2, "statusListener"    # Landroid/content/pm/IDataLoaderStatusListener;
    .param p3, "healthCheckParams"    # Landroid/os/incremental/StorageHealthCheckParams;
    .param p4, "healthListener"    # Landroid/os/incremental/IStorageHealthListener;
    .param p5, "perUidReadTimeouts"    # [Landroid/os/incremental/PerUidReadTimeouts;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "dataLoaderParams":Landroid/content/pm/DataLoaderParams;
    .end local p2    # "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    .end local p3    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .end local p4    # "healthListener":Landroid/os/incremental/IStorageHealthListener;
    .end local p5    # "perUidReadTimeouts":[Landroid/os/incremental/PerUidReadTimeouts;
    .local v1, "dataLoaderParams":Landroid/content/pm/DataLoaderParams;
    .local v2, "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    .local v3, "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .local v4, "healthListener":Landroid/os/incremental/IStorageHealthListener;
    .local v5, "perUidReadTimeouts":[Landroid/os/incremental/PerUidReadTimeouts;
    invoke-virtual/range {v0 .. v5}, Landroid/os/incremental/IncrementalStorage;->startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 175
    return-void

    .line 172
    :cond_e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to start or restart loading data for Incremental installation."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

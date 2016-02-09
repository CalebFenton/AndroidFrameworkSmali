.class Lcom/android/server/pm/PackageManagerService$MeasureParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MeasureParams"
.end annotation


# instance fields
.field private final mObserver:Landroid/content/pm/IPackageStatsObserver;

.field private final mStats:Landroid/content/pm/PackageStats;

.field private mSuccess:Z

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageStats;Landroid/content/pm/IPackageStatsObserver;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "stats"    # Landroid/content/pm/PackageStats;
    .param p3, "observer"    # Landroid/content/pm/IPackageStatsObserver;

    #@0
    .prologue
    .line 10245
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    .line 10246
    new-instance v0, Landroid/os/UserHandle;

    #@4
    iget v1, p2, Landroid/content/pm/PackageStats;->userHandle:I

    #@6
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    #@c
    .line 10247
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    #@e
    .line 10248
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@10
    .line 10245
    return-void
.end method


# virtual methods
.method handleReturnCode()V
    .locals 4

    #@0
    .prologue
    .line 10297
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 10299
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    #@6
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@8
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    #@a
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageStatsObserver;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 10296
    :cond_0
    :goto_0
    return-void

    #@e
    .line 10300
    :catch_0
    move-exception v0

    #@f
    .line 10301
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PackageManager"

    #@12
    const-string/jumbo v2, "Observer no longer exists."

    #@15
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    goto :goto_0
.end method

.method handleServiceError()V
    .locals 3

    #@0
    .prologue
    .line 10308
    const-string/jumbo v0, "PackageManager"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Could not measure application "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@11
    iget-object v2, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 10309
    const-string/jumbo v2, " external storage"

    #@1a
    .line 10308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 10307
    return-void
.end method

.method handleStartCopy()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 10260
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@4
    monitor-enter v4

    #@5
    .line 10261
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@7
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@9
    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@b
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@d
    iget v6, v6, Landroid/content/pm/PackageStats;->userHandle:I

    #@f
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@11
    invoke-static {v3, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap3(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z

    #@14
    move-result v3

    #@15
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v4

    #@18
    .line 10264
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 10266
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 10267
    const/4 v0, 0x1

    #@23
    .line 10274
    :goto_0
    if-eqz v0, :cond_0

    #@25
    .line 10275
    new-instance v2, Landroid/os/Environment$UserEnvironment;

    #@27
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@29
    iget v3, v3, Landroid/content/pm/PackageStats;->userHandle:I

    #@2b
    invoke-direct {v2, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    #@2e
    .line 10277
    .local v2, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@30
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@32
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get0(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@35
    move-result-object v4

    #@36
    .line 10278
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@38
    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@3a
    invoke-virtual {v2, v5}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    #@3d
    move-result-object v5

    #@3e
    .line 10277
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap19(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    #@41
    move-result-wide v4

    #@42
    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalCacheSize:J

    #@44
    .line 10280
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@46
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@48
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get0(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@4b
    move-result-object v4

    #@4c
    .line 10281
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@4e
    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@50
    invoke-virtual {v2, v5}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    #@53
    move-result-object v5

    #@54
    .line 10280
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap19(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    #@57
    move-result-wide v4

    #@58
    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    #@5a
    .line 10284
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@5c
    iget-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    #@5e
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@60
    iget-wide v6, v6, Landroid/content/pm/PackageStats;->externalCacheSize:J

    #@62
    sub-long/2addr v4, v6

    #@63
    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    #@65
    .line 10286
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@67
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@69
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get0(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@6c
    move-result-object v4

    #@6d
    .line 10287
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@6f
    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@71
    invoke-virtual {v2, v5}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    #@74
    move-result-object v5

    #@75
    .line 10286
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap19(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    #@78
    move-result-wide v4

    #@79
    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalMediaSize:J

    #@7b
    .line 10289
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@7d
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@7f
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get0(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@82
    move-result-object v4

    #@83
    .line 10290
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@85
    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@87
    invoke-virtual {v2, v5}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    #@8a
    move-result-object v5

    #@8b
    .line 10289
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap19(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    #@8e
    move-result-wide v4

    #@8f
    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalObbSize:J

    #@91
    .line 10259
    .end local v2    # "userEnv":Landroid/os/Environment$UserEnvironment;
    :cond_0
    return-void

    #@92
    .line 10260
    :catchall_0
    move-exception v3

    #@93
    monitor-exit v4

    #@94
    throw v3

    #@95
    .line 10269
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    .line 10270
    .local v1, "status":Ljava/lang/String;
    const-string/jumbo v3, "mounted"

    #@9c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9f
    move-result v3

    #@a0
    if-nez v3, :cond_2

    #@a2
    .line 10271
    const-string/jumbo v3, "mounted_ro"

    #@a5
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v0

    #@a9
    .local v0, "mounted":Z
    goto/16 :goto_0

    #@ab
    .line 10270
    .end local v0    # "mounted":Z
    :cond_2
    const/4 v0, 0x1

    #@ac
    .local v0, "mounted":Z
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 10253
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "MeasureParams{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 10254
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 10253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 10255
    const-string/jumbo v1, " "

    #@1b
    .line 10253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 10255
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@21
    iget-object v1, v1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@23
    .line 10253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 10255
    const-string/jumbo v1, "}"

    #@2a
    .line 10253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method

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
    .line 12572
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    .line 12573
    new-instance v0, Landroid/os/UserHandle;

    #@4
    iget v1, p2, Landroid/content/pm/PackageStats;->userHandle:I

    #@6
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    #@c
    .line 12574
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    #@e
    .line 12575
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@10
    .line 12572
    return-void
.end method


# virtual methods
.method handleReturnCode()V
    .locals 4

    #@0
    .prologue
    .line 12623
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 12625
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
    .line 12622
    :cond_0
    :goto_0
    return-void

    #@e
    .line 12626
    :catch_0
    move-exception v0

    #@f
    .line 12627
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
    .line 12634
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
    .line 12635
    const-string/jumbo v2, " external storage"

    #@1a
    .line 12634
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
    .line 12633
    return-void
.end method

.method handleStartCopy()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 12587
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@4
    monitor-enter v5

    #@5
    .line 12588
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@7
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@9
    iget-object v6, v6, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@b
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@d
    iget v7, v7, Landroid/content/pm/PackageStats;->userHandle:I

    #@f
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@11
    invoke-static {v4, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap2(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z

    #@14
    move-result v4

    #@15
    iput-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v5

    #@18
    .line 12591
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 12592
    const/4 v1, 0x0

    #@1d
    .line 12594
    .local v1, "mounted":Z
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 12595
    .local v2, "status":Ljava/lang/String;
    const-string/jumbo v4, "mounted"

    #@24
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v4

    #@28
    if-nez v4, :cond_1

    #@2a
    .line 12596
    const-string/jumbo v4, "mounted_ro"

    #@2d
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@30
    move-result v1

    #@31
    .line 12600
    .end local v1    # "mounted":Z
    .end local v2    # "status":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    #@33
    .line 12601
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    #@35
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@37
    iget v4, v4, Landroid/content/pm/PackageStats;->userHandle:I

    #@39
    invoke-direct {v3, v4}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    #@3c
    .line 12603
    .local v3, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@3e
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@40
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@43
    move-result-object v5

    #@44
    .line 12604
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@46
    iget-object v6, v6, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@48
    invoke-virtual {v3, v6}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    #@4b
    move-result-object v6

    #@4c
    .line 12603
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap17(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    #@4f
    move-result-wide v6

    #@50
    iput-wide v6, v4, Landroid/content/pm/PackageStats;->externalCacheSize:J

    #@52
    .line 12606
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@54
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@56
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@59
    move-result-object v5

    #@5a
    .line 12607
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@5c
    iget-object v6, v6, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@5e
    invoke-virtual {v3, v6}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    #@61
    move-result-object v6

    #@62
    .line 12606
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap17(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    #@65
    move-result-wide v6

    #@66
    iput-wide v6, v4, Landroid/content/pm/PackageStats;->externalDataSize:J

    #@68
    .line 12610
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@6a
    iget-wide v6, v4, Landroid/content/pm/PackageStats;->externalDataSize:J

    #@6c
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@6e
    iget-wide v8, v5, Landroid/content/pm/PackageStats;->externalCacheSize:J

    #@70
    sub-long/2addr v6, v8

    #@71
    iput-wide v6, v4, Landroid/content/pm/PackageStats;->externalDataSize:J

    #@73
    .line 12612
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@75
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@77
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@7a
    move-result-object v5

    #@7b
    .line 12613
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@7d
    iget-object v6, v6, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@7f
    invoke-virtual {v3, v6}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    #@82
    move-result-object v6

    #@83
    .line 12612
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap17(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    #@86
    move-result-wide v6

    #@87
    iput-wide v6, v4, Landroid/content/pm/PackageStats;->externalMediaSize:J

    #@89
    .line 12615
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@8b
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@8d
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@90
    move-result-object v5

    #@91
    .line 12616
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@93
    iget-object v6, v6, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@95
    invoke-virtual {v3, v6}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    #@98
    move-result-object v6

    #@99
    .line 12615
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap17(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    #@9c
    move-result-wide v6

    #@9d
    iput-wide v6, v4, Landroid/content/pm/PackageStats;->externalObbSize:J

    #@9f
    .line 12586
    .end local v3    # "userEnv":Landroid/os/Environment$UserEnvironment;
    :cond_0
    return-void

    #@a0
    .line 12587
    :catchall_0
    move-exception v4

    #@a1
    monitor-exit v5

    #@a2
    throw v4

    #@a3
    .line 12595
    .restart local v1    # "mounted":Z
    .restart local v2    # "status":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    #@a4
    goto :goto_0

    #@a5
    .line 12597
    .end local v2    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@a6
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 12580
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
    .line 12581
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 12580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 12582
    const-string/jumbo v1, " "

    #@1b
    .line 12580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 12582
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #@21
    iget-object v1, v1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@23
    .line 12580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 12582
    const-string/jumbo v1, "}"

    #@2a
    .line 12580
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

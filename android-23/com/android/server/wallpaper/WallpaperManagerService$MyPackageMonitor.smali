.class Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    #@0
    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method doPackagesChangedLocked(ZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 10
    .param p1, "doit"    # Z
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x2

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v6, 0x0

    #@4
    .line 430
    const/4 v1, 0x0

    #@5
    .line 431
    .local v1, "changed":Z
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 432
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@b
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    .line 434
    .local v0, "change":I
    if-eq v0, v9, :cond_0

    #@15
    .line 435
    if-ne v0, v8, :cond_1

    #@17
    .line 436
    :cond_0
    const/4 v1, 0x1

    #@18
    .line 437
    if-eqz p1, :cond_1

    #@1a
    .line 438
    const-string/jumbo v3, "WallpaperManagerService"

    #@1d
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v5, "Wallpaper uninstalled, removing: "

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    .line 439
    iget-object v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@2b
    .line 438
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 440
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@38
    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@3a
    invoke-virtual {v3, v7, v4, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    #@3d
    .line 444
    .end local v0    # "change":I
    :cond_1
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@3f
    if-eqz v3, :cond_3

    #@41
    .line 445
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@43
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    #@4a
    move-result v0

    #@4b
    .line 447
    .restart local v0    # "change":I
    if-eq v0, v9, :cond_2

    #@4d
    .line 448
    if-ne v0, v8, :cond_3

    #@4f
    .line 449
    :cond_2
    iput-object v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@51
    .line 452
    .end local v0    # "change":I
    :cond_3
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@53
    if-eqz v3, :cond_4

    #@55
    .line 453
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@57
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    #@5e
    move-result v3

    #@5f
    .line 452
    if-eqz v3, :cond_4

    #@61
    .line 455
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@63
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@65
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@68
    move-result-object v3

    #@69
    .line 456
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@6b
    const/4 v5, 0x0

    #@6c
    .line 455
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    .line 463
    :cond_4
    :goto_0
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@71
    if-eqz v3, :cond_5

    #@73
    .line 464
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@75
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    #@7c
    move-result v3

    #@7d
    .line 463
    if-eqz v3, :cond_5

    #@7f
    .line 466
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@81
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@83
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@86
    move-result-object v3

    #@87
    .line 467
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@89
    const/4 v5, 0x0

    #@8a
    .line 466
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@8d
    .line 472
    :cond_5
    :goto_1
    return v1

    #@8e
    .line 457
    :catch_0
    move-exception v2

    #@8f
    .line 458
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "WallpaperManagerService"

    #@92
    new-instance v4, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v5, "Wallpaper component gone, removing: "

    #@9a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v4

    #@9e
    .line 459
    iget-object v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@a0
    .line 458
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v4

    #@a4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v4

    #@a8
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ab
    .line 460
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@ad
    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@af
    invoke-virtual {v3, v7, v4, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    #@b2
    goto :goto_0

    #@b3
    .line 468
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    #@b4
    .line 469
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@b6
    goto :goto_1
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    #@0
    .prologue
    .line 402
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@2
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v4

    #@5
    .line 403
    const/4 v0, 0x0

    #@6
    .line 404
    .local v0, "changed":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@8
    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@a
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->getChangingUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v5

    #@e
    if-eq v3, v5, :cond_0

    #@10
    .line 405
    const/4 v3, 0x0

    #@11
    monitor-exit v4

    #@12
    return v3

    #@13
    .line 407
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@15
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@17
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@19
    iget v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@1b
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@21
    .line 408
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v2, :cond_1

    #@23
    .line 409
    invoke-virtual {p0, p4, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    move-result v1

    #@27
    .line 410
    .local v1, "res":Z
    move v0, v1

    #@28
    .end local v0    # "changed":Z
    .end local v1    # "res":Z
    :cond_1
    monitor-exit v4

    #@29
    .line 412
    return v0

    #@2a
    .line 402
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v0    # "changed":Z
    :catchall_0
    move-exception v3

    #@2b
    monitor-exit v4

    #@2c
    throw v3
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 369
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@2
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@7
    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@9
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->getChangingUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v3

    #@d
    if-eq v1, v3, :cond_0

    #@f
    monitor-exit v2

    #@10
    .line 371
    return-void

    #@11
    .line 373
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@13
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@15
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@17
    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@19
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@1f
    .line 374
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_1

    #@21
    .line 375
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 376
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@27
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_2

    #@31
    .line 379
    const/4 v1, 0x1

    #@32
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    :cond_1
    monitor-exit v2

    #@36
    .line 368
    return-void

    #@37
    :cond_2
    monitor-exit v2

    #@38
    .line 377
    return-void

    #@39
    .line 369
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    #@3a
    monitor-exit v2

    #@3b
    throw v1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@2
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v6

    #@5
    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@7
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@9
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->getChangingUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v2

    #@d
    if-eq v0, v2, :cond_0

    #@f
    monitor-exit v6

    #@10
    .line 348
    return-void

    #@11
    .line 350
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@13
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@15
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@17
    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@19
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@1f
    .line 351
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v4, :cond_1

    #@21
    .line 352
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 353
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@27
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v0

    #@2f
    .line 352
    if-eqz v0, :cond_1

    #@31
    .line 354
    const/4 v0, 0x0

    #@32
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    #@34
    .line 355
    iget-object v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@36
    .line 356
    .local v1, "comp":Landroid/content/ComponentName;
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@38
    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@3b
    .line 357
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@3d
    const/4 v2, 0x0

    #@3e
    const/4 v3, 0x0

    #@3f
    .line 358
    const/4 v5, 0x0

    #@40
    .line 357
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    #@43
    move-result v0

    #@44
    if-nez v0, :cond_1

    #@46
    .line 359
    const-string/jumbo v0, "WallpaperManagerService"

    #@49
    const-string/jumbo v2, "Wallpaper no longer available; reverting to default"

    #@4c
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 360
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@51
    iget v2, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@53
    const/4 v3, 0x0

    #@54
    const/4 v5, 0x0

    #@55
    invoke-virtual {v0, v3, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    .end local v1    # "comp":Landroid/content/ComponentName;
    :cond_1
    monitor-exit v6

    #@59
    .line 345
    return-void

    #@5a
    .line 346
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v0

    #@5b
    monitor-exit v6

    #@5c
    throw v0
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 386
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@2
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@7
    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@9
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->getChangingUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v3

    #@d
    if-eq v1, v3, :cond_0

    #@f
    monitor-exit v2

    #@10
    .line 388
    return-void

    #@11
    .line 390
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@13
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@15
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@17
    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@19
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@1f
    .line 391
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_1

    #@21
    .line 392
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 393
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@27
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    .line 392
    if-eqz v1, :cond_1

    #@31
    .line 394
    const/4 v1, 0x1

    #@32
    iput-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    :cond_1
    monitor-exit v2

    #@35
    .line 385
    return-void

    #@36
    .line 386
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method public onSomePackagesChanged()V
    .locals 4

    #@0
    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@2
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@7
    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@9
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->getChangingUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v3

    #@d
    if-eq v1, v3, :cond_0

    #@f
    monitor-exit v2

    #@10
    .line 420
    return-void

    #@11
    .line 422
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@13
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@15
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@17
    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@19
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@1f
    .line 423
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_1

    #@21
    .line 424
    const/4 v1, 0x1

    #@22
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :cond_1
    monitor-exit v2

    #@26
    .line 417
    return-void

    #@27
    .line 418
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1
.end method

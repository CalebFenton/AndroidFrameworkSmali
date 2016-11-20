.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final mUserId:I

.field final mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mWallpaperDir:Ljava/io/File;

.field final mWallpaperFile:Ljava/io/File;

.field final mWallpaperInfoFile:Ljava/io/File;

.field final mWallpaperLockFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@2
    .line 181
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@4
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap0(I)Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 182
    const/16 v1, 0x688

    #@e
    .line 181
    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    #@11
    .line 183
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@13
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    #@15
    .line 184
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@17
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap0(I)Ljava/io/File;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    #@1d
    .line 185
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@1f
    .line 186
    new-instance v0, Ljava/io/File;

    #@21
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    #@23
    const-string/jumbo v2, "wallpaper_orig"

    #@26
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@29
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    #@2b
    .line 187
    new-instance v0, Ljava/io/File;

    #@2d
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    #@2f
    const-string/jumbo v2, "wallpaper_lock_orig"

    #@32
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@35
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    #@37
    .line 188
    new-instance v0, Ljava/io/File;

    #@39
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    #@3b
    const-string/jumbo v2, "wallpaper_info.xml"

    #@3e
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@41
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperInfoFile:Ljava/io/File;

    #@43
    .line 180
    return-void
.end method

.method private dataForEvent(ZZ)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 5
    .param p1, "sysChanged"    # Z
    .param p2, "lockChanged"    # Z

    #@0
    .prologue
    .line 192
    const/4 v1, 0x0

    #@1
    .line 193
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@3
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 194
    if-eqz p2, :cond_0

    #@8
    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@a
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@c
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    #@e
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    move-object v0, v2

    #@13
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@15
    move-object v1, v0

    #@16
    .line 197
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    if-nez v1, :cond_1

    #@18
    .line 199
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@1a
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@1c
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    #@1e
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    move-object v0, v2

    #@23
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@25
    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    :cond_1
    monitor-exit v3

    #@27
    .line 202
    if-eqz v1, :cond_2

    #@29
    :goto_0
    return-object v1

    #@2a
    .line 193
    :catchall_0
    move-exception v2

    #@2b
    monitor-exit v3

    #@2c
    throw v2

    #@2d
    .line 202
    :cond_2
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@2f
    goto :goto_0
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 13
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v1, 0x8

    #@2
    .line 207
    if-nez p2, :cond_0

    #@4
    .line 208
    return-void

    #@5
    .line 210
    :cond_0
    const/16 v0, 0x80

    #@7
    if-ne p1, v0, :cond_1

    #@9
    const/4 v9, 0x1

    #@a
    .line 211
    .local v9, "moved":Z
    :goto_0
    if-eq p1, v1, :cond_2

    #@c
    move v11, v9

    #@d
    .line 212
    :goto_1
    new-instance v6, Ljava/io/File;

    #@f
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    #@11
    invoke-direct {v6, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@14
    .line 216
    .local v6, "changedFile":Ljava/io/File;
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    #@16
    invoke-virtual {v0, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v10

    #@1a
    .line 217
    .local v10, "sysWallpaperChanged":Z
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    #@1c
    invoke-virtual {v0, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v8

    #@20
    .line 218
    .local v8, "lockWallpaperChanged":Z
    invoke-direct {p0, v10, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->dataForEvent(ZZ)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@23
    move-result-object v4

    #@24
    .line 230
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v9, :cond_3

    #@26
    if-eqz v8, :cond_3

    #@28
    .line 237
    invoke-static {v6}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@2b
    .line 238
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@2d
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged()V

    #@30
    .line 239
    return-void

    #@31
    .line 210
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v6    # "changedFile":Ljava/io/File;
    .end local v8    # "lockWallpaperChanged":Z
    .end local v9    # "moved":Z
    .end local v10    # "sysWallpaperChanged":Z
    :cond_1
    const/4 v9, 0x0

    #@32
    .restart local v9    # "moved":Z
    goto :goto_0

    #@33
    .line 211
    :cond_2
    const/4 v11, 0x1

    #@34
    .local v11, "written":Z
    goto :goto_1

    #@35
    .line 242
    .end local v11    # "written":Z
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v6    # "changedFile":Ljava/io/File;
    .restart local v8    # "lockWallpaperChanged":Z
    .restart local v10    # "sysWallpaperChanged":Z
    :cond_3
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@37
    iget-object v12, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@39
    monitor-enter v12

    #@3a
    .line 243
    if-nez v10, :cond_4

    #@3c
    if-eqz v8, :cond_c

    #@3e
    .line 244
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@40
    invoke-static {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap3(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@43
    .line 245
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@45
    if-eqz v0, :cond_5

    #@47
    .line 246
    if-eq p1, v1, :cond_d

    #@49
    .line 248
    :cond_5
    :goto_2
    if-eqz v11, :cond_c

    #@4b
    .line 256
    if-eqz v9, :cond_6

    #@4d
    .line 263
    invoke-static {v6}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@50
    .line 264
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@52
    iget v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@54
    const/4 v2, 0x1

    #@55
    invoke-static {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap2(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V

    #@58
    .line 266
    :cond_6
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@5a
    invoke-static {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap1(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@5d
    .line 270
    const/4 v0, 0x0

    #@5e
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    #@60
    .line 271
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    if-eqz v0, :cond_7

    #@64
    .line 273
    :try_start_1
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    #@66
    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@69
    .line 279
    :cond_7
    :goto_3
    if-eqz v10, :cond_8

    #@6b
    .line 281
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@6d
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@6f
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@71
    const/4 v2, 0x1

    #@72
    .line 282
    const/4 v3, 0x0

    #@73
    const/4 v5, 0x0

    #@74
    .line 281
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    #@77
    .line 284
    :cond_8
    if-nez v8, :cond_9

    #@79
    .line 285
    iget v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    #@7b
    and-int/lit8 v0, v0, 0x2

    #@7d
    if-eqz v0, :cond_b

    #@7f
    .line 292
    :cond_9
    if-nez v8, :cond_a

    #@81
    .line 293
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@83
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@85
    iget v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@87
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    #@8a
    .line 296
    :cond_a
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@8c
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged()V

    #@8f
    .line 298
    :cond_b
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@91
    iget v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@93
    invoke-static {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap4(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@96
    :cond_c
    monitor-exit v12

    #@97
    .line 206
    return-void

    #@98
    .line 247
    :cond_d
    :try_start_3
    iget-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@9a
    .line 245
    if-eqz v0, :cond_c

    #@9c
    goto :goto_2

    #@9d
    .line 242
    :catchall_0
    move-exception v0

    #@9e
    monitor-exit v12

    #@9f
    throw v0

    #@a0
    .line 274
    :catch_0
    move-exception v7

    #@a1
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_3
.end method

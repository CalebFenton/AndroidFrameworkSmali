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
.field final mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mWallpaperDir:Ljava/io/File;

.field final mWallpaperFile:Ljava/io/File;

.field final mWallpaperInfoFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@2
    .line 124
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
    .line 125
    const/16 v1, 0x688

    #@e
    .line 124
    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    #@11
    .line 126
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@13
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap0(I)Ljava/io/File;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    #@19
    .line 127
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@1b
    .line 128
    new-instance v0, Ljava/io/File;

    #@1d
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    #@1f
    const-string/jumbo v2, "wallpaper"

    #@22
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@25
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    #@27
    .line 129
    new-instance v0, Ljava/io/File;

    #@29
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    #@2b
    const-string/jumbo v2, "wallpaper_info.xml"

    #@2e
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@31
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperInfoFile:Ljava/io/File;

    #@33
    .line 123
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 12
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    .line 134
    if-nez p2, :cond_0

    #@4
    .line 135
    return-void

    #@5
    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@7
    iget-object v11, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v11

    #@a
    .line 138
    :try_start_0
    new-instance v7, Ljava/io/File;

    #@c
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    #@e
    invoke-direct {v7, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@11
    .line 139
    .local v7, "changedFile":Ljava/io/File;
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    #@13
    invoke-virtual {v0, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1

    #@19
    .line 140
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperInfoFile:Ljava/io/File;

    #@1b
    invoke-virtual {v0, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    .line 139
    if-eqz v0, :cond_2

    #@21
    .line 142
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@24
    move-result-wide v8

    #@25
    .line 143
    .local v8, "origId":J
    new-instance v6, Landroid/app/backup/BackupManager;

    #@27
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@29
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@2b
    invoke-direct {v6, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    #@2e
    .line 144
    .local v6, "bm":Landroid/app/backup/BackupManager;
    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    #@31
    .line 145
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 147
    .end local v6    # "bm":Landroid/app/backup/BackupManager;
    .end local v8    # "origId":J
    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    #@36
    invoke-virtual {v0, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_6

    #@3c
    .line 148
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@3e
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@40
    invoke-static {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap1(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@43
    .line 149
    if-eq p1, v2, :cond_3

    #@45
    const/16 v0, 0x80

    #@47
    if-ne p1, v0, :cond_7

    #@49
    :cond_3
    const/4 v10, 0x1

    #@4a
    .line 150
    .local v10, "written":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@4c
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@4e
    if-eqz v0, :cond_4

    #@50
    .line 151
    if-eq p1, v2, :cond_8

    #@52
    .line 153
    :cond_4
    :goto_1
    if-eqz v10, :cond_5

    #@54
    .line 154
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@56
    const/4 v1, 0x0

    #@57
    iput-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    #@59
    .line 156
    :cond_5
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@5b
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@5d
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@5f
    .line 157
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@61
    .line 156
    const/4 v2, 0x1

    #@62
    .line 157
    const/4 v3, 0x0

    #@63
    const/4 v5, 0x0

    #@64
    .line 156
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    #@67
    .line 158
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@69
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@6b
    invoke-static {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap2(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6e
    .end local v10    # "written":Z
    :cond_6
    monitor-exit v11

    #@6f
    .line 133
    return-void

    #@70
    .line 149
    :cond_7
    const/4 v10, 0x0

    #@71
    .restart local v10    # "written":Z
    goto :goto_0

    #@72
    .line 152
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@74
    iget-boolean v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@76
    .line 150
    if-eqz v0, :cond_6

    #@78
    goto :goto_1

    #@79
    .line 137
    .end local v7    # "changedFile":Ljava/io/File;
    .end local v10    # "written":Z
    :catchall_0
    move-exception v0

    #@7a
    monitor-exit v11

    #@7b
    throw v0
.end method

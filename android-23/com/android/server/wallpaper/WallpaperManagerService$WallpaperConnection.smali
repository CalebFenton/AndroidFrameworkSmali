.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperConnection"
.end annotation


# instance fields
.field mDimensionsChanged:Z

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field final mInfo:Landroid/app/WallpaperInfo;

.field mPaddingChanged:Z

.field mReply:Landroid/os/IRemoteCallback;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field final mToken:Landroid/os/Binder;

.field mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p2, "info"    # Landroid/app/WallpaperInfo;
    .param p3, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 242
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@3
    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    #@6
    .line 233
    new-instance v0, Landroid/os/Binder;

    #@8
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    #@d
    .line 239
    iput-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z

    #@f
    .line 240
    iput-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z

    #@11
    .line 243
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    #@13
    .line 244
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@15
    .line 242
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 5
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    #@0
    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@2
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 297
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    #@7
    .line 298
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 300
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    #@d
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@f
    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@11
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@13
    iget v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@15
    invoke-interface {v1, v3, v4}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    .line 304
    :goto_0
    const/4 v1, 0x0

    #@19
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z

    #@1b
    .line 306
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 308
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    #@21
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@23
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@25
    invoke-interface {v1, v3}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@28
    .line 312
    :goto_1
    const/4 v1, 0x0

    #@29
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2b
    :cond_1
    monitor-exit v2

    #@2c
    .line 295
    return-void

    #@2d
    .line 301
    :catch_0
    move-exception v0

    #@2e
    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v1, "WallpaperManagerService"

    #@31
    const-string/jumbo v3, "Failed to set wallpaper dimensions"

    #@34
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 296
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@39
    monitor-exit v2

    #@3a
    throw v1

    #@3b
    .line 309
    :catch_1
    move-exception v0

    #@3c
    .line 310
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v1, "WallpaperManagerService"

    #@3f
    const-string/jumbo v3, "Failed to set wallpaper padding"

    #@42
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@45
    goto :goto_1
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 6
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    #@0
    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@2
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v4

    #@5
    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-wide v2

    #@d
    .line 323
    .local v2, "ident":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    #@f
    const/4 v5, 0x0

    #@10
    invoke-interface {v1, v5}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    .line 327
    :goto_0
    const/4 v1, 0x0

    #@14
    :try_start_2
    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@16
    .end local v2    # "ident":J
    :cond_0
    monitor-exit v4

    #@17
    .line 318
    return-void

    #@18
    .line 324
    .restart local v2    # "ident":J
    :catch_0
    move-exception v0

    #@19
    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 319
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "ident":J
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v4

    #@1f
    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@7
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@9
    if-ne v0, p0, :cond_0

    #@b
    .line 251
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    #@11
    .line 252
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@13
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@15
    invoke-virtual {v0, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@18
    .line 257
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@1a
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@1c
    invoke-static {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap2(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :cond_0
    monitor-exit v1

    #@20
    .line 248
    return-void

    #@21
    .line 249
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@2
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 265
    const/4 v1, 0x0

    #@6
    :try_start_0
    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    #@8
    .line 266
    const/4 v1, 0x0

    #@9
    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    #@b
    .line 267
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@d
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@f
    if-ne v1, p0, :cond_0

    #@11
    .line 268
    const-string/jumbo v1, "WallpaperManagerService"

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "Wallpaper service gone: "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@22
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 269
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@31
    iget-boolean v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    #@33
    if-nez v1, :cond_0

    #@35
    .line 270
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@37
    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@39
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@3b
    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@3d
    if-ne v1, v3, :cond_0

    #@3f
    .line 277
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@41
    iget-wide v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    #@43
    const-wide/16 v6, 0x0

    #@45
    cmp-long v1, v4, v6

    #@47
    if-eqz v1, :cond_1

    #@49
    .line 278
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@4b
    iget-wide v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    #@4d
    const-wide/16 v6, 0x2710

    #@4f
    add-long/2addr v4, v6

    #@50
    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@53
    move-result-wide v6

    #@54
    .line 278
    cmp-long v1, v4, v6

    #@56
    if-lez v1, :cond_1

    #@58
    .line 280
    const-string/jumbo v1, "WallpaperManagerService"

    #@5b
    const-string/jumbo v3, "Reverting to built-in wallpaper!"

    #@5e
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 281
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@63
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@65
    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@67
    const/4 v4, 0x1

    #@68
    const/4 v5, 0x0

    #@69
    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    #@6c
    .line 285
    :goto_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    .line 287
    .local v0, "flattened":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@73
    move-result v1

    #@74
    .line 288
    const/16 v3, 0x80

    #@76
    .line 287
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    #@79
    move-result v1

    #@7a
    const/4 v3, 0x0

    #@7b
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    .line 286
    const v3, 0x80e8

    #@82
    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@85
    .end local v0    # "flattened":Ljava/lang/String;
    :cond_0
    monitor-exit v2

    #@86
    .line 263
    return-void

    #@87
    .line 283
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@8c
    move-result-wide v4

    #@8d
    iput-wide v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8f
    goto :goto_0

    #@90
    .line 264
    :catchall_0
    move-exception v1

    #@91
    monitor-exit v2

    #@92
    throw v1
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@7
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@9
    if-ne v0, p0, :cond_0

    #@b
    .line 336
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@d
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@f
    invoke-virtual {v0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-object v0

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    .line 338
    :cond_0
    const/4 v0, 0x0

    #@16
    monitor-exit v1

    #@17
    return-object v0

    #@18
    .line 334
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

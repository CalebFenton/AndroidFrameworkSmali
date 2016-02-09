.class Landroid/service/wallpaper/WallpaperService$Engine$2;
.super Lcom/android/internal/view/BaseIWindow;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/wallpaper/WallpaperService$Engine;

    #@0
    .prologue
    .line 269
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public dispatchAppVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 289
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@4
    iget-boolean v1, v1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    #@6
    if-nez v1, :cond_0

    #@8
    .line 290
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@a
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@c
    .line 291
    if-eqz p1, :cond_1

    #@e
    const/4 v1, 0x1

    #@f
    .line 290
    :goto_0
    const/16 v3, 0x271a

    #@11
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    #@14
    move-result-object v0

    #@15
    .line 292
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@17
    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@19
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@1c
    .line 286
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    #@1d
    .line 291
    :cond_1
    const/4 v1, 0x0

    #@1e
    goto :goto_0
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "sync"    # Z

    #@0
    .prologue
    .line 319
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    iget-object v3, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 321
    :try_start_0
    new-instance v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    #@7
    invoke-direct {v0}, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;-><init>()V

    #@a
    .line 322
    .local v0, "cmd":Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    iput-object p1, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    #@c
    .line 323
    iput p2, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    #@e
    .line 324
    iput p3, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    #@10
    .line 325
    iput p4, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    #@12
    .line 326
    iput-object p5, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    #@14
    .line 327
    iput-boolean p6, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    #@16
    .line 328
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@18
    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@1a
    const/16 v4, 0x2729

    #@1c
    invoke-virtual {v2, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@1f
    move-result-object v1

    #@20
    .line 329
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@22
    .line 330
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@24
    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@26
    invoke-virtual {v2, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit v3

    #@2a
    .line 318
    return-void

    #@2b
    .line 319
    .end local v0    # "cmd":Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    #@2c
    monitor-exit v3

    #@2d
    throw v2
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "xStep"    # F
    .param p4, "yStep"    # F
    .param p5, "sync"    # Z

    #@0
    .prologue
    .line 299
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 301
    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@7
    iput p1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    #@9
    .line 302
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@b
    iput p2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    #@d
    .line 303
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@f
    iput p3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    #@11
    .line 304
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@13
    iput p4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    #@15
    .line 305
    if-eqz p5, :cond_0

    #@17
    .line 306
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@19
    const/4 v3, 0x1

    #@1a
    iput-boolean v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    #@1c
    .line 308
    :cond_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@1e
    iget-boolean v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    #@20
    if-nez v1, :cond_1

    #@22
    .line 309
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@24
    const/4 v3, 0x1

    #@25
    iput-boolean v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    #@27
    .line 310
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@29
    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2b
    const/16 v3, 0x2724

    #@2d
    invoke-virtual {v1, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@30
    move-result-object v0

    #@31
    .line 311
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@33
    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@35
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit v2

    #@39
    .line 298
    return-void

    #@3a
    .line 299
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v2

    #@3c
    throw v1
.end method

.method public moved(II)V
    .locals 3
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    #@0
    .prologue
    .line 281
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x2733

    #@6
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    .line 282
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@c
    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@e
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@11
    .line 280
    return-void
.end method

.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 4
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 274
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    .line 275
    if-eqz p7, :cond_0

    #@6
    const/4 v1, 0x1

    #@7
    .line 274
    :goto_0
    const/16 v3, 0x272e

    #@9
    invoke-virtual {v2, v3, v1, p6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 276
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@f
    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@11
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@14
    .line 273
    return-void

    #@15
    .line 275
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

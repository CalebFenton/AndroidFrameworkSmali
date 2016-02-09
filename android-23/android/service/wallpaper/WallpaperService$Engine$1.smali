.class Landroid/service/wallpaper/WallpaperService$Engine$1;
.super Lcom/android/internal/view/BaseSurfaceHolder;
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
    .locals 1
    .param p1, "this$1"    # Landroid/service/wallpaper/WallpaperService$Engine;

    #@0
    .prologue
    .line 190
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/view/BaseSurfaceHolder;-><init>()V

    #@5
    .line 192
    const/4 v0, 0x2

    #@6
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->mRequestedFormat:I

    #@8
    .line 190
    return-void
.end method


# virtual methods
.method public isCreating()Z
    .locals 1

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    #@4
    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 3

    #@0
    .prologue
    .line 235
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->-get0(Landroid/service/wallpaper/WallpaperService$Engine;)I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x3

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 236
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@b
    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->-get0(Landroid/service/wallpaper/WallpaperService$Engine;)I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x4

    #@10
    if-ne v1, v2, :cond_1

    #@12
    .line 238
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@14
    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@16
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@18
    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@1a
    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 243
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    #@20
    move-result-object v1

    #@21
    return-object v1

    #@22
    .line 239
    :catch_0
    move-exception v0

    #@23
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onAllowLockCanvas()Z
    .locals 1

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    #@4
    return v0
.end method

.method public onRelayoutContainer()V
    .locals 3

    #@0
    .prologue
    .line 202
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x2710

    #@6
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    .line 203
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@c
    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@e
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@11
    .line 201
    return-void
.end method

.method public onUpdateSurface()V
    .locals 3

    #@0
    .prologue
    .line 208
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x2710

    #@6
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    .line 209
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@c
    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@e
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@11
    .line 207
    return-void
.end method

.method public setFixedSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    .line 223
    const-string/jumbo v1, "Wallpapers currently only support sizing from layout"

    #@b
    .line 222
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 225
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/BaseSurfaceHolder;->setFixedSize(II)V

    #@12
    .line 217
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    #@0
    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 230
    const-string/jumbo v1, "Wallpapers do not support keep screen on"

    #@5
    .line 229
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

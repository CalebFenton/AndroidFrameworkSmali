.class final Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WallpaperInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method public constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/wallpaper/WallpaperService$Engine;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 248
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    .line 249
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@5
    .line 248
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 254
    const/4 v2, 0x0

    #@1
    .line 256
    .local v2, "handled":Z
    :try_start_0
    instance-of v3, p1, Landroid/view/MotionEvent;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 257
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    #@8
    move-result v3

    #@9
    and-int/lit8 v3, v3, 0x2

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 258
    move-object v0, p1

    #@e
    check-cast v0, Landroid/view/MotionEvent;

    #@10
    move-object v3, v0

    #@11
    invoke-static {v3}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@14
    move-result-object v1

    #@15
    .line 259
    .local v1, "dup":Landroid/view/MotionEvent;
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@17
    invoke-static {v3, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->-wrap0(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 260
    const/4 v2, 0x1

    #@1b
    .line 263
    .end local v1    # "dup":Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@1e
    .line 253
    return-void

    #@1f
    .line 262
    :catchall_0
    move-exception v3

    #@20
    .line 263
    invoke-virtual {p0, p1, v2}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@23
    .line 262
    throw v3
.end method

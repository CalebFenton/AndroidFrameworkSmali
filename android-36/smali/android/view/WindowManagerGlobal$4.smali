.class Landroid/view/WindowManagerGlobal$4;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowManagerGlobal;->registerUnbatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/os/Looper;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$receiver:Landroid/view/SurfaceControlInputReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowManagerGlobal;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/SurfaceControlInputReceiver;)V
    .registers 5
    .param p1, "this$0"    # Landroid/view/WindowManagerGlobal;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 955
    iput-object p4, p0, Landroid/view/WindowManagerGlobal$4;->val$receiver:Landroid/view/SurfaceControlInputReceiver;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 958
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$4;->val$receiver:Landroid/view/SurfaceControlInputReceiver;

    invoke-interface {v0, p1}, Landroid/view/SurfaceControlInputReceiver;->onInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 959
    .local v0, "handled":Z
    invoke-virtual {p0, p1, v0}, Landroid/view/WindowManagerGlobal$4;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 960
    return-void
.end method

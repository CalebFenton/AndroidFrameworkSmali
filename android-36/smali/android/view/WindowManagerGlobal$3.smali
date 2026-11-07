.class Landroid/view/WindowManagerGlobal$3;
.super Landroid/view/BatchedInputEventReceiver;
.source "WindowManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowManagerGlobal;->registerBatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/view/Choreographer;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$receiver:Landroid/view/SurfaceControlInputReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowManagerGlobal;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/SurfaceControlInputReceiver;)V
    .registers 6
    .param p1, "this$0"    # Landroid/view/WindowManagerGlobal;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "choreographer"    # Landroid/view/Choreographer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 933
    iput-object p5, p0, Landroid/view/WindowManagerGlobal$3;->val$receiver:Landroid/view/SurfaceControlInputReceiver;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 936
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$3;->val$receiver:Landroid/view/SurfaceControlInputReceiver;

    invoke-interface {v0, p1}, Landroid/view/SurfaceControlInputReceiver;->onInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 937
    .local v0, "handled":Z
    invoke-virtual {p0, p1, v0}, Landroid/view/WindowManagerGlobal$3;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 938
    return-void
.end method

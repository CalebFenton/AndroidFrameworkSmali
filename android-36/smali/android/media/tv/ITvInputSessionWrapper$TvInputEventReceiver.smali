.class final Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "ITvInputSessionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSessionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvInputEventReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ITvInputSessionWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ITvInputSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 532
    iput-object p1, p0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->this$0:Landroid/media/tv/ITvInputSessionWrapper;

    .line 533
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 534
    return-void
.end method


# virtual methods
.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 538
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->this$0:Landroid/media/tv/ITvInputSessionWrapper;

    invoke-static {v0}, Landroid/media/tv/ITvInputSessionWrapper;->-$$Nest$fgetmTvInputSessionImpl(Landroid/media/tv/ITvInputSessionWrapper;)Landroid/media/tv/TvInputService$Session;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 540
    invoke-virtual {p0, p1, v1}, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 541
    return-void

    .line 544
    :cond_d
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->this$0:Landroid/media/tv/ITvInputSessionWrapper;

    invoke-static {v0}, Landroid/media/tv/ITvInputSessionWrapper;->-$$Nest$fgetmTvInputSessionImpl(Landroid/media/tv/ITvInputSessionWrapper;)Landroid/media/tv/TvInputService$Session;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/media/tv/TvInputService$Session;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I

    move-result v0

    .line 545
    .local v0, "handled":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_21

    .line 546
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    move v1, v2

    :cond_1e
    invoke-virtual {p0, p1, v1}, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 548
    :cond_21
    return-void
.end method

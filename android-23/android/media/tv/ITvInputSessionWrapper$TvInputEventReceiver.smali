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
.field final synthetic this$0:Landroid/media/tv/ITvInputSessionWrapper;


# direct methods
.method public constructor <init>(Landroid/media/tv/ITvInputSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/ITvInputSessionWrapper;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 304
    iput-object p1, p0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->this$0:Landroid/media/tv/ITvInputSessionWrapper;

    #@2
    .line 305
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@5
    .line 304
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 310
    iget-object v3, p0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->this$0:Landroid/media/tv/ITvInputSessionWrapper;

    #@4
    invoke-static {v3}, Landroid/media/tv/ITvInputSessionWrapper;->-get0(Landroid/media/tv/ITvInputSessionWrapper;)Landroid/media/tv/TvInputService$Session;

    #@7
    move-result-object v3

    #@8
    if-nez v3, :cond_0

    #@a
    .line 312
    invoke-virtual {p0, p1, v2}, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@d
    .line 313
    return-void

    #@e
    .line 316
    :cond_0
    iget-object v3, p0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->this$0:Landroid/media/tv/ITvInputSessionWrapper;

    #@10
    invoke-static {v3}, Landroid/media/tv/ITvInputSessionWrapper;->-get0(Landroid/media/tv/ITvInputSessionWrapper;)Landroid/media/tv/TvInputService$Session;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1, p0}, Landroid/media/tv/TvInputService$Session;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I

    #@17
    move-result v0

    #@18
    .line 317
    .local v0, "handled":I
    const/4 v3, -0x1

    #@19
    if-eq v0, v3, :cond_1

    #@1b
    .line 318
    if-ne v0, v1, :cond_2

    #@1d
    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@20
    .line 309
    :cond_1
    return-void

    #@21
    :cond_2
    move v1, v2

    #@22
    .line 318
    goto :goto_0
.end method

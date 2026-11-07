.class final Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "ITvAdSessionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/ITvAdSessionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvAdEventReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/ITvAdSessionWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/ITvAdSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V
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

    .line 297
    iput-object p1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;->this$0:Landroid/media/tv/ad/ITvAdSessionWrapper;

    .line 298
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 299
    return-void
.end method


# virtual methods
.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 303
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;->this$0:Landroid/media/tv/ad/ITvAdSessionWrapper;

    invoke-static {v0}, Landroid/media/tv/ad/ITvAdSessionWrapper;->-$$Nest$fgetmSessionImpl(Landroid/media/tv/ad/ITvAdSessionWrapper;)Landroid/media/tv/ad/TvAdService$Session;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 305
    invoke-virtual {p0, p1, v1}, Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 306
    return-void

    .line 309
    :cond_d
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;->this$0:Landroid/media/tv/ad/ITvAdSessionWrapper;

    invoke-static {v0}, Landroid/media/tv/ad/ITvAdSessionWrapper;->-$$Nest$fgetmSessionImpl(Landroid/media/tv/ad/ITvAdSessionWrapper;)Landroid/media/tv/ad/TvAdService$Session;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/media/tv/ad/TvAdService$Session;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I

    move-result v0

    .line 310
    .local v0, "handled":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_21

    .line 311
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    move v1, v2

    :cond_1e
    invoke-virtual {p0, p1, v1}, Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 314
    :cond_21
    return-void
.end method

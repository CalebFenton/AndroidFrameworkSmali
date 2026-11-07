.class final Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;
.super Landroid/os/Handler;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputEventHandler"
.end annotation


# static fields
.field public static final blacklist MSG_FLUSH_INPUT_EVENT:I = 0x3

.field public static final blacklist MSG_SEND_INPUT_EVENT:I = 0x1

.field public static final blacklist MSG_TIMEOUT_INPUT_EVENT:I = 0x2


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1992
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 1993
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1994
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1998
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_22

    .line 2012
    return-void

    .line 2008
    :pswitch_7
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v1, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->finishedInputEvent(IZZ)V

    .line 2009
    return-void

    .line 2004
    :pswitch_f
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->finishedInputEvent(IZZ)V

    .line 2005
    return-void

    .line 2000
    :pswitch_18
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->-$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)V

    .line 2001
    return-void

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_7
    .end packed-switch
.end method

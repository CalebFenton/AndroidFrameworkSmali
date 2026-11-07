.class final Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;
.super Landroid/os/Handler;
.source "TvAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdManager$Session;
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
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdManager$Session;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdManager$Session;Landroid/os/Looper;)V
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

    .line 1005
    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->this$0:Landroid/media/tv/ad/TvAdManager$Session;

    .line 1006
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1007
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1011
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_22

    .line 1025
    return-void

    .line 1021
    :pswitch_7
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->this$0:Landroid/media/tv/ad/TvAdManager$Session;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v1, v1}, Landroid/media/tv/ad/TvAdManager$Session;->finishedInputEvent(IZZ)V

    .line 1022
    return-void

    .line 1017
    :pswitch_f
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->this$0:Landroid/media/tv/ad/TvAdManager$Session;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/tv/ad/TvAdManager$Session;->finishedInputEvent(IZZ)V

    .line 1018
    return-void

    .line 1013
    :pswitch_18
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->this$0:Landroid/media/tv/ad/TvAdManager$Session;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;

    invoke-static {v0, v1}, Landroid/media/tv/ad/TvAdManager$Session;->-$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/media/tv/ad/TvAdManager$Session;Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)V

    .line 1014
    return-void

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_7
    .end packed-switch
.end method

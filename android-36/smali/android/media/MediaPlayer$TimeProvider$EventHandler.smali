.class Landroid/media/MediaPlayer$TimeProvider$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer$TimeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaPlayer$TimeProvider;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V
    .registers 3
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

    .line 6236
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    .line 6237
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6238
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 6242
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 6243
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_28

    :pswitch_a
    goto :goto_27

    .line 6254
    :pswitch_b
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$mnotifyTrackData(Landroid/media/MediaPlayer$TimeProvider;Landroid/util/Pair;)V

    goto :goto_27

    .line 6251
    :pswitch_15
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$mnotifySeek(Landroid/media/MediaPlayer$TimeProvider;)V

    .line 6252
    goto :goto_27

    .line 6248
    :pswitch_1b
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$mnotifyStop(Landroid/media/MediaPlayer$TimeProvider;)V

    .line 6249
    goto :goto_27

    .line 6245
    :pswitch_21
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$mnotifyTimedEvent(Landroid/media/MediaPlayer$TimeProvider;Z)V

    .line 6246
    nop

    .line 6258
    :cond_27
    :goto_27
    return-void

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_21
        :pswitch_a
        :pswitch_1b
        :pswitch_15
        :pswitch_b
    .end packed-switch
.end method

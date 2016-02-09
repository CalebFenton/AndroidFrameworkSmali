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
.field final synthetic this$1:Landroid/media/MediaPlayer$TimeProvider;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/MediaPlayer$TimeProvider;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 3836
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    #@2
    .line 3837
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 3836
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 3842
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 3843
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 3841
    :cond_0
    :goto_0
    return-void

    #@b
    .line 3845
    :pswitch_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-static {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->-wrap2(Landroid/media/MediaPlayer$TimeProvider;Z)V

    #@11
    goto :goto_0

    #@12
    .line 3848
    :pswitch_1
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    #@14
    invoke-static {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->-wrap2(Landroid/media/MediaPlayer$TimeProvider;Z)V

    #@17
    goto :goto_0

    #@18
    .line 3851
    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    #@1a
    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->-wrap1(Landroid/media/MediaPlayer$TimeProvider;)V

    #@1d
    goto :goto_0

    #@1e
    .line 3854
    :pswitch_3
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    #@20
    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->-wrap0(Landroid/media/MediaPlayer$TimeProvider;)V

    #@23
    goto :goto_0

    #@24
    .line 3843
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

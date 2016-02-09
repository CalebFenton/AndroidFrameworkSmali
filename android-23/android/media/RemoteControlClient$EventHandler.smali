.class Landroid/media/RemoteControlClient$EventHandler;
.super Landroid/os/Handler;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method public constructor <init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteControlClient;
    .param p2, "rcc"    # Landroid/media/RemoteControlClient;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1008
    iput-object p1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    #@2
    .line 1009
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1008
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1014
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1019
    const-string/jumbo v0, "RemoteControlClient"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Unknown event "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget v2, p1, Landroid/os/Message;->what:I

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, " in RemoteControlClient handler"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 1013
    :goto_0
    return-void

    #@29
    .line 1016
    :pswitch_0
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    #@2b
    invoke-static {v0}, Landroid/media/RemoteControlClient;->-wrap0(Landroid/media/RemoteControlClient;)V

    #@2e
    goto :goto_0

    #@2f
    .line 1014
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

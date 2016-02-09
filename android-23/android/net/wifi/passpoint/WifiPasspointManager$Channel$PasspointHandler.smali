.class Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;
.super Landroid/os/Handler;
.source "WifiPasspointManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PasspointHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 285
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    #@2
    .line 286
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 285
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 291
    const/4 v0, 0x0

    #@4
    .line 293
    .local v0, "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->what:I

    #@6
    sparse-switch v3, :sswitch_data_0

    #@9
    .line 346
    const-string/jumbo v3, "PasspointManager"

    #@c
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "Ignored "

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 290
    .end local v0    # "listener":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    #@24
    .line 295
    .restart local v0    # "listener":Ljava/lang/Object;
    :sswitch_0
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    #@26
    invoke-static {v3}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-get1(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    #@29
    move-result-object v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 296
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    #@2e
    invoke-static {v3}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-get1(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    #@31
    move-result-object v3

    #@32
    invoke-interface {v3}, Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;->onChannelDisconnected()V

    #@35
    .line 297
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    #@37
    invoke-static {v3, v4}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-set0(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;)Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    #@3a
    goto :goto_0

    #@3b
    .line 302
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3d
    check-cast v1, Landroid/net/wifi/passpoint/WifiPasspointInfo;

    #@3f
    .line 303
    .local v1, "result":Landroid/net/wifi/passpoint/WifiPasspointInfo;
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    #@41
    invoke-static {v3, v1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap5(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/passpoint/WifiPasspointInfo;)V

    #@44
    .line 304
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    #@46
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@48
    invoke-static {v3, v4, v6}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap2(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;IZ)Ljava/lang/Object;

    #@4b
    move-result-object v0

    #@4c
    .line 305
    if-eqz v0, :cond_0

    #@4e
    move-object v3, v0

    #@4f
    .line 306
    check-cast v3, Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;

    #@51
    invoke-interface {v3}, Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;->onSuccess()V

    #@54
    goto :goto_0

    #@55
    .line 311
    .end local v1    # "result":Landroid/net/wifi/passpoint/WifiPasspointInfo;
    :sswitch_2
    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    #@57
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@59
    check-cast v3, Landroid/net/wifi/ScanResult;

    #@5b
    invoke-static {v4, v3}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap4(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/ScanResult;)V

    #@5e
    .line 312
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    #@60
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@62
    invoke-static {v3, v4, v6}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap2(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;IZ)Ljava/lang/Object;

    #@65
    move-result-object v0

    #@66
    .line 313
    if-nez v0, :cond_1

    #@68
    .line 314
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    #@6a
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@6c
    invoke-static {v3, v4, v5}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap2(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;IZ)Ljava/lang/Object;

    #@6f
    .line 315
    :cond_1
    if-eqz v0, :cond_0

    #@71
    move-object v3, v0

    #@72
    .line 316
    check-cast v3, Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;

    #@74
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@76
    invoke-interface {v3, v4}, Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;->onFailure(I)V

    #@79
    goto :goto_0

    #@7a
    .line 321
    :sswitch_3
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    #@7c
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@7e
    invoke-static {v3, v4, v5}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap2(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;IZ)Ljava/lang/Object;

    #@81
    move-result-object v0

    #@82
    .line 322
    if-eqz v0, :cond_0

    #@84
    move-object v3, v0

    #@85
    .line 323
    check-cast v3, Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;

    #@87
    invoke-interface {v3}, Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;->onSuccess()V

    #@8a
    goto :goto_0

    #@8b
    .line 328
    :sswitch_4
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    #@8d
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@8f
    invoke-static {v3, v4, v5}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap2(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;IZ)Ljava/lang/Object;

    #@92
    move-result-object v0

    #@93
    .line 329
    if-eqz v0, :cond_0

    #@95
    move-object v3, v0

    #@96
    .line 330
    check-cast v3, Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;

    #@98
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@9a
    invoke-interface {v3, v4}, Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;->onFailure(I)V

    #@9d
    goto :goto_0

    #@9e
    .line 335
    :sswitch_5
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    #@a0
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@a2
    invoke-static {v3, v4}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap3(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;I)Ljava/lang/Object;

    #@a5
    move-result-object v0

    #@a6
    .line 336
    if-eqz v0, :cond_0

    #@a8
    .line 337
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@aa
    check-cast v2, Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString;

    #@ac
    .line 338
    .local v2, "str":Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString;
    if-eqz v2, :cond_2

    #@ae
    iget-object v3, v2, Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString;->string:Ljava/lang/String;

    #@b0
    if-nez v3, :cond_3

    #@b2
    :cond_2
    move-object v3, v0

    #@b3
    .line 339
    check-cast v3, Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;

    #@b5
    invoke-interface {v3}, Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;->onBrowserDismiss()V

    #@b8
    goto/16 :goto_0

    #@ba
    :cond_3
    move-object v3, v0

    #@bb
    .line 341
    check-cast v3, Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;

    #@bd
    iget-object v4, v2, Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString;->string:Ljava/lang/String;

    #@bf
    invoke-interface {v3, v4}, Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;->onBrowserLaunch(Ljava/lang/String;)V

    #@c2
    goto/16 :goto_0

    #@c4
    .line 293
    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x28002 -> :sswitch_2
        0x28003 -> :sswitch_1
        0x28008 -> :sswitch_5
        0x28009 -> :sswitch_4
        0x2800a -> :sswitch_3
    .end sparse-switch
.end method

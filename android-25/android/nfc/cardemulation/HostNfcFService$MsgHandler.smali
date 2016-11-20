.class final Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;
.super Landroid/os/Handler;
.source "HostNfcFService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/HostNfcFService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/cardemulation/HostNfcFService;


# direct methods
.method constructor <init>(Landroid/nfc/cardemulation/HostNfcFService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/nfc/cardemulation/HostNfcFService;

    #@0
    .prologue
    .line 171
    iput-object p1, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 174
    iget v6, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v6, :pswitch_data_0

    #@6
    .line 224
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@9
    .line 173
    :cond_0
    :goto_0
    return-void

    #@a
    .line 176
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@d
    move-result-object v0

    #@e
    .line 177
    .local v0, "dataBundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    #@10
    .line 178
    return-void

    #@11
    .line 180
    :cond_1
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    #@13
    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    #@15
    if-nez v6, :cond_2

    #@17
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    #@19
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@1b
    iput-object v7, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    #@1d
    .line 182
    :cond_2
    const-string/jumbo v6, "data"

    #@20
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@23
    move-result-object v2

    #@24
    .line 183
    .local v2, "packet":[B
    if-eqz v2, :cond_4

    #@26
    .line 184
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    #@28
    invoke-virtual {v6, v2, v8}, Landroid/nfc/cardemulation/HostNfcFService;->processNfcFPacket([BLandroid/os/Bundle;)[B

    #@2b
    move-result-object v5

    #@2c
    .line 185
    .local v5, "responsePacket":[B
    if-eqz v5, :cond_0

    #@2e
    .line 186
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    #@30
    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    #@32
    if-nez v6, :cond_3

    #@34
    .line 187
    const-string/jumbo v6, "NfcFService"

    #@37
    const-string/jumbo v7, "Response not sent; service was deactivated."

    #@3a
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 188
    return-void

    #@3e
    .line 190
    :cond_3
    const/4 v6, 0x1

    #@3f
    invoke-static {v8, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@42
    move-result-object v4

    #@43
    .line 191
    .local v4, "responseMsg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    #@45
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@48
    .line 192
    .local v3, "responseBundle":Landroid/os/Bundle;
    const-string/jumbo v6, "data"

    #@4b
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@4e
    .line 193
    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@51
    .line 194
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    #@53
    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    #@55
    iput-object v6, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@57
    .line 196
    :try_start_0
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    #@59
    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    #@5b
    invoke-virtual {v6, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    goto :goto_0

    #@5f
    .line 197
    :catch_0
    move-exception v1

    #@60
    .line 198
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "TAG"

    #@63
    const-string/jumbo v7, "Response not sent; RemoteException calling into NfcService."

    #@66
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    goto :goto_0

    #@6a
    .line 203
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "responseBundle":Landroid/os/Bundle;
    .end local v4    # "responseMsg":Landroid/os/Message;
    .end local v5    # "responsePacket":[B
    :cond_4
    const-string/jumbo v6, "NfcFService"

    #@6d
    const-string/jumbo v7, "Received MSG_COMMAND_PACKET without data."

    #@70
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    goto :goto_0

    #@74
    .line 207
    .end local v0    # "dataBundle":Landroid/os/Bundle;
    .end local v2    # "packet":[B
    :pswitch_1
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    #@76
    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    #@78
    if-nez v6, :cond_5

    #@7a
    .line 208
    const-string/jumbo v6, "NfcFService"

    #@7d
    const-string/jumbo v7, "Response not sent; service was deactivated."

    #@80
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    .line 209
    return-void

    #@84
    .line 212
    :cond_5
    :try_start_1
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    #@86
    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    #@88
    iput-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@8a
    .line 213
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    #@8c
    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    #@8e
    invoke-virtual {v6, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@91
    goto/16 :goto_0

    #@93
    .line 214
    :catch_1
    move-exception v1

    #@94
    .line 215
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "NfcFService"

    #@97
    const-string/jumbo v7, "RemoteException calling into NfcService."

    #@9a
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9d
    goto/16 :goto_0

    #@9f
    .line 220
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_2
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    #@a1
    iput-object v8, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    #@a3
    .line 221
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    #@a5
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@a7
    invoke-virtual {v6, v7}, Landroid/nfc/cardemulation/HostNfcFService;->onDeactivated(I)V

    #@aa
    goto/16 :goto_0

    #@ac
    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

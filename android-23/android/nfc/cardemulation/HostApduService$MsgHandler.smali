.class final Landroid/nfc/cardemulation/HostApduService$MsgHandler;
.super Landroid/os/Handler;
.source "HostApduService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/HostApduService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/cardemulation/HostApduService;


# direct methods
.method constructor <init>(Landroid/nfc/cardemulation/HostApduService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/nfc/cardemulation/HostApduService;

    #@0
    .prologue
    .line 229
    iput-object p1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

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
    .line 232
    iget v6, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v6, :pswitch_data_0

    #@6
    .line 294
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@9
    .line 231
    :cond_0
    :goto_0
    return-void

    #@a
    .line 234
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@d
    move-result-object v1

    #@e
    .line 235
    .local v1, "dataBundle":Landroid/os/Bundle;
    if-nez v1, :cond_1

    #@10
    .line 236
    return-void

    #@11
    .line 238
    :cond_1
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    #@13
    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    #@15
    if-nez v6, :cond_2

    #@17
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    #@19
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@1b
    iput-object v7, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    #@1d
    .line 240
    :cond_2
    const-string/jumbo v6, "data"

    #@20
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@23
    move-result-object v0

    #@24
    .line 241
    .local v0, "apdu":[B
    if-eqz v0, :cond_4

    #@26
    .line 242
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    #@28
    invoke-virtual {v6, v0, v8}, Landroid/nfc/cardemulation/HostApduService;->processCommandApdu([BLandroid/os/Bundle;)[B

    #@2b
    move-result-object v3

    #@2c
    .line 243
    .local v3, "responseApdu":[B
    if-eqz v3, :cond_0

    #@2e
    .line 244
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    #@30
    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    #@32
    if-nez v6, :cond_3

    #@34
    .line 245
    const-string/jumbo v6, "ApduService"

    #@37
    const-string/jumbo v7, "Response not sent; service was deactivated."

    #@3a
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 246
    return-void

    #@3e
    .line 248
    :cond_3
    const/4 v6, 0x1

    #@3f
    invoke-static {v8, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@42
    move-result-object v5

    #@43
    .line 249
    .local v5, "responseMsg":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    #@45
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@48
    .line 250
    .local v4, "responseBundle":Landroid/os/Bundle;
    const-string/jumbo v6, "data"

    #@4b
    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@4e
    .line 251
    invoke-virtual {v5, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@51
    .line 252
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    #@53
    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    #@55
    iput-object v6, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@57
    .line 254
    :try_start_0
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    #@59
    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    #@5b
    invoke-virtual {v6, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    goto :goto_0

    #@5f
    .line 255
    :catch_0
    move-exception v2

    #@60
    .line 256
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "TAG"

    #@63
    const-string/jumbo v7, "Response not sent; RemoteException calling into NfcService."

    #@66
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    goto :goto_0

    #@6a
    .line 261
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "responseApdu":[B
    .end local v4    # "responseBundle":Landroid/os/Bundle;
    .end local v5    # "responseMsg":Landroid/os/Message;
    :cond_4
    const-string/jumbo v6, "ApduService"

    #@6d
    const-string/jumbo v7, "Received MSG_COMMAND_APDU without data."

    #@70
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    goto :goto_0

    #@74
    .line 265
    .end local v0    # "apdu":[B
    .end local v1    # "dataBundle":Landroid/os/Bundle;
    :pswitch_1
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    #@76
    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    #@78
    if-nez v6, :cond_5

    #@7a
    .line 266
    const-string/jumbo v6, "ApduService"

    #@7d
    const-string/jumbo v7, "Response not sent; service was deactivated."

    #@80
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    .line 267
    return-void

    #@84
    .line 270
    :cond_5
    :try_start_1
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    #@86
    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    #@88
    iput-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@8a
    .line 271
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    #@8c
    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    #@8e
    invoke-virtual {v6, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@91
    goto/16 :goto_0

    #@93
    .line 272
    :catch_1
    move-exception v2

    #@94
    .line 273
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "ApduService"

    #@97
    const-string/jumbo v7, "RemoteException calling into NfcService."

    #@9a
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9d
    goto/16 :goto_0

    #@9f
    .line 278
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_2
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    #@a1
    iput-object v8, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    #@a3
    .line 279
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    #@a5
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@a7
    invoke-virtual {v6, v7}, Landroid/nfc/cardemulation/HostApduService;->onDeactivated(I)V

    #@aa
    goto/16 :goto_0

    #@ac
    .line 282
    :pswitch_3
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    #@ae
    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    #@b0
    if-nez v6, :cond_6

    #@b2
    .line 283
    const-string/jumbo v6, "ApduService"

    #@b5
    const-string/jumbo v7, "notifyUnhandled not sent; service was deactivated."

    #@b8
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    .line 284
    return-void

    #@bc
    .line 287
    :cond_6
    :try_start_2
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    #@be
    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    #@c0
    iput-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@c2
    .line 288
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    #@c4
    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    #@c6
    invoke-virtual {v6, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@c9
    goto/16 :goto_0

    #@cb
    .line 289
    :catch_2
    move-exception v2

    #@cc
    .line 290
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "ApduService"

    #@cf
    const-string/jumbo v7, "RemoteException calling into NfcService."

    #@d2
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    goto/16 :goto_0

    #@d7
    .line 232
    nop

    #@d8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

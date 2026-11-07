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
.field final synthetic blacklist this$0:Landroid/nfc/cardemulation/HostApduService;


# direct methods
.method constructor blacklist <init>(Landroid/nfc/cardemulation/HostApduService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/nfc/cardemulation/HostApduService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 323
    iput-object p1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 326
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "RemoteException calling into NfcService."

    const-string v2, "Response not sent; service was deactivated."

    const-string v3, "hce_response_apdu"

    const/4 v4, 0x0

    const-string v5, "ApduService"

    packed-switch v0, :pswitch_data_164

    .line 436
    :pswitch_e
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_162

    .line 396
    :pswitch_13
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received response apdu ack for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    goto/16 :goto_162

    .line 418
    :pswitch_32
    nop

    .line 419
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.nfc.cardemulation.POLLING_FRAMES"

    const-class v2, Landroid/nfc/cardemulation/PollingFrame;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 421
    .local v0, "pollingFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/PollingFrame;>;"
    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v1, v0}, Landroid/nfc/cardemulation/HostApduService;->processPollingFrames(Ljava/util/List;)V

    .line 423
    invoke-static {}, Lcom/android/nfc/module/flags/Flags;->nfcHceLatencyEvents()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 425
    const/4 v1, 0x7

    :try_start_4b
    invoke-static {v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 426
    .local v1, "ackMsg":Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 427
    iget-object v2, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v2}, Landroid/nfc/cardemulation/HostApduService;->getMessenger()Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 428
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_60} :catch_61

    .line 431
    .end local v1    # "ackMsg":Landroid/os/Message;
    goto :goto_67

    .line 429
    :catch_61
    move-exception v1

    .line 430
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to acknowledge MSG_POLLING_LOOP"

    invoke-static {v5, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    .end local v0    # "pollingFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/PollingFrame;>;"
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_67
    :goto_67
    goto/16 :goto_162

    .line 405
    :pswitch_69
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/HostApduService;->getNfcService()Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_77

    .line 406
    const-string v0, "notifyUnhandled not sent; service was deactivated."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void

    .line 410
    :cond_77
    :try_start_77
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/HostApduService;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 411
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/HostApduService;->getNfcService()Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_88} :catch_8a

    .line 414
    goto/16 :goto_162

    .line 412
    :catch_8a
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_162

    .line 401
    :pswitch_90
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v0, v4}, Landroid/nfc/cardemulation/HostApduService;->setNfcService(Landroid/os/Messenger;)V

    .line 402
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/HostApduService;->onDeactivated(I)V

    .line 403
    goto/16 :goto_162

    .line 383
    :pswitch_9e
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/HostApduService;->getNfcService()Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_aa

    .line 384
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void

    .line 389
    :cond_aa
    :try_start_aa
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/HostApduService;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 390
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/HostApduService;->getNfcService()Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_bb} :catch_bd

    .line 393
    goto/16 :goto_162

    .line 391
    :catch_bd
    move-exception v0

    .line 392
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_162

    .line 328
    :pswitch_c3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 329
    .local v0, "dataBundle":Landroid/os/Bundle;
    if-nez v0, :cond_ca

    .line 330
    return-void

    .line 332
    :cond_ca
    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/HostApduService;->getNfcService()Landroid/os/Messenger;

    move-result-object v1

    if-nez v1, :cond_d9

    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v6}, Landroid/nfc/cardemulation/HostApduService;->setNfcService(Landroid/os/Messenger;)V

    .line 334
    :cond_d9
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 335
    .local v6, "apdu":[B
    if-eqz v6, :cond_15c

    .line 336
    iget-object v7, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v7, v6, v4}, Landroid/nfc/cardemulation/HostApduService;->processCommandApdu([BLandroid/os/Bundle;)[B

    move-result-object v7

    .line 338
    .local v7, "responseApdu":[B
    invoke-static {}, Lcom/android/nfc/module/flags/Flags;->nfcHceLatencyEvents()Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 340
    const/4 v8, 0x5

    :try_start_ee
    invoke-static {v4, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 341
    .local v8, "ackMsg":Landroid/os/Message;
    iget v9, p1, Landroid/os/Message;->arg1:I

    iput v9, v8, Landroid/os/Message;->arg1:I

    .line 342
    iget-object v9, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v9}, Landroid/nfc/cardemulation/HostApduService;->getMessenger()Landroid/os/Messenger;

    move-result-object v9

    iput-object v9, v8, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 343
    iget-object v9, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v9, v8}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_103
    .catch Landroid/os/RemoteException; {:try_start_ee .. :try_end_103} :catch_104

    .line 346
    .end local v8    # "ackMsg":Landroid/os/Message;
    goto :goto_10a

    .line 344
    :catch_104
    move-exception v8

    .line 345
    .local v8, "e":Landroid/os/RemoteException;
    const-string v9, "Failed to acknowledge MSG_COMMAND_APDU"

    invoke-static {v5, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_10a
    :goto_10a
    if-eqz v7, :cond_15b

    .line 350
    iget-object v8, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/HostApduService;->getNfcService()Landroid/os/Messenger;

    move-result-object v8

    if-nez v8, :cond_118

    .line 351
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void

    .line 355
    :cond_118
    const/4 v2, 0x1

    invoke-static {v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 357
    .local v2, "responseMsg":Landroid/os/Message;
    const/4 v4, 0x0

    .line 358
    .local v4, "ackCookie":I
    invoke-static {}, Lcom/android/nfc/module/flags/Flags;->nfcHceLatencyEvents()Z

    move-result v8

    if-eqz v8, :cond_12f

    .line 359
    iget-object v8, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-static {v8}, Landroid/nfc/cardemulation/HostApduService;->-$$Nest$mgenerateApduAckCookie(Landroid/nfc/cardemulation/HostApduService;)I

    move-result v4

    .line 360
    iput v4, p1, Landroid/os/Message;->arg1:I

    .line 361
    invoke-static {v3, v4}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 364
    :cond_12f
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 365
    .local v8, "responseBundle":Landroid/os/Bundle;
    invoke-virtual {v8, v1, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 366
    invoke-virtual {v2, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 367
    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/HostApduService;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 369
    :try_start_142
    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/HostApduService;->getNfcService()Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_14b
    .catch Landroid/os/RemoteException; {:try_start_142 .. :try_end_14b} :catch_14c

    .line 376
    goto :goto_15b

    .line 370
    :catch_14c
    move-exception v1

    .line 371
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/nfc/module/flags/Flags;->nfcHceLatencyEvents()Z

    move-result v9

    if-eqz v9, :cond_156

    .line 372
    invoke-static {v3, v4}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 374
    :cond_156
    const-string v3, "Response not sent; RemoteException calling into NfcService."

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "responseMsg":Landroid/os/Message;
    .end local v4    # "ackCookie":I
    .end local v7    # "responseApdu":[B
    .end local v8    # "responseBundle":Landroid/os/Bundle;
    :cond_15b
    :goto_15b
    goto :goto_162

    .line 379
    :cond_15c
    const-string v1, "Received MSG_COMMAND_APDU without data."

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    nop

    .line 438
    .end local v0    # "dataBundle":Landroid/os/Bundle;
    .end local v6    # "apdu":[B
    :goto_162
    return-void

    nop

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_9e
        :pswitch_90
        :pswitch_69
        :pswitch_32
        :pswitch_e
        :pswitch_13
    .end packed-switch
.end method

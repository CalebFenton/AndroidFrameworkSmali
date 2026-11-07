.class public Landroid/nfc/cardemulation/HostNfcFServiceMsgHandler;
.super Landroid/os/Handler;
.source "HostNfcFServiceMsgHandler.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HostNfcFServMsgHandler"


# instance fields
.field private final blacklist mHostNfcFService:Landroid/nfc/cardemulation/HostNfcFService;


# direct methods
.method public constructor blacklist <init>(Landroid/nfc/cardemulation/HostNfcFService;)V
    .registers 2
    .param p1, "hostNfcFService"    # Landroid/nfc/cardemulation/HostNfcFService;

    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/nfc/cardemulation/HostNfcFServiceMsgHandler;->mHostNfcFService:Landroid/nfc/cardemulation/HostNfcFService;

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "Response not sent; service was deactivated."

    const/4 v2, 0x0

    const-string v3, "HostNfcFServMsgHandler"

    packed-switch v0, :pswitch_data_a6

    .line 107
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_a5

    .line 103
    :pswitch_f
    iget-object v0, p0, Landroid/nfc/cardemulation/HostNfcFServiceMsgHandler;->mHostNfcFService:Landroid/nfc/cardemulation/HostNfcFService;

    invoke-virtual {v0, v2}, Landroid/nfc/cardemulation/HostNfcFService;->setNfcService(Landroid/os/Messenger;)V

    .line 104
    iget-object v0, p0, Landroid/nfc/cardemulation/HostNfcFServiceMsgHandler;->mHostNfcFService:Landroid/nfc/cardemulation/HostNfcFService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/HostNfcFService;->onDeactivated(I)V

    .line 105
    goto/16 :goto_a5

    .line 90
    :pswitch_1d
    iget-object v0, p0, Landroid/nfc/cardemulation/HostNfcFServiceMsgHandler;->mHostNfcFService:Landroid/nfc/cardemulation/HostNfcFService;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/HostNfcFService;->getNfcService()Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_29

    .line 91
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 95
    :cond_29
    :try_start_29
    iget-object v0, p0, Landroid/nfc/cardemulation/HostNfcFServiceMsgHandler;->mHostNfcFService:Landroid/nfc/cardemulation/HostNfcFService;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/HostNfcFService;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 96
    iget-object v0, p0, Landroid/nfc/cardemulation/HostNfcFServiceMsgHandler;->mHostNfcFService:Landroid/nfc/cardemulation/HostNfcFService;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/HostNfcFService;->getNfcService()Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3a} :catch_3b

    .line 99
    goto :goto_a5

    .line 97
    :catch_3b
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteException calling into NfcService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_a5

    .line 56
    :pswitch_42
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "dataBundle":Landroid/os/Bundle;
    if-nez v0, :cond_49

    .line 58
    return-void

    .line 60
    :cond_49
    iget-object v4, p0, Landroid/nfc/cardemulation/HostNfcFServiceMsgHandler;->mHostNfcFService:Landroid/nfc/cardemulation/HostNfcFService;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/HostNfcFService;->getNfcService()Landroid/os/Messenger;

    move-result-object v4

    if-nez v4, :cond_58

    .line 61
    iget-object v4, p0, Landroid/nfc/cardemulation/HostNfcFServiceMsgHandler;->mHostNfcFService:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4, v5}, Landroid/nfc/cardemulation/HostNfcFService;->setNfcService(Landroid/os/Messenger;)V

    .line 65
    :cond_58
    const-string v4, "data"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 66
    .local v5, "packet":[B
    if-eqz v5, :cond_9f

    .line 67
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFServiceMsgHandler;->mHostNfcFService:Landroid/nfc/cardemulation/HostNfcFService;

    invoke-virtual {v6, v5, v2}, Landroid/nfc/cardemulation/HostNfcFService;->processNfcFPacket([BLandroid/os/Bundle;)[B

    move-result-object v6

    .line 68
    .local v6, "responsePacket":[B
    if-eqz v6, :cond_9e

    .line 69
    iget-object v7, p0, Landroid/nfc/cardemulation/HostNfcFServiceMsgHandler;->mHostNfcFService:Landroid/nfc/cardemulation/HostNfcFService;

    invoke-virtual {v7}, Landroid/nfc/cardemulation/HostNfcFService;->getNfcService()Landroid/os/Messenger;

    move-result-object v7

    if-nez v7, :cond_74

    .line 70
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 73
    :cond_74
    const/4 v1, 0x1

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 74
    .local v1, "responseMsg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v2, "responseBundle":Landroid/os/Bundle;
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 76
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 77
    iget-object v3, p0, Landroid/nfc/cardemulation/HostNfcFServiceMsgHandler;->mHostNfcFService:Landroid/nfc/cardemulation/HostNfcFService;

    invoke-virtual {v3}, Landroid/nfc/cardemulation/HostNfcFService;->getMessenger()Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 79
    :try_start_8c
    iget-object v3, p0, Landroid/nfc/cardemulation/HostNfcFServiceMsgHandler;->mHostNfcFService:Landroid/nfc/cardemulation/HostNfcFService;

    invoke-virtual {v3}, Landroid/nfc/cardemulation/HostNfcFService;->getNfcService()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_95} :catch_96

    .line 83
    goto :goto_9e

    .line 80
    :catch_96
    move-exception v3

    .line 81
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "TAG"

    const-string v7, "Response not sent; RemoteException calling into NfcService."

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v1    # "responseMsg":Landroid/os/Message;
    .end local v2    # "responseBundle":Landroid/os/Bundle;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "responsePacket":[B
    :cond_9e
    :goto_9e
    goto :goto_a5

    .line 86
    :cond_9f
    const-string v1, "Received MSG_COMMAND_PACKET without data."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    nop

    .line 109
    .end local v0    # "dataBundle":Landroid/os/Bundle;
    .end local v5    # "packet":[B
    :goto_a5
    return-void

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_42
        :pswitch_1d
        :pswitch_f
    .end packed-switch
.end method

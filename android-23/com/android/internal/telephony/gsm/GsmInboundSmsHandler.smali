.class public Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "GsmInboundSmsHandler.java"


# instance fields
.field private final mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 48
    const-string/jumbo v1, "GsmInboundSmsHandler"

    #@3
    .line 49
    invoke-static {p1, p3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    #@6
    move-result-object v5

    #@7
    move-object v0, p0

    #@8
    move-object v2, p1

    #@9
    move-object v3, p2

    #@a
    move-object v4, p3

    #@b
    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    #@e
    .line 50
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x1

    #@15
    const/4 v3, 0x0

    #@16
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    #@19
    .line 51
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    #@1b
    iget-object v1, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1d
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    #@20
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    #@22
    .line 47
    return-void
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 71
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)V

    #@5
    .line 72
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->start()V

    #@8
    .line 73
    return-object v0
.end method

.method private static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    #@0
    .prologue
    .line 190
    packed-switch p0, :pswitch_data_0

    #@3
    .line 199
    :pswitch_0
    const/16 v0, 0xff

    #@5
    return v0

    #@6
    .line 194
    :pswitch_1
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 196
    :pswitch_2
    const/16 v0, 0xd3

    #@a
    return v0

    #@b
    .line 190
    nop

    #@c
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->resultToCause(I)I

    #@7
    move-result v1

    #@8
    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    #@b
    .line 164
    return-void
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 7
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    move-object v1, p1

    #@3
    .line 95
    check-cast v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    #@5
    .line 97
    .local v1, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    #@8
    move-result v5

    #@9
    if-eqz v5, :cond_0

    #@b
    .line 100
    const-string/jumbo v3, "Received short message type 0, Don\'t display or store it. Send Ack"

    #@e
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    #@11
    .line 101
    return v4

    #@12
    .line 105
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_1

    #@18
    .line 106
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@1a
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    #@1d
    move-result-object v2

    #@1e
    .line 107
    .local v2, "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    #@20
    invoke-virtual {v3, v2, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;)I

    #@23
    move-result v3

    #@24
    return v3

    #@25
    .line 110
    .end local v2    # "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    :cond_1
    const/4 v0, 0x0

    #@26
    .line 111
    .local v0, "handled":Z
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_4

    #@2c
    .line 112
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    #@2f
    move-result v5

    #@30
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    #@33
    .line 113
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    #@36
    move-result v0

    #@37
    .line 114
    .local v0, "handled":Z
    new-instance v5, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v6, "Received voice mail indicator set SMS shouldStore="

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    if-eqz v0, :cond_3

    #@45
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    #@50
    .line 120
    .end local v0    # "handled":Z
    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    #@52
    .line 121
    return v4

    #@53
    .restart local v0    # "handled":Z
    :cond_3
    move v3, v4

    #@54
    .line 114
    goto :goto_0

    #@55
    .line 115
    .local v0, "handled":Z
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    #@58
    move-result v5

    #@59
    if-eqz v5, :cond_2

    #@5b
    .line 116
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    #@5e
    .line 117
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    #@61
    move-result v0

    #@62
    .line 118
    .local v0, "handled":Z
    new-instance v5, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v6, "Received voice mail indicator clear SMS shouldStore="

    #@6a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    if-eqz v0, :cond_5

    #@70
    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    #@7b
    goto :goto_1

    #@7c
    :cond_5
    move v3, v4

    #@7d
    goto :goto_2

    #@7e
    .line 124
    .end local v0    # "handled":Z
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@80
    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    #@83
    move-result v3

    #@84
    if-nez v3, :cond_7

    #@86
    .line 125
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@89
    move-result-object v3

    #@8a
    sget-object v4, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@8c
    if-eq v3, v4, :cond_7

    #@8e
    .line 128
    const/4 v3, 0x3

    #@8f
    return v3

    #@90
    .line 131
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    #@93
    move-result v3

    #@94
    return v3
.end method

.method protected is3gpp2()Z
    .locals 1

    #@0
    .prologue
    .line 82
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onQuitting()V
    .locals 2

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    #@b
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    #@d
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    #@10
    .line 62
    const-string/jumbo v0, "unregistered for 3GPP SMS"

    #@13
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    #@16
    .line 63
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    #@19
    .line 58
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    #@3
    .line 178
    const-string/jumbo v0, "onUpdatePhoneObject: dispose of old CellBroadcastHandler and make a new one"

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    #@9
    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    #@e
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mContext:Landroid/content/Context;

    #@10
    .line 180
    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    #@16
    .line 176
    return-void
.end method

.method updateMessageWaitingIndicator(I)V
    .locals 4
    .param p1, "voicemailCount"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 136
    if-gez p1, :cond_1

    #@3
    .line 137
    const/4 p1, -0x1

    #@4
    .line 144
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    #@9
    .line 146
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@c
    move-result-object v1

    #@d
    .line 147
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@f
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@12
    move-result v2

    #@13
    .line 146
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    #@16
    move-result-object v0

    #@17
    .line 148
    .local v0, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_2

    #@19
    .line 149
    const-string/jumbo v1, "updateMessageWaitingIndicator: updating SIM Records"

    #@1c
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    #@1f
    .line 150
    invoke-virtual {v0, v3, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    #@22
    .line 154
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->storeVoiceMailCount()V

    #@25
    .line 134
    return-void

    #@26
    .line 138
    .end local v0    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    const/16 v1, 0xff

    #@28
    if-le p1, v1, :cond_0

    #@2a
    .line 141
    const/16 p1, 0xff

    #@2c
    goto :goto_0

    #@2d
    .line 152
    .restart local v0    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    const-string/jumbo v1, "updateMessageWaitingIndicator: SIM Records not found"

    #@30
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    #@33
    goto :goto_1
.end method

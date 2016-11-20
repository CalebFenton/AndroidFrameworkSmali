.class public Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "GsmInboundSmsHandler.java"


# instance fields
.field private final mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 50
    const-string/jumbo v1, "GsmInboundSmsHandler"

    #@3
    .line 51
    invoke-static {p1, p3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

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
    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    #@e
    .line 52
    iget-object v0, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

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
    .line 53
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    #@1b
    iget-object v1, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1d
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    #@20
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    #@22
    .line 49
    return-void
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 73
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 74
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->start()V

    #@8
    .line 75
    return-object v0
.end method

.method private static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    #@0
    .prologue
    .line 201
    packed-switch p0, :pswitch_data_0

    #@3
    .line 210
    :pswitch_0
    const/16 v0, 0xff

    #@5
    return v0

    #@6
    .line 205
    :pswitch_1
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 207
    :pswitch_2
    const/16 v0, 0xd3

    #@a
    return v0

    #@b
    .line 201
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

.method private updateMessageWaitingIndicator(I)V
    .locals 4
    .param p1, "voicemailCount"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 148
    if-gez p1, :cond_1

    #@3
    .line 149
    const/4 p1, -0x1

    #@4
    .line 156
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    #@9
    .line 158
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@c
    move-result-object v1

    #@d
    .line 159
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@f
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@12
    move-result v2

    #@13
    .line 158
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    #@16
    move-result-object v0

    #@17
    .line 160
    .local v0, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_2

    #@19
    .line 161
    const-string/jumbo v1, "updateMessageWaitingIndicator: updating SIM Records"

    #@1c
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    #@1f
    .line 162
    invoke-virtual {v0, v3, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    #@22
    .line 146
    :goto_1
    return-void

    #@23
    .line 150
    .end local v0    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    const/16 v1, 0xff

    #@25
    if-le p1, v1, :cond_0

    #@27
    .line 153
    const/16 p1, 0xff

    #@29
    goto :goto_0

    #@2a
    .line 164
    .restart local v0    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    const-string/jumbo v1, "updateMessageWaitingIndicator: SIM Records not found"

    #@2d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    #@30
    goto :goto_1
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->resultToCause(I)I

    #@7
    move-result v1

    #@8
    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    #@b
    .line 175
    return-void
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 10
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    move-object v2, p1

    #@3
    .line 97
    check-cast v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    #@5
    .line 99
    .local v2, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    #@8
    move-result v7

    #@9
    if-eqz v7, :cond_1

    #@b
    .line 101
    const/4 v0, -0x1

    #@c
    .line 102
    .local v0, "destPort":I
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    #@f
    move-result-object v3

    #@10
    .line 103
    .local v3, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v3, :cond_0

    #@12
    iget-object v7, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@14
    if-eqz v7, :cond_0

    #@16
    .line 105
    iget-object v7, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@18
    iget v0, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    #@1a
    .line 108
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mContext:Landroid/content/Context;

    #@1c
    new-array v8, v6, [[B

    #@1e
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    #@21
    move-result-object v9

    #@22
    aput-object v9, v8, v5

    #@24
    const-string/jumbo v5, "3gpp"

    #@27
    .line 109
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@29
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@2c
    move-result v9

    #@2d
    .line 107
    invoke-static {v7, v8, v5, v0, v9}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->filter(Landroid/content/Context;[[BLjava/lang/String;II)Z

    #@30
    .line 112
    const-string/jumbo v5, "Received short message type 0, Don\'t display or store it. Send Ack"

    #@33
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    #@36
    .line 113
    return v6

    #@37
    .line 117
    .end local v0    # "destPort":I
    .end local v3    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    #@3a
    move-result v7

    #@3b
    if-eqz v7, :cond_2

    #@3d
    .line 118
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3f
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    #@42
    move-result-object v4

    #@43
    .line 119
    .local v4, "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    #@45
    invoke-virtual {v5, v4, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;)I

    #@48
    move-result v5

    #@49
    return v5

    #@4a
    .line 122
    .end local v4    # "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    :cond_2
    const/4 v1, 0x0

    #@4b
    .line 123
    .local v1, "handled":Z
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    #@4e
    move-result v7

    #@4f
    if-eqz v7, :cond_5

    #@51
    .line 124
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    #@54
    move-result v7

    #@55
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    #@58
    .line 125
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    #@5b
    move-result v1

    #@5c
    .line 126
    .local v1, "handled":Z
    new-instance v7, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v8, "Received voice mail indicator set SMS shouldStore="

    #@64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v7

    #@68
    if-eqz v1, :cond_4

    #@6a
    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v5

    #@72
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    #@75
    .line 132
    .end local v1    # "handled":Z
    :cond_3
    :goto_1
    if-eqz v1, :cond_7

    #@77
    .line 133
    return v6

    #@78
    .restart local v1    # "handled":Z
    :cond_4
    move v5, v6

    #@79
    .line 126
    goto :goto_0

    #@7a
    .line 127
    .local v1, "handled":Z
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    #@7d
    move-result v7

    #@7e
    if-eqz v7, :cond_3

    #@80
    .line 128
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    #@83
    .line 129
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    #@86
    move-result v1

    #@87
    .line 130
    .local v1, "handled":Z
    new-instance v7, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v8, "Received voice mail indicator clear SMS shouldStore="

    #@8f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v7

    #@93
    if-eqz v1, :cond_6

    #@95
    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@98
    move-result-object v5

    #@99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v5

    #@9d
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    #@a0
    goto :goto_1

    #@a1
    :cond_6
    move v5, v6

    #@a2
    goto :goto_2

    #@a3
    .line 136
    .end local v1    # "handled":Z
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@a5
    invoke-virtual {v5}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    #@a8
    move-result v5

    #@a9
    if-nez v5, :cond_8

    #@ab
    .line 137
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@ae
    move-result-object v5

    #@af
    sget-object v6, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@b1
    if-eq v5, v6, :cond_8

    #@b3
    .line 140
    const/4 v5, 0x3

    #@b4
    return v5

    #@b5
    .line 143
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    #@b8
    move-result v5

    #@b9
    return v5
.end method

.method protected is3gpp2()Z
    .locals 1

    #@0
    .prologue
    .line 84
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onQuitting()V
    .locals 2

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    #@b
    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    #@d
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    #@10
    .line 64
    const-string/jumbo v0, "unregistered for 3GPP SMS"

    #@13
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    #@16
    .line 65
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    #@19
    .line 60
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    #@3
    .line 189
    const-string/jumbo v0, "onUpdatePhoneObject: dispose of old CellBroadcastHandler and make a new one"

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    #@9
    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    #@e
    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mContext:Landroid/content/Context;

    #@10
    .line 191
    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    #@16
    .line 187
    return-void
.end method

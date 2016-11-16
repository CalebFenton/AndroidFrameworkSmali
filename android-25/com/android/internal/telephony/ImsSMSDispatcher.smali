.class public Lcom/android/internal/telephony/ImsSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "ImsSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RIL_ImsSms"


# instance fields
.field private mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private mIms:Z

.field private mImsSmsFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 55
    invoke-direct {p0, p1, p3, v3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    #@4
    .line 50
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    #@7
    .line 51
    const-string/jumbo v0, "unknown"

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    #@c
    .line 56
    const-string/jumbo v0, "RIL_ImsSms"

    #@f
    const-string/jumbo v1, "ImsSMSDispatcher created"

    #@12
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 60
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #@17
    invoke-direct {v0, p1, p3, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    #@1a
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@1c
    .line 61
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v0, p2, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@26
    .line 63
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@29
    move-result-object v1

    #@2a
    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@2c
    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #@2e
    .line 63
    invoke-static {v1, p2, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@34
    .line 65
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    #@36
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@38
    invoke-direct {v0, p1, p3, p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    #@3b
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@3d
    .line 66
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@40
    move-result-object v0

    #@41
    .line 67
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@43
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@45
    .line 66
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    #@48
    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4a
    const/16 v1, 0xb

    #@4c
    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4f
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@51
    const/16 v1, 0xc

    #@53
    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@56
    .line 54
    return-void
.end method

.method private isCdmaFormat(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private isCdmaMo()Z
    .locals 2

    #@0
    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@b
    move-result v0

    #@c
    const/4 v1, 0x2

    #@d
    if-ne v1, v0, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0

    #@13
    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    #@15
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    return v0
.end method

.method private setImsSmsFormat(I)V
    .locals 1
    .param p1, "format"    # I

    #@0
    .prologue
    .line 126
    packed-switch p1, :pswitch_data_0

    #@3
    .line 134
    const-string/jumbo v0, "unknown"

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    #@8
    .line 124
    :goto_0
    return-void

    #@9
    .line 128
    :pswitch_0
    const-string/jumbo v0, "3gpp"

    #@c
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    #@e
    goto :goto_0

    #@f
    .line 131
    :pswitch_1
    const-string/jumbo v0, "3gpp2"

    #@12
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    #@14
    goto :goto_0

    #@15
    .line 126
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateImsInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 140
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4
    check-cast v0, [I

    #@6
    .line 142
    .local v0, "responseArray":[I
    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    #@8
    .line 143
    aget v1, v0, v3

    #@a
    if-ne v1, v4, :cond_1

    #@c
    .line 144
    const-string/jumbo v1, "RIL_ImsSms"

    #@f
    const-string/jumbo v2, "IMS is registered!"

    #@12
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 145
    iput-boolean v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    #@17
    .line 150
    :goto_0
    aget v1, v0, v4

    #@19
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->setImsSmsFormat(I)V

    #@1c
    .line 152
    const-string/jumbo v1, "unknown"

    #@1f
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_0

    #@27
    .line 153
    const-string/jumbo v1, "RIL_ImsSms"

    #@2a
    const-string/jumbo v2, "IMS format was unknown!"

    #@2d
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 155
    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    #@32
    .line 139
    :cond_0
    return-void

    #@33
    .line 147
    :cond_1
    const-string/jumbo v1, "RIL_ImsSms"

    #@36
    const-string/jumbo v2, "IMS is NOT registered!"

    #@39
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    goto :goto_0
.end method


# virtual methods
.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 2
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    #@0
    .prologue
    .line 358
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "Error! Not implemented for IMS."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 359
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public dispose()V
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    #@5
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    #@a
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    #@f
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    #@14
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispose()V

    #@19
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@1b
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispose()V

    #@1e
    .line 84
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 351
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "getFormat should never be called from here!"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 352
    const-string/jumbo v0, "unknown"

    #@c
    return-object v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 2
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "format"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p11, "messageUri"    # Landroid/net/Uri;
    .param p12, "fullMessageText"    # Ljava/lang/String;

    #@0
    .prologue
    .line 368
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "Error! Not implemented for IMS."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 369
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 102
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    #@8
    .line 99
    :goto_0
    return-void

    #@9
    .line 105
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@b
    const/16 v2, 0xd

    #@d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    #@14
    goto :goto_0

    #@15
    .line 109
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17
    check-cast v0, Landroid/os/AsyncResult;

    #@19
    .line 111
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 112
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->updateImsInfo(Landroid/os/AsyncResult;)V

    #@20
    goto :goto_0

    #@21
    .line 114
    :cond_0
    const-string/jumbo v1, "RIL_ImsSms"

    #@24
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "IMS State query failed with exp "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 115
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@32
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    goto :goto_0

    #@3e
    .line 102
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 215
    const-string/jumbo v4, "RIL_ImsSms"

    #@3
    const-string/jumbo v5, "ImsSMSDispatcher:injectSmsPdu"

    #@6
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 220
    :try_start_0
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    #@c
    move-result-object v3

    #@d
    .line 223
    .local v3, "msg":Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_0

    #@f
    .line 224
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    #@12
    move-result-object v4

    #@13
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    #@15
    if-eq v4, v5, :cond_3

    #@17
    .line 225
    :cond_0
    if-nez v3, :cond_1

    #@19
    .line 226
    const-string/jumbo v4, "RIL_ImsSms"

    #@1c
    const-string/jumbo v5, "injectSmsPdu: createFromPdu returned null"

    #@1f
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 228
    :cond_1
    if-eqz p3, :cond_2

    #@24
    .line 229
    const/4 v4, 0x2

    #@25
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V

    #@28
    .line 231
    :cond_2
    return-void

    #@29
    .line 234
    :cond_3
    new-instance v0, Landroid/os/AsyncResult;

    #@2b
    const/4 v4, 0x0

    #@2c
    invoke-direct {v0, p3, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@2f
    .line 236
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string/jumbo v4, "3gpp"

    #@32
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_5

    #@38
    .line 237
    const-string/jumbo v4, "RIL_ImsSms"

    #@3b
    new-instance v5, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v6, "ImsSMSDispatcher:injectSmsText Sending msg="

    #@43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    .line 238
    const-string/jumbo v6, ", format="

    #@4e
    .line 237
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    .line 238
    const-string/jumbo v6, "to mGsmInboundSmsHandler"

    #@59
    .line 237
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 239
    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@66
    const/16 v5, 0x8

    #@68
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    #@6b
    .line 214
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "msg":Landroid/telephony/SmsMessage;
    :cond_4
    :goto_0
    return-void

    #@6c
    .line 240
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v3    # "msg":Landroid/telephony/SmsMessage;
    :cond_5
    const-string/jumbo v4, "3gpp2"

    #@6f
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v4

    #@73
    if-eqz v4, :cond_6

    #@75
    .line 241
    const-string/jumbo v4, "RIL_ImsSms"

    #@78
    new-instance v5, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v6, "ImsSMSDispatcher:injectSmsText Sending msg="

    #@80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    .line 242
    const-string/jumbo v6, ", format="

    #@8b
    .line 241
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v5

    #@93
    .line 242
    const-string/jumbo v6, "to mCdmaInboundSmsHandler"

    #@96
    .line 241
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v5

    #@9e
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a1
    .line 243
    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@a3
    const/16 v5, 0x8

    #@a5
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a8
    goto :goto_0

    #@a9
    .line 250
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "msg":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v1

    #@aa
    .line 251
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "RIL_ImsSms"

    #@ad
    const-string/jumbo v5, "injectSmsPdu failed: "

    #@b0
    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b3
    .line 253
    if-eqz p3, :cond_4

    #@b5
    .line 254
    const/4 v4, 0x2

    #@b6
    :try_start_1
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    #@b9
    goto :goto_0

    #@ba
    .line 255
    :catch_1
    move-exception v2

    #@bb
    .local v2, "ex":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    #@bc
    .line 246
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ex":Landroid/app/PendingIntent$CanceledException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v3    # "msg":Landroid/telephony/SmsMessage;
    :cond_6
    :try_start_2
    const-string/jumbo v4, "RIL_ImsSms"

    #@bf
    new-instance v5, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v6, "Invalid pdu format: "

    #@c7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v5

    #@cb
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v5

    #@cf
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v5

    #@d3
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d6
    .line 247
    if-eqz p3, :cond_4

    #@d8
    .line 248
    const/4 v4, 0x2

    #@d9
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@dc
    goto :goto_0
.end method

.method public isIms()Z
    .locals 1

    #@0
    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    #@2
    return v0
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@8
    move-object v1, p1

    #@9
    move-object v2, p2

    #@a
    move v3, p3

    #@b
    move-object v4, p4

    #@c
    move-object v5, p5

    #@d
    move-object v6, p6

    #@e
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    #@11
    .line 161
    :goto_0
    return-void

    #@12
    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@14
    move-object v1, p1

    #@15
    move-object v2, p2

    #@16
    move v3, p3

    #@17
    move-object v4, p4

    #@18
    move-object v5, p5

    #@19
    move-object v6, p6

    #@1a
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    #@1d
    goto :goto_0
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 176
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@8
    move-object v1, p1

    #@9
    move-object v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object v4, p4

    #@c
    move-object v5, p5

    #@d
    move-object v6, p6

    #@e
    move-object/from16 v7, p7

    #@10
    move/from16 v8, p8

    #@12
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Z)V

    #@15
    .line 175
    :goto_0
    return-void

    #@16
    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@18
    move-object v1, p1

    #@19
    move-object v2, p2

    #@1a
    move-object v3, p3

    #@1b
    move-object v4, p4

    #@1c
    move-object v5, p5

    #@1d
    move-object v6, p6

    #@1e
    move-object/from16 v7, p7

    #@20
    move/from16 v8, p8

    #@22
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Z)V

    #@25
    goto :goto_0
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 261
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    #@2
    .line 265
    .local v6, "oldFormat":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@7
    move-result v10

    #@8
    const/4 v11, 0x2

    #@9
    if-ne v11, v10, :cond_0

    #@b
    .line 266
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@d
    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    .line 270
    .local v5, "newFormat":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v10

    #@15
    if-eqz v10, :cond_2

    #@17
    .line 271
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    #@1a
    move-result v10

    #@1b
    if-eqz v10, :cond_1

    #@1d
    .line 272
    const-string/jumbo v10, "RIL_ImsSms"

    #@20
    const-string/jumbo v11, "old format matched new format (cdma)"

    #@23
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 273
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@28
    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@2b
    .line 274
    return-void

    #@2c
    .line 267
    .end local v5    # "newFormat":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@2e
    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    goto :goto_0

    #@33
    .line 276
    .restart local v5    # "newFormat":Ljava/lang/String;
    :cond_1
    const-string/jumbo v10, "RIL_ImsSms"

    #@36
    const-string/jumbo v11, "old format matched new format (gsm)"

    #@39
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 277
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@3e
    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@41
    .line 278
    return-void

    #@42
    .line 283
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    #@45
    move-result-object v4

    #@46
    .line 288
    .local v4, "map":Ljava/util/HashMap;
    const-string/jumbo v10, "scAddr"

    #@49
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@4c
    move-result v10

    #@4d
    if-eqz v10, :cond_5

    #@4f
    const-string/jumbo v10, "destAddr"

    #@52
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@55
    move-result v10

    #@56
    if-eqz v10, :cond_5

    #@58
    .line 289
    const-string/jumbo v10, "text"

    #@5b
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5e
    move-result v10

    #@5f
    if-nez v10, :cond_3

    #@61
    .line 290
    const-string/jumbo v10, "data"

    #@64
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@67
    move-result v10

    #@68
    if-eqz v10, :cond_4

    #@6a
    const-string/jumbo v10, "destPort"

    #@6d
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@70
    move-result v10

    #@71
    .line 288
    :goto_1
    if-nez v10, :cond_6

    #@73
    .line 292
    const-string/jumbo v10, "RIL_ImsSms"

    #@76
    const-string/jumbo v11, "sendRetrySms failed to re-encode per missing fields!"

    #@79
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    .line 293
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    #@7e
    const/4 v11, 0x1

    #@7f
    const/4 v12, 0x0

    #@80
    invoke-virtual {p1, v10, v11, v12}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    #@83
    .line 294
    return-void

    #@84
    .line 289
    :cond_3
    const/4 v10, 0x1

    #@85
    goto :goto_1

    #@86
    .line 290
    :cond_4
    const/4 v10, 0x0

    #@87
    goto :goto_1

    #@88
    .line 288
    :cond_5
    const/4 v10, 0x0

    #@89
    goto :goto_1

    #@8a
    .line 296
    :cond_6
    const-string/jumbo v10, "scAddr"

    #@8d
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@90
    move-result-object v8

    #@91
    check-cast v8, Ljava/lang/String;

    #@93
    .line 297
    .local v8, "scAddr":Ljava/lang/String;
    const-string/jumbo v10, "destAddr"

    #@96
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@99
    move-result-object v1

    #@9a
    check-cast v1, Ljava/lang/String;

    #@9c
    .line 299
    .local v1, "destAddr":Ljava/lang/String;
    const/4 v7, 0x0

    #@9d
    .line 301
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string/jumbo v10, "text"

    #@a0
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@a3
    move-result v10

    #@a4
    if-eqz v10, :cond_b

    #@a6
    .line 302
    const-string/jumbo v10, "RIL_ImsSms"

    #@a9
    const-string/jumbo v11, "sms failed was text"

    #@ac
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@af
    .line 303
    const-string/jumbo v10, "text"

    #@b2
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b5
    move-result-object v9

    #@b6
    check-cast v9, Ljava/lang/String;

    #@b8
    .line 305
    .local v9, "text":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    #@bb
    move-result v10

    #@bc
    if-eqz v10, :cond_9

    #@be
    .line 306
    const-string/jumbo v10, "RIL_ImsSms"

    #@c1
    const-string/jumbo v11, "old format (gsm) ==> new format (cdma)"

    #@c4
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c7
    .line 308
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@c9
    if-eqz v10, :cond_8

    #@cb
    const/4 v10, 0x1

    #@cc
    :goto_2
    const/4 v11, 0x0

    #@cd
    .line 307
    invoke-static {v8, v1, v9, v10, v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@d0
    move-result-object v7

    #@d1
    .line 333
    .end local v7    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .end local v9    # "text":Ljava/lang/String;
    :cond_7
    :goto_3
    const-string/jumbo v10, "smsc"

    #@d4
    iget-object v11, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    #@d6
    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d9
    .line 334
    const-string/jumbo v10, "pdu"

    #@dc
    iget-object v11, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    #@de
    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e1
    .line 336
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    #@e4
    move-result v10

    #@e5
    if-eqz v10, :cond_f

    #@e7
    .line 337
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@e9
    .line 339
    .local v3, "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :goto_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    #@ec
    move-result-object v10

    #@ed
    iput-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    #@ef
    .line 340
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@f2
    .line 260
    return-void

    #@f3
    .line 308
    .end local v3    # "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    .restart local v7    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    #@f4
    goto :goto_2

    #@f5
    .line 310
    :cond_9
    const-string/jumbo v10, "RIL_ImsSms"

    #@f8
    const-string/jumbo v11, "old format (cdma) ==> new format (gsm)"

    #@fb
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@fe
    .line 312
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@100
    if-eqz v10, :cond_a

    #@102
    const/4 v10, 0x1

    #@103
    :goto_5
    const/4 v11, 0x0

    #@104
    .line 311
    invoke-static {v8, v1, v9, v10, v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@107
    move-result-object v7

    #@108
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_3

    #@109
    .line 312
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_a
    const/4 v10, 0x0

    #@10a
    goto :goto_5

    #@10b
    .line 314
    .end local v9    # "text":Ljava/lang/String;
    :cond_b
    const-string/jumbo v10, "data"

    #@10e
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@111
    move-result v10

    #@112
    if-eqz v10, :cond_7

    #@114
    .line 315
    const-string/jumbo v10, "RIL_ImsSms"

    #@117
    const-string/jumbo v11, "sms failed was data"

    #@11a
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11d
    .line 316
    const-string/jumbo v10, "data"

    #@120
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@123
    move-result-object v0

    #@124
    check-cast v0, [B

    #@126
    .line 317
    .local v0, "data":[B
    const-string/jumbo v10, "destPort"

    #@129
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12c
    move-result-object v2

    #@12d
    check-cast v2, Ljava/lang/Integer;

    #@12f
    .line 319
    .local v2, "destPort":Ljava/lang/Integer;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    #@132
    move-result v10

    #@133
    if-eqz v10, :cond_d

    #@135
    .line 320
    const-string/jumbo v10, "RIL_ImsSms"

    #@138
    const-string/jumbo v11, "old format (gsm) ==> new format (cdma)"

    #@13b
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13e
    .line 322
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@141
    move-result v11

    #@142
    .line 323
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@144
    if-eqz v10, :cond_c

    #@146
    const/4 v10, 0x1

    #@147
    .line 321
    :goto_6
    invoke-static {v8, v1, v11, v0, v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@14a
    move-result-object v7

    #@14b
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_3

    #@14c
    .line 323
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_c
    const/4 v10, 0x0

    #@14d
    goto :goto_6

    #@14e
    .line 325
    :cond_d
    const-string/jumbo v10, "RIL_ImsSms"

    #@151
    const-string/jumbo v11, "old format (cdma) ==> new format (gsm)"

    #@154
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@157
    .line 327
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@15a
    move-result v11

    #@15b
    .line 328
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@15d
    if-eqz v10, :cond_e

    #@15f
    const/4 v10, 0x1

    #@160
    .line 326
    :goto_7
    invoke-static {v8, v1, v11, v0, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@163
    move-result-object v7

    #@164
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto/16 :goto_3

    #@166
    .line 328
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_e
    const/4 v10, 0x0

    #@167
    goto :goto_7

    #@168
    .line 337
    .end local v0    # "data":[B
    .end local v2    # "destPort":Ljava/lang/Integer;
    .end local v7    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@16a
    goto/16 :goto_4
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 189
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "sendSms should never be called from here!"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 186
    return-void
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 195
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "sendSmsByPstn should never be called from here!"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 193
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@3
    .line 344
    return-void
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z

    #@0
    .prologue
    .line 202
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "sendText"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@11
    move-object v1, p1

    #@12
    move-object v2, p2

    #@13
    move-object v3, p3

    #@14
    move-object v4, p4

    #@15
    move-object v5, p5

    #@16
    move-object v6, p6

    #@17
    move-object/from16 v7, p7

    #@19
    move/from16 v8, p8

    #@1b
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V

    #@1e
    .line 201
    :goto_0
    return-void

    #@1f
    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@21
    move-object v1, p1

    #@22
    move-object v2, p2

    #@23
    move-object v3, p3

    #@24
    move-object v4, p4

    #@25
    move-object v5, p5

    #@26
    move-object v6, p6

    #@27
    move-object/from16 v7, p7

    #@29
    move/from16 v8, p8

    #@2b
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V

    #@2e
    goto :goto_0
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 76
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "In IMS updatePhoneObject "

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 77
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    #@c
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@e
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    #@11
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@13
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    #@16
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@18
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    #@1b
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@1d
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    #@20
    .line 75
    return-void
.end method

.class public final Lcom/android/internal/telephony/ImsSMSDispatcher;
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
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 55
    invoke-direct {p0, p1, p3, v5}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    #@4
    .line 50
    const/4 v1, 0x0

    #@5
    iput-boolean v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    #@7
    .line 51
    const-string/jumbo v1, "unknown"

    #@a
    iput-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    #@c
    .line 56
    const-string/jumbo v1, "RIL_ImsSms"

    #@f
    const-string/jumbo v2, "ImsSMSDispatcher created"

    #@12
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 60
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #@17
    invoke-direct {v1, p1, p3, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    #@1a
    iput-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@1c
    .line 61
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v1, p2, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@23
    move-result-object v1

    #@24
    iput-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@26
    .line 63
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@29
    move-result-object v2

    #@2a
    .line 64
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@2c
    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #@2e
    .line 63
    invoke-static {v2, p2, p1, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@31
    move-result-object v1

    #@32
    iput-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@34
    .line 65
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    #@36
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@38
    invoke-direct {v1, p1, p3, p0, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    #@3b
    iput-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@3d
    .line 66
    new-instance v0, Ljava/lang/Thread;

    #@3f
    new-instance v1, Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    #@41
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@44
    move-result-object v2

    #@45
    .line 67
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@47
    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@49
    .line 66
    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    #@4c
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@4f
    .line 68
    .local v0, "broadcastThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@52
    .line 70
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@54
    const/16 v2, 0xb

    #@56
    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@59
    .line 71
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5b
    const/16 v2, 0xc

    #@5d
    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@60
    .line 54
    return-void
.end method

.method private isCdmaFormat(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 400
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
    .line 385
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

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
    .line 390
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
    .line 127
    packed-switch p1, :pswitch_data_0

    #@3
    .line 135
    const-string/jumbo v0, "unknown"

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    #@8
    .line 125
    :goto_0
    return-void

    #@9
    .line 129
    :pswitch_0
    const-string/jumbo v0, "3gpp"

    #@c
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    #@e
    goto :goto_0

    #@f
    .line 132
    :pswitch_1
    const-string/jumbo v0, "3gpp2"

    #@12
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    #@14
    goto :goto_0

    #@15
    .line 127
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
    .line 141
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4
    check-cast v0, [I

    #@6
    .line 143
    .local v0, "responseArray":[I
    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    #@8
    .line 144
    aget v1, v0, v3

    #@a
    if-ne v1, v4, :cond_1

    #@c
    .line 145
    const-string/jumbo v1, "RIL_ImsSms"

    #@f
    const-string/jumbo v2, "IMS is registered!"

    #@12
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 146
    iput-boolean v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    #@17
    .line 151
    :goto_0
    aget v1, v0, v4

    #@19
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->setImsSmsFormat(I)V

    #@1c
    .line 153
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
    .line 154
    const-string/jumbo v1, "RIL_ImsSms"

    #@2a
    const-string/jumbo v2, "IMS format was unknown!"

    #@2d
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 156
    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    #@32
    .line 140
    :cond_0
    return-void

    #@33
    .line 148
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
    .line 353
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "Error! Not implemented for IMS."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 354
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public dispose()V
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    #@5
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    #@a
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    #@f
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    #@14
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispose()V

    #@19
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@1b
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispose()V

    #@1e
    .line 85
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 346
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "getFormat should never be called from here!"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 347
    const-string/jumbo v0, "unknown"

    #@c
    return-object v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 374
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
    .line 363
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "Error! Not implemented for IMS."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 364
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 103
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 121
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    #@8
    .line 100
    :goto_0
    return-void

    #@9
    .line 106
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
    .line 110
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17
    check-cast v0, Landroid/os/AsyncResult;

    #@19
    .line 112
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 113
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->updateImsInfo(Landroid/os/AsyncResult;)V

    #@20
    goto :goto_0

    #@21
    .line 115
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
    .line 116
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@32
    .line 115
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
    .line 103
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
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
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    #@10
    move-result-object v4

    #@11
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    #@13
    if-eq v4, v5, :cond_1

    #@15
    .line 224
    if-eqz p3, :cond_0

    #@17
    .line 225
    const/4 v4, 0x2

    #@18
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V

    #@1b
    .line 226
    :cond_0
    return-void

    #@1c
    .line 229
    :cond_1
    new-instance v0, Landroid/os/AsyncResult;

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-direct {v0, p3, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@22
    .line 231
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string/jumbo v4, "3gpp"

    #@25
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_3

    #@2b
    .line 232
    const-string/jumbo v4, "RIL_ImsSms"

    #@2e
    new-instance v5, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v6, "ImsSMSDispatcher:injectSmsText Sending msg="

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    .line 233
    const-string/jumbo v6, ", format="

    #@41
    .line 232
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    .line 233
    const-string/jumbo v6, "to mGsmInboundSmsHandler"

    #@4c
    .line 232
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 234
    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@59
    const/16 v5, 0x8

    #@5b
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    #@5e
    .line 214
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "msg":Landroid/telephony/SmsMessage;
    :cond_2
    :goto_0
    return-void

    #@5f
    .line 235
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v3    # "msg":Landroid/telephony/SmsMessage;
    :cond_3
    const-string/jumbo v4, "3gpp2"

    #@62
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v4

    #@66
    if-eqz v4, :cond_4

    #@68
    .line 236
    const-string/jumbo v4, "RIL_ImsSms"

    #@6b
    new-instance v5, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v6, "ImsSMSDispatcher:injectSmsText Sending msg="

    #@73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v5

    #@77
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v5

    #@7b
    .line 237
    const-string/jumbo v6, ", format="

    #@7e
    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v5

    #@82
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v5

    #@86
    .line 237
    const-string/jumbo v6, "to mCdmaInboundSmsHandler"

    #@89
    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v5

    #@91
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    .line 238
    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@96
    const/16 v5, 0x8

    #@98
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9b
    goto :goto_0

    #@9c
    .line 245
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "msg":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v1

    #@9d
    .line 246
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "RIL_ImsSms"

    #@a0
    const-string/jumbo v5, "injectSmsPdu failed: "

    #@a3
    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a6
    .line 248
    if-eqz p3, :cond_2

    #@a8
    .line 249
    const/4 v4, 0x2

    #@a9
    :try_start_1
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    #@ac
    goto :goto_0

    #@ad
    .line 250
    :catch_1
    move-exception v2

    #@ae
    .local v2, "ex":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    #@af
    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ex":Landroid/app/PendingIntent$CanceledException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v3    # "msg":Landroid/telephony/SmsMessage;
    :cond_4
    :try_start_2
    const-string/jumbo v4, "RIL_ImsSms"

    #@b2
    new-instance v5, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string/jumbo v6, "Invalid pdu format: "

    #@ba
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v5

    #@be
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v5

    #@c2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v5

    #@c6
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c9
    .line 242
    if-eqz p3, :cond_2

    #@cb
    .line 243
    const/4 v4, 0x2

    #@cc
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@cf
    goto :goto_0
.end method

.method public isIms()Z
    .locals 1

    #@0
    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    #@2
    return v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 164
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
    .line 162
    :goto_0
    return-void

    #@12
    .line 167
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

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Z)V
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
    .line 177
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 178
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
    .line 176
    :goto_0
    return-void

    #@16
    .line 181
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
    .line 256
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    #@2
    .line 260
    .local v6, "oldFormat":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@4
    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    #@7
    move-result v10

    #@8
    const/4 v11, 0x2

    #@9
    if-ne v11, v10, :cond_0

    #@b
    .line 261
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@d
    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    .line 265
    .local v5, "newFormat":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v10

    #@15
    if-eqz v10, :cond_2

    #@17
    .line 266
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    #@1a
    move-result v10

    #@1b
    if-eqz v10, :cond_1

    #@1d
    .line 267
    const-string/jumbo v10, "RIL_ImsSms"

    #@20
    const-string/jumbo v11, "old format matched new format (cdma)"

    #@23
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 268
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@28
    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@2b
    .line 269
    return-void

    #@2c
    .line 262
    .end local v5    # "newFormat":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@2e
    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    .restart local v5    # "newFormat":Ljava/lang/String;
    goto :goto_0

    #@33
    .line 271
    :cond_1
    const-string/jumbo v10, "RIL_ImsSms"

    #@36
    const-string/jumbo v11, "old format matched new format (gsm)"

    #@39
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 272
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@3e
    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@41
    .line 273
    return-void

    #@42
    .line 278
    :cond_2
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    #@44
    .line 283
    .local v4, "map":Ljava/util/HashMap;
    const-string/jumbo v10, "scAddr"

    #@47
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@4a
    move-result v10

    #@4b
    if-eqz v10, :cond_5

    #@4d
    const-string/jumbo v10, "destAddr"

    #@50
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@53
    move-result v10

    #@54
    if-eqz v10, :cond_5

    #@56
    .line 284
    const-string/jumbo v10, "text"

    #@59
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5c
    move-result v10

    #@5d
    if-nez v10, :cond_3

    #@5f
    .line 285
    const-string/jumbo v10, "data"

    #@62
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@65
    move-result v10

    #@66
    if-eqz v10, :cond_4

    #@68
    const-string/jumbo v10, "destPort"

    #@6b
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@6e
    move-result v10

    #@6f
    .line 283
    :goto_1
    if-nez v10, :cond_6

    #@71
    .line 287
    const-string/jumbo v10, "RIL_ImsSms"

    #@74
    const-string/jumbo v11, "sendRetrySms failed to re-encode per missing fields!"

    #@77
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 288
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    #@7c
    const/4 v11, 0x1

    #@7d
    const/4 v12, 0x0

    #@7e
    invoke-virtual {p1, v10, v11, v12}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    #@81
    .line 289
    return-void

    #@82
    .line 284
    :cond_3
    const/4 v10, 0x1

    #@83
    goto :goto_1

    #@84
    .line 285
    :cond_4
    const/4 v10, 0x0

    #@85
    goto :goto_1

    #@86
    .line 283
    :cond_5
    const/4 v10, 0x0

    #@87
    goto :goto_1

    #@88
    .line 291
    :cond_6
    const-string/jumbo v10, "scAddr"

    #@8b
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    move-result-object v8

    #@8f
    check-cast v8, Ljava/lang/String;

    #@91
    .line 292
    .local v8, "scAddr":Ljava/lang/String;
    const-string/jumbo v10, "destAddr"

    #@94
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    move-result-object v1

    #@98
    check-cast v1, Ljava/lang/String;

    #@9a
    .line 294
    .local v1, "destAddr":Ljava/lang/String;
    const/4 v7, 0x0

    #@9b
    .line 296
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string/jumbo v10, "text"

    #@9e
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@a1
    move-result v10

    #@a2
    if-eqz v10, :cond_b

    #@a4
    .line 297
    const-string/jumbo v10, "RIL_ImsSms"

    #@a7
    const-string/jumbo v11, "sms failed was text"

    #@aa
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ad
    .line 298
    const-string/jumbo v10, "text"

    #@b0
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b3
    move-result-object v9

    #@b4
    check-cast v9, Ljava/lang/String;

    #@b6
    .line 300
    .local v9, "text":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    #@b9
    move-result v10

    #@ba
    if-eqz v10, :cond_9

    #@bc
    .line 301
    const-string/jumbo v10, "RIL_ImsSms"

    #@bf
    const-string/jumbo v11, "old format (gsm) ==> new format (cdma)"

    #@c2
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c5
    .line 303
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@c7
    if-eqz v10, :cond_8

    #@c9
    const/4 v10, 0x1

    #@ca
    :goto_2
    const/4 v11, 0x0

    #@cb
    .line 302
    invoke-static {v8, v1, v9, v10, v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@ce
    move-result-object v7

    #@cf
    .line 328
    .end local v7    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .end local v9    # "text":Ljava/lang/String;
    :cond_7
    :goto_3
    const-string/jumbo v10, "smsc"

    #@d2
    iget-object v11, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    #@d4
    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d7
    .line 329
    const-string/jumbo v10, "pdu"

    #@da
    iget-object v11, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    #@dc
    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@df
    .line 331
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    #@e2
    move-result v10

    #@e3
    if-eqz v10, :cond_f

    #@e5
    .line 332
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@e7
    .line 334
    .local v3, "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :goto_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    #@ea
    move-result-object v10

    #@eb
    iput-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    #@ed
    .line 335
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@f0
    .line 255
    return-void

    #@f1
    .line 303
    .end local v3    # "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    .restart local v7    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    #@f2
    goto :goto_2

    #@f3
    .line 305
    :cond_9
    const-string/jumbo v10, "RIL_ImsSms"

    #@f6
    const-string/jumbo v11, "old format (cdma) ==> new format (gsm)"

    #@f9
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@fc
    .line 307
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@fe
    if-eqz v10, :cond_a

    #@100
    const/4 v10, 0x1

    #@101
    :goto_5
    const/4 v11, 0x0

    #@102
    .line 306
    invoke-static {v8, v1, v9, v10, v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@105
    move-result-object v7

    #@106
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_3

    #@107
    .line 307
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_a
    const/4 v10, 0x0

    #@108
    goto :goto_5

    #@109
    .line 309
    .end local v9    # "text":Ljava/lang/String;
    :cond_b
    const-string/jumbo v10, "data"

    #@10c
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@10f
    move-result v10

    #@110
    if-eqz v10, :cond_7

    #@112
    .line 310
    const-string/jumbo v10, "RIL_ImsSms"

    #@115
    const-string/jumbo v11, "sms failed was data"

    #@118
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11b
    .line 311
    const-string/jumbo v10, "data"

    #@11e
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@121
    move-result-object v0

    #@122
    check-cast v0, [B

    #@124
    .line 312
    .local v0, "data":[B
    const-string/jumbo v10, "destPort"

    #@127
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12a
    move-result-object v2

    #@12b
    check-cast v2, Ljava/lang/Integer;

    #@12d
    .line 314
    .local v2, "destPort":Ljava/lang/Integer;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    #@130
    move-result v10

    #@131
    if-eqz v10, :cond_d

    #@133
    .line 315
    const-string/jumbo v10, "RIL_ImsSms"

    #@136
    const-string/jumbo v11, "old format (gsm) ==> new format (cdma)"

    #@139
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13c
    .line 317
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@13f
    move-result v11

    #@140
    .line 318
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@142
    if-eqz v10, :cond_c

    #@144
    const/4 v10, 0x1

    #@145
    .line 316
    :goto_6
    invoke-static {v8, v1, v11, v0, v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@148
    move-result-object v7

    #@149
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_3

    #@14a
    .line 318
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_c
    const/4 v10, 0x0

    #@14b
    goto :goto_6

    #@14c
    .line 320
    :cond_d
    const-string/jumbo v10, "RIL_ImsSms"

    #@14f
    const-string/jumbo v11, "old format (cdma) ==> new format (gsm)"

    #@152
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@155
    .line 322
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@158
    move-result v11

    #@159
    .line 323
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@15b
    if-eqz v10, :cond_e

    #@15d
    const/4 v10, 0x1

    #@15e
    .line 321
    :goto_7
    invoke-static {v8, v1, v11, v0, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@161
    move-result-object v7

    #@162
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto/16 :goto_3

    #@164
    .line 323
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_e
    const/4 v10, 0x0

    #@165
    goto :goto_7

    #@166
    .line 332
    .end local v0    # "data":[B
    .end local v2    # "destPort":Ljava/lang/Integer;
    .end local v7    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@168
    .restart local v3    # "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    goto/16 :goto_4
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 190
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "sendSms should never be called from here!"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 187
    return-void
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 196
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "sendSmsByPstn should never be called from here!"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 194
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@3
    .line 339
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V
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
    .line 203
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "sendText"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 204
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 205
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
    .line 202
    :goto_0
    return-void

    #@1f
    .line 208
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

.method protected updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 77
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "In IMS updatePhoneObject "

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 78
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    #@c
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@e
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    #@11
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@13
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    #@16
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@18
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    #@1b
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@1d
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    #@20
    .line 76
    return-void
.end method

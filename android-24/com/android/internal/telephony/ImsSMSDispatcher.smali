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
    .line 54
    invoke-direct {p0, p1, p3, v3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    #@4
    .line 49
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    #@7
    .line 50
    const-string/jumbo v0, "unknown"

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    #@c
    .line 55
    const-string/jumbo v0, "RIL_ImsSms"

    #@f
    const-string/jumbo v1, "ImsSMSDispatcher created"

    #@12
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 59
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #@17
    invoke-direct {v0, p1, p3, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    #@1a
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@1c
    .line 60
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
    .line 62
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@29
    move-result-object v1

    #@2a
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@2c
    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #@2e
    .line 62
    invoke-static {v1, p2, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@34
    .line 64
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    #@36
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@38
    invoke-direct {v0, p1, p3, p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    #@3b
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@3d
    .line 65
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@40
    move-result-object v0

    #@41
    .line 66
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@43
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@45
    .line 65
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    #@48
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4a
    const/16 v1, 0xb

    #@4c
    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4f
    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@51
    const/16 v1, 0xc

    #@53
    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@56
    .line 53
    return-void
.end method

.method private isCdmaFormat(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 398
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
    .line 383
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 385
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
    .line 388
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
    .line 125
    packed-switch p1, :pswitch_data_0

    #@3
    .line 133
    const-string/jumbo v0, "unknown"

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    #@8
    .line 123
    :goto_0
    return-void

    #@9
    .line 127
    :pswitch_0
    const-string/jumbo v0, "3gpp"

    #@c
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    #@e
    goto :goto_0

    #@f
    .line 130
    :pswitch_1
    const-string/jumbo v0, "3gpp2"

    #@12
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    #@14
    goto :goto_0

    #@15
    .line 125
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
    .line 139
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4
    check-cast v0, [I

    #@6
    .line 141
    .local v0, "responseArray":[I
    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    #@8
    .line 142
    aget v1, v0, v3

    #@a
    if-ne v1, v4, :cond_1

    #@c
    .line 143
    const-string/jumbo v1, "RIL_ImsSms"

    #@f
    const-string/jumbo v2, "IMS is registered!"

    #@12
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 144
    iput-boolean v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    #@17
    .line 149
    :goto_0
    aget v1, v0, v4

    #@19
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->setImsSmsFormat(I)V

    #@1c
    .line 151
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
    .line 152
    const-string/jumbo v1, "RIL_ImsSms"

    #@2a
    const-string/jumbo v2, "IMS format was unknown!"

    #@2d
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 154
    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    #@32
    .line 138
    :cond_0
    return-void

    #@33
    .line 146
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
    .line 351
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "Error! Not implemented for IMS."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 352
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public dispose()V
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    #@5
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    #@a
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    #@f
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    #@14
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispose()V

    #@19
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@1b
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispose()V

    #@1e
    .line 83
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 344
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "getFormat should never be called from here!"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 345
    const-string/jumbo v0, "unknown"

    #@c
    return-object v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 372
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
    .line 361
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "Error! Not implemented for IMS."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 362
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 101
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 119
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    #@8
    .line 98
    :goto_0
    return-void

    #@9
    .line 104
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
    .line 108
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17
    check-cast v0, Landroid/os/AsyncResult;

    #@19
    .line 110
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 111
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->updateImsInfo(Landroid/os/AsyncResult;)V

    #@20
    goto :goto_0

    #@21
    .line 113
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
    .line 114
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@32
    .line 113
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
    .line 101
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
    .line 213
    const-string/jumbo v4, "RIL_ImsSms"

    #@3
    const-string/jumbo v5, "ImsSMSDispatcher:injectSmsPdu"

    #@6
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 218
    :try_start_0
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    #@c
    move-result-object v3

    #@d
    .line 221
    .local v3, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    #@10
    move-result-object v4

    #@11
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    #@13
    if-eq v4, v5, :cond_1

    #@15
    .line 222
    if-eqz p3, :cond_0

    #@17
    .line 223
    const/4 v4, 0x2

    #@18
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V

    #@1b
    .line 224
    :cond_0
    return-void

    #@1c
    .line 227
    :cond_1
    new-instance v0, Landroid/os/AsyncResult;

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-direct {v0, p3, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@22
    .line 229
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string/jumbo v4, "3gpp"

    #@25
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_3

    #@2b
    .line 230
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
    .line 231
    const-string/jumbo v6, ", format="

    #@41
    .line 230
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    .line 231
    const-string/jumbo v6, "to mGsmInboundSmsHandler"

    #@4c
    .line 230
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
    .line 232
    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@59
    const/16 v5, 0x8

    #@5b
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    #@5e
    .line 212
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "msg":Landroid/telephony/SmsMessage;
    :cond_2
    :goto_0
    return-void

    #@5f
    .line 233
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
    .line 234
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
    .line 235
    const-string/jumbo v6, ", format="

    #@7e
    .line 234
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v5

    #@82
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v5

    #@86
    .line 235
    const-string/jumbo v6, "to mCdmaInboundSmsHandler"

    #@89
    .line 234
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
    .line 236
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
    .line 243
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "msg":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v1

    #@9d
    .line 244
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "RIL_ImsSms"

    #@a0
    const-string/jumbo v5, "injectSmsPdu failed: "

    #@a3
    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a6
    .line 246
    if-eqz p3, :cond_2

    #@a8
    .line 247
    const/4 v4, 0x2

    #@a9
    :try_start_1
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    #@ac
    goto :goto_0

    #@ad
    .line 248
    :catch_1
    move-exception v2

    #@ae
    .local v2, "ex":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    #@af
    .line 239
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
    .line 240
    if-eqz p3, :cond_2

    #@cb
    .line 241
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
    .line 367
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
    .line 161
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 162
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
    .line 160
    :goto_0
    return-void

    #@12
    .line 165
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
    .line 175
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 176
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
    .line 174
    :goto_0
    return-void

    #@16
    .line 179
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
    .line 254
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    #@2
    .line 258
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
    .line 259
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@d
    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    .line 263
    .local v5, "newFormat":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v10

    #@15
    if-eqz v10, :cond_2

    #@17
    .line 264
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    #@1a
    move-result v10

    #@1b
    if-eqz v10, :cond_1

    #@1d
    .line 265
    const-string/jumbo v10, "RIL_ImsSms"

    #@20
    const-string/jumbo v11, "old format matched new format (cdma)"

    #@23
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 266
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@28
    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@2b
    .line 267
    return-void

    #@2c
    .line 260
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
    .line 269
    .restart local v5    # "newFormat":Ljava/lang/String;
    :cond_1
    const-string/jumbo v10, "RIL_ImsSms"

    #@36
    const-string/jumbo v11, "old format matched new format (gsm)"

    #@39
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 270
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@3e
    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@41
    .line 271
    return-void

    #@42
    .line 276
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    #@45
    move-result-object v4

    #@46
    .line 281
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
    .line 282
    const-string/jumbo v10, "text"

    #@5b
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5e
    move-result v10

    #@5f
    if-nez v10, :cond_3

    #@61
    .line 283
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
    .line 281
    :goto_1
    if-nez v10, :cond_6

    #@73
    .line 285
    const-string/jumbo v10, "RIL_ImsSms"

    #@76
    const-string/jumbo v11, "sendRetrySms failed to re-encode per missing fields!"

    #@79
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    .line 286
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    #@7e
    const/4 v11, 0x1

    #@7f
    const/4 v12, 0x0

    #@80
    invoke-virtual {p1, v10, v11, v12}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    #@83
    .line 287
    return-void

    #@84
    .line 282
    :cond_3
    const/4 v10, 0x1

    #@85
    goto :goto_1

    #@86
    .line 283
    :cond_4
    const/4 v10, 0x0

    #@87
    goto :goto_1

    #@88
    .line 281
    :cond_5
    const/4 v10, 0x0

    #@89
    goto :goto_1

    #@8a
    .line 289
    :cond_6
    const-string/jumbo v10, "scAddr"

    #@8d
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@90
    move-result-object v8

    #@91
    check-cast v8, Ljava/lang/String;

    #@93
    .line 290
    .local v8, "scAddr":Ljava/lang/String;
    const-string/jumbo v10, "destAddr"

    #@96
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@99
    move-result-object v1

    #@9a
    check-cast v1, Ljava/lang/String;

    #@9c
    .line 292
    .local v1, "destAddr":Ljava/lang/String;
    const/4 v7, 0x0

    #@9d
    .line 294
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string/jumbo v10, "text"

    #@a0
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@a3
    move-result v10

    #@a4
    if-eqz v10, :cond_b

    #@a6
    .line 295
    const-string/jumbo v10, "RIL_ImsSms"

    #@a9
    const-string/jumbo v11, "sms failed was text"

    #@ac
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@af
    .line 296
    const-string/jumbo v10, "text"

    #@b2
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b5
    move-result-object v9

    #@b6
    check-cast v9, Ljava/lang/String;

    #@b8
    .line 298
    .local v9, "text":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    #@bb
    move-result v10

    #@bc
    if-eqz v10, :cond_9

    #@be
    .line 299
    const-string/jumbo v10, "RIL_ImsSms"

    #@c1
    const-string/jumbo v11, "old format (gsm) ==> new format (cdma)"

    #@c4
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c7
    .line 301
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@c9
    if-eqz v10, :cond_8

    #@cb
    const/4 v10, 0x1

    #@cc
    :goto_2
    const/4 v11, 0x0

    #@cd
    .line 300
    invoke-static {v8, v1, v9, v10, v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@d0
    move-result-object v7

    #@d1
    .line 326
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
    .line 327
    const-string/jumbo v10, "pdu"

    #@dc
    iget-object v11, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    #@de
    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e1
    .line 329
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    #@e4
    move-result v10

    #@e5
    if-eqz v10, :cond_f

    #@e7
    .line 330
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@e9
    .line 332
    .local v3, "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :goto_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    #@ec
    move-result-object v10

    #@ed
    iput-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    #@ef
    .line 333
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@f2
    .line 253
    return-void

    #@f3
    .line 301
    .end local v3    # "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    .restart local v7    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    #@f4
    goto :goto_2

    #@f5
    .line 303
    :cond_9
    const-string/jumbo v10, "RIL_ImsSms"

    #@f8
    const-string/jumbo v11, "old format (cdma) ==> new format (gsm)"

    #@fb
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@fe
    .line 305
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@100
    if-eqz v10, :cond_a

    #@102
    const/4 v10, 0x1

    #@103
    :goto_5
    const/4 v11, 0x0

    #@104
    .line 304
    invoke-static {v8, v1, v9, v10, v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@107
    move-result-object v7

    #@108
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_3

    #@109
    .line 305
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_a
    const/4 v10, 0x0

    #@10a
    goto :goto_5

    #@10b
    .line 307
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
    .line 308
    const-string/jumbo v10, "RIL_ImsSms"

    #@117
    const-string/jumbo v11, "sms failed was data"

    #@11a
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11d
    .line 309
    const-string/jumbo v10, "data"

    #@120
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@123
    move-result-object v0

    #@124
    check-cast v0, [B

    #@126
    .line 310
    .local v0, "data":[B
    const-string/jumbo v10, "destPort"

    #@129
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12c
    move-result-object v2

    #@12d
    check-cast v2, Ljava/lang/Integer;

    #@12f
    .line 312
    .local v2, "destPort":Ljava/lang/Integer;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    #@132
    move-result v10

    #@133
    if-eqz v10, :cond_d

    #@135
    .line 313
    const-string/jumbo v10, "RIL_ImsSms"

    #@138
    const-string/jumbo v11, "old format (gsm) ==> new format (cdma)"

    #@13b
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13e
    .line 315
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@141
    move-result v11

    #@142
    .line 316
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@144
    if-eqz v10, :cond_c

    #@146
    const/4 v10, 0x1

    #@147
    .line 314
    :goto_6
    invoke-static {v8, v1, v11, v0, v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@14a
    move-result-object v7

    #@14b
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_3

    #@14c
    .line 316
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_c
    const/4 v10, 0x0

    #@14d
    goto :goto_6

    #@14e
    .line 318
    :cond_d
    const-string/jumbo v10, "RIL_ImsSms"

    #@151
    const-string/jumbo v11, "old format (cdma) ==> new format (gsm)"

    #@154
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@157
    .line 320
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@15a
    move-result v11

    #@15b
    .line 321
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@15d
    if-eqz v10, :cond_e

    #@15f
    const/4 v10, 0x1

    #@160
    .line 319
    :goto_7
    invoke-static {v8, v1, v11, v0, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@163
    move-result-object v7

    #@164
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto/16 :goto_3

    #@166
    .line 321
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_e
    const/4 v10, 0x0

    #@167
    goto :goto_7

    #@168
    .line 330
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
    .line 188
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "sendSms should never be called from here!"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 185
    return-void
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 194
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "sendSmsByPstn should never be called from here!"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 192
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@3
    .line 337
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
    .line 201
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "sendText"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 202
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 203
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
    .line 200
    :goto_0
    return-void

    #@1f
    .line 206
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
    .line 75
    const-string/jumbo v0, "RIL_ImsSms"

    #@3
    const-string/jumbo v1, "In IMS updatePhoneObject "

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 76
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    #@c
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@e
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    #@11
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@13
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    #@16
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@18
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    #@1b
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@1d
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    #@20
    .line 74
    return-void
.end method

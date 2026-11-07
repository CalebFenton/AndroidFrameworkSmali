.class public final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# instance fields
.field private greylist-max-r mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private blacklist mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V
    .registers 5

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 50
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0xa

    invoke-interface {p2, p0, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 60
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 61
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 p3, 0xf

    .line 62
    invoke-virtual {p2, p0, p3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 63
    const-string p0, "GsmSMSDispatcher"

    const-string p1, "GsmSMSDispatcher created"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onUpdateIccAvailability()V
    .registers 5

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_5

    goto :goto_64

    .line 236
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_64

    .line 240
    const-string v2, "GsmSMSDispatcher"

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 241
    const-string v1, "Removing stale icc objects."

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNewSms(Landroid/os/Handler;)V

    .line 245
    :cond_30
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 246
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_3a
    if-eqz v0, :cond_64

    .line 249
    const-string v1, "New Uicc application found"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 251
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v1, 0xe

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_64
    :goto_64
    return-void
.end method


# virtual methods
.method protected blacklist calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 3

    .line 140
    invoke-static {p1, p2}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLengthGsm(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0
.end method

.method public blacklist dispose()V
    .registers 2

    .line 68
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    return-void
.end method

.method protected greylist-max-r getFormat()Ljava/lang/String;
    .registers 1

    .line 76
    const-string p0, "3gpp"

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 6

    .line 119
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 7

    .line 134
    invoke-static/range {p1 .. p6}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 8

    .line 112
    invoke-static {p1, p2, p3, p4, p7}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 9

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move p3, p4

    move p4, p7

    move p5, p8

    .line 127
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GsmSMSDispatcher: subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 226
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    const-string v1, "GsmSMSDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_12

    const/16 v1, 0xf

    if-eq v0, v1, :cond_e

    .line 98
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 94
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->onUpdateIccAvailability()V

    return-void

    .line 90
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    const/4 v0, 0x1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method protected blacklist handleStatusReport(Ljava/lang/Object;)V
    .registers 4

    .line 145
    instance-of v0, p1, Landroid/os/AsyncResult;

    if-eqz v0, :cond_1a

    .line 146
    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    const-string v1, "3gpp"

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->handleSmsStatusReport(Ljava/lang/String;[B)V

    .line 148
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    return-void

    .line 150
    :cond_1a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleStatusReport() called for object type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GsmSMSDispatcher"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected greylist sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 13

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSms:  isIms()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mImsRetry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mMessageRef="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mUsesImsServiceForIms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " SS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 167
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    const-string v2, "GsmSMSDispatcher"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110226

    .line 171
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 172
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 173
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMtSmsPollingMessage(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_7d

    if-eqz v1, :cond_7d

    move v1, v4

    goto :goto_7e

    :cond_7d
    move v1, v3

    .line 175
    :goto_7e
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v2

    if-nez v2, :cond_a4

    if-eqz v0, :cond_a4

    if-nez v1, :cond_a4

    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_a4

    .line 179
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v0

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 180
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifySmsSentFailedToEmergencyStateTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    return-void

    :cond_a4
    const/4 v0, 0x2

    .line 185
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 186
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    .line 187
    const-string v1, "pdu"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 188
    const-string v2, "smsc"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 189
    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-lez v2, :cond_d1

    .line 193
    aget-byte v2, v1, v3

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v4, :cond_d1

    or-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    .line 194
    aput-byte v2, v1, v3

    .line 195
    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 206
    :cond_d1
    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-nez v2, :cond_db

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v2

    if-eqz v2, :cond_df

    :cond_db
    iget-boolean v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    if-eqz v2, :cond_103

    .line 207
    :cond_df
    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-nez v2, :cond_f5

    iget-boolean p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    if-eqz p1, :cond_f5

    .line 208
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-interface {p0, p1, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 211
    :cond_f5
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-interface {p0, p1, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 215
    :cond_103
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 216
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    iget v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 215
    invoke-interface/range {v5 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V

    .line 220
    iget p0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/2addr p0, v4

    iput p0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    return-void
.end method

.method protected blacklist shouldBlockSmsForEcbm()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

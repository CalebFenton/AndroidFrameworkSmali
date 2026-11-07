.class public Lcom/android/internal/telephony/MessagingIndication;
.super Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;
.source "MessagingIndication.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method


# virtual methods
.method public blacklist cdmaNewSms(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V
    .registers 5

    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 54
    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fc

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 56
    :cond_15
    new-instance p1, Landroid/telephony/SmsMessage;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSmsMessage(Landroid/hardware/radio/messaging/CdmaSmsMessage;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 57
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_2d

    .line 58
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_2d
    return-void
.end method

.method public blacklist cdmaRuimSmsStorageFull(I)V
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 70
    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fe

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 72
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1e

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_1e
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 165
    const-string p0, "b28416394e6595c08e97c0473855eb05eed1baed"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public blacklist newBroadcastSms(I[B)V
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 89
    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 90
    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fd

    .line 91
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 94
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_28

    .line 95
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_28
    return-void
.end method

.method public blacklist newSms(I[B)V
    .registers 5

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 107
    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3eb

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 109
    :cond_15
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object p1

    .line 110
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_31

    .line 111
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    if-nez p1, :cond_26

    move-object v1, v0

    goto :goto_2b

    .line 112
    :cond_26
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, p1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_2b
    invoke-direct {p2, v0, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 111
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_31
    return-void
.end method

.method public blacklist newSmsOnSim(II)V
    .registers 5

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 124
    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3ed

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 126
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_28

    .line 127
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_28
    return-void
.end method

.method public blacklist newSmsStatusReport(I[B)V
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 140
    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3ec

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 142
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_24

    .line 143
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_24
    return-void
.end method

.method public blacklist simSmsStorageFull(I)V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 156
    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f8

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 158
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1e

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_1e
    return-void
.end method

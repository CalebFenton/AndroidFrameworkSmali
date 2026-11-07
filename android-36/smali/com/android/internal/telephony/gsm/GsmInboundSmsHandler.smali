.class public Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "GsmInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmCbTestBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final blacklist TEST_MODE:Z


# instance fields
.field private final blacklist mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

.field private blacklist mTestBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 54
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    sput-boolean v1, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->TEST_MODE:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 13

    .line 63
    const-string v1, "GsmInboundSmsHandler"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 64
    iget-object p0, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 65
    new-instance p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object p1, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;I)V

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 66
    iget-object p0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->enable()V

    .line 68
    sget-boolean p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->TEST_MODE:Z

    if-eqz p0, :cond_47

    .line 69
    iget-object p0, v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mTestBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez p0, :cond_47

    .line 70
    new-instance p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmCbTestBroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmCbTestBroadcastReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mTestBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    const-string p1, "com.android.internal.telephony.gsm.TEST_TRIGGER_CELL_BROADCAST"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object p1, v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mTestBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 p2, 0x2

    invoke-virtual {v2, p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_47
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Ljava/lang/String;)[B
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->decodeHexString(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Ljava/lang/String;)V
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)Lcom/android/internal/telephony/CellBroadcastServiceManager;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    return-object p0
.end method

.method private blacklist addSmsTypeZeroToMetrics(I)V
    .registers 5

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "3gpp"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsTypeZero(ILjava/lang/String;)V

    .line 266
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsTypeZero(I)V

    return-void
.end method

.method private blacklist addVoicemailSmsToMetrics(I)V
    .registers 5

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "3gpp"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingVoiceMailSms(ILjava/lang/String;)V

    .line 275
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsVoicemail(ZI)V

    return-void
.end method

.method public static blacklist makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .registers 11

    .line 135
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 137
    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->start()V

    return-object v0
.end method

.method private static blacklist resultToCause(I)I
    .registers 2

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const/16 p0, 0xff

    return p0

    :cond_c
    const/16 p0, 0xd3

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist updateMessageWaitingIndicator(I)V
    .registers 3

    if-gez p1, :cond_4

    const/4 p1, -0x1

    goto :goto_9

    :cond_4
    const/16 v0, 0xff

    if-le p1, v0, :cond_9

    move p1, v0

    .line 224
    :cond_9
    :goto_9
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    return-void
.end method


# virtual methods
.method protected greylist-max-r acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .registers 4

    .line 237
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->resultToCause(I)I

    move-result p2

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    return-void
.end method

.method protected blacklist dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;II)I
    .registers 8

    .line 163
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 165
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_36

    .line 168
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 169
    iget-object p1, p1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz p1, :cond_17

    .line 171
    iget p1, p1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    goto :goto_18

    :cond_17
    const/4 p1, -0x1

    .line 173
    :goto_18
    iget-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v0

    filled-new-array {v0}, [[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 175
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 174
    const-string v3, "3gpp"

    invoke-static {p3, v0, v3, p1, v1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->filter(Landroid/content/Context;[[BLjava/lang/String;II)Z

    .line 178
    const-string p1, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->addSmsTypeZeroToMetrics(I)V

    return v2

    .line 184
    :cond_36
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 185
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object p1

    .line 186
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;II)I

    move-result p0

    return p0

    .line 190
    :cond_49
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result p3

    if-eqz p3, :cond_71

    .line 191
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    .line 192
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result p3

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, p3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_97

    .line 194
    :cond_71
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_96

    .line 195
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    .line 196
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result p3

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, p3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_97

    :cond_96
    move p3, v1

    :goto_97
    if-eqz p3, :cond_9d

    .line 200
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->addVoicemailSmsToMetrics(I)V

    return v2

    .line 204
    :cond_9d
    iget-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {p3}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result p3

    if-nez p3, :cond_af

    .line 205
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object p3

    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq p3, v0, :cond_af

    const/4 p0, 0x3

    return p0

    .line 211
    :cond_af
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;I)I

    move-result p0

    return p0
.end method

.method protected blacklist is3gpp2()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist onQuitting()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    .line 125
    const-string v0, "unregistered for 3GPP SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 126
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    return-void
.end method

.method public blacklist setImsManager(Lcom/android/ims/ImsManager;)Z
    .registers 2

    .line 282
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    if-eqz p0, :cond_9

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->setImsManager(Lcom/android/ims/ImsManager;)V

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

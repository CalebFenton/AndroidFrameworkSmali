.class public Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "CdmaInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;,
        Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final blacklist TEST_MODE:Z

.field private static blacklist sTestBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;

.field private static blacklist sTestScpBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;


# instance fields
.field private final blacklist mCheckForDuplicatePortsInOmadmWapPush:Z

.field private blacklist mLastAcknowledgedSmsFingerprint:[B

.field private blacklist mLastDispatchedSmsFingerprint:[B

.field private blacklist mScpCallback:Landroid/os/RemoteCallback;

.field private final blacklist mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method public static synthetic blacklist $r8$lambda$xF1PfoMtOh-W2AA_rWjfSHH77sI(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Landroid/os/Bundle;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->lambda$new$0(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScpCallback(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Landroid/os/RemoteCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mScpCallback:Landroid/os/RemoteCallback;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 72
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    sput-boolean v1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->TEST_MODE:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 14

    .line 84
    const-string v1, "CdmaInboundSmsHandler"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 68
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1110160

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 85
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 86
    iget-object p0, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 88
    iget-object p0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->enable()V

    .line 89
    new-instance p0, Landroid/os/RemoteCallback;

    new-instance p1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    invoke-direct {p0, p1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    iput-object p0, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mScpCallback:Landroid/os/RemoteCallback;

    .line 142
    sget-boolean p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->TEST_MODE:Z

    if-eqz p0, :cond_6f

    .line 143
    sget-object p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;

    const/4 p1, 0x2

    if-nez p0, :cond_55

    .line 144
    new-instance p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    sput-object p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;

    .line 145
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    const-string p2, "com.android.internal.telephony.cdma.TEST_TRIGGER_CELL_BROADCAST"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    sget-object p2, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;

    invoke-virtual {v2, p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 150
    :cond_55
    sget-object p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestScpBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;

    if-nez p0, :cond_6f

    .line 151
    new-instance p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    sput-object p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestScpBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;

    .line 152
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    const-string p2, "com.android.internal.telephony.cdma.TEST_TRIGGER_SCP_MESSAGE"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    sget-object p2, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestScpBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;

    invoke-virtual {v2, p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_6f
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)[B
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->decodeHexString(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Lcom/android/internal/telephony/CellBroadcastServiceManager;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    return-object p0
.end method

.method static synthetic blacklist access$400(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)[B
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->decodeHexString(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$500(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)[B
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->decodeHexString(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$700(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$800(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Lcom/android/internal/telephony/CellBroadcastServiceManager;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    return-object p0
.end method

.method private blacklist addVoicemailSmsToMetrics(I)V
    .registers 5

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "3gpp2"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingVoiceMailSms(ILjava/lang/String;)V

    .line 446
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsVoicemail(ZI)V

    return-void
.end method

.method private static blacklist checkDuplicatePortOmadmWapPush([BI)Z
    .registers 5

    add-int/lit8 p1, p1, 0x4

    .line 418
    array-length v0, p0

    sub-int/2addr v0, p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 419
    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    new-instance p0, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    const/4 p1, 0x2

    .line 425
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v0

    if-nez v0, :cond_17

    return v2

    .line 429
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v0

    add-int/2addr v0, p1

    .line 432
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result p1

    if-nez p1, :cond_23

    return v2

    .line 436
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object p0

    .line 437
    const-string p1, "application/vnd.syncml.notification"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;I)V
    .registers 5

    .line 321
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result p1

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Voicemail count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    if-gez p1, :cond_1c

    const/4 p1, -0x1

    goto :goto_21

    :cond_1c
    const/16 v0, 0x63

    if-le p1, v0, :cond_21

    move p1, v0

    .line 333
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    .line 335
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addVoicemailSmsToMetrics(I)V

    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/os/Bundle;)V
    .registers 7

    if-nez p1, :cond_8

    .line 91
    const-string p1, "SCP results error: missing extras"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-void

    .line 94
    :cond_8
    const-string v0, "sender"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    .line 96
    const-string p1, "SCP results error: missing sender extra."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_16
    const-string v1, "results"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_24

    .line 101
    const-string p1, "SCP results error: missing results extra."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_24
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    const/4 v2, 0x2

    .line 106
    iput v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 107
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 108
    iput-object p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    .line 109
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object p1

    .line 111
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 112
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x1006

    .line 114
    :try_start_46
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v3, 0x0

    .line 115
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 116
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 118
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    .line 119
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 120
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 121
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 122
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 123
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 124
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 126
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 127
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 128
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 129
    array-length v0, p1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 130
    array-length v0, p1

    invoke-virtual {v2, p1, v3, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 132
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_94} :catch_9a
    .catchall {:try_start_46 .. :try_end_94} :catchall_98

    .line 137
    :try_start_94
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_a3

    return-void

    :catchall_98
    move-exception p0

    goto :goto_a4

    :catch_9a
    move-exception p1

    .line 134
    :try_start_9b
    const-string v0, "exception creating SCP results PDU"

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a0
    .catchall {:try_start_9b .. :try_end_a0} :catchall_98

    .line 137
    :try_start_a0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a3

    :catch_a3
    return-void

    :goto_a4
    :try_start_a4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a7

    .line 140
    :catch_a7
    throw p0
.end method

.method public static blacklist makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .registers 13

    .line 177
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 179
    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->start()V

    return-object v0
.end method

.method private blacklist processCdmaWapPdu([BILjava/lang/String;Ljava/lang/String;JI)I
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 352
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    if-eqz v3, :cond_12

    .line 354
    const-string v1, "Received a WAP SMS which is not WDP. Discard."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return v4

    .line 357
    :cond_12
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x2

    .line 358
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    if-lt v6, v5, :cond_3b

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WDP bad segment #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expecting 0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return v4

    :cond_3b
    const/4 v4, 0x3

    if-nez v6, :cond_69

    .line 370
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v7, 0x4

    .line 371
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    const/4 v7, 0x5

    .line 372
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x6

    .line 373
    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    .line 376
    iget-boolean v8, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    const/4 v9, 0x7

    if-eqz v8, :cond_66

    .line 377
    invoke-static {v1, v9}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->checkDuplicatePortOmadmWapPush([BI)Z

    move-result v8

    if-eqz v8, :cond_66

    const/16 v8, 0xb

    move v11, v7

    goto :goto_6c

    :cond_66
    move v11, v7

    move v8, v9

    goto :goto_6c

    :cond_69
    move v11, v2

    move v8, v4

    move v4, v11

    .line 384
    :goto_6c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WAP PDU. Type = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", originator = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p3

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", src-port = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dst-port = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ID = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p2

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", segment# = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 389
    array-length v3, v1

    sub-int/2addr v3, v8

    new-array v3, v3, [B

    .line 390
    array-length v4, v1

    sub-int/2addr v4, v8

    invoke-static {v1, v8, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    const-class v4, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 392
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    iget-object v7, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 395
    invoke-static {v3}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v19

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 397
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v21

    const/4 v12, 0x1

    const/16 v18, 0x1

    const/16 v20, 0x0

    move-object/from16 v14, p4

    move-wide/from16 v9, p5

    move/from16 v22, p7

    move-object v8, v3

    move/from16 v17, v5

    move/from16 v16, v6

    move-object v6, v1

    .line 392
    invoke-virtual/range {v6 .. v22}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v1

    .line 401
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v0

    return v0
.end method

.method private static blacklist resultToCause(I)I
    .registers 2

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    const/16 p0, 0x27

    return p0

    :cond_f
    return v0

    :cond_10
    const/16 p0, 0x23

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected blacklist acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .registers 5

    .line 284
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->resultToCause(I)I

    move-result p2

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    if-nez p2, :cond_11

    .line 288
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    :cond_11
    const/4 p1, 0x0

    .line 290
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    return-void
.end method

.method protected blacklist dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;II)I
    .registers 12

    .line 203
    move-object p3, p1

    check-cast p3, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 204
    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_15

    .line 208
    const-string p1, "Broadcast type message"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 209
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->sendCdmaMessageToHandler(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    return v1

    .line 214
    :cond_15
    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    .line 215
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v2, :cond_26

    .line 216
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_26

    return v1

    .line 221
    :cond_26
    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 222
    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v0

    const v2, 0xfdea

    const/16 v3, 0x1004

    if-eq v0, v2, :cond_6d

    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_69

    packed-switch v0, :pswitch_data_aa

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unsupported teleservice 0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    const/4 p0, 0x4

    return p0

    .line 240
    :pswitch_55
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mScpCallback:Landroid/os/RemoteCallback;

    invoke-virtual {p1, p3, p0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->sendCdmaScpMessageToHandler(Lcom/android/internal/telephony/cdma/SmsMessage;Landroid/os/RemoteCallback;)V

    return v1

    .line 233
    :pswitch_5d
    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 234
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    return v1

    .line 228
    :cond_69
    :pswitch_69
    invoke-direct {p0, p3, p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;I)V

    return v1

    .line 244
    :cond_6d
    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->preprocessCdmaFdeaWap()Z

    move-result v0

    if-nez v0, :cond_74

    return v1

    :cond_74
    move v0, v3

    .line 258
    :cond_75
    :pswitch_75
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v1

    if-nez v1, :cond_87

    .line 259
    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v1, v2, :cond_87

    const/4 p0, 0x3

    return p0

    :cond_87
    if-ne v3, v0, :cond_a2

    .line 267
    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v1

    iget v2, p3, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 268
    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v5

    move-object v0, p0

    move v7, p2

    .line 267
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;Ljava/lang/String;JI)I

    move-result p0

    return p0

    :cond_a2
    move-object v0, p0

    move v7, p2

    .line 272
    invoke-virtual {v0, p1, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;I)I

    move-result p0

    return p0

    nop

    :pswitch_data_aa
    .packed-switch 0x1002
        :pswitch_5d
        :pswitch_69
        :pswitch_75
        :pswitch_5d
        :pswitch_55
    .end packed-switch
.end method

.method protected blacklist is3gpp2()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist onQuitting()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 167
    const-string v0, "unregistered for 3GPP2 SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 168
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    return-void
.end method

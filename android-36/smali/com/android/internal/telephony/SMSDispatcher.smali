.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;,
        Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    }
.end annotation


# static fields
.field protected static final blacklist EVENT_GET_IMS_SERVICE:I = 0x10

.field protected static final blacklist EVENT_ICC_CHANGED:I = 0xf

.field protected static final blacklist EVENT_NEW_ICC_SMS:I = 0xe

.field protected static final blacklist EVENT_NEW_SMS_STATUS_REPORT:I = 0xa

.field protected static final blacklist EVENT_RETRY_SMMA:I = 0xb

.field protected static final blacklist EVENT_SEND_RETRY:I = 0x3

.field protected static final blacklist EVENT_SEND_SMS_COMPLETE:I = 0x2

.field protected static final blacklist MAP_KEY_DATA:Ljava/lang/String; = "data"

.field protected static final blacklist MAP_KEY_DEST_ADDR:Ljava/lang/String; = "destAddr"

.field protected static final blacklist MAP_KEY_DEST_PORT:Ljava/lang/String; = "destPort"

.field protected static final blacklist MAP_KEY_PDU:Ljava/lang/String; = "pdu"

.field protected static final blacklist MAP_KEY_SC_ADDR:Ljava/lang/String; = "scAddr"

.field protected static final blacklist MAP_KEY_SMSC:Ljava/lang/String; = "smsc"

.field protected static final blacklist MAP_KEY_TEXT:Ljava/lang/String; = "text"

.field protected static final blacklist MAX_SEND_RETRIES:I = 0x3

.field public static final blacklist SEND_RETRY_DELAY:I = 0x7d0

.field private static final blacklist sAnomalyNoResponseFromCarrierMessagingService:Ljava/util/UUID;

.field private static final blacklist sAnomalyUnexpectedCallback:Ljava/util/UUID;

.field private static blacklist sConcatenatedRef:I


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public blacklist mCarrierMessagingTimeout:I

.field protected final greylist-max-r mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final greylist mContext:Landroid/content/Context;

.field protected final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mMessageRef:I

.field private blacklist mPendingTrackerCount:I

.field protected greylist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected blacklist mRPSmmaRetried:Z

.field protected final greylist mResolver:Landroid/content/ContentResolver;

.field private final blacklist mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

.field protected blacklist mSmsCapable:Z

.field protected blacklist mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

.field protected final blacklist mSmsOutgoingErrorCodes:Lcom/android/internal/telephony/LocalLog;

.field protected blacklist mSmsSendDisabled:Z

.field protected final greylist-max-r mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlogWithLocalLog(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->logWithLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessSendMultipartSmsResponse(Lcom/android/internal/telephony/SMSDispatcher;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I[I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->processSendMultipartSmsResponse([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I[I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->processSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsAnomalyNoResponseFromCarrierMessagingService()Ljava/util/UUID;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->sAnomalyNoResponseFromCarrierMessagingService:Ljava/util/UUID;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsAnomalyUnexpectedCallback()Ljava/util/UUID;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->sAnomalyUnexpectedCallback:Ljava/util/UUID;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 212
    const-string v0, "279d9fbc-462d-4fc2-802c-bf21ddd9dd90"

    .line 213
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->sAnomalyNoResponseFromCarrierMessagingService:Ljava/util/UUID;

    .line 215
    const-string v0, "0103b6d2-ad07-4d86-9102-14341b9074ef"

    .line 216
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->sAnomalyUnexpectedCallback:Ljava/util/UUID;

    .line 224
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V
    .registers 9

    .line 251
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 193
    new-instance v2, Lcom/android/internal/telephony/LocalLog;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 194
    new-instance v2, Lcom/android/internal/telephony/LocalLog;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsOutgoingErrorCodes:Lcom/android/internal/telephony/LocalLog;

    const/4 v2, 0x0

    .line 204
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRPSmmaRetried:Z

    .line 232
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    const v3, 0x927c0

    .line 235
    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCarrierMessagingTimeout:I

    const/4 v3, -0x1

    .line 239
    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMessageRef:I

    .line 272
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 253
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 254
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 255
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 256
    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 257
    const-string p1, "phone"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 258
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-direct {v4, p0, v0, p2}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;-><init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    .line 259
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "sms_short_code_rule"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 262
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isDeviceSmsCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 264
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 263
    invoke-virtual {p1, v0, v2}, Landroid/telephony/TelephonyManager;->getSmsSendCapableForPhone(IZ)Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 265
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 266
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SMSDispatcher: ctor mSmsCapable="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " format="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mSmsSendDisabled="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SMSDispatcher"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist denyIfQueueLimitReached([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .registers 7

    .line 2379
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_29

    .line 2381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Denied because queue limit reached "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2382
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2381
    const-string v3, "SMSDispatcher"

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 2383
    invoke-direct {p0, p1, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsTrackersFailure([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    return v1

    :cond_29
    add-int/2addr v0, v1

    .line 2387
    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getAppLabel(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 4

    .line 2397
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2400
    :try_start_6
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v0, 0x0

    .line 2399
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 2401
    invoke-virtual {p2, p0}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_13} :catch_14

    return-object p0

    .line 2403
    :catch_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PackageManager Name Not Found for package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SMSDispatcher"

    invoke-static {p2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private blacklist getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .registers 2

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 508
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J
    .registers 2

    .line 2009
    array-length p0, p1

    if-nez p0, :cond_6

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_6
    const/4 p0, 0x0

    .line 2012
    aget-object p0, p1, p0

    iget-wide p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    return-wide p0
.end method

.method private greylist-max-r getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3196
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3197
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_a
    :goto_a
    if-ge v1, v0, :cond_1a

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 3199
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 3202
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getNewSubmitPduTracker(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZIJIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 49

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v11, p6

    .line 2024
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->isCdmaMo()Z

    move-result v4

    const/4 v10, 0x0

    const-string v12, "SMSDispatcher"

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v4, :cond_a8

    .line 2025
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 2026
    iput-object v3, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 2027
    iput-object v11, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move/from16 v5, p7

    if-ne v5, v14, :cond_45

    .line 2029
    invoke-direct {v1}, Lcom/android/internal/telephony/SMSDispatcher;->isAscii7bitSupportedForLongMessage()Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v5, 0x2

    goto :goto_2c

    :cond_2a
    const/16 v5, 0x9

    .line 2030
    :goto_2c
    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 2031
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message encoding for proper 7 bit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_45
    const/4 v5, 0x4

    .line 2033
    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 2035
    :goto_48
    iput-boolean v14, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz p9, :cond_52

    if-eqz p10, :cond_52

    move v6, v14

    :goto_4f
    move/from16 v5, p15

    goto :goto_54

    :cond_52
    move v6, v13

    goto :goto_4f

    .line 2043
    :goto_54
    invoke-static {v0, v4, v6, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v4

    if-eqz v4, :cond_8f

    .line 2047
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v4

    .line 2050
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    if-eqz p10, :cond_69

    if-eqz p16, :cond_67

    goto :goto_69

    :cond_67
    move v12, v13

    goto :goto_6a

    :cond_69
    :goto_69
    move v12, v14

    :goto_6a
    const/16 v18, 0x0

    const/16 v22, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p9

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v13, p14

    move/from16 v17, p17

    move-wide/from16 v19, p18

    move/from16 v21, p20

    move-wide/from16 v23, p21

    move/from16 v16, v5

    move-object/from16 v5, p8

    .line 2049
    invoke-virtual/range {v1 .. v24}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0

    .line 2055
    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaSMSDispatcher.getNewSubmitPduTracker(): getSubmitPdu() returned null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    invoke-static/range {p18 .. p19}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2055
    invoke-static {v12, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_a8
    move/from16 v5, p7

    move-object v15, v11

    move-object v11, v1

    if-eqz p9, :cond_b0

    move v3, v14

    goto :goto_b1

    :cond_b0
    move v3, v13

    .line 2063
    :goto_b1
    invoke-static {v15}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    iget v6, v15, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iget v7, v15, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v8, p17

    move/from16 v9, p20

    move-object v1, v0

    move-object v0, v2

    move-object/from16 v2, p5

    .line 2061
    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v3

    move-object/from16 v25, v2

    move-object v2, v0

    move-object v0, v1

    move-object/from16 v1, v25

    if-eqz v3, :cond_105

    .line 2066
    invoke-virtual {v11, v0, v2, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v4

    .line 2068
    invoke-virtual {v11}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    if-eqz p10, :cond_dc

    if-eqz p16, :cond_da

    goto :goto_dc

    :cond_da
    move v12, v13

    goto :goto_dd

    :cond_dc
    :goto_dc
    move v12, v14

    :goto_dd
    const/16 v18, 0x0

    const/16 v22, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v13, p14

    move/from16 v16, p15

    move/from16 v17, p17

    move-wide/from16 v19, p18

    move/from16 v21, p20

    move-wide/from16 v23, p21

    move-object v1, v11

    move-object/from16 v11, p6

    .line 2067
    invoke-virtual/range {v1 .. v24}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0

    .line 2074
    :cond_105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GsmSMSDispatcher.getNewSubmitPduTracker(): getSubmitPdu() returned null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2075
    invoke-static/range {p18 .. p19}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2074
    invoke-static {v12, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10
.end method

.method protected static greylist-max-r getNextConcatenatedRef()I
    .registers 1

    .line 243
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method protected static blacklist getNotInServiceError(I)I
    .registers 2

    .line 0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x4

    return p0
.end method

.method private blacklist getTpmrValueFromSIM()I
    .registers 1

    .line 499
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSmssTpmrValue()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist handleMessageRefStatus(Landroid/os/Message;)V
    .registers 4

    .line 469
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 470
    iget-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v0, "SMSDispatcher"

    if-eqz p1, :cond_21

    .line 471
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to update TP - Message reference value to SIM "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 473
    :cond_21
    const-string p0, "TP - Message reference updated to SIM Successfully"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist handleSmsTrackersFailure([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    .registers 18

    move/from16 v4, p2

    .line 2531
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_16

    aget-object v5, p1, v3

    .line 2532
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move/from16 v7, p3

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 2533
    invoke-virtual {p0, v5, v2}, Lcom/android/internal/telephony/SMSDispatcher;->notifySmsSentFailedToEmergencyStateTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2535
    :cond_16
    array-length v1, p1

    if-lez v1, :cond_6f

    .line 2538
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v1

    move-object v0, v1

    .line 2539
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v1

    const-string v3, "3gpp2"

    .line 2540
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    aget-object v5, p1, v2

    iget-wide v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 2544
    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v5

    aget-object v8, p1, v2

    .line 2545
    invoke-virtual {v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget-object v11, p1, v2

    iget-object v11, v11, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 2546
    invoke-virtual {v10, v11}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v10

    aget-object v2, p1, v2

    iget-object v11, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 2547
    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMtSmsPollingMessage(Landroid/content/Context;)Z

    move-result v11

    move v2, v3

    const/4 v3, 0x0

    move-wide v12, v6

    move v7, v5

    move-wide v5, v12

    .line 2538
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIJZJZZ)V

    .line 2548
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_6f

    .line 2549
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 2551
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 2554
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result p0

    .line 2553
    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onOutgoingSms(ZI)V

    :cond_6f
    return-void
.end method

.method private blacklist isAscii7bitSupportedForLongMessage()Z
    .registers 5

    .line 3234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3236
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "carrier_config"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 3239
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 3241
    const-string v2, "ascii_7_bit_support_for_long_message_bool"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_24

    .line 3246
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_24
    move-exception p0

    goto :goto_2b

    :cond_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3247
    throw p0
.end method

.method private blacklist logWithLocalLog(Ljava/lang/String;)V
    .registers 2

    .line 625
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 626
    const-string p0, "SMSDispatcher"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist processSendMultipartSmsResponse([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I[I)V
    .registers 13

    .line 1004
    const-string v0, "SMSDispatcher"

    if-nez p1, :cond_a

    .line 1005
    const-string p0, "processSendMultipartSmsResponse: null trackers"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p2, :cond_a3

    const/4 v5, 0x1

    if-eq p2, v5, :cond_83

    if-eq p2, v3, :cond_3d

    .line 1062
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processSendMultipartSmsResponse: Unknown result "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". Retry on carrier network. "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p1, v4

    iget-wide v1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1064
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1062
    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 1032
    :cond_3d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processSendMultipartSmsResponse: Sending SMS by CarrierMessagingService failed. "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v4

    iget-wide v5, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1034
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1032
    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v4

    .line 1037
    :goto_5a
    array-length v0, p1

    if-ge p2, v0, :cond_e2

    if-eqz p3, :cond_65

    .line 1039
    array-length v0, p3

    if-le v0, p2, :cond_65

    .line 1040
    aget v0, p3, p2

    goto :goto_66

    :cond_65
    move v0, v4

    .line 1042
    :goto_66
    new-instance v5, Landroid/os/AsyncResult;

    aget-object v6, p1, p2

    new-instance v7, Lcom/android/internal/telephony/SmsResponse;

    invoke-direct {v7, v0, v2, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {v5, v6, v7, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1043
    invoke-virtual {p0, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1042
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_5a

    .line 1054
    :cond_83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "processSendMultipartSmsResponse: Sending SMS by CarrierMessagingService failed. Retry on carrier network. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p1, v4

    iget-wide v1, p3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1056
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1054
    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 1011
    :cond_a3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processSendMultipartSmsResponse: Sending SMS by CarrierMessagingService succeeded. "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v4

    iget-wide v5, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1013
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1011
    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v4

    .line 1016
    :goto_c0
    array-length v0, p1

    if-ge p2, v0, :cond_e2

    if-eqz p3, :cond_cb

    .line 1018
    array-length v0, p3

    if-le v0, p2, :cond_cb

    .line 1019
    aget v0, p3, p2

    goto :goto_cc

    :cond_cb
    move v0, v4

    .line 1021
    :goto_cc
    new-instance v5, Landroid/os/AsyncResult;

    aget-object v6, p1, p2

    new-instance v7, Lcom/android/internal/telephony/SmsResponse;

    invoke-direct {v7, v0, v2, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-direct {v5, v6, v7, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1022
    invoke-virtual {p0, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1021
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_c0

    :cond_e2
    return-void
.end method

.method private greylist-max-r processSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    .registers 11

    .line 824
    const-string v0, "SMSDispatcher"

    if-nez p1, :cond_a

    .line 825
    const-string p0, "processSendSmsResponse: null tracker"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 829
    :cond_a
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    const/4 v4, -0x1

    iget-wide v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    const/4 v3, 0x0

    move v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;IJ)V

    .line 832
    iput p2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mResultCodeFromCarrierMessagingService:I

    const/4 p3, 0x2

    if-eqz p2, :cond_93

    const/4 v2, 0x1

    if-eq p2, v2, :cond_75

    if-eq p2, p3, :cond_47

    packed-switch p2, :pswitch_data_bc

    .line 884
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processSendSmsResponse: Unknown result "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Retry on carrier network. "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 886
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 884
    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 868
    :cond_47
    :pswitch_47
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSendSmsResponse: Sending SMS by CarrierMessagingService failed. "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 872
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 868
    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance p2, Landroid/os/AsyncResult;

    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p2, p1, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 878
    :cond_75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "processSendSmsResponse: Sending SMS by CarrierMessagingService failed. Retry on carrier network. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 880
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 878
    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 837
    :cond_93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSendSmsResponse: Sending SMS by CarrierMessagingService succeeded. "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 839
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 837
    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    nop

    :pswitch_data_bc
    .packed-switch 0xc8
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch
.end method

.method private blacklist rilErrorToSmsManagerResult(Lcom/android/internal/telephony/CommandException$Error;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I
    .registers 6

    .line 1294
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsOutgoingErrorCodes:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rilError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", MessageId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1295
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1294
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_35

    const-wide/32 v0, 0xee6f52e

    .line 1298
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1299
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_6b

    .line 1300
    :cond_35
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_10e

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->SIM_PIN2:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_10e

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_10e

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_10e

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->SIM_ERR:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_10e

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SIM_STATE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_10e

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->NO_SMS_TO_ACK:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_10e

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->SIM_BUSY:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_10e

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->SIM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_10e

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->NO_SUBSCRIPTION:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_10e

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->NO_NETWORK_FOUND:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_10e

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->DEVICE_IN_USE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_10e

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->ABORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, p0, :cond_6b

    goto/16 :goto_10e

    .line 1317
    :cond_6b
    sget-object p0, Lcom/android/internal/telephony/SMSDispatcher$2;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_110

    .line 1395
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rilErrorToSmsManagerResult: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1396
    invoke-static {p1, p2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1395
    const-string p1, "SMSDispatcher"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x7c

    return p0

    :pswitch_9d
    const/16 p0, 0x89

    return p0

    :pswitch_a0
    const/16 p0, 0x88

    return p0

    :pswitch_a3
    const/16 p0, 0x87

    return p0

    :pswitch_a6
    const/16 p0, 0x86

    return p0

    :pswitch_a9
    const/16 p0, 0x85

    return p0

    :pswitch_ac
    const/16 p0, 0x84

    return p0

    :pswitch_af
    const/16 p0, 0x83

    return p0

    :pswitch_b2
    const/16 p0, 0x82

    return p0

    :pswitch_b5
    const/16 p0, 0x81

    return p0

    :pswitch_b8
    const/16 p0, 0x80

    return p0

    :pswitch_bb
    const/16 p0, 0x7f

    return p0

    :pswitch_be
    const/16 p0, 0x7e

    return p0

    :pswitch_c1
    const/16 p0, 0x7d

    return p0

    :pswitch_c4
    const/16 p0, 0x13

    return p0

    :pswitch_c7
    const/16 p0, 0x7b

    return p0

    :pswitch_ca
    const/16 p0, 0x7a

    return p0

    :pswitch_cd
    const/16 p0, 0x79

    return p0

    :pswitch_d0
    const/4 p0, 0x6

    return p0

    :pswitch_d2
    const/16 p0, 0x78

    return p0

    :pswitch_d5
    const/16 p0, 0x77

    return p0

    :pswitch_d8
    const/16 p0, 0x76

    return p0

    :pswitch_db
    const/16 p0, 0x75

    return p0

    :pswitch_de
    const/16 p0, 0x74

    return p0

    :pswitch_e1
    const/16 p0, 0x73

    return p0

    :pswitch_e4
    const/16 p0, 0x72

    return p0

    :pswitch_e7
    const/16 p0, 0x71

    return p0

    :pswitch_ea
    const/16 p0, 0x70

    return p0

    :pswitch_ed
    const/16 p0, 0x6f

    return p0

    :pswitch_f0
    const/16 p0, 0x6d

    return p0

    :pswitch_f3
    const/16 p0, 0x6c

    return p0

    :pswitch_f6
    const/16 p0, 0x6b

    return p0

    :pswitch_f9
    const/16 p0, 0x6a

    return p0

    :pswitch_fc
    const/16 p0, 0x69

    return p0

    :pswitch_ff
    const/16 p0, 0x68

    return p0

    :pswitch_102
    const/16 p0, 0x67

    return p0

    :pswitch_105
    const/16 p0, 0x66

    return p0

    :pswitch_108
    const/16 p0, 0x65

    return p0

    :pswitch_10b
    const/16 p0, 0x64

    return p0

    :cond_10e
    :goto_10e
    const/4 p0, 0x1

    return p0

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_10b
        :pswitch_108
        :pswitch_105
        :pswitch_102
        :pswitch_ff
        :pswitch_fc
        :pswitch_f9
        :pswitch_f6
        :pswitch_f3
        :pswitch_f0
        :pswitch_ed
        :pswitch_ea
        :pswitch_e7
        :pswitch_e4
        :pswitch_e1
        :pswitch_de
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
        :pswitch_d2
        :pswitch_d0
        :pswitch_cd
        :pswitch_ca
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9d
    .end packed-switch
.end method

.method private blacklist sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .registers 6

    .line 1775
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found carrier package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMSDispatcher"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_24

    .line 1780
    new-instance p1, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_29

    .line 1782
    :cond_24
    new-instance p1, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1784
    :goto_29
    new-instance p2, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V

    const/4 p0, 0x1

    return p0

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-r sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 2

    .line 1072
    filled-new-array {p1}, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method private blacklist sendSubmitPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 4

    .line 1077
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->shouldBlockSmsForEcbm()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1078
    const-string v0, "SMSDispatcher"

    const-string v1, "Block SMS in Emergency Callback mode"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1d

    const/4 v1, -0x1

    .line 1079
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsTrackersFailure([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    return-void

    .line 1082
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method private blacklist toSmsManagerResultForSendSms(I)I
    .registers 2

    .line 0
    if-eqz p1, :cond_3e

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3b

    packed-switch p1, :pswitch_data_40

    const/4 p0, 0x1

    return p0

    :pswitch_a
    const/16 p0, 0x1e

    return p0

    :pswitch_d
    const/16 p0, 0x1d

    return p0

    :pswitch_10
    const/16 p0, 0x18

    return p0

    :pswitch_13
    const/16 p0, 0x17

    return p0

    :pswitch_16
    const/16 p0, 0x14

    return p0

    :pswitch_19
    const/16 p0, 0x13

    return p0

    :pswitch_1c
    const/16 p0, 0x12

    return p0

    :pswitch_1f
    const/16 p0, 0x11

    return p0

    :pswitch_22
    const/16 p0, 0xe

    return p0

    :pswitch_25
    const/16 p0, 0xc

    return p0

    :pswitch_28
    const/16 p0, 0xb

    return p0

    :pswitch_2b
    const/16 p0, 0xa

    return p0

    :pswitch_2e
    const/16 p0, 0x8

    return p0

    :pswitch_31
    const/4 p0, 0x7

    return p0

    :pswitch_33
    const/4 p0, 0x6

    return p0

    :pswitch_35
    const/4 p0, 0x5

    return p0

    :pswitch_37
    const/4 p0, 0x4

    return p0

    :pswitch_39
    const/4 p0, 0x3

    return p0

    :cond_3b
    const/16 p0, 0x7c

    return p0

    :cond_3e
    const/4 p0, -0x1

    return p0

    :pswitch_data_40
    .packed-switch 0xc9
        :pswitch_39
        :pswitch_37
        :pswitch_35
        :pswitch_33
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method private blacklist triggerSentIntentForFailure(Landroid/app/PendingIntent;)V
    .registers 2

    if-eqz p1, :cond_e

    const/4 p0, 0x1

    .line 1757
    :try_start_3
    invoke-virtual {p1, p0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_6
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_6} :catch_7

    return-void

    .line 1759
    :catch_7
    const-string p0, "SMSDispatcher"

    const-string p1, "Intent has been canceled!"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method private blacklist triggerSentIntentForFailure(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_17

    .line 1769
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1770
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    goto :goto_7

    :cond_17
    :goto_17
    return-void
.end method

.method private blacklist updateSIMLastTPMRValue(I)V
    .registers 3

    const/16 v0, 0x11

    .line 491
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 492
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 494
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setSmssTpmrValue(ILandroid/os/Message;)V

    :cond_f
    return-void
.end method

.method private blacklist updateTPMessageReference()V
    .registers 6

    .line 478
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMessageRef:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->updateSIMLastTPMRValue(I)V

    .line 479
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 481
    :try_start_9
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v2

    .line 482
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v3

    iget p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMessageRef:I

    invoke-virtual {v2, v3, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setLastUsedTPMessageReference(II)V
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_16} :catch_1c
    .catchall {:try_start_9 .. :try_end_16} :catchall_1a

    .line 486
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1a
    move-exception p0

    goto :goto_3b

    :catch_1c
    move-exception p0

    .line 484
    :try_start_1d
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Exception caused on messageRef updation to DB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_1a

    .line 486
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 487
    throw p0
.end method


# virtual methods
.method protected abstract greylist-max-r calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.end method

.method blacklist checkDestination([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .registers 12

    .line 2229
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS_NO_CONFIRMATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SMSDispatcher"

    if-eqz v0, :cond_1d3

    const/4 v0, 0x0

    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-$$Nest$fgetmIsForVvm(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v3

    if-nez v3, :cond_1d3

    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-$$Nest$fgetmSkipShortCodeDestAddrCheck(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto/16 :goto_1d3

    .line 2235
    :cond_20
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v3, v1, :cond_2f

    if-ne v3, v4, :cond_2d

    goto :goto_2f

    :cond_2d
    move v7, v0

    goto :goto_8b

    .line 2238
    :cond_2f
    :goto_2f
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2239
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_41

    .line 2240
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v5, :cond_69

    .line 2241
    :cond_41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t get SIM country Iso: trying network country Iso "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2243
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide v7

    .line 2242
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2241
    invoke-static {v2, v6}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2245
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v6

    .line 2248
    :cond_69
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 2250
    invoke-virtual {v7}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v7

    aget-object v8, p1, v0

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 2251
    invoke-virtual {v7, v8, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2252
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkDestination: simCountryIso="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8b
    if-eq v3, v5, :cond_8f

    if-ne v3, v4, :cond_ef

    .line 2255
    :cond_8f
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2256
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a3

    .line 2257
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v5, :cond_c9

    .line 2258
    :cond_a3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t get Network country Iso: trying SIM country Iso "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2260
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide v8

    .line 2259
    invoke-static {v8, v9}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2258
    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2262
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 2265
    :cond_c9
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 2269
    invoke-virtual {v6}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v6

    aget-object v8, p1, v0

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 2270
    invoke-virtual {v6, v8, v3}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2266
    invoke-static {v7, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->mergeShortCodeCategories(II)I

    move-result v7

    .line 2272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkDestination: networkCountryIso="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :cond_ef
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDestination: smsCategory="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_118

    .line 2277
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v3

    .line 2278
    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsUsageMonitor;->getShortCodeXmlFileVersion()I

    move-result v3

    .line 2279
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v6

    invoke-virtual {v6, v7, v3}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingShortCodeSms(II)V

    :cond_118
    if-eqz v7, :cond_1d2

    if-eq v7, v1, :cond_1d2

    if-ne v7, v5, :cond_120

    goto/16 :goto_1d2

    .line 2289
    :cond_120
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "device_provisioned"

    invoke-static {v3, v6, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_147

    .line 2290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t send premium sms during Setup Wizard "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide p0

    .line 2291
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2290
    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2297
    :cond_147
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->shouldBlockPremiumSmsInSatelliteMode()Z

    move-result v3

    if-eqz v3, :cond_16a

    .line 2298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Block premium SMS in satellite mode. messageId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2300
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide p0

    .line 2299
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2298
    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2305
    :cond_16a
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 2307
    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v3

    aget-object v6, p1, v0

    .line 2308
    invoke-virtual {v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_17d

    move v3, v1

    :cond_17d
    if-eq v3, v5, :cond_1ad

    if-eq v3, v4, :cond_190

    if-ne v7, v4, :cond_186

    const/16 v1, 0x8

    goto :goto_188

    :cond_186
    const/16 v1, 0x9

    .line 2337
    :goto_188
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v0

    .line 2316
    :cond_190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User approved this app to send to premium SMS "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2318
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide p0

    .line 2317
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2316
    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2322
    :cond_1ad
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User denied this app from sending to premium SMS "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2324
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide v3

    .line 2323
    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2322
    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x7

    .line 2325
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2326
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v0

    :cond_1d2
    :goto_1d2
    return v1

    .line 2232
    :cond_1d3
    :goto_1d3
    const-string p0, "checkDestination: app pre-approved"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public greylist-max-r dispose()V
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 3254
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3255
    const-string p2, "SMSDispatcher"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3256
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3258
    const-string p2, "mLocalLog:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3259
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3260
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3261
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3263
    const-string p2, "mSmsOutgoingErrorCodes:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3264
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3265
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsOutgoingErrorCodes:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3266
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3268
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method protected greylist-max-r getCarrierAppPackageName()Ljava/lang/String;
    .registers 5

    .line 3207
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 3211
    :cond_a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3212
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 3214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_26

    const/4 p0, 0x0

    .line 3215
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 3219
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, v1}, Lcom/android/internal/telephony/CarrierSmsUtils;->getImsRcsPackageForIntent(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected abstract blacklist getFormat()Ljava/lang/String;
.end method

.method protected blacklist getMaxSmsRetryCount()I
    .registers 1

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method protected blacklist getSmsRetryDelayValue()I
    .registers 1

    .line 0
    const/16 p0, 0x7d0

    return p0
.end method

.method protected blacklist getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZIIZJIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/lang/String;",
            "ZZIIZJIZJ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move-wide/from16 v19, p15

    move/from16 v21, p17

    move/from16 v22, p18

    move-wide/from16 v23, p19

    .line 3052
    invoke-virtual/range {v1 .. v24}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/lang/String;",
            "ZZZJIJ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    const/16 v17, -0x1

    const/16 v22, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v16, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v18, p12

    move-wide/from16 v19, p13

    move/from16 v21, p15

    move-wide/from16 v23, p16

    .line 3038
    invoke-virtual/range {v1 .. v24}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "Z",
            "Ljava/lang/String;",
            "ZZIIZJIZJ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3015
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 3016
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    move-object/from16 v3, p1

    .line 3019
    :try_start_15
    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_19} :catch_1b

    :goto_19
    move-object v6, v1

    goto :goto_1d

    :catch_1b
    const/4 v1, 0x0

    goto :goto_19

    .line 3025
    :goto_1d
    const-string v1, "destAddr"

    move-object/from16 v3, p3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3026
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 3028
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v15

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3029
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v24

    const/16 v29, 0x0

    move/from16 v18, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v19, p15

    move/from16 v20, p16

    move/from16 v21, p17

    move-wide/from16 v22, p18

    move/from16 v25, p20

    move/from16 v26, p21

    move-wide/from16 v27, p22

    invoke-direct/range {v2 .. v29}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZIIIZJIIZJLcom/android/internal/telephony/SMSDispatcher-IA;)V

    return-object v2
.end method

.method protected blacklist getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[B",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3072
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 3073
    const-string v0, "destAddr"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3074
    const-string p1, "scAddr"

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3075
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "destPort"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3076
    const-string p1, "data"

    invoke-virtual {p0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3077
    iget-object p1, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    const-string p2, "smsc"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3078
    const-string p1, "pdu"

    iget-object p2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected blacklist getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3061
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 3062
    const-string v0, "destAddr"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3063
    const-string p1, "scAddr"

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3064
    const-string p1, "text"

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3065
    iget-object p1, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    const-string p2, "smsc"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3066
    const-string p1, "pdu"

    iget-object p2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected greylist-max-r getSubId()I
    .registers 1

    .line 3225
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result p0

    return p0
.end method

.method protected abstract blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
.end method

.method protected abstract blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
.end method

.method protected abstract blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
.end method

.method protected abstract blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
.end method

.method protected greylist-max-r handleConfirmShortCode(Z[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 9

    .line 2447
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_d

    const p1, 0x10409de

    goto :goto_10

    :cond_d
    const p1, 0x10409e4

    :goto_10
    const/4 v0, 0x0

    .line 2458
    aget-object v1, p2, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-$$Nest$fgetmUserId(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2459
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 2460
    aget-object v3, p2, v0

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x10409e2

    .line 2462
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2461
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 2467
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x1090155

    const/4 v5, 0x0

    .line 2469
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2472
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const v5, 0x1020535

    .line 2476
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {v4, p0, p2, v5, v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;I)V

    const p2, 0x1020530

    .line 2479
    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 2480
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x1020531

    .line 2482
    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const v0, 0x1020532

    .line 2484
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 2486
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x1020533

    .line 2488
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 2490
    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2492
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2493
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x10409df

    .line 2494
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x10409e1

    .line 2495
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2496
    invoke-virtual {p0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2497
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 2499
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d3

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 2500
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    const/4 p1, -0x1

    .line 2502
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setPositiveButton(Landroid/widget/Button;)V

    const/4 p1, -0x2

    .line 2503
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setNegativeButton(Landroid/widget/Button;)V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 372
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_cd

    const/16 v1, 0x12

    const/4 v2, -0x1

    if-eq v0, v1, :cond_b2

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "SMSDispatcher"

    packed-switch v0, :pswitch_data_d2

    .line 464
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage() ignoring message of unexpected type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 441
    :pswitch_2b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Ljava/lang/Object;)V

    return-void

    .line 392
    :pswitch_31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(Z[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 388
    :pswitch_39
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(Z[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 405
    :pswitch_41
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 406
    const-string v0, "SMSDispatcher: EVENT_SENDING_NOT_ALLOWED - sending SHORT_CODE_NEVER_ALLOWED error code."

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsTrackersFailure([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    return-void

    .line 414
    :pswitch_4e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 416
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_67

    .line 417
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v4, :cond_60

    .line 419
    const-string p1, "SMSDispatcher: EVENT_STOP_SENDING - sending SHORT_CODE_NEVER_ALLOWED error code."

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 423
    :cond_60
    const-string p1, "SMSDispatcher: EVENT_STOP_SENDING - sending SHORT_CODE_NOT_ALLOWED error code."

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x7

    goto :goto_77

    :cond_67
    if-ne v3, v4, :cond_70

    .line 428
    const-string p1, "SMSDispatcher: EVENT_STOP_SENDING - sending LIMIT_EXCEEDED error code."

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    goto :goto_77

    .line 432
    :cond_70
    const-string p1, "SMSDispatcher: EVENT_STOP_SENDING - unexpected cases."

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1c

    .line 435
    :goto_77
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsTrackersFailure([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    .line 436
    iget p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    return-void

    .line 396
    :pswitch_80
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 397
    array-length v0, p1

    :goto_85
    if-ge v3, v0, :cond_8f

    aget-object v1, p1, v3

    .line 398
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    .line 400
    :cond_8f
    iget p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    return-void

    .line 384
    :pswitch_95
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 379
    :pswitch_9d
    const-string v0, "SMS retry.."

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 375
    :pswitch_aa
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 453
    :cond_b2
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getTpmrValueFromSIM()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMessageRef:I

    if-ne v0, v2, :cond_cc

    .line 455
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 456
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-eqz p1, :cond_cc

    .line 458
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getLastUsedTPMessageReference()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMessageRef:I

    :cond_cc
    return-void

    .line 444
    :cond_cd
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessageRefStatus(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_d2
    .packed-switch 0x2
        :pswitch_aa
        :pswitch_9d
        :pswitch_95
        :pswitch_80
        :pswitch_4e
        :pswitch_41
        :pswitch_39
        :pswitch_31
        :pswitch_2b
    .end packed-switch
.end method

.method protected blacklist handleReachSentLimit([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 7

    .line 2414
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 2418
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-$$Nest$fgetmUserId(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2419
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10409da

    .line 2420
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 2423
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;I)V

    .line 2426
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x10409dc

    .line 2427
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x108008a

    .line 2428
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2429
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x10409dd

    .line 2430
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x10409db

    .line 2431
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2432
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2433
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 2435
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 2436
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected blacklist handleSendComplete(Landroid/os/AsyncResult;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1113
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1114
    iget-object v3, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 1115
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SmsResponse;

    .line 1117
    const-string v4, "SMSDispatcher"

    if-eqz v3, :cond_17

    .line 1118
    iget v5, v3, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    iput v5, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    goto :goto_1c

    .line 1120
    :cond_17
    const-string v5, "SmsResponse was null"

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :goto_1c
    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v5, "3gpp2"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_90

    .line 1129
    iget-object v1, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2d

    .line 1131
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->putDeliveryPendingTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1133
    :cond_2d
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;)V

    .line 1134
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/Phone;->notifySmsSent(Ljava/lang/String;)V

    .line 1135
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 1136
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isSinglePartOrLastPart()Z

    move-result v3

    .line 1135
    invoke-virtual {v1, v2, v7, v3, v6}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsSent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZZ)V

    .line 1138
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v8

    iget v1, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v1, :cond_4e

    move v9, v6

    goto :goto_4f

    :cond_4e
    move v9, v7

    .line 1140
    :goto_4f
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    iget-wide v13, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1144
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v15

    .line 1145
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v16

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 1146
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v18

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1147
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMtSmsPollingMessage(Landroid/content/Context;)Z

    move-result v19

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1138
    invoke-virtual/range {v8 .. v19}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIJZJZZ)V

    .line 1148
    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_247

    .line 1149
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_247

    .line 1151
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_247

    .line 1153
    iget v1, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v1, :cond_8b

    goto :goto_8c

    :cond_8b
    move v6, v7

    :goto_8c
    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onOutgoingSms(ZI)V

    return-void

    .line 1168
    :cond_90
    iget v8, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mResultCodeFromCarrierMessagingService:I

    if-eqz v8, :cond_9a

    .line 1172
    invoke-direct {v0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->toSmsManagerResultForSendSms(I)I

    move-result v1

    :goto_98
    move v12, v1

    goto :goto_a5

    .line 1175
    :cond_9a
    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1177
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 1176
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->rilErrorToSmsManagerResult(Lcom/android/internal/telephony/CommandException$Error;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I

    move-result v1

    goto :goto_98

    .line 1180
    :goto_a5
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 1181
    iget v8, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v8, :cond_111

    if-eqz v1, :cond_111

    .line 1185
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getMaxSmsRetryCount()I

    move-result v8

    iput v8, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1187
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSendComplete: Skipping retry:  isIms()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mRetryCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mImsRetry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mMessageRef="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " SS= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1192
    invoke-interface {v9}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1193
    invoke-static {v9, v10}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1187
    invoke-static {v4, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_111
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v4

    const/4 v8, -0x1

    if-nez v4, :cond_17b

    if-eqz v1, :cond_17b

    .line 1198
    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v4

    invoke-virtual {v2, v3, v4, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1199
    invoke-virtual {v0, v2, v7}, Lcom/android/internal/telephony/SMSDispatcher;->notifySmsSentFailedToEmergencyStateTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    .line 1200
    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v8

    iget v3, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v3, :cond_132

    move v9, v6

    goto :goto_133

    :cond_132
    move v9, v7

    .line 1202
    :goto_133
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1204
    invoke-static {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v12

    iget-wide v13, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1206
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v15

    .line 1207
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v16

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 1208
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v18

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1209
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMtSmsPollingMessage(Landroid/content/Context;)Z

    move-result v19

    const/4 v11, 0x0

    .line 1200
    invoke-virtual/range {v8 .. v19}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIJZJZZ)V

    .line 1210
    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_247

    .line 1211
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_247

    .line 1213
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_247

    .line 1215
    iget v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v2, :cond_172

    goto :goto_173

    :cond_172
    move v6, v7

    .line 1217
    :goto_173
    invoke-static {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v1

    .line 1215
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onOutgoingSms(ZI)V

    return-void

    :cond_17b
    const/16 v1, 0x65

    if-ne v12, v1, :cond_1ee

    .line 1223
    iget v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1224
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getMaxSmsRetryCount()I

    move-result v9

    if-ge v4, v9, :cond_1ee

    .line 1233
    iget v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/2addr v4, v6

    iput v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-eqz v3, :cond_190

    .line 1234
    iget v8, v3, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    :cond_190
    move v14, v8

    const/4 v3, 0x3

    .line 1235
    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1236
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsRetryDelayValue()I

    move-result v4

    int-to-long v8, v4

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1237
    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v9

    iget v3, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v3, :cond_1aa

    move v10, v6

    goto :goto_1ab

    :cond_1aa
    move v10, v7

    .line 1239
    :goto_1ab
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    iget-wide v3, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1244
    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v17

    .line 1245
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v18

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 1246
    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v20

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1247
    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMtSmsPollingMessage(Landroid/content/Context;)Z

    move-result v21

    const/4 v12, 0x0

    const/16 v13, 0x65

    move-wide v15, v3

    .line 1237
    invoke-virtual/range {v9 .. v21}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIIJZJZZ)V

    .line 1248
    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_247

    .line 1249
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_247

    .line 1251
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_247

    .line 1253
    iget v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v2, :cond_1e9

    goto :goto_1ea

    :cond_1e9
    move v6, v7

    :goto_1ea
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onOutgoingSms(ZI)V

    return-void

    :cond_1ee
    if-eqz v3, :cond_1f2

    .line 1262
    iget v8, v3, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    :cond_1f2
    move v13, v8

    .line 1263
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v12, v13}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1264
    invoke-virtual {v0, v2, v7}, Lcom/android/internal/telephony/SMSDispatcher;->notifySmsSentFailedToEmergencyStateTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    .line 1265
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v8

    iget v1, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v1, :cond_207

    move v9, v6

    goto :goto_208

    :cond_207
    move v9, v7

    .line 1267
    :goto_208
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    iget-wide v14, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1272
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v16

    .line 1273
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v17

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 1274
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v19

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1275
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMtSmsPollingMessage(Landroid/content/Context;)Z

    move-result v20

    const/4 v11, 0x0

    .line 1265
    invoke-virtual/range {v8 .. v20}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIIJZJZZ)V

    .line 1276
    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_247

    .line 1277
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_247

    .line 1279
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_247

    .line 1281
    iget v1, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v1, :cond_243

    goto :goto_244

    :cond_243
    move v6, v7

    :goto_244
    invoke-virtual {v0, v6, v12}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onOutgoingSms(ZI)V

    :cond_247
    return-void
.end method

.method protected blacklist handleStatusReport(Ljava/lang/Object;)V
    .registers 2

    .line 362
    const-string p0, "SMSDispatcher"

    const-string p1, "handleStatusReport() called with no subclass."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist isCdmaMo()Z
    .registers 1

    .line 3229
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result p0

    return p0
.end method

.method public blacklist isIms()Z
    .registers 2

    .line 3186
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    if-eqz p0, :cond_9

    .line 3187
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isIms()Z

    move-result p0

    return p0

    .line 3189
    :cond_9
    const-string p0, "SMSDispatcher"

    const-string v0, "mSmsDispatchersController is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMessageRefIncrementViaTelephony()Z
    .registers 4

    .line 538
    const-string v0, "SMSDispatcher"

    .line 540
    :try_start_2
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1110256

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_16

    .line 543
    :catch_10
    const-string p0, "isMessageRefIncrementViaTelephony NotFoundException Exception"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 546
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bool.config_stk_sms_send_support= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public blacklist nextMessageRef()I
    .registers 2

    .line 520
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isMessageRefIncrementViaTelephony()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 524
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMessageRef:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMessageRef:I

    .line 525
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->updateTPMessageReference()V

    .line 526
    iget p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMessageRef:I

    return p0
.end method

.method protected blacklist notifySmsSentFailedToEmergencyStateTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V
    .registers 5

    .line 1099
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsSent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZZ)V

    return-void
.end method

.method protected greylist sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    .registers 31

    .line 1496
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->nextMessageRef()I

    move-result v6

    const/4 v7, 0x1

    if-eqz p8, :cond_13

    move v5, v7

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v1, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    goto :goto_1f

    :cond_13
    const/4 v0, 0x0

    move v5, v0

    move-object/from16 v2, p3

    move-object/from16 v1, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v0, p0

    .line 1497
    :goto_1f
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v5

    if-eqz v5, :cond_5d

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    .line 1500
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v4

    move v0, v7

    .line 1502
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x1

    const-wide/16 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p7

    move/from16 v13, p9

    move-wide/from16 v17, p10

    move/from16 v16, v6

    move-object/from16 v6, p8

    .line 1501
    invoke-virtual/range {v1 .. v18}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 1507
    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1508
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :cond_5c
    return-void

    :cond_5d
    move-object/from16 v1, p0

    .line 1511
    const-string v0, "SMSDispatcher"

    const-string v2, "SMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p7

    .line 1512
    invoke-direct {v1, v5}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public blacklist sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJJ)V
    .registers 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "IZIZIJJ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 1925
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    .line 1926
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 1928
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1d

    .line 1930
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Ljava/util/List;)V

    return-void

    .line 1934
    :cond_1d
    new-array v7, v5, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_22
    if-ge v9, v5, :cond_3c

    .line 1936
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v1, v11, v8}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v11

    .line 1937
    iget v12, v11, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v10, v12, :cond_37

    if-eqz v10, :cond_36

    if-ne v10, v6, :cond_37

    :cond_36
    move v10, v12

    .line 1942
    :cond_37
    aput-object v11, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    .line 1945
    :cond_3c
    new-array v9, v5, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1948
    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v12, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1949
    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v13, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move v11, v8

    :goto_49
    if-ge v11, v5, :cond_f6

    .line 1952
    new-instance v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1953
    iput v4, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v6, v11, 0x1

    .line 1954
    iput v6, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1955
    iput v5, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v8, 0x1

    .line 1962
    iput-boolean v8, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    move-object/from16 v16, v7

    .line 1963
    new-instance v7, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1964
    iput-object v14, v7, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-ne v10, v8, :cond_70

    .line 1968
    aget-object v14, v16, v11

    iget v8, v14, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v8, v7, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1969
    iget v8, v14, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v8, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :cond_70
    if-eqz v2, :cond_7f

    .line 1973
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v11, :cond_7f

    .line 1974
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    goto :goto_80

    :cond_7f
    const/4 v14, 0x0

    :goto_80
    if-eqz v3, :cond_8f

    .line 1978
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v11, :cond_8f

    .line 1979
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    goto :goto_90

    :cond_8f
    const/4 v8, 0x0

    .line 1981
    :goto_90
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->nextMessageRef()I

    move-result v21

    .line 1983
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    add-int/lit8 v1, v5, -0x1

    move/from16 v30, v11

    if-ne v11, v1, :cond_cb

    const/4 v11, 0x1

    :goto_a1
    move v0, v10

    move-object v10, v8

    move v8, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move/from16 v3, p8

    move/from16 v17, p11

    move/from16 v18, p12

    move-wide/from16 v22, p15

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v24, v6

    move-object v0, v9

    move-object v9, v14

    move-object/from16 v28, v16

    move-object/from16 v6, v19

    const/16 v27, 0x1

    const/16 v29, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v14, p6

    move/from16 v16, p10

    move-wide/from16 v19, p13

    goto :goto_cd

    :cond_cb
    const/4 v11, 0x0

    goto :goto_a1

    :goto_cd
    invoke-direct/range {v1 .. v23}, Lcom/android/internal/telephony/SMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZIJIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v6

    aput-object v6, v0, v30

    if-nez v6, :cond_db

    move-object/from16 v2, p4

    .line 1989
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Ljava/util/List;)V

    return-void

    :cond_db
    move-object/from16 v2, p4

    move/from16 v3, p9

    .line 1992
    invoke-static {v6, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-$$Nest$fputmPersistMessage(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    move-object/from16 v3, p5

    move-object v9, v0

    move v10, v8

    move/from16 v11, v24

    move/from16 v4, v25

    move/from16 v5, v26

    move/from16 v6, v27

    move-object/from16 v7, v28

    move/from16 v8, v29

    move-object/from16 v0, p3

    goto/16 :goto_49

    :cond_f6
    move-object v0, v9

    .line 1995
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1996
    const-string v3, "SMSDispatcher"

    if-eqz v2, :cond_133

    .line 1997
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found carrier package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1997
    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v4, p3

    invoke-direct {v3, v1, v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 2000
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    invoke-virtual {v3, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    return-void

    .line 2002
    :cond_133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No carrier package. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2002
    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method public blacklist sendRawPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 10

    .line 2163
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    const/4 v1, 0x4

    const-string v2, "SMSDispatcher"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_10

    .line 2164
    const-string v0, "Device does not support sending sms."

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_6d

    .line 2167
    :cond_10
    array-length v0, p1

    move v5, v3

    :goto_12
    if-ge v5, v0, :cond_2c

    aget-object v6, p1, v5

    .line 2168
    invoke-virtual {v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "pdu"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_29

    .line 2169
    const-string v0, "Empty PDU"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    goto :goto_2d

    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_2c
    move v0, v3

    :goto_2d
    if-nez v0, :cond_6d

    .line 2176
    aget-object v5, p1, v3

    invoke-static {v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-$$Nest$fgetmUserId(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 2177
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2181
    :try_start_43
    aget-object v6, p1, v3

    .line 2183
    invoke-virtual {v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x40

    .line 2182
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_43 .. :try_end_4f} :catch_50

    goto :goto_6d

    .line 2186
    :catch_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t get calling app package info: refusing to send SMS "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2188
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide v5

    .line 2187
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2186
    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_6d
    :goto_6d
    if-eqz v0, :cond_74

    const/4 v1, -0x1

    .line 2195
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsTrackersFailure([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    return-void

    .line 2202
    :cond_74
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->checkDestination([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 2204
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 2205
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v0

    iget-object v2, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    array-length v4, p1

    .line 2206
    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_91

    .line 2207
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 2211
    :cond_91
    array-length v0, p1

    move v1, v3

    :goto_93
    if-ge v1, v0, :cond_9d

    aget-object v2, p1, v1

    .line 2212
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    .line 2216
    :cond_9d
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget-object p1, p1, v3

    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_bd

    .line 2217
    new-instance p1, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;-><init>(Landroid/content/Context;)V

    new-array p0, v3, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_bd
    return-void
.end method

.method public blacklist sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 3

    .line 2521
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    if-eqz v0, :cond_8

    .line 2522
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 2524
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is null. Retry failed "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 2525
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2524
    const-string p1, "SMSDispatcher"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract greylist sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method public blacklist sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJ)V
    .registers 35

    const/16 v16, 0x0

    .line 1623
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->getNextUniqueMessageId()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-wide/from16 v14, p14

    .line 1621
    invoke-virtual/range {v0 .. v18}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZJ)V

    return-void
.end method

.method public blacklist sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZJ)V
    .registers 41

    .line 1732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendText id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p14 .. p15}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "SMSDispatcher"

    invoke-static {v9, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->nextMessageRef()I

    move-result v18

    const/4 v10, 0x0

    if-eqz p5, :cond_24

    const/4 v0, 0x1

    move v4, v0

    goto :goto_25

    :cond_24
    move v4, v10

    :goto_25
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move/from16 v6, p10

    move/from16 v7, p12

    move/from16 v8, v18

    .line 1734
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v4

    if-eqz v4, :cond_74

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    .line 1738
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v4

    .line 1740
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v2, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v9, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move-wide/from16 v16, p14

    move/from16 v19, p16

    move-wide/from16 v20, p17

    move-object v1, v0

    move v0, v10

    move-object v10, v3

    move/from16 v3, p8

    .line 1739
    invoke-virtual/range {v1 .. v21}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZIIZJIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 1744
    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 1745
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :cond_73
    return-void

    :cond_74
    move-object v1, v0

    .line 1748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsDispatcher.sendText(): getSubmitPdu() returned null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    invoke-static/range {p14 .. p15}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1748
    invoke-static {v9, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p4

    .line 1750
    invoke-direct {v1, v5}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public blacklist shouldBlockPremiumSmsInSatelliteMode()Z
    .registers 7

    .line 2346
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p0

    .line 2348
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteBeingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SMSDispatcher"

    if-eqz v0, :cond_13

    .line 2349
    const-string p0, "shouldBlockPremiumSmsInSatelliteMode: block premium sms when satellite is being enabled"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2354
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEnabled()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2355
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v0

    .line 2356
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSupportedServicesOnCarrierRoamingNtn(I)[I

    move-result-object p0

    const/4 v3, 0x3

    .line 2357
    invoke-static {p0, v3}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([II)Z

    move-result v3

    .line 2359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldBlockPremiumSmsInSatelliteMode: satelliteSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isSmsSupported="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " services="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2361
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2359
    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p0, v3, 0x1

    return p0

    .line 2365
    :cond_51
    const-string p0, "shouldBlockPremiumSmsInSatelliteMode: return false."

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract blacklist shouldBlockSmsForEcbm()Z
.end method

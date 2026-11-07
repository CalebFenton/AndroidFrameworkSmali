.class public Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.super Ljava/lang/Object;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;,
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    }
.end annotation


# static fields
.field private static final blacklist PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

.field static final blacklist PDU_PENDING_MESSAGE_PROJECTION_INDEX_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist instance:Lcom/android/internal/telephony/SmsBroadcastUndelivered;


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mResolver:Landroid/content/ContentResolver;

.field private final blacklist mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMainUser(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)Landroid/os/UserHandle;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getMainUser()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetUndeliveredSmsExpirationTime(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)J
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getUndeliveredSmsExpirationTime(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 11

    .line 67
    const-string v9, "display_originating_addr"

    const-string v10, "sub_id"

    const-string v0, "pdu"

    const-string v1, "sequence"

    const-string v2, "destination_port"

    const-string v3, "date"

    const-string v4, "reference_number"

    const-string v5, "count"

    const-string v6, "address"

    const-string v7, "_id"

    const-string v8, "message_body"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xb

    .line 82
    new-array v1, v0, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    aput-object v0, v1, v2

    .line 83
    invoke-static {v1}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    return-void
.end method

.method private constructor greylist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 9

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    .line 161
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mUserManager:Landroid/os/UserManager;

    .line 162
    iput-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 164
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getMainUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 168
    new-instance p2, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;Lcom/android/internal/telephony/SmsBroadcastUndelivered-IA;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void

    .line 170
    :cond_30
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    const-string p0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 173
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private static blacklist broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V
    .registers 6

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v0

    .line 306
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v1

    .line 307
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    const-string v3, "broadcastSms: ignoring message; no phone found for subId "

    const-string v4, "SmsBroadcastUndelivered"

    if-nez v2, :cond_29

    .line 308
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 311
    :cond_29
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-nez v2, :cond_4a

    .line 313
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " phoneId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 317
    :cond_4a
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/Phone;->getInboundSmsHandler(Z)Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v0

    if-eqz v0, :cond_59

    const/4 v1, 0x2

    .line 319
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void

    .line 321
    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "null handler for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " format, can\'t deliver."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist getMainUser()Landroid/os/UserHandle;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    .line 187
    :cond_9
    sget-object p0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    return-object p0
.end method

.method private blacklist getUndeliveredSmsExpirationTime(Landroid/content/Context;)J
    .registers 4

    .line 326
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result p0

    .line 327
    const-string v0, "carrier_config"

    .line 328
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_13

    .line 330
    invoke-virtual {p1, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    const-wide/32 v0, 0x240c8400

    if-eqz p0, :cond_20

    .line 333
    const-string p1, "undelivered_sms_message_expiration_time"

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    :cond_20
    return-wide v0
.end method

.method public static blacklist initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 5

    .line 142
    sget-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->instance:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    if-nez v0, :cond_b

    .line 143
    new-instance v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-direct {v0, p0, p3}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->instance:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    :cond_b
    const/4 p0, 0x6

    if-eqz p1, :cond_11

    .line 150
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_11
    if-eqz p2, :cond_16

    .line 153
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_16
    return-void
.end method

.method static blacklist scanRawTable(Landroid/content/Context;J)V
    .registers 22

    .line 194
    const-string v1, " ms"

    const-string v2, "finished scanning raw table in "

    const-string v0, "scanning raw table for undelivered messages"

    const-string v3, "SmsBroadcastUndelivered"

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 197
    new-instance v12, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {v12, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 199
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v0}, Ljava/util/HashSet;-><init>(I)V

    const-wide/32 v14, 0xf4240

    const/16 v16, 0x0

    .line 203
    :try_start_23
    sget-object v7, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v8, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v9, "deleted = 0"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_2f
    .catch Landroid/database/SQLException; {:try_start_23 .. :try_end_2f} :catch_1ad
    .catchall {:try_start_23 .. :try_end_2f} :catchall_1aa

    if-nez v7, :cond_65

    .line 206
    :try_start_31
    const-string v0, "error getting pending message cursor"

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/database/SQLException; {:try_start_31 .. :try_end_36} :catch_5e
    .catchall {:try_start_31 .. :try_end_36} :catchall_57

    if-eqz v7, :cond_3b

    .line 294
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    div-long/2addr v6, v14

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_57
    move-exception v0

    move-object/from16 v16, v7

    :goto_5a
    move-wide/from16 v17, v14

    goto/16 :goto_1c2

    :catch_5e
    move-exception v0

    move-object/from16 v16, v7

    :goto_61
    move-wide/from16 v17, v14

    goto/16 :goto_1b0

    .line 210
    :cond_65
    :try_start_65
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->isCurrentFormat3gpp2()Z

    move-result v8

    .line 211
    :goto_69
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_6d
    .catch Landroid/database/SQLException; {:try_start_65 .. :try_end_6d} :catch_e2
    .catchall {:try_start_65 .. :try_end_6d} :catchall_de

    if-eqz v0, :cond_103

    .line 214
    :try_start_6f
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    const-class v9, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 215
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0
    :try_end_7d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6f .. :try_end_7d} :catch_ea
    .catch Landroid/database/SQLException; {:try_start_6f .. :try_end_7d} :catch_e2
    .catchall {:try_start_6f .. :try_end_7d} :catchall_de

    move-object/from16 v9, p0

    :try_start_7f
    invoke-virtual {v0, v9, v7, v8}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/content/Context;Landroid/database/Cursor;Z)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_83} :catch_e6
    .catch Landroid/database/SQLException; {:try_start_7f .. :try_end_83} :catch_e2
    .catchall {:try_start_7f .. :try_end_83} :catchall_de

    .line 224
    :try_start_83
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v10
    :try_end_87
    .catch Landroid/database/SQLException; {:try_start_83 .. :try_end_87} :catch_e2
    .catchall {:try_start_83 .. :try_end_87} :catchall_de

    const/4 v11, 0x1

    if-ne v10, v11, :cond_90

    .line 226
    :try_start_8a
    invoke-static {v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V
    :try_end_8d
    .catch Landroid/database/SQLException; {:try_start_8a .. :try_end_8d} :catch_5e
    .catchall {:try_start_8a .. :try_end_8d} :catchall_57

    :cond_8d
    :goto_8d
    move-wide/from16 v17, v14

    goto :goto_db

    .line 228
    :cond_90
    :try_start_90
    new-instance v10, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    invoke-direct {v10, v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;-><init>(Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 229
    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;
    :try_end_9b
    .catch Landroid/database/SQLException; {:try_start_90 .. :try_end_9b} :catch_e2
    .catchall {:try_start_90 .. :try_end_9b} :catchall_de

    if-nez v16, :cond_b0

    .line 231
    :try_start_9d
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v12, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v16

    cmp-long v0, v16, p1

    if-gez v0, :cond_8d

    .line 235
    invoke-virtual {v13, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_af
    .catch Landroid/database/SQLException; {:try_start_9d .. :try_end_af} :catch_5e
    .catchall {:try_start_9d .. :try_end_af} :catchall_57

    goto :goto_8d

    .line 238
    :cond_b0
    :try_start_b0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16
    :try_end_b4
    .catch Landroid/database/SQLException; {:try_start_b0 .. :try_end_b4} :catch_e2
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_de

    add-int/lit8 v11, v16, 0x1

    move-wide/from16 v17, v14

    .line 239
    :try_start_b8
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v14

    if-ne v11, v14, :cond_d4

    .line 242
    const-string v11, "found complete multi-part message"

    invoke-static {v3, v11}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 245
    invoke-virtual {v13, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_db

    :catchall_ca
    move-exception v0

    :goto_cb
    move-object/from16 v16, v7

    goto/16 :goto_1c2

    :catch_cf
    move-exception v0

    :goto_d0
    move-object/from16 v16, v7

    goto/16 :goto_1b0

    .line 247
    :cond_d4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_db
    move-wide/from16 v14, v17

    goto :goto_69

    :catchall_de
    move-exception v0

    move-wide/from16 v17, v14

    goto :goto_cb

    :catch_e2
    move-exception v0

    move-wide/from16 v17, v14

    goto :goto_d0

    :catch_e6
    move-exception v0

    :goto_e7
    move-wide/from16 v17, v14

    goto :goto_ee

    :catch_ea
    move-exception v0

    move-object/from16 v9, p0

    goto :goto_e7

    .line 220
    :goto_ee
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error loading SmsTracker: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_db

    :cond_103
    move-object/from16 v9, p0

    move-wide/from16 v17, v14

    const/4 v0, 0x0

    .line 256
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 260
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_110
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    .line 262
    sget-object v12, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    .line 263
    invoke-virtual {v11}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->getDeleteWhere()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v14

    .line 262
    invoke-virtual {v6, v12, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_132

    .line 265
    const-string v13, "No rows were deleted from raw table!"

    invoke-static {v3, v13}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_155

    .line 267
    :cond_132
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Deleted "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " rows from raw table for incomplete "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " part message"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_155
    if-lez v12, :cond_188

    .line 272
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v13

    .line 273
    iget-object v14, v11, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mFormat:Ljava/lang/String;

    iget v15, v11, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v13, v0, v14, v12, v15}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeDroppedIncomingMultipartSms(ILjava/lang/String;II)V

    if-eqz v8, :cond_188

    .line 276
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v13

    iget-boolean v14, v11, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mIs3gpp2:Z

    iget v15, v11, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    .line 277
    invoke-static {v9}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v11, v11, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    .line 278
    invoke-virtual {v0, v11}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 276
    invoke-virtual {v13, v14, v12, v15, v0}, Lcom/android/internal/telephony/metrics/SmsStats;->onDroppedIncomingMultipartSms(ZIIZ)V

    .line 279
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_188

    .line 282
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_188

    .line 284
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onDroppedIncomingMultipartSms()V
    :try_end_188
    .catch Landroid/database/SQLException; {:try_start_b8 .. :try_end_188} :catch_cf
    .catchall {:try_start_b8 .. :try_end_188} :catchall_ca

    :cond_188
    const/4 v0, 0x0

    goto :goto_110

    .line 294
    :cond_18a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    div-long v6, v6, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c0

    :catchall_1aa
    move-exception v0

    goto/16 :goto_5a

    :catch_1ad
    move-exception v0

    goto/16 :goto_61

    .line 291
    :goto_1b0
    :try_start_1b0
    const-string v6, "error reading pending SMS messages"

    invoke-static {v3, v6, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b5
    .catchall {:try_start_1b0 .. :try_end_1b5} :catchall_1c1

    if-eqz v16, :cond_1ba

    .line 294
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_1ba
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_192

    :goto_1c0
    return-void

    :catchall_1c1
    move-exception v0

    :goto_1c2
    if-eqz v16, :cond_1c7

    .line 294
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_1c7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v4

    div-long v7, v7, v17

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    throw v0
.end method

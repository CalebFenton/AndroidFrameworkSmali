.class public Lcom/android/internal/location/GpsNetInitiatedHandler;
.super Ljava/lang/Object;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;,
        Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiResponse;,
        Lcom/android/internal/location/GpsNetInitiatedHandler$1;
    }
.end annotation


# static fields
.field public static final ACTION_NI_VERIFY:Ljava/lang/String; = "android.intent.action.NETWORK_INITIATED_VERIFY"

.field private static final DEBUG:Z = true

.field public static final GPS_ENC_NONE:I = 0x0

.field public static final GPS_ENC_SUPL_GSM_DEFAULT:I = 0x1

.field public static final GPS_ENC_SUPL_UCS2:I = 0x3

.field public static final GPS_ENC_SUPL_UTF8:I = 0x2

.field public static final GPS_ENC_UNKNOWN:I = -0x1

.field public static final GPS_NI_NEED_NOTIFY:I = 0x1

.field public static final GPS_NI_NEED_VERIFY:I = 0x2

.field public static final GPS_NI_PRIVACY_OVERRIDE:I = 0x4

.field public static final GPS_NI_RESPONSE_ACCEPT:I = 0x1

.field public static final GPS_NI_RESPONSE_DENY:I = 0x2

.field public static final GPS_NI_RESPONSE_IGNORE:I = 0x4

.field public static final GPS_NI_RESPONSE_NORESP:I = 0x3

.field public static final GPS_NI_TYPE_EMERGENCY_SUPL:I = 0x4

.field public static final GPS_NI_TYPE_UMTS_CTRL_PLANE:I = 0x3

.field public static final GPS_NI_TYPE_UMTS_SUPL:I = 0x2

.field public static final GPS_NI_TYPE_VOICE:I = 0x1

.field public static final NI_EXTRA_CMD_NOTIF_ID:Ljava/lang/String; = "notif_id"

.field public static final NI_EXTRA_CMD_RESPONSE:Ljava/lang/String; = "response"

.field public static final NI_INTENT_KEY_DEFAULT_RESPONSE:Ljava/lang/String; = "default_resp"

.field public static final NI_INTENT_KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final NI_INTENT_KEY_NOTIF_ID:Ljava/lang/String; = "notif_id"

.field public static final NI_INTENT_KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final NI_INTENT_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final NI_RESPONSE_EXTRA_CMD:Ljava/lang/String; = "send_ni_response"

.field private static final TAG:Ljava/lang/String; = "GpsNetInitiatedHandler"

.field private static final VERBOSE:Z

.field private static mIsHexInput:Z


# instance fields
.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private volatile mIsInEmergency:Z

.field private volatile mIsLocationEnabled:Z

.field private volatile mIsSuplEsEnabled:Z

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNiNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlaySounds:Z

.field private mPopupImmediately:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 119
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    #@3
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netInitiatedListener"    # Landroid/location/INetInitiatedListener;
    .param p3, "isSuplEsEnabled"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 104
    iput-boolean v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPlaySounds:Z

    #@6
    .line 105
    const/4 v1, 0x1

    #@7
    iput-boolean v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    #@9
    .line 114
    iput-boolean v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsLocationEnabled:Z

    #@b
    .line 144
    new-instance v1, Lcom/android/internal/location/GpsNetInitiatedHandler$1;

    #@d
    invoke-direct {v1, p0}, Lcom/android/internal/location/GpsNetInitiatedHandler$1;-><init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    #@10
    iput-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    #@12
    .line 180
    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    #@14
    .line 182
    if-nez p2, :cond_0

    #@16
    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v2, "netInitiatedListener is null"

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 185
    :cond_0
    iput-object p2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    #@21
    .line 188
    invoke-virtual {p0, p3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    #@24
    .line 189
    const-string/jumbo v1, "location"

    #@27
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Landroid/location/LocationManager;

    #@2d
    iput-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    #@2f
    .line 190
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->updateLocationMode()V

    #@32
    .line 192
    const-string/jumbo v1, "phone"

    #@35
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Landroid/telephony/TelephonyManager;

    #@3b
    .line 191
    iput-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@3d
    .line 194
    new-instance v1, Lcom/android/internal/location/GpsNetInitiatedHandler$2;

    #@3f
    invoke-direct {v1, p0}, Lcom/android/internal/location/GpsNetInitiatedHandler$2;-><init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    #@42
    iput-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@44
    .line 204
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@46
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@48
    const/16 v3, 0x20

    #@4a
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@4d
    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    #@4f
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@52
    .line 207
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.NEW_OUTGOING_CALL"

    #@55
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@58
    .line 208
    const-string/jumbo v1, "android.location.MODE_CHANGED"

    #@5b
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@5e
    .line 209
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    #@60
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    #@62
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@65
    .line 179
    return-void
.end method

.method static decodeGSMPackedString([B)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # [B

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 467
    const/4 v0, 0x0

    #@2
    .line 468
    .local v0, "PADDING_CHAR":C
    array-length v2, p0

    #@3
    .line 469
    .local v2, "lengthBytes":I
    mul-int/lit8 v4, v2, 0x8

    #@5
    div-int/lit8 v3, v4, 0x7

    #@7
    .line 476
    .local v3, "lengthSeptets":I
    rem-int/lit8 v4, v2, 0x7

    #@9
    if-nez v4, :cond_0

    #@b
    .line 477
    if-lez v2, :cond_0

    #@d
    .line 478
    add-int/lit8 v4, v2, -0x1

    #@f
    aget-byte v4, p0, v4

    #@11
    shr-int/lit8 v4, v4, 0x1

    #@13
    if-nez v4, :cond_0

    #@15
    .line 479
    add-int/lit8 v3, v3, -0x1

    #@17
    .line 484
    :cond_0
    invoke-static {p0, v5, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 487
    .local v1, "decoded":Ljava/lang/String;
    if-nez v1, :cond_1

    #@1d
    .line 488
    const-string/jumbo v4, "GpsNetInitiatedHandler"

    #@20
    const-string/jumbo v5, "Decoding of GSM packed string failed"

    #@23
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 489
    const-string/jumbo v1, ""

    #@29
    .line 492
    :cond_1
    return-object v1
.end method

.method private static decodeString(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 5
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "isHex"    # Z
    .param p2, "coding"    # I

    #@0
    .prologue
    .line 535
    move-object v0, p0

    #@1
    .line 536
    .local v0, "decoded":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->stringToByteArray(Ljava/lang/String;Z)[B

    #@4
    move-result-object v1

    #@5
    .line 538
    .local v1, "input":[B
    packed-switch p2, :pswitch_data_0

    #@8
    .line 560
    const-string/jumbo v2, "GpsNetInitiatedHandler"

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Unknown encoding "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    const-string/jumbo v4, " for NI text "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 563
    :goto_0
    return-object v0

    #@2e
    .line 540
    :pswitch_0
    move-object v0, p0

    #@2f
    .line 541
    goto :goto_0

    #@30
    .line 544
    :pswitch_1
    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeGSMPackedString([B)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    goto :goto_0

    #@35
    .line 548
    :pswitch_2
    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeUTF8String([B)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    goto :goto_0

    #@3a
    .line 552
    :pswitch_3
    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeUCS2String([B)Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    goto :goto_0

    #@3f
    .line 556
    :pswitch_4
    move-object v0, p0

    #@40
    .line 557
    goto :goto_0

    #@41
    .line 538
    nop

    #@42
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static decodeUCS2String([B)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B

    #@0
    .prologue
    .line 510
    const-string/jumbo v0, ""

    #@3
    .line 512
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/String;

    #@5
    .end local v0    # "decoded":Ljava/lang/String;
    const-string/jumbo v2, "UTF-16"

    #@8
    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 518
    .restart local v0    # "decoded":Ljava/lang/String;
    return-object v0

    #@c
    .line 515
    .end local v0    # "decoded":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@d
    .line 516
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v2
.end method

.method static decodeUTF8String([B)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B

    #@0
    .prologue
    .line 497
    const-string/jumbo v0, ""

    #@3
    .line 499
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/String;

    #@5
    .end local v0    # "decoded":Ljava/lang/String;
    const-string/jumbo v2, "UTF-8"

    #@8
    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 505
    .restart local v0    # "decoded":Ljava/lang/String;
    return-object v0

    #@c
    .line 502
    .end local v0    # "decoded":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@d
    .line 503
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v2
.end method

.method private static getDialogMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 600
    invoke-static {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getDialogTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 594
    invoke-static {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private getDlgIntent(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;
    .locals 6
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    #@0
    .prologue
    .line 414
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 415
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    #@7
    invoke-static {p1, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDialogTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 416
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    #@d
    invoke-static {p1, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDialogMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 419
    .local v1, "message":Ljava/lang/String;
    const v3, 0x10008000

    #@14
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@17
    .line 420
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    #@19
    const-class v4, Lcom/android/internal/app/NetInitiatedActivity;

    #@1b
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    #@1e
    .line 423
    const-string/jumbo v3, "notif_id"

    #@21
    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    #@23
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@26
    .line 424
    const-string/jumbo v3, "title"

    #@29
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2c
    .line 425
    const-string/jumbo v3, "message"

    #@2f
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@32
    .line 426
    const-string/jumbo v3, "timeout"

    #@35
    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    #@37
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3a
    .line 427
    const-string/jumbo v3, "default_resp"

    #@3d
    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    #@3f
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@42
    .line 429
    const-string/jumbo v3, "GpsNetInitiatedHandler"

    #@45
    new-instance v4, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v5, "generateIntent, title: "

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    const-string/jumbo v5, ", message: "

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    .line 430
    const-string/jumbo v5, ", timeout: "

    #@63
    .line 429
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    .line 430
    iget v5, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    #@69
    .line 429
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 432
    return-object v0
.end method

.method private static getNotifMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 585
    const v1, 0x104044f

    #@3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x2

    #@8
    new-array v2, v2, [Ljava/lang/Object;

    #@a
    .line 586
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    #@c
    sget-boolean v4, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    #@e
    iget v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    #@10
    invoke-static {v3, v4, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    const/4 v4, 0x0

    #@15
    aput-object v3, v2, v4

    #@17
    .line 587
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    #@19
    sget-boolean v4, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    #@1b
    iget v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    #@1d
    invoke-static {v3, v4, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    const/4 v4, 0x1

    #@22
    aput-object v3, v2, v4

    #@24
    .line 585
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 588
    .local v0, "message":Ljava/lang/String;
    return-object v0
.end method

.method private static getNotifTicker(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 569
    const v1, 0x104044d

    #@3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x2

    #@8
    new-array v2, v2, [Ljava/lang/Object;

    #@a
    .line 570
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    #@c
    sget-boolean v4, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    #@e
    iget v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    #@10
    invoke-static {v3, v4, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    const/4 v4, 0x0

    #@15
    aput-object v3, v2, v4

    #@17
    .line 571
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    #@19
    sget-boolean v4, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    #@1b
    iget v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    #@1d
    invoke-static {v3, v4, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    const/4 v4, 0x1

    #@22
    aput-object v3, v2, v4

    #@24
    .line 569
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 572
    .local v0, "ticker":Ljava/lang/String;
    return-object v0
.end method

.method private static getNotifTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 578
    const v1, 0x104044e

    #@3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    new-array v2, v2, [Ljava/lang/Object;

    #@a
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 579
    .local v0, "title":Ljava/lang/String;
    return-object v0
.end method

.method private handleNi(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 4
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    #@0
    .prologue
    .line 284
    const-string/jumbo v1, "GpsNetInitiatedHandler"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "in handleNi () : needNotify: "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    .line 285
    iget-boolean v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    #@11
    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 286
    const-string/jumbo v3, " needVerify: "

    #@18
    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 286
    iget-boolean v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    #@1e
    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 287
    const-string/jumbo v3, " privacyOverride: "

    #@25
    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    .line 287
    iget-boolean v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    #@2b
    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 288
    const-string/jumbo v3, " mPopupImmediately: "

    #@32
    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 288
    iget-boolean v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    #@38
    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 289
    const-string/jumbo v3, " mInEmergency: "

    #@3f
    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    .line 289
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    #@46
    move-result v3

    #@47
    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 291
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getLocationEnabled()Z

    #@55
    move-result v1

    #@56
    if-nez v1, :cond_0

    #@58
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_4

    #@5e
    .line 300
    :cond_0
    :goto_0
    iget-boolean v1, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    #@60
    if-eqz v1, :cond_1

    #@62
    .line 303
    iget-boolean v1, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    #@64
    if-eqz v1, :cond_5

    #@66
    iget-boolean v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    #@68
    if-eqz v1, :cond_5

    #@6a
    .line 305
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->openNiDialog(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    #@6d
    .line 313
    :cond_1
    :goto_1
    iget-boolean v1, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    #@6f
    if-eqz v1, :cond_2

    #@71
    iget-boolean v1, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    #@73
    if-eqz v1, :cond_3

    #@75
    .line 315
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    #@77
    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    #@79
    .line 316
    const/4 v3, 0x1

    #@7a
    .line 315
    invoke-interface {v1, v2, v3}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@7d
    .line 283
    :cond_3
    :goto_2
    return-void

    #@7e
    .line 294
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    #@80
    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    #@82
    .line 295
    const/4 v3, 0x4

    #@83
    .line 294
    invoke-interface {v1, v2, v3}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@86
    goto :goto_0

    #@87
    .line 296
    :catch_0
    move-exception v0

    #@88
    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "GpsNetInitiatedHandler"

    #@8b
    const-string/jumbo v2, "RemoteException in sendNiResponse"

    #@8e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    goto :goto_0

    #@92
    .line 308
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    #@95
    goto :goto_1

    #@96
    .line 317
    :catch_1
    move-exception v0

    #@97
    .line 318
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "GpsNetInitiatedHandler"

    #@9a
    const-string/jumbo v2, "RemoteException in sendNiResponse"

    #@9d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a0
    goto :goto_2
.end method

.method private handleNiInEs(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 6
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    .line 326
    const-string/jumbo v2, "GpsNetInitiatedHandler"

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "in handleNiInEs () : niType: "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    .line 327
    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    #@12
    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    .line 328
    const-string/jumbo v4, " notificationId: "

    #@19
    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    .line 328
    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    #@1f
    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 341
    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    #@2c
    if-ne v2, v5, :cond_0

    #@2e
    const/4 v1, 0x1

    #@2f
    .line 342
    .local v1, "isNiTypeES":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    #@32
    move-result v2

    #@33
    if-eq v1, v2, :cond_1

    #@35
    .line 344
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    #@37
    iget v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    #@39
    .line 345
    const/4 v4, 0x4

    #@3a
    .line 344
    invoke-interface {v2, v3, v4}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 324
    :goto_1
    return-void

    #@3e
    .line 341
    .end local v1    # "isNiTypeES":Z
    :cond_0
    const/4 v1, 0x0

    #@3f
    .restart local v1    # "isNiTypeES":Z
    goto :goto_0

    #@40
    .line 346
    :catch_0
    move-exception v0

    #@41
    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GpsNetInitiatedHandler"

    #@44
    const-string/jumbo v3, "RemoteException in sendNiResponse"

    #@47
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    goto :goto_1

    #@4b
    .line 350
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNi(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    #@4e
    goto :goto_1
.end method

.method private openNiDialog(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 4
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    #@0
    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDlgIntent(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 403
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "GpsNetInitiatedHandler"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "openNiDialog, notifyId: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    iget v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 404
    const-string/jumbo v3, ", requestorId: "

    #@1c
    .line 403
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 404
    iget-object v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    #@22
    .line 403
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 405
    const-string/jumbo v3, ", text: "

    #@29
    .line 403
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 405
    iget-object v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    #@2f
    .line 403
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 407
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    #@3c
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@3f
    .line 399
    return-void
.end method

.method private declared-synchronized setNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 9
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 356
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    #@3
    .line 357
    const-string/jumbo v6, "notification"

    #@6
    .line 356
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 358
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    #@e
    monitor-exit p0

    #@f
    .line 359
    return-void

    #@10
    .line 362
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    #@12
    invoke-static {p1, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 363
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    #@18
    invoke-static {p1, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 365
    .local v1, "message":Ljava/lang/String;
    const-string/jumbo v5, "GpsNetInitiatedHandler"

    #@1f
    new-instance v6, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v7, "setNiNotification, notifyId: "

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    iget v7, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    #@2d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    .line 366
    const-string/jumbo v7, ", title: "

    #@34
    .line 365
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    .line 367
    const-string/jumbo v7, ", message: "

    #@3f
    .line 365
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 370
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    #@50
    if-nez v5, :cond_1

    #@52
    .line 371
    new-instance v5, Landroid/app/Notification$Builder;

    #@54
    iget-object v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    #@56
    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@59
    .line 372
    const v6, 0x108066a

    #@5c
    .line 371
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@5f
    move-result-object v5

    #@60
    .line 373
    const-wide/16 v6, 0x0

    #@62
    .line 371
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@65
    move-result-object v5

    #@66
    .line 374
    const/4 v6, 0x1

    #@67
    .line 371
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@6a
    move-result-object v5

    #@6b
    .line 375
    const/4 v6, 0x1

    #@6c
    .line 371
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@6f
    move-result-object v5

    #@70
    .line 376
    iget-object v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    #@72
    .line 377
    const v7, 0x1060059

    #@75
    .line 376
    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    #@78
    move-result v6

    #@79
    .line 371
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@7c
    move-result-object v5

    #@7d
    iput-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    #@7f
    .line 380
    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPlaySounds:Z

    #@81
    if-eqz v5, :cond_2

    #@83
    .line 381
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    #@85
    const/4 v6, 0x1

    #@86
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@89
    .line 387
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    #@8b
    if-nez v5, :cond_3

    #@8d
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDlgIntent(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;

    #@90
    move-result-object v0

    #@91
    .line 388
    .local v0, "intent":Landroid/content/Intent;
    :goto_1
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    #@93
    const/4 v6, 0x0

    #@94
    const/4 v7, 0x0

    #@95
    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@98
    move-result-object v3

    #@99
    .line 389
    .local v3, "pi":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    #@9b
    iget-object v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    #@9d
    invoke-static {p1, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifTicker(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    #@a0
    move-result-object v6

    #@a1
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@a4
    move-result-object v5

    #@a5
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@a8
    move-result-object v5

    #@a9
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@ac
    move-result-object v5

    #@ad
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@b0
    .line 394
    iget v5, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    #@b2
    iget-object v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    #@b4
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@b7
    move-result-object v6

    #@b8
    .line 395
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@ba
    .line 394
    const/4 v8, 0x0

    #@bb
    invoke-virtual {v2, v8, v5, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@be
    monitor-exit p0

    #@bf
    .line 355
    return-void

    #@c0
    .line 383
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "pi":Landroid/app/PendingIntent;
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    #@c2
    const/4 v6, 0x0

    #@c3
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c6
    goto :goto_0

    #@c7
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    .end local v4    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@c8
    monitor-exit p0

    #@c9
    throw v5

    #@ca
    .line 387
    .restart local v1    # "message":Ljava/lang/String;
    .restart local v2    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v4    # "title":Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    #@cc
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@cf
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method static stringToByteArray(Ljava/lang/String;Z)[B
    .locals 5
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "isHex"    # Z

    #@0
    .prologue
    .line 438
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v3

    #@6
    div-int/lit8 v1, v3, 0x2

    #@8
    .line 439
    .local v1, "length":I
    :goto_0
    new-array v2, v1, [B

    #@a
    .line 442
    .local v2, "output":[B
    if-eqz p1, :cond_1

    #@c
    .line 444
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    #@f
    .line 446
    mul-int/lit8 v3, v0, 0x2

    #@11
    mul-int/lit8 v4, v0, 0x2

    #@13
    add-int/lit8 v4, v4, 0x2

    #@15
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    const/16 v4, 0x10

    #@1b
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@1e
    move-result v3

    #@1f
    int-to-byte v3, v3

    #@20
    aput-byte v3, v2, v0

    #@22
    .line 444
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_1

    #@25
    .line 438
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "output":[B
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@28
    move-result v1

    #@29
    .restart local v1    # "length":I
    goto :goto_0

    #@2a
    .line 450
    .restart local v2    # "output":[B
    :cond_1
    const/4 v0, 0x0

    #@2b
    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v1, :cond_2

    #@2d
    .line 452
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@30
    move-result v3

    #@31
    int-to-byte v3, v3

    #@32
    aput-byte v3, v2, v0

    #@34
    .line 450
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_2

    #@37
    .line 456
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getInEmergency()Z
    .locals 2

    #@0
    .prologue
    .line 249
    const-string/jumbo v1, "ril.cdma.inecmmode"

    #@3
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 248
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    .line 250
    .local v0, "isInEmergencyCallback":Z
    iget-boolean v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergency:Z

    #@d
    if-nez v1, :cond_0

    #@f
    .end local v0    # "isInEmergencyCallback":Z
    :goto_0
    return v0

    #@10
    .restart local v0    # "isInEmergencyCallback":Z
    :cond_0
    const/4 v0, 0x1

    #@11
    goto :goto_0
.end method

.method public getLocationEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsLocationEnabled:Z

    #@2
    return v0
.end method

.method public getSuplEsEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsSuplEsEnabled:Z

    #@2
    return v0
.end method

.method public handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 3
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    #@0
    .prologue
    .line 256
    const-string/jumbo v0, "GpsNetInitiatedHandler"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "in handleNiNotification () : notificationId: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    .line 257
    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    #@11
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 258
    const-string/jumbo v2, " requestorId: "

    #@18
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 258
    iget-object v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    #@1e
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 259
    const-string/jumbo v2, " text: "

    #@25
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 259
    iget-object v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    #@2b
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 260
    const-string/jumbo v2, " mIsSuplEsEnabled"

    #@32
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    .line 260
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getSuplEsEnabled()Z

    #@39
    move-result v2

    #@3a
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    .line 261
    const-string/jumbo v2, " mIsLocationEnabled"

    #@41
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    .line 261
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getLocationEnabled()Z

    #@48
    move-result v2

    #@49
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 263
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getSuplEsEnabled()Z

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_0

    #@5a
    .line 264
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiInEs(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    #@5d
    .line 255
    :goto_0
    return-void

    #@5e
    .line 266
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNi(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    #@61
    goto :goto_0
.end method

.method public setInEmergency(Z)V
    .locals 0
    .param p1, "isInEmergency"    # Z

    #@0
    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergency:Z

    #@2
    .line 243
    return-void
.end method

.method public setSuplEsEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    #@0
    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsSuplEsEnabled:Z

    #@2
    .line 212
    return-void
.end method

.method public updateLocationMode()V
    .locals 2

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    #@2
    const-string/jumbo v1, "gps"

    #@5
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    iput-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsLocationEnabled:Z

    #@b
    .line 223
    return-void
.end method

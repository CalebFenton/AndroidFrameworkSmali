.class public Lcom/android/internal/telephony/CarrierKeyDownloadManager;
.super Landroid/os/Handler;
.source "CarrierKeyDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;
    }
.end annotation


# static fields
.field private static final blacklist CARRIER_KEY_TYPES:[I


# instance fields
.field private blacklist mAllowedOverMeteredNetwork:Z

.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public blacklist mCarrierId:I

.field private blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDefaultNetworkCallback:Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;

.field private blacklist mDeleteOldKeyAfterDownload:Z

.field public blacklist mDownloadId:J

.field public final blacklist mDownloadManager:Landroid/app/DownloadManager;

.field private final blacklist mDownloadReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mIsRequiredToHandleUnlock:Z

.field public blacklist mKeyAvailability:I

.field private blacklist mKeyguardManager:Landroid/app/KeyguardManager;

.field public blacklist mMccMncForDownload:Ljava/lang/String;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mURL:Ljava/lang/String;

.field private blacklist mUserManager:Landroid/os/UserManager;

.field private final blacklist mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic blacklist $r8$lambda$DT9lb5Cjh4s_4XW7fCmCHYGCwt8(Lcom/android/internal/telephony/CarrierKeyDownloadManager;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->lambda$new$0(IIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectivityManager(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Landroid/net/ConnectivityManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRequiredToHandleUnlock(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mIsRequiredToHandleUnlock:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRequiredToHandleUnlock(Lcom/android/internal/telephony/CarrierKeyDownloadManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mIsRequiredToHandleUnlock:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleAlarmOrConfigChange(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->handleAlarmOrConfigChange()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/CarrierKeyDownloadManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterDefaultNetworkCb(Lcom/android/internal/telephony/CarrierKeyDownloadManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->unregisterDefaultNetworkCb(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 113
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->CARRIER_KEY_TYPES:[I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 6

    .line 134
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mKeyAvailability:I

    .line 120
    iput-boolean v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mAllowedOverMeteredNetwork:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDeleteOldKeyAfterDownload:Z

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mMccMncForDownload:Ljava/lang/String;

    const/4 v0, -0x1

    .line 127
    iput v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mCarrierId:I

    .line 220
    new-instance v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;-><init>(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager$2;-><init>(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;-><init>(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 136
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    .line 137
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    const-string v3, "com.android.internal.telephony.carrier_key_download_alarm"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v3, "com.android.internal.telephony.ACTION_CARRIER_CERTIFICATE_DOWNLOAD"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 143
    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 144
    const-string v0, "download"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    .line 145
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 146
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 148
    const-class p1, Landroid/app/KeyguardManager;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 150
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mUserManager:Landroid/os/UserManager;

    .line 152
    const-class p1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_8d

    .line 156
    new-instance v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V

    new-instance v2, Lcom/android/internal/telephony/CarrierKeyDownloadManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V

    invoke-virtual {p1, v0, v2}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 211
    :cond_8d
    const-class p1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private blacklist carrierUsesKeys()Z
    .registers 8

    .line 586
    const-string v0, "allow_metered_network_for_cert_download_bool"

    const-string v1, "imsi_key_download_url_string"

    const-string v2, "imsi_key_availability_int"

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const-string v4, "carrier_config"

    .line 587
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierConfigManager;

    const/4 v4, 0x0

    if-nez v3, :cond_14

    return v4

    .line 591
    :cond_14
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    .line 594
    :try_start_1a
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_22} :catch_23

    goto :goto_29

    .line 599
    :catch_23
    const-string v3, "CarrierConfigLoader is not available."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->loge(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_29
    if-eqz v3, :cond_85

    .line 601
    invoke-virtual {v3}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_32

    goto :goto_85

    .line 605
    :cond_32
    invoke-virtual {v3, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mKeyAvailability:I

    .line 606
    invoke-virtual {v3, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mURL:Ljava/lang/String;

    .line 607
    invoke-virtual {v3, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mAllowedOverMeteredNetwork:Z

    .line 610
    iget v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mKeyAvailability:I

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_65

    .line 615
    :cond_51
    sget-object v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->CARRIER_KEY_TYPES:[I

    array-length v1, v0

    move v2, v4

    :goto_55
    if-ge v2, v1, :cond_64

    aget v3, v0, v2

    .line 616
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->isKeyEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_61

    const/4 p0, 0x1

    return p0

    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_64
    return v4

    .line 611
    :cond_65
    :goto_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier not enabled or invalid values. mKeyAvailability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mKeyAvailability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    :cond_85
    :goto_85
    return v4
.end method

.method public static blacklist cleanCertString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 871
    const-string v0, "-----BEGIN CERTIFICATE-----"

    .line 872
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "-----END CERTIFICATE-----"

    .line 873
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    .line 871
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist cleanupDownloadInfo()V
    .registers 3

    .line 391
    const-string v0, "Cleaning up download info"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 392
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadId:J

    .line 394
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mMccMncForDownload:Ljava/lang/String;

    const/4 v0, -0x1

    .line 398
    iput v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mCarrierId:I

    return-void
.end method

.method private blacklist cleanupRenewalAlarms()V
    .registers 5

    .line 402
    const-string v0, "Cleaning up existing renewal alarms"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 404
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.carrier_key_download_alarm"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    const-string v2, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 408
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 409
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static blacklist convertToString(Landroid/app/DownloadManager;J)Ljava/lang/String;
    .registers 7

    .line 644
    const-string v0, "CarrierKeyDownloadManager"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    .line 645
    invoke-virtual {p0, p1, p2}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_10
    .catch Ljava/util/zip/ZipException; {:try_start_3 .. :try_end_10} :catch_44
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_10} :catch_42

    .line 646
    :try_start_10
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_46

    .line 647
    :try_start_15
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 648
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    :goto_26
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 652
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    :catchall_35
    move-exception p1

    goto :goto_48

    .line 654
    :cond_37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_35

    .line 655
    :try_start_3b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_46

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/util/zip/ZipException; {:try_start_3e .. :try_end_41} :catch_44
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    return-object p1

    :catch_42
    move-exception p0

    goto :goto_5a

    :catch_44
    move-exception p0

    goto :goto_6f

    :catchall_46
    move-exception p0

    goto :goto_51

    .line 644
    :goto_48
    :try_start_48
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    move-exception p0

    :try_start_4d
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_50
    throw p1
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_46

    :goto_51
    :try_start_51
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception p1

    :try_start_56
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_59
    throw p0
    :try_end_5a
    .catch Ljava/util/zip/ZipException; {:try_start_56 .. :try_end_5a} :catch_44
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5a} :catch_42

    .line 660
    :goto_5a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected exception in convertToString e="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 657
    :goto_6f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Stream is not gzipped e="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static blacklist convertToStringNoGZip(Landroid/app/DownloadManager;J)Ljava/lang/String;
    .registers 5

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    :try_start_5
    new-instance v1, Ljava/io/FileInputStream;

    .line 626
    invoke-virtual {p0, p1, p2}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_40

    .line 630
    :try_start_12
    new-instance p0, Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/InputStreamReader;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 633
    :goto_1e
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 634
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2d

    goto :goto_1e

    :catchall_2d
    move-exception p0

    goto :goto_37

    .line 636
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_40

    .line 640
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 625
    :goto_37
    :try_start_37
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_3f

    :catchall_3b
    move-exception p1

    :try_start_3c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3f
    throw p0
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_40} :catch_40

    :catch_40
    move-exception p0

    .line 637
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist downloadKey()Z
    .registers 10

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting download from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mMccMncForDownload:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_ac

    iget v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mCarrierId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_26

    goto/16 :goto_ac

    .line 804
    :cond_26
    :try_start_26
    new-instance v5, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 805
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v8, 0x2

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 808
    new-instance v0, Landroid/app/DownloadManager$Request;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 812
    iget-boolean v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mAllowedOverMeteredNetwork:Z

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;

    const/4 v2, 0x2

    .line 813
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 814
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v0, v2, v3}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 815
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    .line 820
    iput-wide v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadId:J

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saving values mccmnc: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mMccMncForDownload:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", downloadId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", carrierId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mCarrierId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_83} :catch_85

    const/4 p0, 0x1

    return p0

    :catch_85
    move-exception v0

    .line 824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception trying to download key from url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",  Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 824
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->loge(Ljava/lang/String;)V

    .line 826
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->printDeviceLockStatus()V

    return v1

    .line 787
    :cond_ac
    :goto_ac
    const-string v0, "mccmnc or carrierId is UnKnown"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->loge(Ljava/lang/String;)V

    return v1
.end method

.method public static blacklist getKeyInformation([B)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/security/PublicKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 839
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 840
    const-string p0, "X.509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 841
    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 842
    new-instance v0, Landroid/util/Pair;

    .line 843
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist handleAlarmOrConfigChange()V
    .registers 5

    .line 315
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->carrierUsesKeys()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->areCarrierKeysAbsentOrExpiring()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 318
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    if-eqz v0, :cond_22

    .line 319
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->downloadKey()Z

    move-result v3

    if-eqz v3, :cond_22

    move v1, v2

    .line 323
    :cond_22
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v3

    if-eqz v1, :cond_32

    .line 325
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->unregisterDefaultNetworkCb(I)V

    goto :goto_61

    .line 330
    :cond_32
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mIsRequiredToHandleUnlock:Z

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasActiveDataConnection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "    isDeviceUserLocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mIsRequiredToHandleUnlock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->loge(Ljava/lang/String;)V

    if-nez v0, :cond_5e

    .line 338
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->registerDefaultNetworkCb(I)V

    .line 340
    :cond_5e
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->resetRenewalAlarm()V

    .line 343
    :cond_61
    :goto_61
    const-string v0, "handleAlarmOrConfigChange :: areCarrierKeysAbsentOrExpiring returned false"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    return-void

    .line 345
    :cond_67
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->cleanupRenewalAlarms()V

    .line 346
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->isOtherSlotHasCarrier()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->getSimCarrierId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->deleteCarrierInfoForImsiEncryption(ILjava/lang/String;)V

    .line 350
    :cond_7d
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->cleanupDownloadInfo()V

    return-void
.end method

.method public static blacklist isKeyEnabled(II)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    sub-int/2addr p0, v0

    shr-int p0, p1, p0

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isOtherSlotHasCarrier()Z
    .registers 5

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 375
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAlarmOrConfigChange ActiveSubscriptionInfoList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_27

    .line 377
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->loge(Ljava/lang/String;)V

    .line 378
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 379
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-eq v2, v3, :cond_36

    .line 380
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v2

    if-ne v1, v2, :cond_36

    .line 383
    const-string v0, "handleAlarmOrConfigChange same operator sim in another slot"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->loge(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_61
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .registers 6

    .line 159
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CarrierConfig changed slotIndex = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " subId = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " CarrierId = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " phoneId = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 161
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 159
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    .line 163
    iget-object p4, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p4

    if-ne p1, p4, :cond_a0

    if-gtz p3, :cond_44

    iget-object p4, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mMccMncForDownload:Ljava/lang/String;

    .line 164
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_a0

    .line 166
    :cond_44
    iget-object p4, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p4, :cond_4e

    .line 167
    invoke-virtual {p4}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    move-result p4

    if-eq p4, p2, :cond_72

    .line 168
    :cond_4e
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "recreating TelManager with SubId = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    .line 169
    iget-object p4, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/TelephonyManager;

    .line 171
    invoke-virtual {p4, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_72
    if-lez p3, :cond_76

    .line 175
    iput p3, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mCarrierId:I

    .line 180
    :cond_76
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->updateSimOperator()V

    .line 183
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->printDeviceLockStatus()V

    .line 185
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p2

    if-nez p2, :cond_88

    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mIsRequiredToHandleUnlock:Z

    return-void

    .line 193
    :cond_88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Carrier Config changed: slotIndex="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 194
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a0
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarrierKeyDownloadManager ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 928
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 4

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarrierKeyDownloadManager ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 923
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onDownloadComplete(JLjava/lang/String;I)V
    .registers 11

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadComplete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    .line 545
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    .line 546
    new-array v2, v1, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 547
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2b

    return-void

    .line 552
    :cond_2b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 553
    const-string v2, "status"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x8

    .line 554
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v4, v5, :cond_9d

    .line 556
    :try_start_3f
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-static {v2, p1, p2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->convertToString(Landroid/app/DownloadManager;J)Ljava/lang/String;

    move-result-object v2

    .line 557
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 558
    const-string v2, "fallback to no gzip"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    .line 559
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-static {v2, p1, p2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->convertToStringNoGZip(Landroid/app/DownloadManager;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_5b

    :catchall_57
    move-exception p3

    goto :goto_93

    :catch_59
    move-exception p3

    goto :goto_6d

    .line 562
    :cond_5b
    :goto_5b
    invoke-virtual {p0, v2, p3, p4}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->parseJsonAndPersistKey(Ljava/lang/String;Ljava/lang/String;I)V

    .line 563
    const-string p3, "Completed downloading keys"

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_63} :catch_59
    .catchall {:try_start_3f .. :try_end_63} :catchall_57

    .line 568
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    new-array p3, v1, [J

    aput-wide p1, p3, v3

    invoke-virtual {p0, p3}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_ca

    .line 565
    :goto_6d
    :try_start_6d
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in download:"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->loge(Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_6d .. :try_end_89} :catchall_57

    .line 568
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    new-array p3, v1, [J

    aput-wide p1, p3, v3

    invoke-virtual {p0, p3}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_ca

    :goto_93
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    new-array p4, v1, [J

    aput-wide p1, p4, v3

    invoke-virtual {p0, p4}, Landroid/app/DownloadManager;->remove([J)I

    .line 569
    throw p3

    .line 571
    :cond_9d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Download Failed reason = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "Failed Status reason"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "reason"

    .line 573
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 572
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 571
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->loge(Ljava/lang/String;)V

    .line 574
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->printDeviceLockStatus()V

    .line 577
    :cond_ca
    :goto_ca
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private blacklist onPostDownloadProcessing()V
    .registers 3

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->resetRenewalAlarm()V

    const-wide/16 v0, -0x1

    .line 305
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadId:J

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private blacklist printDeviceLockStatus()V
    .registers 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Device Status: isDeviceLocked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  iss User unlocked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mUserManager:Landroid/os/UserManager;

    .line 216
    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerDefaultNetworkCb(I)V
    .registers 4

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterDefaultNetworkCb for slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDefaultNetworkCallback:Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;

    if-nez v0, :cond_27

    const/4 v0, -0x1

    if-eq p1, v0, :cond_27

    .line 885
    new-instance v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;-><init>(Lcom/android/internal/telephony/CarrierKeyDownloadManager;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDefaultNetworkCallback:Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;

    .line 886
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    :cond_27
    return-void
.end method

.method private blacklist unregisterDefaultNetworkCb(I)V
    .registers 4

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterDefaultNetworkCb for slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    .line 895
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDefaultNetworkCallback:Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;

    if-eqz p1, :cond_20

    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p1, 0x0

    .line 897
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDefaultNetworkCallback:Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;

    :cond_20
    return-void
.end method


# virtual methods
.method public blacklist areCarrierKeysAbsentOrExpiring()Z
    .registers 8

    .line 757
    sget-object v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->CARRIER_KEY_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_54

    aget v4, v0, v3

    .line 758
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->isKeyEnabled(I)Z

    move-result v5

    if-nez v5, :cond_12

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 763
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 764
    invoke-virtual {v0, v4, v2}, Lcom/android/internal/telephony/Phone;->getCarrierInfoForImsiEncryption(IZ)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_30

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key not found for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    return v1

    .line 768
    :cond_30
    invoke-virtual {v0}, Landroid/telephony/ImsiEncryptionInfo;->getCarrierId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3f

    .line 769
    const-string v0, "carrier key is unknown carrier, so prefer to reDownload"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    .line 770
    iput-boolean v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDeleteOldKeyAfterDownload:Z

    return v1

    .line 773
    :cond_3f
    invoke-virtual {v0}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object p0

    .line 774
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x6c258c00

    cmp-long p0, v3, v5

    if-gez p0, :cond_54

    return v1

    :cond_54
    return v2
.end method

.method public blacklist getExpirationDate()J
    .registers 12

    .line 419
    sget-object v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->CARRIER_KEY_TYPES:[I

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v6, v2

    move v5, v4

    :goto_b
    if-ge v5, v1, :cond_3b

    aget v8, v0, v5

    .line 420
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->isKeyEnabled(I)Z

    move-result v9

    if-nez v9, :cond_16

    goto :goto_38

    .line 423
    :cond_16
    iget-object v9, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 424
    invoke-virtual {v9, v8, v4}, Lcom/android/internal/telephony/Phone;->getCarrierInfoForImsiEncryption(IZ)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v8

    if-eqz v8, :cond_38

    .line 425
    invoke-virtual {v8}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_38

    .line 426
    invoke-virtual {v8}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    cmp-long v9, v6, v9

    if-lez v9, :cond_38

    .line 427
    invoke-virtual {v8}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    :cond_38
    :goto_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_3b
    cmp-long p0, v6, v2

    if-eqz p0, :cond_5f

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    add-long/2addr v0, v2

    cmp-long p0, v6, v0

    if-gez p0, :cond_4c

    goto :goto_5f

    .line 441
    :cond_4c
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const v0, 0x48190800

    .line 444
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    const v0, 0x240c8400

    add-int/2addr p0, v0

    int-to-long v0, p0

    sub-long/2addr v6, v0

    return-wide v6

    .line 437
    :cond_5f
    :goto_5f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getSimCarrierId()I
    .registers 2

    .line 506
    iget v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mCarrierId:I

    if-lez v0, :cond_5

    return v0

    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    return p0
.end method

.method public blacklist getSimOperator()Ljava/lang/String;
    .registers 1

    .line 493
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->updateSimOperator()V

    .line 494
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mMccMncForDownload:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 285
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_35

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 p1, 0x2

    if-eq v0, p1, :cond_35

    const/4 p1, 0x3

    if-eq v0, p1, :cond_35

    goto :goto_34

    .line 289
    :cond_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 291
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p1

    .line 293
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCarrierId()I

    move-result v2

    .line 294
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->isValidDownload(Ljava/lang/String;JI)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 295
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->onDownloadComplete(JLjava/lang/String;I)V

    .line 296
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->onPostDownloadProcessing()V

    :cond_34
    :goto_34
    return-void

    .line 287
    :cond_35
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->handleAlarmOrConfigChange()V

    return-void
.end method

.method public blacklist isKeyEnabled(I)Z
    .registers 2

    .line 737
    iget p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mKeyAvailability:I

    invoke-static {p1, p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->isKeyEnabled(II)Z

    move-result p0

    return p0
.end method

.method public blacklist isValidDownload(Ljava/lang/String;JI)Z
    .registers 7

    .line 519
    iget-wide v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadId:J

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 520
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "download ID="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " for completed download does not match stored id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadId:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->loge(Ljava/lang/String;)V

    return v1

    .line 525
    :cond_26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mMccMncForDownload:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mMccMncForDownload:Ljava/lang/String;

    .line 526
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mCarrierId:I

    if-eq v0, p4, :cond_41

    goto :goto_67

    .line 533
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Matched MccMnc =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", carrierId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", downloadId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 528
    :cond_67
    :goto_67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "currentMccMnc="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " storedMccMnc ="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mMccMncForDownload:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "currentCarrierId = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  storedCarrierId = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mCarrierId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->loge(Ljava/lang/String;)V

    return v1
.end method

.method public blacklist parseJsonAndPersistKey(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 678
    const-string v10, "key-type"

    const-string v11, "certificate"

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ea

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ea

    const/4 v12, -0x1

    move/from16 v9, p3

    if-ne v9, v12, :cond_1b

    goto/16 :goto_ea

    :cond_1b
    const/4 v2, 0x3

    const/4 v13, 0x0

    .line 684
    :try_start_1d
    invoke-virtual {v0, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 685
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 686
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 687
    const-string v2, "carrier-keys"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move v14, v13

    .line 688
    :goto_33
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v14, v2, :cond_e9

    .line 689
    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 692
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 693
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_54

    :catch_48
    move-exception v0

    goto/16 :goto_bc

    :catch_4b
    move-exception v0

    goto/16 :goto_d1

    .line 695
    :cond_4e
    const-string v3, "public-key"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 700
    :goto_54
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 701
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 702
    const-string v5, "EPDG"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    const/4 v4, 0x1

    goto :goto_85

    .line 704
    :cond_68
    const-string v5, "WLAN"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_84

    .line 705
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key-type specified: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->loge(Ljava/lang/String;)V

    :cond_84
    const/4 v4, 0x2

    .line 708
    :goto_85
    const-string v5, "key-identifier"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 710
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->cleanCertString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->getKeyInformation([B)Landroid/util/Pair;

    move-result-object v3

    .line 711
    iget-boolean v5, v1, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDeleteOldKeyAfterDownload:Z

    if-eqz v5, :cond_a3

    .line 713
    iget-object v5, v1, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x0

    invoke-virtual {v5, v12, v6}, Lcom/android/internal/telephony/Phone;->deleteCarrierInfoForImsiEncryption(ILjava/lang/String;)V

    .line 719
    iput-boolean v13, v1, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDeleteOldKeyAfterDownload:Z

    .line 721
    :cond_a3
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/security/PublicKey;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move v3, v4

    move-object v4, v2

    move-object v2, v5

    move-wide v5, v15

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->savePublicKey(Ljava/security/PublicKey;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_b6
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_b6} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_b6} :catch_48

    add-int/lit8 v14, v14, 0x1

    move/from16 v9, p3

    goto/16 :goto_33

    .line 726
    :goto_bc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->loge(Ljava/lang/String;)V

    goto :goto_e9

    .line 724
    :goto_d1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Json parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->loge(Ljava/lang/String;)V

    :cond_e9
    :goto_e9
    return-void

    .line 680
    :cond_ea
    :goto_ea
    const-string v0, "jsonStr or mcc, mnc: is empty or carrierId is UNKNOWN_CARRIER_ID"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist resetRenewalAlarm()V
    .registers 8

    .line 458
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->cleanupRenewalAlarms()V

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 460
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->getExpirationDate()J

    move-result-wide v1

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "minExpirationDate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    .line 462
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 464
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.internal.telephony.carrier_key_download_alarm"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    const-string v5, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0xc000000

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 468
    invoke-virtual {v3, v6, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRenewalAlarm: action="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " time="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist savePublicKey(Ljava/security/PublicKey;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .registers 11

    move-wide v0, p4

    move p4, p2

    move-object p2, p6

    move-object p6, p1

    .line 859
    new-instance p1, Landroid/telephony/ImsiEncryptionInfo;

    move-object p5, p3

    move-object p3, p7

    new-instance p7, Ljava/util/Date;

    invoke-direct {p7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-direct/range {p1 .. p8}, Landroid/telephony/ImsiEncryptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/security/PublicKey;Ljava/util/Date;I)V

    .line 861
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V

    return-void
.end method

.method public blacklist updateSimOperator()V
    .registers 3

    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mMccMncForDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 481
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mMccMncForDownload:Ljava/lang/String;

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimOperator, Initialized mMccMncForDownload = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mMccMncForDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->logd(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

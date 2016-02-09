.class final Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I = null

.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x3e9

.field static final LOG_TAG:Ljava/lang/String; = "GsmSST"

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field static final VDBG:Z = false

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"


# instance fields
.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private mCr:Landroid/content/ContentResolver;

.field private mDataRoaming:Z

.field private mEmergencyOnly:Z

.field private mGotCountryCode:Z

.field private mGsmRoaming:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMaxDataCalls:I

.field private mNeedFixZoneAfterNitz:Z

.field mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private mNewMaxDataCalls:I

.field private mNewReasonDataDenied:I

.field private mNitzUpdatedTime:Z

.field private mNotification:Landroid/app/Notification;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mPreferredNetworkType:I

.field private mReasonDataDenied:I

.field private mReportedGprsNoReg:Z

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mStartedGprsRegCheck:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@2
    return-object v0
.end method

.method private static synthetic -getcom_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->values()[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x3

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x2

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTimeZone()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTime()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 10
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 208
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@6
    new-instance v7, Landroid/telephony/CellInfoGsm;

    #@8
    invoke-direct {v7}, Landroid/telephony/CellInfoGsm;-><init>()V

    #@b
    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V

    #@e
    .line 103
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    #@10
    .line 104
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    #@12
    .line 105
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    #@14
    .line 106
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    #@16
    .line 112
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    #@18
    .line 118
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    #@1a
    .line 123
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    #@1c
    .line 130
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@1e
    .line 134
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    #@20
    .line 138
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    #@22
    .line 145
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    #@24
    .line 148
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    #@26
    .line 171
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    #@28
    invoke-direct {v6, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    #@2b
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@2d
    .line 191
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    #@2f
    new-instance v7, Landroid/os/Handler;

    #@31
    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    #@34
    invoke-direct {v6, p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    #@37
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    #@39
    .line 199
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    #@3b
    new-instance v7, Landroid/os/Handler;

    #@3d
    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    #@40
    invoke-direct {v6, p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    #@43
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    #@45
    .line 210
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@47
    .line 211
    new-instance v6, Landroid/telephony/gsm/GsmCellLocation;

    #@49
    invoke-direct {v6}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    #@4c
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@4e
    .line 212
    new-instance v6, Landroid/telephony/gsm/GsmCellLocation;

    #@50
    invoke-direct {v6}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    #@53
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@55
    .line 215
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@58
    move-result-object v6

    #@59
    const-string/jumbo v7, "power"

    #@5c
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5f
    move-result-object v3

    #@60
    check-cast v3, Landroid/os/PowerManager;

    #@62
    .line 216
    .local v3, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v6, "ServiceStateTracker"

    #@65
    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@68
    move-result-object v6

    #@69
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6b
    .line 218
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@6d
    const/16 v7, 0xd

    #@6f
    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@72
    .line 219
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@74
    invoke-interface {v6, p0, v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@77
    .line 221
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@79
    const/4 v7, 0x2

    #@7a
    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@7d
    .line 222
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7f
    const/16 v7, 0xb

    #@81
    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    #@84
    .line 223
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@86
    const/16 v7, 0x17

    #@88
    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8b
    .line 227
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@92
    move-result-object v6

    #@93
    .line 228
    const-string/jumbo v7, "airplane_mode_on"

    #@96
    .line 226
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@99
    move-result v0

    #@9a
    .line 229
    .local v0, "airplaneMode":I
    if-gtz v0, :cond_0

    #@9c
    move v4, v5

    #@9d
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    #@9f
    .line 231
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@a2
    move-result-object v4

    #@a3
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a6
    move-result-object v4

    #@a7
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@a9
    .line 232
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@ab
    .line 233
    const-string/jumbo v6, "auto_time"

    #@ae
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@b1
    move-result-object v6

    #@b2
    .line 234
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    #@b4
    .line 232
    invoke-virtual {v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@b7
    .line 235
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@b9
    .line 236
    const-string/jumbo v6, "auto_time_zone"

    #@bc
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@bf
    move-result-object v6

    #@c0
    .line 237
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    #@c2
    .line 235
    invoke-virtual {v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@c5
    .line 239
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    #@c8
    .line 242
    new-instance v2, Landroid/content/IntentFilter;

    #@ca
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    #@cd
    .line 243
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.LOCALE_CHANGED"

    #@d0
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@d3
    .line 244
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@d6
    move-result-object v4

    #@d7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@d9
    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@dc
    .line 246
    new-instance v2, Landroid/content/IntentFilter;

    #@de
    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    #@e1
    .line 247
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@e4
    move-result-object v1

    #@e5
    .line 248
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v4, "android.intent.action.ACTION_RADIO_OFF"

    #@e8
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@eb
    .line 249
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@ed
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@f0
    .line 207
    return-void
.end method

.method private currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z
    .locals 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 1559
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@2
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v4

    #@6
    .line 1560
    const-string/jumbo v5, "phone"

    #@9
    .line 1559
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v4

    #@d
    check-cast v4, Landroid/telephony/TelephonyManager;

    #@f
    .line 1561
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    #@12
    move-result v5

    #@13
    .line 1559
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 1562
    .local v3, "simNumeric":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 1563
    .local v2, "operatorNumeric":Ljava/lang/String;
    const/4 v1, 0x1

    #@1c
    .line 1566
    .local v1, "equalsMcc":Z
    const/4 v4, 0x0

    #@1d
    const/4 v5, 0x3

    #@1e
    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 1567
    const/4 v5, 0x0

    #@23
    const/4 v6, 0x3

    #@24
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    .line 1566
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result v1

    #@2c
    .line 1570
    .end local v1    # "equalsMcc":Z
    :goto_0
    return v1

    #@2d
    .line 1568
    .restart local v1    # "equalsMcc":Z
    :catch_0
    move-exception v0

    #@2e
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 9
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    #@0
    .prologue
    .line 1363
    move v2, p1

    #@1
    .line 1364
    .local v2, "rawOffset":I
    if-eqz p2, :cond_0

    #@3
    .line 1365
    const v6, 0x36ee80

    #@6
    sub-int/2addr v2, v6

    #@7
    .line 1367
    :cond_0
    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    #@a
    move-result-object v5

    #@b
    .line 1368
    .local v5, "zones":[Ljava/lang/String;
    const/4 v1, 0x0

    #@c
    .line 1369
    .local v1, "guess":Ljava/util/TimeZone;
    new-instance v0, Ljava/util/Date;

    #@e
    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    #@11
    .line 1370
    .local v0, "d":Ljava/util/Date;
    const/4 v6, 0x0

    #@12
    array-length v7, v5

    #@13
    :goto_0
    if-ge v6, v7, :cond_1

    #@15
    aget-object v4, v5, v6

    #@17
    .line 1371
    .local v4, "zone":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@1a
    move-result-object v3

    #@1b
    .line 1372
    .local v3, "tz":Ljava/util/TimeZone;
    invoke-virtual {v3, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    #@1e
    move-result v8

    #@1f
    if-ne v8, p1, :cond_2

    #@21
    .line 1373
    invoke-virtual {v3, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@24
    move-result v8

    #@25
    if-ne v8, p2, :cond_2

    #@27
    .line 1374
    move-object v1, v3

    #@28
    .line 1379
    .end local v1    # "guess":Ljava/util/TimeZone;
    .end local v3    # "tz":Ljava/util/TimeZone;
    .end local v4    # "zone":Ljava/lang/String;
    :cond_1
    return-object v1

    #@29
    .line 1370
    .restart local v1    # "guess":Ljava/util/TimeZone;
    .restart local v3    # "tz":Ljava/util/TimeZone;
    .restart local v4    # "zone":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@2b
    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1876
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@4
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v3

    #@c
    .line 1877
    const-string/jumbo v4, "auto_time"

    #@f
    .line 1876
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v3

    #@13
    if-lez v3, :cond_0

    #@15
    :goto_0
    return v1

    #@16
    :cond_0
    move v1, v2

    #@17
    goto :goto_0

    #@18
    .line 1878
    :catch_0
    move-exception v0

    #@19
    .line 1879
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method private getAutoTimeZone()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1885
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@4
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v3

    #@c
    .line 1886
    const-string/jumbo v4, "auto_time_zone"

    #@f
    .line 1885
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v3

    #@13
    if-lez v3, :cond_0

    #@15
    :goto_0
    return v1

    #@16
    :cond_0
    move v1, v2

    #@17
    goto :goto_0

    #@18
    .line 1887
    :catch_0
    move-exception v0

    #@19
    .line 1888
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    #@0
    .prologue
    .line 1353
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    .line 1354
    .local v0, "guess":Ljava/util/TimeZone;
    if-nez v0, :cond_0

    #@6
    .line 1356
    if-eqz p2, :cond_1

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    #@c
    move-result-object v0

    #@d
    .line 1358
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "getNitzTimeZone returning "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    if-nez v0, :cond_2

    #@1b
    move-object v1, v0

    #@1c
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@27
    .line 1359
    return-object v0

    #@28
    .line 1356
    :cond_1
    const/4 v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1358
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    goto :goto_1
.end method

.method private getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    #@0
    .prologue
    .line 2037
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@7
    move-result v1

    #@8
    .line 2038
    const/4 v2, 0x1

    #@9
    .line 2037
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method private isGprsConsistent(II)Z
    .locals 2
    .param p1, "dataRegState"    # I
    .param p2, "voiceRegState"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1345
    if-nez p2, :cond_0

    #@4
    .line 1346
    if-nez p1, :cond_1

    #@6
    .line 1345
    :cond_0
    :goto_0
    return v0

    #@7
    :cond_1
    move v0, v1

    #@8
    .line 1346
    goto :goto_0
.end method

.method private isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z
    .locals 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1584
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 1585
    .local v2, "operatorNumeric":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@7
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v3

    #@f
    .line 1586
    const v5, 0x1070036

    #@12
    .line 1585
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 1588
    .local v1, "numericArray":[Ljava/lang/String;
    array-length v3, v1

    #@17
    if-eqz v3, :cond_0

    #@19
    if-nez v2, :cond_1

    #@1b
    .line 1589
    :cond_0
    return v4

    #@1c
    .line 1592
    :cond_1
    array-length v5, v1

    #@1d
    move v3, v4

    #@1e
    :goto_0
    if-ge v3, v5, :cond_3

    #@20
    aget-object v0, v1, v3

    #@22
    .line 1593
    .local v0, "numeric":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_2

    #@28
    .line 1594
    const/4 v3, 0x1

    #@29
    return v3

    #@2a
    .line 1592
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 1597
    .end local v0    # "numeric":Ljava/lang/String;
    :cond_3
    return v4
.end method

.method private isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z
    .locals 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1601
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 1602
    .local v2, "operatorNumeric":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@7
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v3

    #@f
    .line 1603
    const v5, 0x1070037

    #@12
    .line 1602
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 1605
    .local v1, "numericArray":[Ljava/lang/String;
    array-length v3, v1

    #@17
    if-eqz v3, :cond_0

    #@19
    if-nez v2, :cond_1

    #@1b
    .line 1606
    :cond_0
    return v4

    #@1c
    .line 1609
    :cond_1
    array-length v5, v1

    #@1d
    move v3, v4

    #@1e
    :goto_0
    if-ge v3, v5, :cond_3

    #@20
    aget-object v0, v1, v3

    #@22
    .line 1610
    .local v0, "numeric":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_2

    #@28
    .line 1611
    const/4 v3, 0x1

    #@29
    return v3

    #@2a
    .line 1609
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 1614
    .end local v0    # "numeric":Ljava/lang/String;
    :cond_3
    return v4
.end method

.method private isSameNamedOperators(Landroid/telephony/ServiceState;)Z
    .locals 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 1539
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@2
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v5

    #@6
    .line 1540
    const-string/jumbo v6, "phone"

    #@9
    .line 1539
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v5

    #@d
    check-cast v5, Landroid/telephony/TelephonyManager;

    #@f
    .line 1541
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    #@12
    move-result v6

    #@13
    .line 1539
    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    .line 1543
    .local v4, "spn":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 1544
    .local v2, "onsl":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 1546
    .local v3, "onss":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@21
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    .line 1547
    :goto_0
    if-eqz v3, :cond_1

    #@27
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    .line 1549
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_3

    #@31
    if-nez v0, :cond_2

    #@33
    :goto_2
    return v1

    #@34
    .line 1546
    :cond_0
    const/4 v0, 0x0

    #@35
    .local v0, "equalsOnsl":Z
    goto :goto_0

    #@36
    .line 1547
    .end local v0    # "equalsOnsl":Z
    :cond_1
    const/4 v1, 0x0

    #@37
    .local v1, "equalsOnss":Z
    goto :goto_1

    #@38
    .line 1549
    .end local v1    # "equalsOnss":Z
    :cond_2
    const/4 v1, 0x1

    #@39
    goto :goto_2

    #@3a
    :cond_3
    const/4 v1, 0x0

    #@3b
    goto :goto_2
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/16 v9, 0x3ed

    #@2
    const/16 v8, 0x3ec

    #@4
    const/16 v7, 0x3eb

    #@6
    const/4 v4, 0x1

    #@7
    const/4 v5, 0x0

    #@8
    .line 1408
    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    #@a
    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    #@d
    .line 1410
    .local v1, "newRs":Lcom/android/internal/telephony/RestrictedState;
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "onRestrictedStateChanged: E rs "

    #@15
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@1b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@26
    .line 1412
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@28
    if-nez v3, :cond_3

    #@2a
    .line 1413
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2c
    check-cast v0, [I

    #@2e
    .line 1414
    .local v0, "ints":[I
    aget v2, v0, v5

    #@30
    .line 1417
    .local v2, "state":I
    and-int/lit8 v3, v2, 0x1

    #@32
    if-nez v3, :cond_4

    #@34
    .line 1418
    and-int/lit8 v3, v2, 0x4

    #@36
    if-eqz v3, :cond_5

    #@38
    move v3, v4

    #@39
    .line 1416
    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    #@3c
    .line 1420
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@3e
    if-eqz v3, :cond_0

    #@40
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@42
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@45
    move-result-object v3

    #@46
    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@48
    if-ne v3, v6, :cond_0

    #@4a
    .line 1422
    and-int/lit8 v3, v2, 0x2

    #@4c
    if-nez v3, :cond_6

    #@4e
    .line 1423
    and-int/lit8 v3, v2, 0x4

    #@50
    if-eqz v3, :cond_7

    #@52
    move v3, v4

    #@53
    .line 1421
    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    #@56
    .line 1425
    and-int/lit8 v3, v2, 0x10

    #@58
    if-eqz v3, :cond_8

    #@5a
    .line 1424
    :goto_2
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    #@5d
    .line 1428
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v4, "onRestrictedStateChanged: new rs "

    #@65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@74
    .line 1430
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@76
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    #@79
    move-result v3

    #@7a
    if-nez v3, :cond_9

    #@7c
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    #@7f
    move-result v3

    #@80
    if-eqz v3, :cond_9

    #@82
    .line 1431
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    #@84
    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@87
    .line 1432
    const/16 v3, 0x3e9

    #@89
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    #@8c
    .line 1443
    :cond_1
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@8e
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@91
    move-result v3

    #@92
    if-eqz v3, :cond_c

    #@94
    .line 1444
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@97
    move-result v3

    #@98
    if-nez v3, :cond_a

    #@9a
    .line 1446
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    #@9d
    .line 1491
    :cond_2
    :goto_4
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@9f
    .line 1493
    .end local v0    # "ints":[I
    .end local v2    # "state":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v4, "onRestrictedStateChanged: X rs "

    #@a7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v3

    #@ab
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@ad
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v3

    #@b5
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@b8
    .line 1407
    return-void

    #@b9
    .restart local v0    # "ints":[I
    .restart local v2    # "state":I
    :cond_4
    move v3, v4

    #@ba
    .line 1417
    goto/16 :goto_0

    #@bc
    :cond_5
    move v3, v5

    #@bd
    .line 1418
    goto/16 :goto_0

    #@bf
    :cond_6
    move v3, v4

    #@c0
    .line 1422
    goto :goto_1

    #@c1
    :cond_7
    move v3, v5

    #@c2
    .line 1423
    goto :goto_1

    #@c3
    :cond_8
    move v4, v5

    #@c4
    .line 1425
    goto :goto_2

    #@c5
    .line 1433
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@c7
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    #@ca
    move-result v3

    #@cb
    if-eqz v3, :cond_1

    #@cd
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    #@d0
    move-result v3

    #@d1
    if-nez v3, :cond_1

    #@d3
    .line 1434
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    #@d5
    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@d8
    .line 1435
    const/16 v3, 0x3ea

    #@da
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    #@dd
    goto :goto_3

    #@de
    .line 1447
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    #@e1
    move-result v3

    #@e2
    if-nez v3, :cond_b

    #@e4
    .line 1449
    const/16 v3, 0x3ee

    #@e6
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    #@e9
    goto :goto_4

    #@ea
    .line 1450
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    #@ed
    move-result v3

    #@ee
    if-nez v3, :cond_2

    #@f0
    .line 1452
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    #@f3
    goto :goto_4

    #@f4
    .line 1454
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@f6
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    #@f9
    move-result v3

    #@fa
    if-eqz v3, :cond_d

    #@fc
    .line 1455
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@fe
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    #@101
    move-result v3

    #@102
    if-eqz v3, :cond_e

    #@104
    .line 1466
    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@106
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    #@109
    move-result v3

    #@10a
    if-nez v3, :cond_13

    #@10c
    .line 1467
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@10e
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    #@111
    move-result v3

    #@112
    .line 1466
    if-eqz v3, :cond_13

    #@114
    .line 1468
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@117
    move-result v3

    #@118
    if-nez v3, :cond_11

    #@11a
    .line 1470
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    #@11d
    goto :goto_4

    #@11e
    .line 1456
    :cond_e
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@121
    move-result v3

    #@122
    if-nez v3, :cond_f

    #@124
    .line 1458
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    #@127
    goto/16 :goto_4

    #@129
    .line 1459
    :cond_f
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@12c
    move-result v3

    #@12d
    if-eqz v3, :cond_10

    #@12f
    .line 1461
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    #@132
    goto/16 :goto_4

    #@134
    .line 1462
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    #@137
    move-result v3

    #@138
    if-eqz v3, :cond_2

    #@13a
    .line 1464
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    #@13d
    goto/16 :goto_4

    #@13f
    .line 1471
    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@142
    move-result v3

    #@143
    if-eqz v3, :cond_12

    #@145
    .line 1473
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    #@148
    goto/16 :goto_4

    #@14a
    .line 1474
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    #@14d
    move-result v3

    #@14e
    if-eqz v3, :cond_2

    #@150
    .line 1476
    const/16 v3, 0x3ee

    #@152
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    #@155
    goto/16 :goto_4

    #@157
    .line 1479
    :cond_13
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@15a
    move-result v3

    #@15b
    if-eqz v3, :cond_14

    #@15d
    .line 1481
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    #@160
    goto/16 :goto_4

    #@162
    .line 1482
    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    #@165
    move-result v3

    #@166
    if-eqz v3, :cond_15

    #@168
    .line 1484
    const/16 v3, 0x3ee

    #@16a
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    #@16d
    goto/16 :goto_4

    #@16f
    .line 1485
    :cond_15
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    #@172
    move-result v3

    #@173
    if-eqz v3, :cond_2

    #@175
    .line 1487
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    #@178
    goto/16 :goto_4
.end method

.method private pollStateDone()V
    .locals 46

    #@0
    .prologue
    .line 1019
    sget-boolean v42, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@2
    if-eqz v42, :cond_0

    #@4
    const-string/jumbo v42, "telephony.test.forceRoaming"

    #@7
    const/16 v43, 0x0

    #@9
    invoke-static/range {v42 .. v43}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@c
    move-result v42

    #@d
    if-eqz v42, :cond_0

    #@f
    .line 1020
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@13
    move-object/from16 v42, v0

    #@15
    const/16 v43, 0x1

    #@17
    invoke-virtual/range {v42 .. v43}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@1a
    .line 1021
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1e
    move-object/from16 v42, v0

    #@20
    const/16 v43, 0x1

    #@22
    invoke-virtual/range {v42 .. v43}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@25
    .line 1023
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    #@28
    .line 1024
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->resetServiceStateInIwlanMode()V

    #@2b
    .line 1027
    new-instance v42, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v43, "Poll ServiceState done:  oldSS=["

    #@33
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v42

    #@37
    .line 1028
    move-object/from16 v0, p0

    #@39
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3b
    move-object/from16 v43, v0

    #@3d
    .line 1027
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v42

    #@41
    .line 1028
    const-string/jumbo v43, "] newSS=["

    #@44
    .line 1027
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v42

    #@48
    .line 1028
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4c
    move-object/from16 v43, v0

    #@4e
    .line 1027
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v42

    #@52
    .line 1028
    const-string/jumbo v43, "]"

    #@55
    .line 1027
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v42

    #@59
    .line 1029
    const-string/jumbo v43, " oldMaxDataCalls="

    #@5c
    .line 1027
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v42

    #@60
    .line 1029
    move-object/from16 v0, p0

    #@62
    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    #@64
    move/from16 v43, v0

    #@66
    .line 1027
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v42

    #@6a
    .line 1030
    const-string/jumbo v43, " mNewMaxDataCalls="

    #@6d
    .line 1027
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v42

    #@71
    .line 1030
    move-object/from16 v0, p0

    #@73
    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    #@75
    move/from16 v43, v0

    #@77
    .line 1027
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v42

    #@7b
    .line 1031
    const-string/jumbo v43, " oldReasonDataDenied="

    #@7e
    .line 1027
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v42

    #@82
    .line 1031
    move-object/from16 v0, p0

    #@84
    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    #@86
    move/from16 v43, v0

    #@88
    .line 1027
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v42

    #@8c
    .line 1032
    const-string/jumbo v43, " mNewReasonDataDenied="

    #@8f
    .line 1027
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v42

    #@93
    .line 1032
    move-object/from16 v0, p0

    #@95
    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    #@97
    move/from16 v43, v0

    #@99
    .line 1027
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v42

    #@9d
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v42

    #@a1
    move-object/from16 v0, p0

    #@a3
    move-object/from16 v1, v42

    #@a5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@a8
    .line 1036
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@ac
    move-object/from16 v42, v0

    #@ae
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@b1
    move-result v42

    #@b2
    if-eqz v42, :cond_17

    #@b4
    .line 1037
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@b8
    move-object/from16 v42, v0

    #@ba
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@bd
    move-result v42

    #@be
    if-nez v42, :cond_16

    #@c0
    const/16 v22, 0x1

    #@c2
    .line 1040
    .local v22, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c6
    move-object/from16 v42, v0

    #@c8
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@cb
    move-result v42

    #@cc
    if-nez v42, :cond_19

    #@ce
    .line 1041
    move-object/from16 v0, p0

    #@d0
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@d2
    move-object/from16 v42, v0

    #@d4
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@d7
    move-result v42

    #@d8
    if-eqz v42, :cond_18

    #@da
    const/16 v18, 0x1

    #@dc
    .line 1044
    .local v18, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    #@de
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@e0
    move-object/from16 v42, v0

    #@e2
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@e5
    move-result v42

    #@e6
    if-eqz v42, :cond_1b

    #@e8
    .line 1045
    move-object/from16 v0, p0

    #@ea
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@ec
    move-object/from16 v42, v0

    #@ee
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@f1
    move-result v42

    #@f2
    if-nez v42, :cond_1a

    #@f4
    const/16 v19, 0x1

    #@f6
    .line 1048
    .local v19, "hasGprsAttached":Z
    :goto_2
    move-object/from16 v0, p0

    #@f8
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@fa
    move-object/from16 v42, v0

    #@fc
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@ff
    move-result v42

    #@100
    if-nez v42, :cond_1d

    #@102
    .line 1049
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@106
    move-object/from16 v42, v0

    #@108
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@10b
    move-result v42

    #@10c
    if-eqz v42, :cond_1c

    #@10e
    const/16 v20, 0x1

    #@110
    .line 1052
    .local v20, "hasGprsDetached":Z
    :goto_3
    move-object/from16 v0, p0

    #@112
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@114
    move-object/from16 v42, v0

    #@116
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@119
    move-result v42

    #@11a
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@11e
    move-object/from16 v43, v0

    #@120
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@123
    move-result v43

    #@124
    move/from16 v0, v42

    #@126
    move/from16 v1, v43

    #@128
    if-eq v0, v1, :cond_1e

    #@12a
    const/4 v15, 0x1

    #@12b
    .line 1055
    .local v15, "hasDataRegStateChanged":Z
    :goto_4
    move-object/from16 v0, p0

    #@12d
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@12f
    move-object/from16 v42, v0

    #@131
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@134
    move-result v42

    #@135
    move-object/from16 v0, p0

    #@137
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@139
    move-object/from16 v43, v0

    #@13b
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@13e
    move-result v43

    #@13f
    move/from16 v0, v42

    #@141
    move/from16 v1, v43

    #@143
    if-eq v0, v1, :cond_1f

    #@145
    const/16 v25, 0x1

    #@147
    .line 1058
    .local v25, "hasVoiceRegStateChanged":Z
    :goto_5
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@14b
    move-object/from16 v42, v0

    #@14d
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@150
    move-result v42

    #@151
    move-object/from16 v0, p0

    #@153
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@155
    move-object/from16 v43, v0

    #@157
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@15a
    move-result v43

    #@15b
    move/from16 v0, v42

    #@15d
    move/from16 v1, v43

    #@15f
    if-eq v0, v1, :cond_20

    #@161
    const/16 v24, 0x1

    #@163
    .line 1061
    .local v24, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    #@165
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@167
    move-object/from16 v42, v0

    #@169
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@16c
    move-result v42

    #@16d
    move-object/from16 v0, p0

    #@16f
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@171
    move-object/from16 v43, v0

    #@173
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@176
    move-result v43

    #@177
    move/from16 v0, v42

    #@179
    move/from16 v1, v43

    #@17b
    if-eq v0, v1, :cond_21

    #@17d
    const/16 v23, 0x1

    #@17f
    .line 1063
    .local v23, "hasRilDataRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    #@181
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@183
    move-object/from16 v42, v0

    #@185
    move-object/from16 v0, p0

    #@187
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@189
    move-object/from16 v43, v0

    #@18b
    invoke-virtual/range {v42 .. v43}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    #@18e
    move-result v42

    #@18f
    if-eqz v42, :cond_22

    #@191
    const/4 v14, 0x0

    #@192
    .line 1065
    .local v14, "hasChanged":Z
    :goto_8
    move-object/from16 v0, p0

    #@194
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@196
    move-object/from16 v42, v0

    #@198
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@19b
    move-result v42

    #@19c
    if-nez v42, :cond_23

    #@19e
    move-object/from16 v0, p0

    #@1a0
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1a2
    move-object/from16 v42, v0

    #@1a4
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@1a7
    move-result v27

    #@1a8
    .line 1067
    :goto_9
    move-object/from16 v0, p0

    #@1aa
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1ac
    move-object/from16 v42, v0

    #@1ae
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@1b1
    move-result v42

    #@1b2
    if-eqz v42, :cond_1

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1b8
    move-object/from16 v42, v0

    #@1ba
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@1bd
    move-result v42

    #@1be
    if-eqz v42, :cond_24

    #@1c0
    :cond_1
    const/16 v26, 0x0

    #@1c2
    .line 1069
    .local v26, "hasVoiceRoamingOff":Z
    :goto_a
    move-object/from16 v0, p0

    #@1c4
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1c6
    move-object/from16 v42, v0

    #@1c8
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@1cb
    move-result v42

    #@1cc
    if-nez v42, :cond_25

    #@1ce
    move-object/from16 v0, p0

    #@1d0
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1d2
    move-object/from16 v42, v0

    #@1d4
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@1d7
    move-result v17

    #@1d8
    .line 1071
    :goto_b
    move-object/from16 v0, p0

    #@1da
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1dc
    move-object/from16 v42, v0

    #@1de
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@1e1
    move-result v42

    #@1e2
    if-eqz v42, :cond_2

    #@1e4
    move-object/from16 v0, p0

    #@1e6
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1e8
    move-object/from16 v42, v0

    #@1ea
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@1ed
    move-result v42

    #@1ee
    if-eqz v42, :cond_26

    #@1f0
    :cond_2
    const/16 v16, 0x0

    #@1f2
    .line 1073
    .local v16, "hasDataRoamingOff":Z
    :goto_c
    move-object/from16 v0, p0

    #@1f4
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@1f6
    move-object/from16 v42, v0

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@1fc
    move-object/from16 v43, v0

    #@1fe
    invoke-virtual/range {v42 .. v43}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    #@201
    move-result v42

    #@202
    if-eqz v42, :cond_27

    #@204
    const/16 v21, 0x0

    #@206
    .line 1075
    .local v21, "hasLocationChanged":Z
    :goto_d
    move-object/from16 v0, p0

    #@208
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@20a
    move-object/from16 v42, v0

    #@20c
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@20f
    move-result-object v42

    #@210
    const-string/jumbo v43, "phone"

    #@213
    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@216
    move-result-object v35

    #@217
    check-cast v35, Landroid/telephony/TelephonyManager;

    #@219
    .line 1078
    .local v35, "tm":Landroid/telephony/TelephonyManager;
    if-nez v25, :cond_3

    #@21b
    if-eqz v15, :cond_4

    #@21d
    .line 1079
    :cond_3
    const/16 v42, 0x4

    #@21f
    move/from16 v0, v42

    #@221
    new-array v0, v0, [Ljava/lang/Object;

    #@223
    move-object/from16 v42, v0

    #@225
    .line 1080
    move-object/from16 v0, p0

    #@227
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@229
    move-object/from16 v43, v0

    #@22b
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@22e
    move-result v43

    #@22f
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@232
    move-result-object v43

    #@233
    const/16 v44, 0x0

    #@235
    aput-object v43, v42, v44

    #@237
    move-object/from16 v0, p0

    #@239
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@23b
    move-object/from16 v43, v0

    #@23d
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@240
    move-result v43

    #@241
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@244
    move-result-object v43

    #@245
    const/16 v44, 0x1

    #@247
    aput-object v43, v42, v44

    #@249
    .line 1081
    move-object/from16 v0, p0

    #@24b
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@24d
    move-object/from16 v43, v0

    #@24f
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@252
    move-result v43

    #@253
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@256
    move-result-object v43

    #@257
    const/16 v44, 0x2

    #@259
    aput-object v43, v42, v44

    #@25b
    move-object/from16 v0, p0

    #@25d
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@25f
    move-object/from16 v43, v0

    #@261
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@264
    move-result v43

    #@265
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@268
    move-result-object v43

    #@269
    const/16 v44, 0x3

    #@26b
    aput-object v43, v42, v44

    #@26d
    .line 1079
    const v43, 0xc3c2

    #@270
    move/from16 v0, v43

    #@272
    move-object/from16 v1, v42

    #@274
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@277
    .line 1087
    :cond_4
    if-eqz v24, :cond_6

    #@279
    .line 1088
    const/4 v9, -0x1

    #@27a
    .line 1089
    .local v9, "cid":I
    move-object/from16 v0, p0

    #@27c
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@27e
    move-object/from16 v29, v0

    #@280
    .line 1090
    .local v29, "loc":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v29, :cond_5

    #@282
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@285
    move-result v9

    #@286
    .line 1095
    :cond_5
    const/16 v42, 0x3

    #@288
    move/from16 v0, v42

    #@28a
    new-array v0, v0, [Ljava/lang/Object;

    #@28c
    move-object/from16 v42, v0

    #@28e
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@291
    move-result-object v43

    #@292
    const/16 v44, 0x0

    #@294
    aput-object v43, v42, v44

    #@296
    .line 1096
    move-object/from16 v0, p0

    #@298
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@29a
    move-object/from16 v43, v0

    #@29c
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@29f
    move-result v43

    #@2a0
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a3
    move-result-object v43

    #@2a4
    const/16 v44, 0x1

    #@2a6
    aput-object v43, v42, v44

    #@2a8
    .line 1097
    move-object/from16 v0, p0

    #@2aa
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@2ac
    move-object/from16 v43, v0

    #@2ae
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@2b1
    move-result v43

    #@2b2
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b5
    move-result-object v43

    #@2b6
    const/16 v44, 0x2

    #@2b8
    aput-object v43, v42, v44

    #@2ba
    .line 1095
    const v43, 0xc3cb

    #@2bd
    move/from16 v0, v43

    #@2bf
    move-object/from16 v1, v42

    #@2c1
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@2c4
    .line 1099
    new-instance v42, Ljava/lang/StringBuilder;

    #@2c6
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@2c9
    const-string/jumbo v43, "RAT switched "

    #@2cc
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cf
    move-result-object v42

    #@2d0
    .line 1100
    move-object/from16 v0, p0

    #@2d2
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2d4
    move-object/from16 v43, v0

    #@2d6
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@2d9
    move-result v43

    #@2da
    invoke-static/range {v43 .. v43}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@2dd
    move-result-object v43

    #@2de
    .line 1099
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e1
    move-result-object v42

    #@2e2
    .line 1101
    const-string/jumbo v43, " -> "

    #@2e5
    .line 1099
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e8
    move-result-object v42

    #@2e9
    .line 1103
    move-object/from16 v0, p0

    #@2eb
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@2ed
    move-object/from16 v43, v0

    #@2ef
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@2f2
    move-result v43

    #@2f3
    .line 1102
    invoke-static/range {v43 .. v43}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@2f6
    move-result-object v43

    #@2f7
    .line 1099
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fa
    move-result-object v42

    #@2fb
    .line 1103
    const-string/jumbo v43, " at cell "

    #@2fe
    .line 1099
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@301
    move-result-object v42

    #@302
    move-object/from16 v0, v42

    #@304
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@307
    move-result-object v42

    #@308
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30b
    move-result-object v42

    #@30c
    move-object/from16 v0, p0

    #@30e
    move-object/from16 v1, v42

    #@310
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@313
    .line 1108
    .end local v9    # "cid":I
    .end local v29    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_6
    move-object/from16 v0, p0

    #@315
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@317
    move-object/from16 v36, v0

    #@319
    .line 1109
    .local v36, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    #@31b
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@31d
    move-object/from16 v42, v0

    #@31f
    move-object/from16 v0, v42

    #@321
    move-object/from16 v1, p0

    #@323
    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@325
    .line 1110
    move-object/from16 v0, v36

    #@327
    move-object/from16 v1, p0

    #@329
    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@32b
    .line 1112
    move-object/from16 v0, p0

    #@32d
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@32f
    move-object/from16 v42, v0

    #@331
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@334
    .line 1115
    move-object/from16 v0, p0

    #@336
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@338
    move-object/from16 v33, v0

    #@33a
    .line 1116
    .local v33, "tcl":Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    #@33c
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@33e
    move-object/from16 v42, v0

    #@340
    move-object/from16 v0, v42

    #@342
    move-object/from16 v1, p0

    #@344
    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@346
    .line 1117
    move-object/from16 v0, v33

    #@348
    move-object/from16 v1, p0

    #@34a
    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@34c
    .line 1119
    move-object/from16 v0, p0

    #@34e
    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    #@350
    move/from16 v42, v0

    #@352
    move/from16 v0, v42

    #@354
    move-object/from16 v1, p0

    #@356
    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    #@358
    .line 1120
    move-object/from16 v0, p0

    #@35a
    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    #@35c
    move/from16 v42, v0

    #@35e
    move/from16 v0, v42

    #@360
    move-object/from16 v1, p0

    #@362
    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    #@364
    .line 1122
    if-eqz v24, :cond_7

    #@366
    .line 1123
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updatePhoneObject()V

    #@369
    .line 1126
    :cond_7
    if-eqz v23, :cond_8

    #@36b
    .line 1127
    move-object/from16 v0, p0

    #@36d
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@36f
    move-object/from16 v42, v0

    #@371
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@374
    move-result v42

    #@375
    move-object/from16 v0, p0

    #@377
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@379
    move-object/from16 v43, v0

    #@37b
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@37e
    move-result v43

    #@37f
    move-object/from16 v0, v35

    #@381
    move/from16 v1, v42

    #@383
    move/from16 v2, v43

    #@385
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    #@388
    .line 1130
    move-object/from16 v0, p0

    #@38a
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@38c
    move-object/from16 v42, v0

    #@38e
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@391
    move-result v42

    #@392
    .line 1129
    const/16 v43, 0x12

    #@394
    move/from16 v0, v43

    #@396
    move/from16 v1, v42

    #@398
    if-ne v0, v1, :cond_8

    #@39a
    .line 1131
    const-string/jumbo v42, "pollStateDone: IWLAN enabled"

    #@39d
    move-object/from16 v0, p0

    #@39f
    move-object/from16 v1, v42

    #@3a1
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@3a4
    .line 1135
    :cond_8
    if-eqz v22, :cond_9

    #@3a6
    .line 1136
    move-object/from16 v0, p0

    #@3a8
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    #@3aa
    move-object/from16 v42, v0

    #@3ac
    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@3af
    .line 1139
    new-instance v42, Ljava/lang/StringBuilder;

    #@3b1
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@3b4
    const-string/jumbo v43, "pollStateDone: registering current mNitzUpdatedTime="

    #@3b7
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ba
    move-result-object v42

    #@3bb
    .line 1140
    move-object/from16 v0, p0

    #@3bd
    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    #@3bf
    move/from16 v43, v0

    #@3c1
    .line 1139
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3c4
    move-result-object v42

    #@3c5
    .line 1140
    const-string/jumbo v43, " changing to false"

    #@3c8
    .line 1139
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3cb
    move-result-object v42

    #@3cc
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3cf
    move-result-object v42

    #@3d0
    move-object/from16 v0, p0

    #@3d2
    move-object/from16 v1, v42

    #@3d4
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@3d7
    .line 1142
    const/16 v42, 0x0

    #@3d9
    move/from16 v0, v42

    #@3db
    move-object/from16 v1, p0

    #@3dd
    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    #@3df
    .line 1145
    :cond_9
    if-eqz v14, :cond_b

    #@3e1
    .line 1148
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    #@3e4
    .line 1150
    move-object/from16 v0, p0

    #@3e6
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@3e8
    move-object/from16 v42, v0

    #@3ea
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@3ed
    move-result v42

    #@3ee
    move-object/from16 v0, p0

    #@3f0
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3f2
    move-object/from16 v43, v0

    #@3f4
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@3f7
    move-result-object v43

    #@3f8
    move-object/from16 v0, v35

    #@3fa
    move/from16 v1, v42

    #@3fc
    move-object/from16 v2, v43

    #@3fe
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    #@401
    .line 1152
    move-object/from16 v0, p0

    #@403
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@405
    move-object/from16 v42, v0

    #@407
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@40a
    move-result v42

    #@40b
    move-object/from16 v0, v35

    #@40d
    move/from16 v1, v42

    #@40f
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    #@412
    move-result-object v32

    #@413
    .line 1153
    .local v32, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@415
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@417
    move-object/from16 v42, v0

    #@419
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@41c
    move-result-object v31

    #@41d
    .line 1154
    .local v31, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@41f
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@421
    move-object/from16 v42, v0

    #@423
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@426
    move-result v42

    #@427
    move-object/from16 v0, v35

    #@429
    move/from16 v1, v42

    #@42b
    move-object/from16 v2, v31

    #@42d
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    #@430
    .line 1156
    move-object/from16 v0, p0

    #@432
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@434
    move-object/from16 v42, v0

    #@436
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@439
    move-result-object v42

    #@43a
    .line 1155
    move-object/from16 v0, p0

    #@43c
    move-object/from16 v1, v31

    #@43e
    move-object/from16 v2, v32

    #@440
    move-object/from16 v3, v42

    #@442
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    #@445
    .line 1157
    if-nez v31, :cond_28

    #@447
    .line 1158
    const-string/jumbo v42, "operatorNumeric is null"

    #@44a
    move-object/from16 v0, p0

    #@44c
    move-object/from16 v1, v42

    #@44e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@451
    .line 1159
    move-object/from16 v0, p0

    #@453
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@455
    move-object/from16 v42, v0

    #@457
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@45a
    move-result v42

    #@45b
    const-string/jumbo v43, ""

    #@45e
    move-object/from16 v0, v35

    #@460
    move/from16 v1, v42

    #@462
    move-object/from16 v2, v43

    #@464
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@467
    .line 1160
    const/16 v42, 0x0

    #@469
    move/from16 v0, v42

    #@46b
    move-object/from16 v1, p0

    #@46d
    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    #@46f
    .line 1161
    const/16 v42, 0x0

    #@471
    move/from16 v0, v42

    #@473
    move-object/from16 v1, p0

    #@475
    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    #@477
    .line 1274
    :cond_a
    :goto_e
    move-object/from16 v0, p0

    #@479
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@47b
    move-object/from16 v42, v0

    #@47d
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@480
    move-result v42

    #@481
    move-object/from16 v0, p0

    #@483
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@485
    move-object/from16 v43, v0

    #@487
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@48a
    move-result v43

    #@48b
    move-object/from16 v0, v35

    #@48d
    move/from16 v1, v42

    #@48f
    move/from16 v2, v43

    #@491
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    #@494
    .line 1276
    move-object/from16 v0, p0

    #@496
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@498
    move-object/from16 v42, v0

    #@49a
    move-object/from16 v0, p0

    #@49c
    move-object/from16 v1, v42

    #@49e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    #@4a1
    .line 1277
    new-instance v42, Ljava/lang/StringBuilder;

    #@4a3
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@4a6
    const-string/jumbo v43, "Broadcasting ServiceState : "

    #@4a9
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ac
    move-result-object v42

    #@4ad
    move-object/from16 v0, p0

    #@4af
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4b1
    move-object/from16 v43, v0

    #@4b3
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b6
    move-result-object v42

    #@4b7
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ba
    move-result-object v42

    #@4bb
    move-object/from16 v0, p0

    #@4bd
    move-object/from16 v1, v42

    #@4bf
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@4c2
    .line 1278
    move-object/from16 v0, p0

    #@4c4
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@4c6
    move-object/from16 v42, v0

    #@4c8
    move-object/from16 v0, p0

    #@4ca
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4cc
    move-object/from16 v43, v0

    #@4ce
    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    #@4d1
    .line 1281
    .end local v31    # "operatorNumeric":Ljava/lang/String;
    .end local v32    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_b
    if-eqz v19, :cond_c

    #@4d3
    .line 1282
    move-object/from16 v0, p0

    #@4d5
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    #@4d7
    move-object/from16 v42, v0

    #@4d9
    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@4dc
    .line 1285
    :cond_c
    if-eqz v20, :cond_d

    #@4de
    .line 1286
    move-object/from16 v0, p0

    #@4e0
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@4e2
    move-object/from16 v42, v0

    #@4e4
    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@4e7
    .line 1289
    :cond_d
    if-nez v15, :cond_e

    #@4e9
    if-eqz v23, :cond_f

    #@4eb
    .line 1290
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    #@4ee
    .line 1293
    move-object/from16 v0, p0

    #@4f0
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4f2
    move-object/from16 v42, v0

    #@4f4
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@4f7
    move-result v42

    #@4f8
    .line 1292
    const/16 v43, 0x12

    #@4fa
    move/from16 v0, v43

    #@4fc
    move/from16 v1, v42

    #@4fe
    if-ne v0, v1, :cond_35

    #@500
    .line 1294
    move-object/from16 v0, p0

    #@502
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@504
    move-object/from16 v42, v0

    #@506
    const-string/jumbo v43, "iwlanAvailable"

    #@509
    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@50c
    .line 1300
    :cond_f
    :goto_f
    if-eqz v27, :cond_10

    #@50e
    .line 1301
    move-object/from16 v0, p0

    #@510
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@512
    move-object/from16 v42, v0

    #@514
    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@517
    .line 1304
    :cond_10
    if-eqz v26, :cond_11

    #@519
    .line 1305
    move-object/from16 v0, p0

    #@51b
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@51d
    move-object/from16 v42, v0

    #@51f
    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@522
    .line 1308
    :cond_11
    if-eqz v17, :cond_12

    #@524
    .line 1309
    move-object/from16 v0, p0

    #@526
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@528
    move-object/from16 v42, v0

    #@52a
    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@52d
    .line 1312
    :cond_12
    if-eqz v16, :cond_13

    #@52f
    .line 1313
    move-object/from16 v0, p0

    #@531
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@533
    move-object/from16 v42, v0

    #@535
    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@538
    .line 1316
    :cond_13
    if-eqz v21, :cond_14

    #@53a
    .line 1317
    move-object/from16 v0, p0

    #@53c
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@53e
    move-object/from16 v42, v0

    #@540
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    #@543
    .line 1320
    :cond_14
    move-object/from16 v0, p0

    #@545
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@547
    move-object/from16 v42, v0

    #@549
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@54c
    move-result v42

    #@54d
    move-object/from16 v0, p0

    #@54f
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@551
    move-object/from16 v43, v0

    #@553
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@556
    move-result v43

    #@557
    move-object/from16 v0, p0

    #@559
    move/from16 v1, v42

    #@55b
    move/from16 v2, v43

    #@55d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    #@560
    move-result v42

    #@561
    if-nez v42, :cond_37

    #@563
    .line 1321
    move-object/from16 v0, p0

    #@565
    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    #@567
    move/from16 v42, v0

    #@569
    if-nez v42, :cond_15

    #@56b
    move-object/from16 v0, p0

    #@56d
    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    #@56f
    move/from16 v42, v0

    #@571
    if-eqz v42, :cond_36

    #@573
    .line 1018
    :cond_15
    :goto_10
    return-void

    #@574
    .line 1037
    .end local v14    # "hasChanged":Z
    .end local v15    # "hasDataRegStateChanged":Z
    .end local v16    # "hasDataRoamingOff":Z
    .end local v18    # "hasDeregistered":Z
    .end local v19    # "hasGprsAttached":Z
    .end local v20    # "hasGprsDetached":Z
    .end local v21    # "hasLocationChanged":Z
    .end local v22    # "hasRegistered":Z
    .end local v23    # "hasRilDataRadioTechnologyChanged":Z
    .end local v24    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v25    # "hasVoiceRegStateChanged":Z
    .end local v26    # "hasVoiceRoamingOff":Z
    .end local v33    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .end local v35    # "tm":Landroid/telephony/TelephonyManager;
    .end local v36    # "tss":Landroid/telephony/ServiceState;
    :cond_16
    const/16 v22, 0x0

    #@576
    .restart local v22    # "hasRegistered":Z
    goto/16 :goto_0

    #@578
    .line 1036
    .end local v22    # "hasRegistered":Z
    :cond_17
    const/16 v22, 0x0

    #@57a
    .restart local v22    # "hasRegistered":Z
    goto/16 :goto_0

    #@57c
    .line 1041
    :cond_18
    const/16 v18, 0x0

    #@57e
    .restart local v18    # "hasDeregistered":Z
    goto/16 :goto_1

    #@580
    .line 1040
    .end local v18    # "hasDeregistered":Z
    :cond_19
    const/16 v18, 0x0

    #@582
    .restart local v18    # "hasDeregistered":Z
    goto/16 :goto_1

    #@584
    .line 1045
    :cond_1a
    const/16 v19, 0x0

    #@586
    .restart local v19    # "hasGprsAttached":Z
    goto/16 :goto_2

    #@588
    .line 1044
    .end local v19    # "hasGprsAttached":Z
    :cond_1b
    const/16 v19, 0x0

    #@58a
    .restart local v19    # "hasGprsAttached":Z
    goto/16 :goto_2

    #@58c
    .line 1049
    :cond_1c
    const/16 v20, 0x0

    #@58e
    .restart local v20    # "hasGprsDetached":Z
    goto/16 :goto_3

    #@590
    .line 1048
    .end local v20    # "hasGprsDetached":Z
    :cond_1d
    const/16 v20, 0x0

    #@592
    .restart local v20    # "hasGprsDetached":Z
    goto/16 :goto_3

    #@594
    .line 1052
    :cond_1e
    const/4 v15, 0x0

    #@595
    .restart local v15    # "hasDataRegStateChanged":Z
    goto/16 :goto_4

    #@597
    .line 1055
    :cond_1f
    const/16 v25, 0x0

    #@599
    .restart local v25    # "hasVoiceRegStateChanged":Z
    goto/16 :goto_5

    #@59b
    .line 1058
    :cond_20
    const/16 v24, 0x0

    #@59d
    .restart local v24    # "hasRilVoiceRadioTechnologyChanged":Z
    goto/16 :goto_6

    #@59f
    .line 1061
    :cond_21
    const/16 v23, 0x0

    #@5a1
    .restart local v23    # "hasRilDataRadioTechnologyChanged":Z
    goto/16 :goto_7

    #@5a3
    .line 1063
    :cond_22
    const/4 v14, 0x1

    #@5a4
    .restart local v14    # "hasChanged":Z
    goto/16 :goto_8

    #@5a6
    .line 1065
    :cond_23
    const/16 v27, 0x0

    #@5a8
    .local v27, "hasVoiceRoamingOn":Z
    goto/16 :goto_9

    #@5aa
    .line 1067
    .end local v27    # "hasVoiceRoamingOn":Z
    :cond_24
    const/16 v26, 0x1

    #@5ac
    .restart local v26    # "hasVoiceRoamingOff":Z
    goto/16 :goto_a

    #@5ae
    .line 1069
    :cond_25
    const/16 v17, 0x0

    #@5b0
    .local v17, "hasDataRoamingOn":Z
    goto/16 :goto_b

    #@5b2
    .line 1071
    .end local v17    # "hasDataRoamingOn":Z
    :cond_26
    const/16 v16, 0x1

    #@5b4
    .restart local v16    # "hasDataRoamingOff":Z
    goto/16 :goto_c

    #@5b6
    .line 1073
    :cond_27
    const/16 v21, 0x1

    #@5b8
    .restart local v21    # "hasLocationChanged":Z
    goto/16 :goto_d

    #@5ba
    .line 1163
    .restart local v31    # "operatorNumeric":Ljava/lang/String;
    .restart local v32    # "prevOperatorNumeric":Ljava/lang/String;
    .restart local v33    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v35    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v36    # "tss":Landroid/telephony/ServiceState;
    :cond_28
    const-string/jumbo v28, ""

    #@5bd
    .line 1164
    .local v28, "iso":Ljava/lang/String;
    const-string/jumbo v30, ""

    #@5c0
    .line 1166
    .local v30, "mcc":Ljava/lang/String;
    const/16 v42, 0x0

    #@5c2
    const/16 v43, 0x3

    #@5c4
    :try_start_0
    move-object/from16 v0, v31

    #@5c6
    move/from16 v1, v42

    #@5c8
    move/from16 v2, v43

    #@5ca
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5cd
    move-result-object v30

    #@5ce
    .line 1167
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5d1
    move-result v42

    #@5d2
    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d5
    move-result-object v28

    #@5d6
    .line 1174
    :goto_11
    move-object/from16 v0, p0

    #@5d8
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@5da
    move-object/from16 v42, v0

    #@5dc
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@5df
    move-result v42

    #@5e0
    move-object/from16 v0, v35

    #@5e2
    move/from16 v1, v42

    #@5e4
    move-object/from16 v2, v28

    #@5e6
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@5e9
    .line 1175
    const/16 v42, 0x1

    #@5eb
    move/from16 v0, v42

    #@5ed
    move-object/from16 v1, p0

    #@5ef
    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    #@5f1
    .line 1177
    const/16 v40, 0x0

    #@5f3
    .line 1179
    .local v40, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    #@5f5
    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    #@5f7
    move/from16 v42, v0

    #@5f9
    if-nez v42, :cond_29

    #@5fb
    const-string/jumbo v42, "000"

    #@5fe
    move-object/from16 v0, v30

    #@600
    move-object/from16 v1, v42

    #@602
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@605
    move-result v42

    #@606
    if-eqz v42, :cond_2b

    #@608
    .line 1206
    .end local v40    # "zone":Ljava/util/TimeZone;
    :cond_29
    :goto_12
    move-object/from16 v0, p0

    #@60a
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@60c
    move-object/from16 v42, v0

    #@60e
    .line 1207
    move-object/from16 v0, p0

    #@610
    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@612
    move/from16 v43, v0

    #@614
    .line 1206
    move-object/from16 v0, p0

    #@616
    move-object/from16 v1, v42

    #@618
    move-object/from16 v2, v31

    #@61a
    move-object/from16 v3, v32

    #@61c
    move/from16 v4, v43

    #@61e
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@621
    move-result v42

    #@622
    if-eqz v42, :cond_a

    #@624
    .line 1211
    const-string/jumbo v42, "persist.sys.timezone"

    #@627
    invoke-static/range {v42 .. v42}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@62a
    move-result-object v41

    #@62b
    .line 1213
    .local v41, "zoneName":Ljava/lang/String;
    new-instance v42, Ljava/lang/StringBuilder;

    #@62d
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@630
    const-string/jumbo v43, "pollStateDone: fix time zone zoneName=\'"

    #@633
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@636
    move-result-object v42

    #@637
    move-object/from16 v0, v42

    #@639
    move-object/from16 v1, v41

    #@63b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63e
    move-result-object v42

    #@63f
    .line 1214
    const-string/jumbo v43, "\' mZoneOffset="

    #@642
    .line 1213
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@645
    move-result-object v42

    #@646
    .line 1214
    move-object/from16 v0, p0

    #@648
    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    #@64a
    move/from16 v43, v0

    #@64c
    .line 1213
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64f
    move-result-object v42

    #@650
    .line 1214
    const-string/jumbo v43, " mZoneDst="

    #@653
    .line 1213
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@656
    move-result-object v42

    #@657
    .line 1214
    move-object/from16 v0, p0

    #@659
    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    #@65b
    move/from16 v43, v0

    #@65d
    .line 1213
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@660
    move-result-object v42

    #@661
    .line 1215
    const-string/jumbo v43, " iso-cc=\'"

    #@664
    .line 1213
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@667
    move-result-object v42

    #@668
    move-object/from16 v0, v42

    #@66a
    move-object/from16 v1, v28

    #@66c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66f
    move-result-object v42

    #@670
    .line 1216
    const-string/jumbo v43, "\' iso-cc-idx="

    #@673
    .line 1213
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@676
    move-result-object v42

    #@677
    .line 1216
    sget-object v43, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    #@679
    move-object/from16 v0, v43

    #@67b
    move-object/from16 v1, v28

    #@67d
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    #@680
    move-result v43

    #@681
    .line 1213
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@684
    move-result-object v42

    #@685
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@688
    move-result-object v42

    #@689
    move-object/from16 v0, p0

    #@68b
    move-object/from16 v1, v42

    #@68d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@690
    .line 1219
    const-string/jumbo v42, ""

    #@693
    move-object/from16 v0, v42

    #@695
    move-object/from16 v1, v28

    #@697
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69a
    move-result v42

    #@69b
    if-eqz v42, :cond_30

    #@69d
    move-object/from16 v0, p0

    #@69f
    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@6a1
    move/from16 v42, v0

    #@6a3
    if-eqz v42, :cond_30

    #@6a5
    .line 1222
    move-object/from16 v0, p0

    #@6a7
    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    #@6a9
    move/from16 v42, v0

    #@6ab
    move-object/from16 v0, p0

    #@6ad
    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    #@6af
    move/from16 v43, v0

    #@6b1
    move-object/from16 v0, p0

    #@6b3
    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    #@6b5
    move-wide/from16 v44, v0

    #@6b7
    move-object/from16 v0, p0

    #@6b9
    move/from16 v1, v42

    #@6bb
    move/from16 v2, v43

    #@6bd
    move-wide/from16 v3, v44

    #@6bf
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    #@6c2
    move-result-object v40

    #@6c3
    .line 1223
    .local v40, "zone":Ljava/util/TimeZone;
    const-string/jumbo v42, "pollStateDone: using NITZ TimeZone"

    #@6c6
    move-object/from16 v0, p0

    #@6c8
    move-object/from16 v1, v42

    #@6ca
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@6cd
    .line 1260
    :goto_13
    const/16 v42, 0x0

    #@6cf
    move/from16 v0, v42

    #@6d1
    move-object/from16 v1, p0

    #@6d3
    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@6d5
    .line 1262
    if-eqz v40, :cond_34

    #@6d7
    .line 1263
    new-instance v42, Ljava/lang/StringBuilder;

    #@6d9
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@6dc
    const-string/jumbo v43, "pollStateDone: zone != null zone.getID="

    #@6df
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e2
    move-result-object v42

    #@6e3
    invoke-virtual/range {v40 .. v40}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@6e6
    move-result-object v43

    #@6e7
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6ea
    move-result-object v42

    #@6eb
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6ee
    move-result-object v42

    #@6ef
    move-object/from16 v0, p0

    #@6f1
    move-object/from16 v1, v42

    #@6f3
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@6f6
    .line 1264
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    #@6f9
    move-result v42

    #@6fa
    if-eqz v42, :cond_2a

    #@6fc
    .line 1265
    invoke-virtual/range {v40 .. v40}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@6ff
    move-result-object v42

    #@700
    move-object/from16 v0, p0

    #@702
    move-object/from16 v1, v42

    #@704
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    #@707
    .line 1267
    :cond_2a
    invoke-virtual/range {v40 .. v40}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@70a
    move-result-object v42

    #@70b
    move-object/from16 v0, p0

    #@70d
    move-object/from16 v1, v42

    #@70f
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    #@712
    goto/16 :goto_e

    #@714
    .line 1170
    .end local v40    # "zone":Ljava/util/TimeZone;
    .end local v41    # "zoneName":Ljava/lang/String;
    :catch_0
    move-exception v13

    #@715
    .line 1171
    .local v13, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v42, Ljava/lang/StringBuilder;

    #@717
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@71a
    const-string/jumbo v43, "pollStateDone: countryCodeForMcc error"

    #@71d
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@720
    move-result-object v42

    #@721
    move-object/from16 v0, v42

    #@723
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@726
    move-result-object v42

    #@727
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72a
    move-result-object v42

    #@72b
    move-object/from16 v0, p0

    #@72d
    move-object/from16 v1, v42

    #@72f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    #@732
    goto/16 :goto_11

    #@734
    .line 1168
    .end local v13    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v12

    #@735
    .line 1169
    .local v12, "ex":Ljava/lang/NumberFormatException;
    new-instance v42, Ljava/lang/StringBuilder;

    #@737
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@73a
    const-string/jumbo v43, "pollStateDone: countryCodeForMcc error"

    #@73d
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@740
    move-result-object v42

    #@741
    move-object/from16 v0, v42

    #@743
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@746
    move-result-object v42

    #@747
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74a
    move-result-object v42

    #@74b
    move-object/from16 v0, p0

    #@74d
    move-object/from16 v1, v42

    #@74f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    #@752
    goto/16 :goto_11

    #@754
    .line 1179
    .end local v12    # "ex":Ljava/lang/NumberFormatException;
    .local v40, "zone":Ljava/util/TimeZone;
    :cond_2b
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@757
    move-result v42

    #@758
    if-nez v42, :cond_29

    #@75a
    .line 1180
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    #@75d
    move-result v42

    #@75e
    .line 1179
    if-eqz v42, :cond_29

    #@760
    .line 1184
    const-string/jumbo v42, "telephony.test.ignore.nitz"

    #@763
    const/16 v43, 0x0

    #@765
    .line 1183
    invoke-static/range {v42 .. v43}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@768
    move-result v42

    #@769
    if-eqz v42, :cond_2e

    #@76b
    .line 1185
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@76e
    move-result-wide v42

    #@76f
    const-wide/16 v44, 0x1

    #@771
    and-long v42, v42, v44

    #@773
    const-wide/16 v44, 0x0

    #@775
    cmp-long v42, v42, v44

    #@777
    if-nez v42, :cond_2d

    #@779
    const/16 v34, 0x1

    #@77b
    .line 1187
    .local v34, "testOneUniqueOffsetPath":Z
    :goto_14
    invoke-static/range {v28 .. v28}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    #@77e
    move-result-object v37

    #@77f
    .line 1188
    .local v37, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    #@782
    move-result v42

    #@783
    const/16 v43, 0x1

    #@785
    move/from16 v0, v42

    #@787
    move/from16 v1, v43

    #@789
    if-eq v0, v1, :cond_2c

    #@78b
    if-eqz v34, :cond_2f

    #@78d
    .line 1189
    :cond_2c
    const/16 v42, 0x0

    #@78f
    move-object/from16 v0, v37

    #@791
    move/from16 v1, v42

    #@793
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@796
    move-result-object v40

    #@797
    .end local v40    # "zone":Ljava/util/TimeZone;
    check-cast v40, Ljava/util/TimeZone;

    #@799
    .line 1191
    .local v40, "zone":Ljava/util/TimeZone;
    new-instance v42, Ljava/lang/StringBuilder;

    #@79b
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@79e
    const-string/jumbo v43, "pollStateDone: no nitz but one TZ for iso-cc="

    #@7a1
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a4
    move-result-object v42

    #@7a5
    move-object/from16 v0, v42

    #@7a7
    move-object/from16 v1, v28

    #@7a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7ac
    move-result-object v42

    #@7ad
    .line 1192
    const-string/jumbo v43, " with zone.getID="

    #@7b0
    .line 1191
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b3
    move-result-object v42

    #@7b4
    .line 1192
    invoke-virtual/range {v40 .. v40}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@7b7
    move-result-object v43

    #@7b8
    .line 1191
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7bb
    move-result-object v42

    #@7bc
    .line 1193
    const-string/jumbo v43, " testOneUniqueOffsetPath="

    #@7bf
    .line 1191
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c2
    move-result-object v42

    #@7c3
    move-object/from16 v0, v42

    #@7c5
    move/from16 v1, v34

    #@7c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7ca
    move-result-object v42

    #@7cb
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7ce
    move-result-object v42

    #@7cf
    move-object/from16 v0, p0

    #@7d1
    move-object/from16 v1, v42

    #@7d3
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@7d6
    .line 1195
    invoke-virtual/range {v40 .. v40}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@7d9
    move-result-object v42

    #@7da
    move-object/from16 v0, p0

    #@7dc
    move-object/from16 v1, v42

    #@7de
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    #@7e1
    goto/16 :goto_12

    #@7e3
    .line 1185
    .end local v34    # "testOneUniqueOffsetPath":Z
    .end local v37    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .local v40, "zone":Ljava/util/TimeZone;
    :cond_2d
    const/16 v34, 0x0

    #@7e5
    .restart local v34    # "testOneUniqueOffsetPath":Z
    goto :goto_14

    #@7e6
    .line 1183
    .end local v34    # "testOneUniqueOffsetPath":Z
    :cond_2e
    const/16 v34, 0x0

    #@7e8
    .restart local v34    # "testOneUniqueOffsetPath":Z
    goto :goto_14

    #@7e9
    .line 1198
    .restart local v37    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_2f
    new-instance v42, Ljava/lang/StringBuilder;

    #@7eb
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@7ee
    const-string/jumbo v43, "pollStateDone: there are "

    #@7f1
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f4
    move-result-object v42

    #@7f5
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    #@7f8
    move-result v43

    #@7f9
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7fc
    move-result-object v42

    #@7fd
    .line 1199
    const-string/jumbo v43, " unique offsets for iso-cc=\'"

    #@800
    .line 1198
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@803
    move-result-object v42

    #@804
    move-object/from16 v0, v42

    #@806
    move-object/from16 v1, v28

    #@808
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80b
    move-result-object v42

    #@80c
    .line 1200
    const-string/jumbo v43, " testOneUniqueOffsetPath="

    #@80f
    .line 1198
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@812
    move-result-object v42

    #@813
    move-object/from16 v0, v42

    #@815
    move/from16 v1, v34

    #@817
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@81a
    move-result-object v42

    #@81b
    .line 1201
    const-string/jumbo v43, "\', do nothing"

    #@81e
    .line 1198
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@821
    move-result-object v42

    #@822
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@825
    move-result-object v42

    #@826
    move-object/from16 v0, p0

    #@828
    move-object/from16 v1, v42

    #@82a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@82d
    goto/16 :goto_12

    #@82f
    .line 1231
    .end local v34    # "testOneUniqueOffsetPath":Z
    .end local v37    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .end local v40    # "zone":Ljava/util/TimeZone;
    .restart local v41    # "zoneName":Ljava/lang/String;
    :cond_30
    move-object/from16 v0, p0

    #@831
    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    #@833
    move/from16 v42, v0

    #@835
    if-nez v42, :cond_33

    #@837
    move-object/from16 v0, p0

    #@839
    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    #@83b
    move/from16 v42, v0

    #@83d
    if-nez v42, :cond_33

    #@83f
    .line 1232
    if-eqz v41, :cond_33

    #@841
    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    #@844
    move-result v42

    #@845
    if-lez v42, :cond_33

    #@847
    .line 1233
    sget-object v42, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    #@849
    move-object/from16 v0, v42

    #@84b
    move-object/from16 v1, v28

    #@84d
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    #@850
    move-result v42

    #@851
    if-gez v42, :cond_33

    #@853
    .line 1234
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@856
    move-result-object v40

    #@857
    .line 1235
    .local v40, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    #@859
    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@85b
    move/from16 v42, v0

    #@85d
    if-eqz v42, :cond_31

    #@85f
    .line 1238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@862
    move-result-wide v10

    #@863
    .line 1239
    .local v10, "ctm":J
    move-object/from16 v0, v40

    #@865
    invoke-virtual {v0, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    #@868
    move-result v42

    #@869
    move/from16 v0, v42

    #@86b
    int-to-long v0, v0

    #@86c
    move-wide/from16 v38, v0

    #@86e
    .line 1241
    .local v38, "tzOffset":J
    new-instance v42, Ljava/lang/StringBuilder;

    #@870
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@873
    const-string/jumbo v43, "pollStateDone: tzOffset="

    #@876
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@879
    move-result-object v42

    #@87a
    move-object/from16 v0, v42

    #@87c
    move-wide/from16 v1, v38

    #@87e
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@881
    move-result-object v42

    #@882
    const-string/jumbo v43, " ltod="

    #@885
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@888
    move-result-object v42

    #@889
    .line 1242
    invoke-static {v10, v11}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    #@88c
    move-result-object v43

    #@88d
    .line 1241
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@890
    move-result-object v42

    #@891
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@894
    move-result-object v42

    #@895
    move-object/from16 v0, p0

    #@897
    move-object/from16 v1, v42

    #@899
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@89c
    .line 1244
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    #@89f
    move-result v42

    #@8a0
    if-eqz v42, :cond_32

    #@8a2
    .line 1245
    sub-long v6, v10, v38

    #@8a4
    .line 1246
    .local v6, "adj":J
    new-instance v42, Ljava/lang/StringBuilder;

    #@8a6
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@8a9
    const-string/jumbo v43, "pollStateDone: adj ltod="

    #@8ac
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8af
    move-result-object v42

    #@8b0
    .line 1247
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    #@8b3
    move-result-object v43

    #@8b4
    .line 1246
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b7
    move-result-object v42

    #@8b8
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8bb
    move-result-object v42

    #@8bc
    move-object/from16 v0, p0

    #@8be
    move-object/from16 v1, v42

    #@8c0
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@8c3
    .line 1248
    move-object/from16 v0, p0

    #@8c5
    invoke-direct {v0, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    #@8c8
    .line 1254
    .end local v6    # "adj":J
    .end local v10    # "ctm":J
    .end local v38    # "tzOffset":J
    :cond_31
    :goto_15
    const-string/jumbo v42, "pollStateDone: using default TimeZone"

    #@8cb
    move-object/from16 v0, p0

    #@8cd
    move-object/from16 v1, v42

    #@8cf
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@8d2
    goto/16 :goto_13

    #@8d4
    .line 1251
    .restart local v10    # "ctm":J
    .restart local v38    # "tzOffset":J
    :cond_32
    move-object/from16 v0, p0

    #@8d6
    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    #@8d8
    move-wide/from16 v42, v0

    #@8da
    sub-long v42, v42, v38

    #@8dc
    move-wide/from16 v0, v42

    #@8de
    move-object/from16 v2, p0

    #@8e0
    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    #@8e2
    goto :goto_15

    #@8e3
    .line 1256
    .end local v10    # "ctm":J
    .end local v38    # "tzOffset":J
    .end local v40    # "zone":Ljava/util/TimeZone;
    :cond_33
    move-object/from16 v0, p0

    #@8e5
    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    #@8e7
    move/from16 v42, v0

    #@8e9
    move-object/from16 v0, p0

    #@8eb
    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    #@8ed
    move/from16 v43, v0

    #@8ef
    move-object/from16 v0, p0

    #@8f1
    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    #@8f3
    move-wide/from16 v44, v0

    #@8f5
    move/from16 v0, v42

    #@8f7
    move/from16 v1, v43

    #@8f9
    move-wide/from16 v2, v44

    #@8fb
    move-object/from16 v4, v28

    #@8fd
    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    #@900
    move-result-object v40

    #@901
    .line 1257
    .restart local v40    # "zone":Ljava/util/TimeZone;
    const-string/jumbo v42, "pollStateDone: using getTimeZone(off, dst, time, iso)"

    #@904
    move-object/from16 v0, p0

    #@906
    move-object/from16 v1, v42

    #@908
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@90b
    goto/16 :goto_13

    #@90d
    .line 1269
    :cond_34
    const-string/jumbo v42, "pollStateDone: zone == null"

    #@910
    move-object/from16 v0, p0

    #@912
    move-object/from16 v1, v42

    #@914
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@917
    goto/16 :goto_e

    #@919
    .line 1296
    .end local v28    # "iso":Ljava/lang/String;
    .end local v30    # "mcc":Ljava/lang/String;
    .end local v31    # "operatorNumeric":Ljava/lang/String;
    .end local v32    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v40    # "zone":Ljava/util/TimeZone;
    .end local v41    # "zoneName":Ljava/lang/String;
    :cond_35
    move-object/from16 v0, p0

    #@91b
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@91d
    move-object/from16 v42, v0

    #@91f
    const/16 v43, 0x0

    #@921
    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@924
    goto/16 :goto_f

    #@926
    .line 1322
    :cond_36
    const/16 v42, 0x1

    #@928
    move/from16 v0, v42

    #@92a
    move-object/from16 v1, p0

    #@92c
    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    #@92e
    .line 1325
    move-object/from16 v0, p0

    #@930
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@932
    move-object/from16 v42, v0

    #@934
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@937
    move-result-object v42

    #@938
    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@93b
    move-result-object v42

    #@93c
    .line 1326
    const-string/jumbo v43, "gprs_register_check_period_ms"

    #@93f
    .line 1327
    const v44, 0xea60

    #@942
    .line 1324
    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@945
    move-result v8

    #@946
    .line 1328
    .local v8, "check_period":I
    const/16 v42, 0x16

    #@948
    move-object/from16 v0, p0

    #@94a
    move/from16 v1, v42

    #@94c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@94f
    move-result-object v42

    #@950
    .line 1329
    int-to-long v0, v8

    #@951
    move-wide/from16 v44, v0

    #@953
    .line 1328
    move-object/from16 v0, p0

    #@955
    move-object/from16 v1, v42

    #@957
    move-wide/from16 v2, v44

    #@959
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@95c
    goto/16 :goto_10

    #@95e
    .line 1332
    .end local v8    # "check_period":I
    :cond_37
    const/16 v42, 0x0

    #@960
    move/from16 v0, v42

    #@962
    move-object/from16 v1, p0

    #@964
    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    #@966
    goto/16 :goto_10
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 4

    #@0
    .prologue
    .line 1383
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1386
    return-void

    #@5
    .line 1391
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 1392
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    #@b
    iput v1, v0, Landroid/os/Message;->what:I

    #@d
    .line 1397
    const-wide/16 v2, 0x4e20

    #@f
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@12
    .line 1382
    return-void
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .param p1, "code"    # I

    #@0
    .prologue
    .line 1528
    const/4 v0, 0x5

    #@1
    if-ne v0, p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 3
    .param p1, "code"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 1498
    packed-switch p1, :pswitch_data_0

    #@5
    .line 1517
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "regCodeToServiceState: unexpected service state "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    #@1c
    .line 1518
    return v2

    #@1d
    .line 1507
    :pswitch_1
    return v2

    #@1e
    .line 1510
    :pswitch_2
    return v0

    #@1f
    .line 1514
    :pswitch_3
    return v0

    #@20
    .line 1498
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private revertToNitzTime()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 1938
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@c
    move-result-object v0

    #@d
    .line 1939
    const-string/jumbo v1, "auto_time"

    #@10
    .line 1938
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_0

    #@16
    .line 1940
    return-void

    #@17
    .line 1943
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v1, "Reverting to NITZ Time: mSavedTime="

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    #@25
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 1944
    const-string/jumbo v1, " mSavedAtTime="

    #@2c
    .line 1943
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 1944
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    #@32
    .line 1943
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@3d
    .line 1946
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    #@3f
    cmp-long v0, v0, v4

    #@41
    if-eqz v0, :cond_1

    #@43
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    #@45
    cmp-long v0, v0, v4

    #@47
    if-eqz v0, :cond_1

    #@49
    .line 1947
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    #@4b
    .line 1948
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4e
    move-result-wide v2

    #@4f
    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    #@51
    sub-long/2addr v2, v4

    #@52
    .line 1947
    add-long/2addr v0, v2

    #@53
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    #@56
    .line 1937
    :cond_1
    return-void
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1953
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@3
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v0

    #@b
    .line 1954
    const-string/jumbo v1, "auto_time_zone"

    #@e
    .line 1953
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 1955
    return-void

    #@15
    .line 1957
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v1, "Reverting to NITZ TimeZone: tz=\'"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@2e
    .line 1958
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@30
    if-eqz v0, :cond_1

    #@32
    .line 1959
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@34
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    #@37
    .line 1952
    :cond_1
    return-void
.end method

.method private saveNitzTime(J)V
    .locals 3
    .param p1, "time"    # J

    #@0
    .prologue
    .line 1897
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    #@2
    .line 1898
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    #@8
    .line 1896
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1893
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@2
    .line 1892
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .param p1, "time"    # J

    #@0
    .prologue
    .line 1929
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "setAndBroadcastNetworkSetTime: time="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "ms"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@1e
    .line 1930
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    #@21
    .line 1931
    new-instance v0, Landroid/content/Intent;

    #@23
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIME"

    #@26
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@29
    .line 1932
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    #@2b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@2e
    .line 1933
    const-string/jumbo v1, "time"

    #@31
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@34
    .line 1934
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@36
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@39
    move-result-object v1

    #@3a
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@3c
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@3f
    .line 1928
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1908
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@17
    .line 1910
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@19
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, "alarm"

    #@20
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/app/AlarmManager;

    #@26
    .line 1911
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    #@29
    .line 1912
    new-instance v1, Landroid/content/Intent;

    #@2b
    const-string/jumbo v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    #@2e
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@31
    .line 1913
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    #@33
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@36
    .line 1914
    const-string/jumbo v2, "time-zone"

    #@39
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3c
    .line 1915
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@3e
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@41
    move-result-object v2

    #@42
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@44
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@47
    .line 1917
    new-instance v2, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v3, "setAndBroadcastNetworkSetTimeZone: call alarm.setTimeZone and broadcast zoneId="

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@5e
    .line 1907
    return-void
.end method

.method private setNotification(I)V
    .locals 12
    .param p1, "notifyType"    # I

    #@0
    .prologue
    .line 1969
    new-instance v8, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v9, "setNotification: create notification "

    #@8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v8

    #@c
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v8

    #@10
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v8

    #@14
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@17
    .line 1972
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@19
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v8

    #@1d
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@20
    move-result-object v8

    #@21
    .line 1973
    const v9, 0x1120054

    #@24
    .line 1972
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@27
    move-result v4

    #@28
    .line 1974
    .local v4, "isSetNotification":Z
    if-nez v4, :cond_0

    #@2a
    .line 1975
    const-string/jumbo v8, "Ignore all the notifications"

    #@2d
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@30
    .line 1976
    return-void

    #@31
    .line 1979
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@33
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@36
    move-result-object v0

    #@37
    .line 1982
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, ""

    #@3a
    .line 1983
    .local v1, "details":Ljava/lang/CharSequence;
    const v8, 0x10400a2

    #@3d
    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@40
    move-result-object v7

    #@41
    .line 1984
    .local v7, "title":Ljava/lang/CharSequence;
    const/16 v5, 0x3e7

    #@43
    .line 1986
    .local v5, "notificationId":I
    packed-switch p1, :pswitch_data_0

    #@46
    .line 2012
    :goto_0
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v9, "setNotification: put notification "

    #@4e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v8

    #@52
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v8

    #@56
    const-string/jumbo v9, " / "

    #@59
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v8

    #@5d
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v8

    #@61
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v8

    #@65
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@68
    .line 2013
    new-instance v8, Landroid/app/Notification$Builder;

    #@6a
    invoke-direct {v8, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@6d
    .line 2014
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@70
    move-result-wide v10

    #@71
    .line 2013
    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@74
    move-result-object v8

    #@75
    .line 2015
    const/4 v9, 0x1

    #@76
    .line 2013
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@79
    move-result-object v8

    #@7a
    .line 2016
    const v9, 0x108008a

    #@7d
    .line 2013
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@80
    move-result-object v8

    #@81
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@84
    move-result-object v8

    #@85
    .line 2018
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@88
    move-result-object v9

    #@89
    .line 2019
    const v10, 0x1060059

    #@8c
    .line 2018
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    #@8f
    move-result v9

    #@90
    .line 2013
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@93
    move-result-object v8

    #@94
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@97
    move-result-object v8

    #@98
    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@9b
    move-result-object v8

    #@9c
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@9f
    move-result-object v8

    #@a0
    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    #@a2
    .line 2025
    const-string/jumbo v8, "notification"

    #@a5
    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a8
    move-result-object v6

    #@a9
    .line 2024
    check-cast v6, Landroid/app/NotificationManager;

    #@ab
    .line 2027
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    const/16 v8, 0x3ea

    #@ad
    if-eq p1, v8, :cond_1

    #@af
    const/16 v8, 0x3ec

    #@b1
    if-ne p1, v8, :cond_3

    #@b3
    .line 2029
    :cond_1
    invoke-virtual {v6, v5}, Landroid/app/NotificationManager;->cancel(I)V

    #@b6
    .line 1968
    :goto_1
    return-void

    #@b7
    .line 1988
    .end local v6    # "notificationManager":Landroid/app/NotificationManager;
    :pswitch_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@ba
    move-result v8

    #@bb
    int-to-long v2, v8

    #@bc
    .line 1989
    .local v2, "dataSubId":J
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@be
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    #@c1
    move-result v8

    #@c2
    int-to-long v8, v8

    #@c3
    cmp-long v8, v2, v8

    #@c5
    if-eqz v8, :cond_2

    #@c7
    .line 1990
    return-void

    #@c8
    .line 1992
    :cond_2
    const/16 v5, 0x378

    #@ca
    .line 1993
    const v8, 0x10400a3

    #@cd
    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@d0
    move-result-object v1

    #@d1
    goto/16 :goto_0

    #@d3
    .line 1996
    .end local v2    # "dataSubId":J
    :pswitch_2
    const/16 v5, 0x378

    #@d5
    .line 1997
    goto/16 :goto_0

    #@d7
    .line 1999
    :pswitch_3
    const v8, 0x10400a6

    #@da
    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@dd
    move-result-object v1

    #@de
    goto/16 :goto_0

    #@e0
    .line 2002
    :pswitch_4
    const v8, 0x10400a5

    #@e3
    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@e6
    move-result-object v1

    #@e7
    goto/16 :goto_0

    #@e9
    .line 2005
    :pswitch_5
    const v8, 0x10400a4

    #@ec
    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@ef
    move-result-object v1

    #@f0
    goto/16 :goto_0

    #@f2
    .line 2032
    .restart local v6    # "notificationManager":Landroid/app/NotificationManager;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    #@f4
    invoke-virtual {v6, v5, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    #@f7
    goto :goto_1

    #@f8
    .line 1986
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 2

    #@0
    .prologue
    .line 953
    new-instance v0, Landroid/telephony/SignalStrength;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@8
    .line 952
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 32
    .param p1, "nitz"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    #@0
    .prologue
    .line 1712
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v20

    #@4
    .line 1713
    .local v20, "start":J
    new-instance v26, Ljava/lang/StringBuilder;

    #@6
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v27, "NITZ: "

    #@c
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v26

    #@10
    move-object/from16 v0, v26

    #@12
    move-object/from16 v1, p1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v26

    #@18
    const-string/jumbo v27, ","

    #@1b
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v26

    #@1f
    move-object/from16 v0, v26

    #@21
    move-wide/from16 v1, p2

    #@23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@26
    move-result-object v26

    #@27
    .line 1714
    const-string/jumbo v27, " start="

    #@2a
    .line 1713
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v26

    #@2e
    move-object/from16 v0, v26

    #@30
    move-wide/from16 v1, v20

    #@32
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@35
    move-result-object v26

    #@36
    .line 1714
    const-string/jumbo v27, " delay="

    #@39
    .line 1713
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v26

    #@3d
    .line 1714
    sub-long v28, v20, p2

    #@3f
    .line 1713
    move-object/from16 v0, v26

    #@41
    move-wide/from16 v1, v28

    #@43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@46
    move-result-object v26

    #@47
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v26

    #@4b
    move-object/from16 v0, p0

    #@4d
    move-object/from16 v1, v26

    #@4f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@52
    .line 1720
    :try_start_0
    const-string/jumbo v26, "GMT"

    #@55
    invoke-static/range {v26 .. v26}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@58
    move-result-object v26

    #@59
    invoke-static/range {v26 .. v26}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@5c
    move-result-object v6

    #@5d
    .line 1722
    .local v6, "c":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    #@60
    .line 1723
    const/16 v26, 0x10

    #@62
    const/16 v27, 0x0

    #@64
    move/from16 v0, v26

    #@66
    move/from16 v1, v27

    #@68
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@6b
    .line 1725
    const-string/jumbo v26, "[/:,+-]"

    #@6e
    move-object/from16 v0, p1

    #@70
    move-object/from16 v1, v26

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@75
    move-result-object v17

    #@76
    .line 1727
    .local v17, "nitzSubs":[Ljava/lang/String;
    const/16 v26, 0x0

    #@78
    aget-object v26, v17, v26

    #@7a
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7d
    move-result v26

    #@7e
    move/from16 v0, v26

    #@80
    add-int/lit16 v0, v0, 0x7d0

    #@82
    move/from16 v24, v0

    #@84
    .line 1728
    .local v24, "year":I
    const/16 v26, 0x1

    #@86
    move/from16 v0, v26

    #@88
    move/from16 v1, v24

    #@8a
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@8d
    .line 1731
    const/16 v26, 0x1

    #@8f
    aget-object v26, v17, v26

    #@91
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@94
    move-result v26

    #@95
    add-int/lit8 v16, v26, -0x1

    #@97
    .line 1732
    .local v16, "month":I
    const/16 v26, 0x2

    #@99
    move/from16 v0, v26

    #@9b
    move/from16 v1, v16

    #@9d
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@a0
    .line 1734
    const/16 v26, 0x2

    #@a2
    aget-object v26, v17, v26

    #@a4
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a7
    move-result v7

    #@a8
    .line 1735
    .local v7, "date":I
    const/16 v26, 0x5

    #@aa
    move/from16 v0, v26

    #@ac
    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    #@af
    .line 1737
    const/16 v26, 0x3

    #@b1
    aget-object v26, v17, v26

    #@b3
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b6
    move-result v10

    #@b7
    .line 1738
    .local v10, "hour":I
    const/16 v26, 0xa

    #@b9
    move/from16 v0, v26

    #@bb
    invoke-virtual {v6, v0, v10}, Ljava/util/Calendar;->set(II)V

    #@be
    .line 1740
    const/16 v26, 0x4

    #@c0
    aget-object v26, v17, v26

    #@c2
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@c5
    move-result v13

    #@c6
    .line 1741
    .local v13, "minute":I
    const/16 v26, 0xc

    #@c8
    move/from16 v0, v26

    #@ca
    invoke-virtual {v6, v0, v13}, Ljava/util/Calendar;->set(II)V

    #@cd
    .line 1743
    const/16 v26, 0x5

    #@cf
    aget-object v26, v17, v26

    #@d1
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d4
    move-result v18

    #@d5
    .line 1744
    .local v18, "second":I
    const/16 v26, 0xd

    #@d7
    move/from16 v0, v26

    #@d9
    move/from16 v1, v18

    #@db
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@de
    .line 1746
    const/16 v26, 0x2d

    #@e0
    move-object/from16 v0, p1

    #@e2
    move/from16 v1, v26

    #@e4
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@e7
    move-result v26

    #@e8
    const/16 v27, -0x1

    #@ea
    move/from16 v0, v26

    #@ec
    move/from16 v1, v27

    #@ee
    if-ne v0, v1, :cond_6

    #@f0
    const/16 v19, 0x1

    #@f2
    .line 1748
    .local v19, "sign":Z
    :goto_0
    const/16 v26, 0x6

    #@f4
    aget-object v26, v17, v26

    #@f6
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@f9
    move-result v22

    #@fa
    .line 1750
    .local v22, "tzOffset":I
    move-object/from16 v0, v17

    #@fc
    array-length v0, v0

    #@fd
    move/from16 v26, v0

    #@ff
    const/16 v27, 0x8

    #@101
    move/from16 v0, v26

    #@103
    move/from16 v1, v27

    #@105
    if-lt v0, v1, :cond_7

    #@107
    const/16 v26, 0x7

    #@109
    aget-object v26, v17, v26

    #@10b
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@10e
    move-result v8

    #@10f
    .line 1760
    .local v8, "dst":I
    :goto_1
    if-eqz v19, :cond_8

    #@111
    const/16 v26, 0x1

    #@113
    :goto_2
    mul-int v26, v26, v22

    #@115
    mul-int/lit8 v26, v26, 0xf

    #@117
    mul-int/lit8 v26, v26, 0x3c

    #@119
    move/from16 v0, v26

    #@11b
    mul-int/lit16 v0, v0, 0x3e8

    #@11d
    move/from16 v22, v0

    #@11f
    .line 1762
    const/16 v25, 0x0

    #@121
    .line 1768
    .local v25, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, v17

    #@123
    array-length v0, v0

    #@124
    move/from16 v26, v0

    #@126
    const/16 v27, 0x9

    #@128
    move/from16 v0, v26

    #@12a
    move/from16 v1, v27

    #@12c
    if-lt v0, v1, :cond_0

    #@12e
    .line 1769
    const/16 v26, 0x8

    #@130
    aget-object v26, v17, v26

    #@132
    const/16 v27, 0x21

    #@134
    const/16 v28, 0x2f

    #@136
    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@139
    move-result-object v23

    #@13a
    .line 1770
    .local v23, "tzname":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@13d
    move-result-object v25

    #@13e
    .line 1773
    .end local v23    # "tzname":Ljava/lang/String;
    .end local v25    # "zone":Ljava/util/TimeZone;
    :cond_0
    move-object/from16 v0, p0

    #@140
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@142
    move-object/from16 v26, v0

    #@144
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@147
    move-result-object v26

    #@148
    .line 1774
    const-string/jumbo v27, "phone"

    #@14b
    .line 1773
    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@14e
    move-result-object v26

    #@14f
    check-cast v26, Landroid/telephony/TelephonyManager;

    #@151
    .line 1775
    move-object/from16 v0, p0

    #@153
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@155
    move-object/from16 v27, v0

    #@157
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@15a
    move-result v27

    #@15b
    .line 1773
    invoke-virtual/range {v26 .. v27}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    #@15e
    move-result-object v12

    #@15f
    .line 1777
    .local v12, "iso":Ljava/lang/String;
    if-nez v25, :cond_1

    #@161
    .line 1779
    move-object/from16 v0, p0

    #@163
    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    #@165
    move/from16 v26, v0

    #@167
    if-eqz v26, :cond_1

    #@169
    .line 1780
    if-eqz v12, :cond_a

    #@16b
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@16e
    move-result v26

    #@16f
    if-lez v26, :cond_a

    #@171
    .line 1781
    if-eqz v8, :cond_9

    #@173
    const/16 v26, 0x1

    #@175
    .line 1782
    :goto_3
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@178
    move-result-wide v28

    #@179
    .line 1781
    move/from16 v0, v22

    #@17b
    move/from16 v1, v26

    #@17d
    move-wide/from16 v2, v28

    #@17f
    invoke-static {v0, v1, v2, v3, v12}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    #@182
    move-result-object v25

    #@183
    .line 1794
    :cond_1
    :goto_4
    if-eqz v25, :cond_2

    #@185
    move-object/from16 v0, p0

    #@187
    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    #@189
    move/from16 v26, v0

    #@18b
    move/from16 v0, v26

    #@18d
    move/from16 v1, v22

    #@18f
    if-eq v0, v1, :cond_c

    #@191
    .line 1799
    :cond_2
    :goto_5
    const/16 v26, 0x1

    #@193
    move/from16 v0, v26

    #@195
    move-object/from16 v1, p0

    #@197
    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@199
    .line 1800
    move/from16 v0, v22

    #@19b
    move-object/from16 v1, p0

    #@19d
    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    #@19f
    .line 1801
    if-eqz v8, :cond_e

    #@1a1
    const/16 v26, 0x1

    #@1a3
    :goto_6
    move/from16 v0, v26

    #@1a5
    move-object/from16 v1, p0

    #@1a7
    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    #@1a9
    .line 1802
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@1ac
    move-result-wide v26

    #@1ad
    move-wide/from16 v0, v26

    #@1af
    move-object/from16 v2, p0

    #@1b1
    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    #@1b3
    .line 1805
    :cond_3
    if-eqz v25, :cond_5

    #@1b5
    .line 1806
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    #@1b8
    move-result v26

    #@1b9
    if-eqz v26, :cond_4

    #@1bb
    .line 1807
    invoke-virtual/range {v25 .. v25}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@1be
    move-result-object v26

    #@1bf
    move-object/from16 v0, p0

    #@1c1
    move-object/from16 v1, v26

    #@1c3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    #@1c6
    .line 1809
    :cond_4
    invoke-virtual/range {v25 .. v25}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@1c9
    move-result-object v26

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    move-object/from16 v1, v26

    #@1ce
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    #@1d1
    .line 1812
    :cond_5
    const-string/jumbo v26, "gsm.ignore-nitz"

    #@1d4
    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@1d7
    move-result-object v11

    #@1d8
    .line 1813
    .local v11, "ignore":Ljava/lang/String;
    if-eqz v11, :cond_f

    #@1da
    const-string/jumbo v26, "yes"

    #@1dd
    move-object/from16 v0, v26

    #@1df
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e2
    move-result v26

    #@1e3
    if-eqz v26, :cond_f

    #@1e5
    .line 1814
    const-string/jumbo v26, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    move-object/from16 v1, v26

    #@1ec
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@1ef
    .line 1815
    return-void

    #@1f0
    .line 1746
    .end local v8    # "dst":I
    .end local v11    # "ignore":Ljava/lang/String;
    .end local v12    # "iso":Ljava/lang/String;
    .end local v19    # "sign":Z
    .end local v22    # "tzOffset":I
    :cond_6
    const/16 v19, 0x0

    #@1f2
    .restart local v19    # "sign":Z
    goto/16 :goto_0

    #@1f4
    .line 1751
    .restart local v22    # "tzOffset":I
    :cond_7
    const/4 v8, 0x0

    #@1f5
    .restart local v8    # "dst":I
    goto/16 :goto_1

    #@1f7
    .line 1760
    :cond_8
    const/16 v26, -0x1

    #@1f9
    goto/16 :goto_2

    #@1fb
    .line 1781
    .restart local v12    # "iso":Ljava/lang/String;
    :cond_9
    const/16 v26, 0x0

    #@1fd
    goto/16 :goto_3

    #@1ff
    .line 1789
    :cond_a
    if-eqz v8, :cond_b

    #@201
    const/16 v26, 0x1

    #@203
    :goto_7
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@206
    move-result-wide v28

    #@207
    move-object/from16 v0, p0

    #@209
    move/from16 v1, v22

    #@20b
    move/from16 v2, v26

    #@20d
    move-wide/from16 v3, v28

    #@20f
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    #@212
    move-result-object v25

    #@213
    .local v25, "zone":Ljava/util/TimeZone;
    goto/16 :goto_4

    #@215
    .end local v25    # "zone":Ljava/util/TimeZone;
    :cond_b
    const/16 v26, 0x0

    #@217
    goto :goto_7

    #@218
    .line 1794
    :cond_c
    move-object/from16 v0, p0

    #@21a
    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    #@21c
    move/from16 v27, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@21e
    if-eqz v8, :cond_d

    #@220
    const/16 v26, 0x1

    #@222
    :goto_8
    move/from16 v0, v27

    #@224
    move/from16 v1, v26

    #@226
    if-eq v0, v1, :cond_3

    #@228
    goto/16 :goto_5

    #@22a
    :cond_d
    const/16 v26, 0x0

    #@22c
    goto :goto_8

    #@22d
    .line 1801
    :cond_e
    const/16 v26, 0x0

    #@22f
    goto/16 :goto_6

    #@231
    .line 1819
    .restart local v11    # "ignore":Ljava/lang/String;
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    #@233
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@235
    move-object/from16 v26, v0

    #@237
    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@23a
    .line 1821
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    #@23d
    move-result v26

    #@23e
    if-eqz v26, :cond_12

    #@240
    .line 1823
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@243
    move-result-wide v26

    #@244
    sub-long v14, v26, p2

    #@246
    .line 1825
    .local v14, "millisSinceNitzReceived":J
    const-wide/16 v26, 0x0

    #@248
    cmp-long v26, v14, v26

    #@24a
    if-gez v26, :cond_10

    #@24c
    .line 1828
    new-instance v26, Ljava/lang/StringBuilder;

    #@24e
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@251
    const-string/jumbo v27, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    #@254
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v26

    #@258
    move-object/from16 v0, v26

    #@25a
    move-object/from16 v1, p1

    #@25c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25f
    move-result-object v26

    #@260
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@263
    move-result-object v26

    #@264
    move-object/from16 v0, p0

    #@266
    move-object/from16 v1, v26

    #@268
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26b
    .line 1867
    :try_start_2
    move-object/from16 v0, p0

    #@26d
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@26f
    move-object/from16 v26, v0

    #@271
    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@274
    .line 1832
    return-void

    #@275
    .line 1835
    :cond_10
    const-wide/32 v26, 0x7fffffff

    #@278
    cmp-long v26, v14, v26

    #@27a
    if-lez v26, :cond_11

    #@27c
    .line 1838
    :try_start_3
    new-instance v26, Ljava/lang/StringBuilder;

    #@27e
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@281
    const-string/jumbo v27, "NITZ: not setting time, processing has taken "

    #@284
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@287
    move-result-object v26

    #@288
    .line 1839
    const-wide/32 v28, 0x5265c00

    #@28b
    div-long v28, v14, v28

    #@28d
    .line 1838
    move-object/from16 v0, v26

    #@28f
    move-wide/from16 v1, v28

    #@291
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@294
    move-result-object v26

    #@295
    .line 1840
    const-string/jumbo v27, " days"

    #@298
    .line 1838
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29b
    move-result-object v26

    #@29c
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29f
    move-result-object v26

    #@2a0
    move-object/from16 v0, p0

    #@2a2
    move-object/from16 v1, v26

    #@2a4
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2a7
    .line 1867
    :try_start_4
    move-object/from16 v0, p0

    #@2a9
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2ab
    move-object/from16 v26, v0

    #@2ad
    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    #@2b0
    .line 1842
    return-void

    #@2b1
    .line 1846
    :cond_11
    long-to-int v0, v14

    #@2b2
    move/from16 v26, v0

    #@2b4
    const/16 v27, 0xe

    #@2b6
    :try_start_5
    move/from16 v0, v27

    #@2b8
    move/from16 v1, v26

    #@2ba
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    #@2bd
    .line 1849
    new-instance v26, Ljava/lang/StringBuilder;

    #@2bf
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@2c2
    const-string/jumbo v27, "NITZ: Setting time of day to "

    #@2c5
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c8
    move-result-object v26

    #@2c9
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@2cc
    move-result-object v27

    #@2cd
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d0
    move-result-object v26

    #@2d1
    .line 1850
    const-string/jumbo v27, " NITZ receive delay(ms): "

    #@2d4
    .line 1849
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d7
    move-result-object v26

    #@2d8
    move-object/from16 v0, v26

    #@2da
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2dd
    move-result-object v26

    #@2de
    .line 1851
    const-string/jumbo v27, " gained(ms): "

    #@2e1
    .line 1849
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e4
    move-result-object v26

    #@2e5
    .line 1852
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@2e8
    move-result-wide v28

    #@2e9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2ec
    move-result-wide v30

    #@2ed
    sub-long v28, v28, v30

    #@2ef
    .line 1849
    move-object/from16 v0, v26

    #@2f1
    move-wide/from16 v1, v28

    #@2f3
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2f6
    move-result-object v26

    #@2f7
    .line 1853
    const-string/jumbo v27, " from "

    #@2fa
    .line 1849
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fd
    move-result-object v26

    #@2fe
    move-object/from16 v0, v26

    #@300
    move-object/from16 v1, p1

    #@302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@305
    move-result-object v26

    #@306
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@309
    move-result-object v26

    #@30a
    move-object/from16 v0, p0

    #@30c
    move-object/from16 v1, v26

    #@30e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@311
    .line 1856
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@314
    move-result-wide v26

    #@315
    move-object/from16 v0, p0

    #@317
    move-wide/from16 v1, v26

    #@319
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    #@31c
    .line 1857
    const-string/jumbo v26, "GsmSST"

    #@31f
    const-string/jumbo v27, "NITZ: after Setting time of day"

    #@322
    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@325
    .line 1859
    .end local v14    # "millisSinceNitzReceived":J
    :cond_12
    const-string/jumbo v26, "gsm.nitz.time"

    #@328
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@32b
    move-result-wide v28

    #@32c
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@32f
    move-result-object v27

    #@330
    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@333
    .line 1860
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@336
    move-result-wide v26

    #@337
    move-object/from16 v0, p0

    #@339
    move-wide/from16 v1, v26

    #@33b
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V

    #@33e
    .line 1865
    const/16 v26, 0x1

    #@340
    move/from16 v0, v26

    #@342
    move-object/from16 v1, p0

    #@344
    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@346
    .line 1867
    :try_start_6
    move-object/from16 v0, p0

    #@348
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@34a
    move-object/from16 v26, v0

    #@34c
    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V

    #@34f
    .line 1708
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "date":I
    .end local v8    # "dst":I
    .end local v10    # "hour":I
    .end local v11    # "ignore":Ljava/lang/String;
    .end local v12    # "iso":Ljava/lang/String;
    .end local v13    # "minute":I
    .end local v16    # "month":I
    .end local v17    # "nitzSubs":[Ljava/lang/String;
    .end local v18    # "second":I
    .end local v19    # "sign":Z
    .end local v22    # "tzOffset":I
    .end local v24    # "year":I
    :goto_9
    return-void

    #@350
    .line 1866
    .restart local v6    # "c":Ljava/util/Calendar;
    .restart local v7    # "date":I
    .restart local v8    # "dst":I
    .restart local v10    # "hour":I
    .restart local v11    # "ignore":Ljava/lang/String;
    .restart local v12    # "iso":Ljava/lang/String;
    .restart local v13    # "minute":I
    .restart local v16    # "month":I
    .restart local v17    # "nitzSubs":[Ljava/lang/String;
    .restart local v18    # "second":I
    .restart local v19    # "sign":Z
    .restart local v22    # "tzOffset":I
    .restart local v24    # "year":I
    :catchall_0
    move-exception v26

    #@351
    .line 1867
    move-object/from16 v0, p0

    #@353
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@355
    move-object/from16 v27, v0

    #@357
    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->release()V

    #@35a
    .line 1866
    throw v26
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    #@35b
    .line 1869
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "date":I
    .end local v8    # "dst":I
    .end local v10    # "hour":I
    .end local v11    # "ignore":Ljava/lang/String;
    .end local v12    # "iso":Ljava/lang/String;
    .end local v13    # "minute":I
    .end local v16    # "month":I
    .end local v17    # "nitzSubs":[Ljava/lang/String;
    .end local v18    # "second":I
    .end local v19    # "sign":Z
    .end local v22    # "tzOffset":I
    .end local v24    # "year":I
    :catch_0
    move-exception v9

    #@35c
    .line 1870
    .local v9, "ex":Ljava/lang/RuntimeException;
    new-instance v26, Ljava/lang/StringBuilder;

    #@35e
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@361
    const-string/jumbo v27, "NITZ: Parsing NITZ time "

    #@364
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@367
    move-result-object v26

    #@368
    move-object/from16 v0, v26

    #@36a
    move-object/from16 v1, p1

    #@36c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36f
    move-result-object v26

    #@370
    const-string/jumbo v27, " ex="

    #@373
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@376
    move-result-object v26

    #@377
    move-object/from16 v0, v26

    #@379
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37c
    move-result-object v26

    #@37d
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@380
    move-result-object v26

    #@381
    move-object/from16 v0, p0

    #@383
    move-object/from16 v1, v26

    #@385
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    #@388
    goto :goto_9
.end method


# virtual methods
.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkCorrectThread()V

    #@3
    .line 255
    const-string/jumbo v0, "ServiceStateTracker dispose"

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@9
    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@b
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    #@e
    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    #@13
    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@15
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    #@18
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1a
    if-eqz v0, :cond_0

    #@1c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1e
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    #@21
    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@23
    if-eqz v0, :cond_1

    #@25
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@27
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@2a
    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2c
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    #@2f
    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@31
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    #@34
    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@36
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    #@38
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@3b
    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@3d
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    #@3f
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@42
    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@44
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@47
    move-result-object v0

    #@48
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@4a
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@4d
    .line 268
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    #@50
    .line 253
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2082
    const-string/jumbo v0, "GsmServiceStateTracker extends:"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 2083
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@9
    .line 2084
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, " mPhone="

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 2085
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v1, " mSS="

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b
    .line 2086
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v1, " mNewSS="

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 2087
    new-instance v0, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v1, " mCellLoc="

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d
    .line 2088
    new-instance v0, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v1, " mNewCellLoc="

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@86
    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v1, " mPreferredNetworkType="

    #@8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 2090
    new-instance v0, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v1, " mMaxDataCalls="

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v0

    #@ab
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v0

    #@b5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b8
    .line 2091
    new-instance v0, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v1, " mNewMaxDataCalls="

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    #@c6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v0

    #@ca
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v0

    #@ce
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d1
    .line 2092
    new-instance v0, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v1, " mReasonDataDenied="

    #@d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v0

    #@dd
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    #@df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v0

    #@e3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v0

    #@e7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ea
    .line 2093
    new-instance v0, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v1, " mNewReasonDataDenied="

    #@f2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v0

    #@f6
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    #@f8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v0

    #@fc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v0

    #@100
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@103
    .line 2094
    new-instance v0, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v1, " mGsmRoaming="

    #@10b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v0

    #@10f
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    #@111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@114
    move-result-object v0

    #@115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v0

    #@119
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11c
    .line 2095
    new-instance v0, Ljava/lang/StringBuilder;

    #@11e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@121
    const-string/jumbo v1, " mDataRoaming="

    #@124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v0

    #@128
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    #@12a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v0

    #@12e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v0

    #@132
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@135
    .line 2096
    new-instance v0, Ljava/lang/StringBuilder;

    #@137
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13a
    const-string/jumbo v1, " mEmergencyOnly="

    #@13d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v0

    #@141
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    #@143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@146
    move-result-object v0

    #@147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14a
    move-result-object v0

    #@14b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14e
    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    #@150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    const-string/jumbo v1, " mNeedFixZoneAfterNitz="

    #@156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v0

    #@15a
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@15c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v0

    #@160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@163
    move-result-object v0

    #@164
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@167
    .line 2098
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@16a
    .line 2099
    new-instance v0, Ljava/lang/StringBuilder;

    #@16c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16f
    const-string/jumbo v1, " mZoneOffset="

    #@172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v0

    #@176
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    #@178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v0

    #@17c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17f
    move-result-object v0

    #@180
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@183
    .line 2100
    new-instance v0, Ljava/lang/StringBuilder;

    #@185
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@188
    const-string/jumbo v1, " mZoneDst="

    #@18b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v0

    #@18f
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    #@191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@194
    move-result-object v0

    #@195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@198
    move-result-object v0

    #@199
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19c
    .line 2101
    new-instance v0, Ljava/lang/StringBuilder;

    #@19e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a1
    const-string/jumbo v1, " mZoneTime="

    #@1a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v0

    #@1a8
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    #@1aa
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v0

    #@1ae
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b1
    move-result-object v0

    #@1b2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b5
    .line 2102
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1ba
    const-string/jumbo v1, " mGotCountryCode="

    #@1bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v0

    #@1c1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    #@1c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v0

    #@1c7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ca
    move-result-object v0

    #@1cb
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ce
    .line 2103
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1d3
    const-string/jumbo v1, " mNitzUpdatedTime="

    #@1d6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object v0

    #@1da
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    #@1dc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v0

    #@1e0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e3
    move-result-object v0

    #@1e4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e7
    .line 2104
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1ec
    const-string/jumbo v1, " mSavedTimeZone="

    #@1ef
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f2
    move-result-object v0

    #@1f3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@1f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v0

    #@1f9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fc
    move-result-object v0

    #@1fd
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@200
    .line 2105
    new-instance v0, Ljava/lang/StringBuilder;

    #@202
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@205
    const-string/jumbo v1, " mSavedTime="

    #@208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v0

    #@20c
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    #@20e
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@211
    move-result-object v0

    #@212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@215
    move-result-object v0

    #@216
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@219
    .line 2106
    new-instance v0, Ljava/lang/StringBuilder;

    #@21b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21e
    const-string/jumbo v1, " mSavedAtTime="

    #@221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@224
    move-result-object v0

    #@225
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    #@227
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v0

    #@22b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22e
    move-result-object v0

    #@22f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@232
    .line 2107
    new-instance v0, Ljava/lang/StringBuilder;

    #@234
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@237
    const-string/jumbo v1, " mStartedGprsRegCheck="

    #@23a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v0

    #@23e
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    #@240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@243
    move-result-object v0

    #@244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@247
    move-result-object v0

    #@248
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24b
    .line 2108
    new-instance v0, Ljava/lang/StringBuilder;

    #@24d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@250
    const-string/jumbo v1, " mReportedGprsNoReg="

    #@253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@256
    move-result-object v0

    #@257
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    #@259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@25c
    move-result-object v0

    #@25d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@260
    move-result-object v0

    #@261
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@264
    .line 2109
    new-instance v0, Ljava/lang/StringBuilder;

    #@266
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@269
    const-string/jumbo v1, " mNotification="

    #@26c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26f
    move-result-object v0

    #@270
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    #@272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@275
    move-result-object v0

    #@276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@279
    move-result-object v0

    #@27a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@27d
    .line 2110
    new-instance v0, Ljava/lang/StringBuilder;

    #@27f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@282
    const-string/jumbo v1, " mWakeLock="

    #@285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@288
    move-result-object v0

    #@289
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@28b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28e
    move-result-object v0

    #@28f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@292
    move-result-object v0

    #@293
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@296
    .line 2111
    new-instance v0, Ljava/lang/StringBuilder;

    #@298
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@29b
    const-string/jumbo v1, " mCurSpn="

    #@29e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a1
    move-result-object v0

    #@2a2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    #@2a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a7
    move-result-object v0

    #@2a8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ab
    move-result-object v0

    #@2ac
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2af
    .line 2112
    new-instance v0, Ljava/lang/StringBuilder;

    #@2b1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b4
    const-string/jumbo v1, " mCurDataSpn="

    #@2b7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v0

    #@2bb
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    #@2bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c0
    move-result-object v0

    #@2c1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c4
    move-result-object v0

    #@2c5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c8
    .line 2113
    new-instance v0, Ljava/lang/StringBuilder;

    #@2ca
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2cd
    const-string/jumbo v1, " mCurShowSpn="

    #@2d0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d3
    move-result-object v0

    #@2d4
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    #@2d6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d9
    move-result-object v0

    #@2da
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2dd
    move-result-object v0

    #@2de
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e1
    .line 2114
    new-instance v0, Ljava/lang/StringBuilder;

    #@2e3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2e6
    const-string/jumbo v1, " mCurPlmn="

    #@2e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ec
    move-result-object v0

    #@2ed
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@2ef
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f2
    move-result-object v0

    #@2f3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f6
    move-result-object v0

    #@2f7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2fa
    .line 2115
    new-instance v0, Ljava/lang/StringBuilder;

    #@2fc
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2ff
    const-string/jumbo v1, " mCurShowPlmn="

    #@302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@305
    move-result-object v0

    #@306
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    #@308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@30b
    move-result-object v0

    #@30c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30f
    move-result-object v0

    #@310
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@313
    .line 2116
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@316
    .line 2081
    return-void
.end method

.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 273
    const-string/jumbo v0, "finalize"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@6
    .line 272
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 14

    #@0
    .prologue
    const v13, 0x7fffffff

    #@3
    const/4 v12, 0x0

    #@4
    .line 1640
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@6
    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    #@9
    move-result v10

    #@a
    if-ltz v10, :cond_0

    #@c
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@e
    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@11
    move-result v10

    #@12
    if-ltz v10, :cond_0

    #@14
    .line 1641
    new-instance v10, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v11, "getCellLocation(): X good mCellLoc="

    #@1c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v10

    #@20
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@22
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v10

    #@26
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v10

    #@2a
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@2d
    .line 1642
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@2f
    return-object v10

    #@30
    .line 1644
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    #@33
    move-result-object v9

    #@34
    .line 1645
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v9, :cond_6

    #@36
    .line 1658
    new-instance v6, Landroid/telephony/gsm/GsmCellLocation;

    #@38
    invoke-direct {v6}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    #@3b
    .line 1659
    .local v6, "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v8

    #@3f
    .local v8, "ci$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v10

    #@43
    if-eqz v10, :cond_5

    #@45
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v7

    #@49
    check-cast v7, Landroid/telephony/CellInfo;

    #@4b
    .line 1660
    .local v7, "ci":Landroid/telephony/CellInfo;
    instance-of v10, v7, Landroid/telephony/CellInfoGsm;

    #@4d
    if-eqz v10, :cond_2

    #@4f
    move-object v3, v7

    #@50
    .line 1661
    check-cast v3, Landroid/telephony/CellInfoGsm;

    #@52
    .line 1662
    .local v3, "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    #@55
    move-result-object v0

    #@56
    .line 1663
    .local v0, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    #@59
    move-result v10

    #@5a
    .line 1664
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    #@5d
    move-result v11

    #@5e
    .line 1663
    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    #@61
    .line 1665
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    #@64
    move-result v10

    #@65
    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    #@68
    .line 1666
    new-instance v10, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v11, "getCellLocation(): X ret GSM info="

    #@70
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v10

    #@74
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v10

    #@78
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v10

    #@7c
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@7f
    .line 1667
    return-object v6

    #@80
    .line 1668
    .end local v0    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v3    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    :cond_2
    instance-of v10, v7, Landroid/telephony/CellInfoWcdma;

    #@82
    if-eqz v10, :cond_3

    #@84
    move-object v5, v7

    #@85
    .line 1669
    check-cast v5, Landroid/telephony/CellInfoWcdma;

    #@87
    .line 1670
    .local v5, "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    #@8a
    move-result-object v2

    #@8b
    .line 1671
    .local v2, "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    #@8e
    move-result v10

    #@8f
    .line 1672
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    #@92
    move-result v11

    #@93
    .line 1671
    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    #@96
    .line 1673
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    #@99
    move-result v10

    #@9a
    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    #@9d
    .line 1674
    new-instance v10, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v11, "getCellLocation(): X ret WCDMA info="

    #@a5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v10

    #@a9
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v10

    #@ad
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v10

    #@b1
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@b4
    .line 1675
    return-object v6

    #@b5
    .line 1676
    .end local v2    # "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    .end local v5    # "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    :cond_3
    instance-of v10, v7, Landroid/telephony/CellInfoLte;

    #@b7
    if-eqz v10, :cond_1

    #@b9
    .line 1677
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    #@bc
    move-result v10

    #@bd
    if-ltz v10, :cond_4

    #@bf
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@c2
    move-result v10

    #@c3
    if-gez v10, :cond_1

    #@c5
    :cond_4
    move-object v4, v7

    #@c6
    .line 1679
    check-cast v4, Landroid/telephony/CellInfoLte;

    #@c8
    .line 1680
    .local v4, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    #@cb
    move-result-object v1

    #@cc
    .line 1681
    .local v1, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    #@cf
    move-result v10

    #@d0
    if-eq v10, v13, :cond_1

    #@d2
    .line 1682
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    #@d5
    move-result v10

    #@d6
    if-eq v10, v13, :cond_1

    #@d8
    .line 1683
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    #@db
    move-result v10

    #@dc
    .line 1684
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    #@df
    move-result v11

    #@e0
    .line 1683
    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    #@e3
    .line 1685
    invoke-virtual {v6, v12}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    #@e6
    .line 1687
    new-instance v10, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v11, "getCellLocation(): possible LTE cellLocOther="

    #@ee
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v10

    #@f2
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v10

    #@f6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v10

    #@fa
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@fd
    goto/16 :goto_0

    #@ff
    .line 1693
    .end local v1    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .end local v4    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    .end local v7    # "ci":Landroid/telephony/CellInfo;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    const-string/jumbo v11, "getCellLocation(): X ret best answer cellLocOther="

    #@107
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v10

    #@10b
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v10

    #@10f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@112
    move-result-object v10

    #@113
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@116
    .line 1695
    return-object v6

    #@117
    .line 1698
    .end local v6    # "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    .end local v8    # "ci$iterator":Ljava/util/Iterator;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v11, "getCellLocation(): X empty mCellLoc and CellInfo mCellLoc="

    #@11f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v10

    #@123
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@125
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v10

    #@129
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12c
    move-result-object v10

    #@12d
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@130
    .line 1700
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@132
    return-object v10
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    #@0
    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@2
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 288
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@4
    iget-boolean v14, v14, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    #@6
    if-nez v14, :cond_0

    #@8
    .line 289
    const-string/jumbo v14, "GsmSST"

    #@b
    new-instance v15, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v16, "Received message "

    #@13
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v15

    #@17
    move-object/from16 v0, p1

    #@19
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v15

    #@1d
    .line 290
    const-string/jumbo v16, "["

    #@20
    .line 289
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v15

    #@24
    .line 290
    move-object/from16 v0, p1

    #@26
    iget v0, v0, Landroid/os/Message;->what:I

    #@28
    move/from16 v16, v0

    #@2a
    .line 289
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v15

    #@2e
    .line 290
    const-string/jumbo v16, "] while being destroyed. Ignoring."

    #@31
    .line 289
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v15

    #@35
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v15

    #@39
    invoke-static {v14, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 291
    return-void

    #@3d
    .line 293
    :cond_0
    move-object/from16 v0, p1

    #@3f
    iget v14, v0, Landroid/os/Message;->what:I

    #@41
    sparse-switch v14, :sswitch_data_0

    #@44
    .line 497
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    #@47
    .line 282
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    #@48
    .line 302
    :sswitch_1
    move-object/from16 v0, p0

    #@4a
    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    #@4c
    iget-object v14, v14, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4e
    const/4 v15, -0x1

    #@4f
    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@52
    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    #@55
    .line 305
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    #@58
    goto :goto_0

    #@59
    .line 311
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    #@5c
    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    #@5f
    goto :goto_0

    #@60
    .line 316
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    #@63
    goto :goto_0

    #@64
    .line 323
    :sswitch_4
    move-object/from16 v0, p0

    #@66
    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@68
    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@6b
    move-result-object v14

    #@6c
    invoke-virtual {v14}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@6f
    move-result v14

    #@70
    if-nez v14, :cond_2

    #@72
    .line 325
    return-void

    #@73
    .line 327
    :cond_2
    move-object/from16 v0, p1

    #@75
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@77
    check-cast v2, Landroid/os/AsyncResult;

    #@79
    .line 328
    .local v2, "ar":Landroid/os/AsyncResult;
    const/4 v14, 0x1

    #@7a
    move-object/from16 v0, p0

    #@7c
    invoke-virtual {v0, v2, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    #@7f
    .line 329
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    #@82
    goto :goto_0

    #@83
    .line 334
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    #@85
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@87
    check-cast v2, Landroid/os/AsyncResult;

    #@89
    .line 336
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@8b
    if-nez v14, :cond_5

    #@8d
    .line 337
    iget-object v12, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@8f
    check-cast v12, [Ljava/lang/String;

    #@91
    .line 338
    .local v12, "states":[Ljava/lang/String;
    const/4 v6, -0x1

    #@92
    .line 339
    .local v6, "lac":I
    const/4 v3, -0x1

    #@93
    .line 340
    .local v3, "cid":I
    array-length v14, v12

    #@94
    const/4 v15, 0x3

    #@95
    if-lt v14, v15, :cond_4

    #@97
    .line 342
    const/4 v14, 0x1

    #@98
    :try_start_0
    aget-object v14, v12, v14

    #@9a
    if-eqz v14, :cond_3

    #@9c
    const/4 v14, 0x1

    #@9d
    aget-object v14, v12, v14

    #@9f
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@a2
    move-result v14

    #@a3
    if-lez v14, :cond_3

    #@a5
    .line 343
    const/4 v14, 0x1

    #@a6
    aget-object v14, v12, v14

    #@a8
    const/16 v15, 0x10

    #@aa
    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@ad
    move-result v6

    #@ae
    .line 345
    :cond_3
    const/4 v14, 0x2

    #@af
    aget-object v14, v12, v14

    #@b1
    if-eqz v14, :cond_4

    #@b3
    const/4 v14, 0x2

    #@b4
    aget-object v14, v12, v14

    #@b6
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@b9
    move-result v14

    #@ba
    if-lez v14, :cond_4

    #@bc
    .line 346
    const/4 v14, 0x2

    #@bd
    aget-object v14, v12, v14

    #@bf
    const/16 v15, 0x10

    #@c1
    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@c4
    move-result v3

    #@c5
    .line 352
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    #@c7
    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@c9
    invoke-virtual {v14, v6, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    #@cc
    .line 353
    move-object/from16 v0, p0

    #@ce
    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@d0
    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    #@d3
    .line 358
    .end local v3    # "cid":I
    .end local v6    # "lac":I
    .end local v12    # "states":[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableSingleLocationUpdate()V

    #@d6
    goto/16 :goto_0

    #@d8
    .line 348
    .restart local v3    # "cid":I
    .restart local v6    # "lac":I
    .restart local v12    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v5

    #@d9
    .line 349
    .local v5, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "GsmSST"

    #@dc
    new-instance v15, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string/jumbo v16, "error parsing location: "

    #@e4
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v15

    #@e8
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v15

    #@ec
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v15

    #@f0
    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f3
    goto :goto_1

    #@f4
    .line 365
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "cid":I
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    .end local v6    # "lac":I
    .end local v12    # "states":[Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p1

    #@f6
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f8
    check-cast v2, Landroid/os/AsyncResult;

    #@fa
    .line 367
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    #@fc
    iget v14, v0, Landroid/os/Message;->what:I

    #@fe
    move-object/from16 v0, p0

    #@100
    invoke-virtual {v0, v14, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    #@103
    goto/16 :goto_0

    #@105
    .line 373
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p0

    #@107
    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@109
    const/4 v15, 0x3

    #@10a
    move-object/from16 v0, p0

    #@10c
    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@10f
    move-result-object v15

    #@110
    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    #@113
    goto/16 :goto_0

    #@115
    .line 377
    :sswitch_8
    move-object/from16 v0, p1

    #@117
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@119
    check-cast v2, Landroid/os/AsyncResult;

    #@11b
    .line 379
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@11d
    check-cast v14, [Ljava/lang/Object;

    #@11f
    const/4 v15, 0x0

    #@120
    aget-object v9, v14, v15

    #@122
    check-cast v9, Ljava/lang/String;

    #@124
    .line 380
    .local v9, "nitzString":Ljava/lang/String;
    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@126
    check-cast v14, [Ljava/lang/Object;

    #@128
    const/4 v15, 0x1

    #@129
    aget-object v14, v14, v15

    #@12b
    check-cast v14, Ljava/lang/Long;

    #@12d
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    #@130
    move-result-wide v10

    #@131
    .line 382
    .local v10, "nitzReceiveTime":J
    move-object/from16 v0, p0

    #@133
    invoke-direct {v0, v9, v10, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    #@136
    goto/16 :goto_0

    #@138
    .line 389
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "nitzString":Ljava/lang/String;
    .end local v10    # "nitzReceiveTime":J
    :sswitch_9
    move-object/from16 v0, p1

    #@13a
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@13c
    check-cast v2, Landroid/os/AsyncResult;

    #@13e
    .line 393
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    const/4 v14, 0x1

    #@13f
    move-object/from16 v0, p0

    #@141
    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    #@143
    .line 395
    const/4 v14, 0x1

    #@144
    move-object/from16 v0, p0

    #@146
    invoke-virtual {v0, v2, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    #@149
    goto/16 :goto_0

    #@14b
    .line 399
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    new-instance v14, Ljava/lang/StringBuilder;

    #@14d
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@150
    const-string/jumbo v15, "EVENT_SIM_RECORDS_LOADED: what="

    #@153
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v14

    #@157
    move-object/from16 v0, p1

    #@159
    iget v15, v0, Landroid/os/Message;->what:I

    #@15b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v14

    #@15f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@162
    move-result-object v14

    #@163
    move-object/from16 v0, p0

    #@165
    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@168
    .line 401
    move-object/from16 v0, p0

    #@16a
    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@16c
    const/4 v15, 0x3

    #@16d
    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyOtaspChanged(I)V

    #@170
    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updatePhoneObject()V

    #@173
    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    #@176
    goto/16 :goto_0

    #@178
    .line 408
    :sswitch_b
    move-object/from16 v0, p1

    #@17a
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17c
    check-cast v2, Landroid/os/AsyncResult;

    #@17e
    .line 410
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@180
    if-nez v14, :cond_1

    #@182
    .line 411
    move-object/from16 v0, p0

    #@184
    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@186
    const/16 v15, 0xf

    #@188
    const/16 v16, 0x0

    #@18a
    move-object/from16 v0, p0

    #@18c
    move-object/from16 v1, v16

    #@18e
    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@191
    move-result-object v15

    #@192
    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    #@195
    goto/16 :goto_0

    #@197
    .line 416
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    move-object/from16 v0, p1

    #@199
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19b
    check-cast v2, Landroid/os/AsyncResult;

    #@19d
    .line 418
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@19f
    const/16 v15, 0x15

    #@1a1
    move-object/from16 v0, p0

    #@1a3
    invoke-virtual {v0, v15, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1a6
    move-result-object v8

    #@1a7
    .line 419
    .local v8, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    #@1a9
    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1ab
    move-object/from16 v0, p0

    #@1ad
    iget v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    #@1af
    invoke-interface {v14, v15, v8}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    #@1b2
    goto/16 :goto_0

    #@1b4
    .line 423
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "message":Landroid/os/Message;
    :sswitch_d
    move-object/from16 v0, p1

    #@1b6
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b8
    check-cast v2, Landroid/os/AsyncResult;

    #@1ba
    .line 424
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@1bc
    if-eqz v14, :cond_1

    #@1be
    .line 425
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@1c0
    check-cast v14, Landroid/os/Message;

    #@1c2
    invoke-static {v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1c5
    move-result-object v14

    #@1c6
    .line 426
    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1c8
    .line 425
    iput-object v15, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1ca
    .line 427
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@1cc
    check-cast v14, Landroid/os/Message;

    #@1ce
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    #@1d1
    goto/16 :goto_0

    #@1d3
    .line 432
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_e
    move-object/from16 v0, p1

    #@1d5
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d7
    check-cast v2, Landroid/os/AsyncResult;

    #@1d9
    .line 434
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1db
    if-nez v14, :cond_6

    #@1dd
    .line 435
    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1df
    check-cast v14, [I

    #@1e1
    const/4 v15, 0x0

    #@1e2
    aget v14, v14, v15

    #@1e4
    move-object/from16 v0, p0

    #@1e6
    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    #@1e8
    .line 440
    :goto_2
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@1ea
    const/16 v15, 0x14

    #@1ec
    move-object/from16 v0, p0

    #@1ee
    invoke-virtual {v0, v15, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1f1
    move-result-object v8

    #@1f2
    .line 441
    .restart local v8    # "message":Landroid/os/Message;
    const/4 v13, 0x7

    #@1f3
    .line 443
    .local v13, "toggledNetworkType":I
    move-object/from16 v0, p0

    #@1f5
    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1f7
    invoke-interface {v14, v13, v8}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    #@1fa
    goto/16 :goto_0

    #@1fc
    .line 437
    .end local v8    # "message":Landroid/os/Message;
    .end local v13    # "toggledNetworkType":I
    :cond_6
    const/4 v14, 0x7

    #@1fd
    move-object/from16 v0, p0

    #@1ff
    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    #@201
    goto :goto_2

    #@202
    .line 447
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    move-object/from16 v0, p0

    #@204
    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@206
    if-eqz v14, :cond_7

    #@208
    move-object/from16 v0, p0

    #@20a
    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@20c
    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@20f
    move-result v14

    #@210
    move-object/from16 v0, p0

    #@212
    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@214
    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@217
    move-result v15

    #@218
    move-object/from16 v0, p0

    #@21a
    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    #@21d
    move-result v14

    #@21e
    if-eqz v14, :cond_8

    #@220
    .line 457
    :cond_7
    :goto_3
    const/4 v14, 0x0

    #@221
    move-object/from16 v0, p0

    #@223
    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    #@225
    goto/16 :goto_0

    #@227
    .line 452
    :cond_8
    move-object/from16 v0, p0

    #@229
    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@22b
    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    #@22e
    move-result-object v7

    #@22f
    check-cast v7, Landroid/telephony/gsm/GsmCellLocation;

    #@231
    .line 453
    .local v7, "loc":Landroid/telephony/gsm/GsmCellLocation;
    const/4 v14, 0x2

    #@232
    new-array v15, v14, [Ljava/lang/Object;

    #@234
    .line 454
    move-object/from16 v0, p0

    #@236
    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@238
    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@23b
    move-result-object v14

    #@23c
    const/16 v16, 0x0

    #@23e
    aput-object v14, v15, v16

    #@240
    if-eqz v7, :cond_9

    #@242
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@245
    move-result v14

    #@246
    :goto_4
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@249
    move-result-object v14

    #@24a
    const/16 v16, 0x1

    #@24c
    aput-object v14, v15, v16

    #@24e
    .line 453
    const v14, 0xc3bb

    #@251
    invoke-static {v14, v15}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@254
    .line 455
    const/4 v14, 0x1

    #@255
    move-object/from16 v0, p0

    #@257
    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    #@259
    goto :goto_3

    #@25a
    .line 454
    :cond_9
    const/4 v14, -0x1

    #@25b
    goto :goto_4

    #@25c
    .line 464
    .end local v7    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :sswitch_10
    const-string/jumbo v14, "EVENT_RESTRICTED_STATE_CHANGED"

    #@25f
    move-object/from16 v0, p0

    #@261
    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@264
    .line 466
    move-object/from16 v0, p1

    #@266
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@268
    check-cast v2, Landroid/os/AsyncResult;

    #@26a
    .line 468
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    #@26c
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    #@26f
    goto/16 :goto_0

    #@271
    .line 472
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_11
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@274
    move-result v4

    #@275
    .line 473
    .local v4, "dds":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@278
    move-result-object v14

    #@279
    move-object/from16 v0, p0

    #@27b
    invoke-virtual {v14, v4, v0}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    #@27e
    .line 474
    monitor-enter p0

    #@27f
    .line 475
    :try_start_1
    move-object/from16 v0, p0

    #@281
    iget-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@283
    if-eqz v14, :cond_a

    #@285
    .line 476
    const-string/jumbo v14, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    #@288
    move-object/from16 v0, p0

    #@28a
    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@28d
    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    #@290
    .line 478
    const/4 v14, 0x0

    #@291
    move-object/from16 v0, p0

    #@293
    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@295
    :goto_5
    monitor-exit p0

    #@296
    goto/16 :goto_0

    #@298
    .line 480
    :cond_a
    :try_start_2
    const-string/jumbo v14, "EVENT_ALL_DATA_DISCONNECTED is stale"

    #@29b
    move-object/from16 v0, p0

    #@29d
    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2a0
    goto :goto_5

    #@2a1
    .line 474
    :catchall_0
    move-exception v14

    #@2a2
    monitor-exit p0

    #@2a3
    throw v14

    #@2a4
    .line 486
    .end local v4    # "dds":I
    :sswitch_12
    const-string/jumbo v14, "EVENT_CHANGE_IMS_STATE:"

    #@2a7
    move-object/from16 v0, p0

    #@2a9
    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@2ac
    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    #@2af
    goto/16 :goto_0

    #@2b1
    .line 492
    :sswitch_13
    const-string/jumbo v14, "EVENT_IMS_CAPABILITY_CHANGED"

    #@2b4
    move-object/from16 v0, p0

    #@2b6
    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@2b9
    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    #@2bc
    goto/16 :goto_0

    #@2be
    .line 293
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_6
        0x6 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_0
        0xe -> :sswitch_6
        0xf -> :sswitch_5
        0x10 -> :sswitch_a
        0x11 -> :sswitch_1
        0x12 -> :sswitch_b
        0x13 -> :sswitch_e
        0x14 -> :sswitch_c
        0x15 -> :sswitch_d
        0x16 -> :sswitch_f
        0x17 -> :sswitch_10
        0x2d -> :sswitch_12
        0x30 -> :sswitch_13
        0x3e9 -> :sswitch_11
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 21
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 692
    move-object/from16 v0, p2

    #@2
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@4
    move-object/from16 v17, v0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    #@a
    move-object/from16 v18, v0

    #@c
    move-object/from16 v0, v17

    #@e
    move-object/from16 v1, v18

    #@10
    if-eq v0, v1, :cond_0

    #@12
    return-void

    #@13
    .line 694
    :cond_0
    move-object/from16 v0, p2

    #@15
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@17
    move-object/from16 v17, v0

    #@19
    if-eqz v17, :cond_5

    #@1b
    .line 695
    const/4 v5, 0x0

    #@1c
    .line 697
    .local v5, "err":Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    #@1e
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@20
    move-object/from16 v17, v0

    #@22
    move-object/from16 v0, v17

    #@24
    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    #@26
    move/from16 v17, v0

    #@28
    if-eqz v17, :cond_1

    #@2a
    .line 698
    move-object/from16 v0, p2

    #@2c
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2e
    move-object/from16 v17, v0

    #@30
    check-cast v17, Lcom/android/internal/telephony/CommandException;

    #@32
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@35
    move-result-object v5

    #@36
    .line 701
    .end local v5    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    sget-object v17, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@38
    move-object/from16 v0, v17

    #@3a
    if-ne v5, v0, :cond_2

    #@3c
    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    #@3f
    .line 704
    return-void

    #@40
    .line 707
    :cond_2
    sget-object v17, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    #@42
    move-object/from16 v0, v17

    #@44
    if-eq v5, v0, :cond_3

    #@46
    .line 708
    new-instance v17, Ljava/lang/StringBuilder;

    #@48
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v18, "RIL implementation has returned an error where it must succeed"

    #@4e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v17

    #@52
    .line 709
    move-object/from16 v0, p2

    #@54
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@56
    move-object/from16 v18, v0

    #@58
    .line 708
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v17

    #@5c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v17

    #@60
    move-object/from16 v0, p0

    #@62
    move-object/from16 v1, v17

    #@64
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    #@67
    .line 844
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    #@6b
    move-object/from16 v17, v0

    #@6d
    const/16 v18, 0x0

    #@6f
    aget v19, v17, v18

    #@71
    add-int/lit8 v19, v19, -0x1

    #@73
    aput v19, v17, v18

    #@75
    .line 846
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    #@79
    move-object/from16 v17, v0

    #@7b
    const/16 v18, 0x0

    #@7d
    aget v17, v17, v18

    #@7f
    if-nez v17, :cond_4

    #@81
    .line 847
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateRoamingState()V

    #@84
    .line 848
    move-object/from16 v0, p0

    #@86
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@88
    move-object/from16 v17, v0

    #@8a
    move-object/from16 v0, p0

    #@8c
    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    #@8e
    move/from16 v18, v0

    #@90
    invoke-virtual/range {v17 .. v18}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    #@93
    .line 849
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    #@96
    .line 687
    :cond_4
    return-void

    #@97
    .line 712
    :cond_5
    sparse-switch p1, :sswitch_data_0

    #@9a
    goto :goto_0

    #@9b
    .line 714
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p2

    #@9d
    iget-object v15, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@9f
    check-cast v15, [Ljava/lang/String;

    #@a1
    .line 715
    .local v15, "states":[Ljava/lang/String;
    const/4 v10, -0x1

    #@a2
    .line 716
    .local v10, "lac":I
    const/4 v3, -0x1

    #@a3
    .line 717
    .local v3, "cid":I
    const/16 v16, 0x0

    #@a5
    .line 718
    .local v16, "type":I
    const/4 v14, 0x4

    #@a6
    .line 719
    .local v14, "regState":I
    const/4 v13, -0x1

    #@a7
    .line 720
    .local v13, "reasonRegStateDenied":I
    const/4 v12, -0x1

    #@a8
    .line 721
    .local v12, "psc":I
    array-length v0, v15

    #@a9
    move/from16 v17, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@ab
    if-lez v17, :cond_9

    #@ad
    .line 723
    const/16 v17, 0x0

    #@af
    :try_start_1
    aget-object v17, v15, v17

    #@b1
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b4
    move-result v14

    #@b5
    .line 724
    array-length v0, v15

    #@b6
    move/from16 v17, v0

    #@b8
    const/16 v18, 0x3

    #@ba
    move/from16 v0, v17

    #@bc
    move/from16 v1, v18

    #@be
    if-lt v0, v1, :cond_8

    #@c0
    .line 725
    const/16 v17, 0x1

    #@c2
    aget-object v17, v15, v17

    #@c4
    if-eqz v17, :cond_6

    #@c6
    const/16 v17, 0x1

    #@c8
    aget-object v17, v15, v17

    #@ca
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    #@cd
    move-result v17

    #@ce
    if-lez v17, :cond_6

    #@d0
    .line 726
    const/16 v17, 0x1

    #@d2
    aget-object v17, v15, v17

    #@d4
    const/16 v18, 0x10

    #@d6
    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@d9
    move-result v10

    #@da
    .line 728
    :cond_6
    const/16 v17, 0x2

    #@dc
    aget-object v17, v15, v17

    #@de
    if-eqz v17, :cond_7

    #@e0
    const/16 v17, 0x2

    #@e2
    aget-object v17, v15, v17

    #@e4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    #@e7
    move-result v17

    #@e8
    if-lez v17, :cond_7

    #@ea
    .line 729
    const/16 v17, 0x2

    #@ec
    aget-object v17, v15, v17

    #@ee
    const/16 v18, 0x10

    #@f0
    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@f3
    move-result v3

    #@f4
    .line 733
    :cond_7
    array-length v0, v15

    #@f5
    move/from16 v17, v0

    #@f7
    const/16 v18, 0x4

    #@f9
    move/from16 v0, v17

    #@fb
    move/from16 v1, v18

    #@fd
    if-lt v0, v1, :cond_8

    #@ff
    const/16 v17, 0x3

    #@101
    aget-object v17, v15, v17

    #@103
    if-eqz v17, :cond_8

    #@105
    .line 734
    const/16 v17, 0x3

    #@107
    aget-object v17, v15, v17

    #@109
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@10c
    move-result v16

    #@10d
    .line 737
    :cond_8
    array-length v0, v15

    #@10e
    move/from16 v17, v0

    #@110
    const/16 v18, 0xe

    #@112
    move/from16 v0, v17

    #@114
    move/from16 v1, v18

    #@116
    if-le v0, v1, :cond_9

    #@118
    .line 738
    const/16 v17, 0xe

    #@11a
    aget-object v17, v15, v17

    #@11c
    if-eqz v17, :cond_9

    #@11e
    const/16 v17, 0xe

    #@120
    aget-object v17, v15, v17

    #@122
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    #@125
    move-result v17

    #@126
    if-lez v17, :cond_9

    #@128
    .line 739
    const/16 v17, 0xe

    #@12a
    aget-object v17, v15, v17

    #@12c
    const/16 v18, 0x10

    #@12e
    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@131
    move-result v12

    #@132
    .line 747
    :cond_9
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    #@134
    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    #@137
    move-result v17

    #@138
    move/from16 v0, v17

    #@13a
    move-object/from16 v1, p0

    #@13c
    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    #@13e
    .line 748
    move-object/from16 v0, p0

    #@140
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@142
    move-object/from16 v17, v0

    #@144
    move-object/from16 v0, p0

    #@146
    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    #@149
    move-result v18

    #@14a
    invoke-virtual/range {v17 .. v18}, Landroid/telephony/ServiceState;->setState(I)V

    #@14d
    .line 749
    move-object/from16 v0, p0

    #@14f
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@151
    move-object/from16 v17, v0

    #@153
    move-object/from16 v0, v17

    #@155
    move/from16 v1, v16

    #@157
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    #@15a
    .line 751
    move-object/from16 v0, p0

    #@15c
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    #@15e
    move-object/from16 v17, v0

    #@160
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@163
    move-result-object v17

    #@164
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@167
    move-result-object v17

    #@168
    .line 752
    const v18, 0x1120053

    #@16b
    .line 751
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16e
    move-result v9

    #@16f
    .line 753
    .local v9, "isVoiceCapable":Z
    const/16 v17, 0xd

    #@171
    move/from16 v0, v17

    #@173
    if-eq v14, v0, :cond_a

    #@175
    .line 754
    const/16 v17, 0xa

    #@177
    move/from16 v0, v17

    #@179
    if-ne v14, v0, :cond_b

    #@17b
    .line 753
    :cond_a
    if-eqz v9, :cond_c

    #@17d
    .line 758
    const/16 v17, 0x1

    #@17f
    move/from16 v0, v17

    #@181
    move-object/from16 v1, p0

    #@183
    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    #@185
    .line 764
    :goto_2
    move-object/from16 v0, p0

    #@187
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@189
    move-object/from16 v17, v0

    #@18b
    move-object/from16 v0, v17

    #@18d
    invoke-virtual {v0, v10, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    #@190
    .line 765
    move-object/from16 v0, p0

    #@192
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@194
    move-object/from16 v17, v0

    #@196
    move-object/from16 v0, v17

    #@198
    invoke-virtual {v0, v12}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@19b
    goto/16 :goto_0

    #@19d
    .line 840
    .end local v3    # "cid":I
    .end local v9    # "isVoiceCapable":Z
    .end local v10    # "lac":I
    .end local v12    # "psc":I
    .end local v13    # "reasonRegStateDenied":I
    .end local v14    # "regState":I
    .end local v15    # "states":[Ljava/lang/String;
    .end local v16    # "type":I
    :catch_0
    move-exception v7

    #@19e
    .line 841
    .local v7, "ex":Ljava/lang/RuntimeException;
    new-instance v17, Ljava/lang/StringBuilder;

    #@1a0
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1a3
    const-string/jumbo v18, "Exception while polling service state. Probably malformed RIL response."

    #@1a6
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9
    move-result-object v17

    #@1aa
    move-object/from16 v0, v17

    #@1ac
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v17

    #@1b0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b3
    move-result-object v17

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    move-object/from16 v1, v17

    #@1b8
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    #@1bb
    goto/16 :goto_0

    #@1bd
    .line 742
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "cid":I
    .restart local v10    # "lac":I
    .restart local v12    # "psc":I
    .restart local v13    # "reasonRegStateDenied":I
    .restart local v14    # "regState":I
    .restart local v15    # "states":[Ljava/lang/String;
    .restart local v16    # "type":I
    :catch_1
    move-exception v6

    #@1be
    .line 743
    .local v6, "ex":Ljava/lang/NumberFormatException;
    :try_start_3
    new-instance v17, Ljava/lang/StringBuilder;

    #@1c0
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1c3
    const-string/jumbo v18, "error parsing RegistrationState: "

    #@1c6
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v17

    #@1ca
    move-object/from16 v0, v17

    #@1cc
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v17

    #@1d0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d3
    move-result-object v17

    #@1d4
    move-object/from16 v0, p0

    #@1d6
    move-object/from16 v1, v17

    #@1d8
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    #@1db
    goto/16 :goto_1

    #@1dd
    .line 755
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    .restart local v9    # "isVoiceCapable":Z
    :cond_b
    const/16 v17, 0xc

    #@1df
    move/from16 v0, v17

    #@1e1
    if-eq v14, v0, :cond_a

    #@1e3
    .line 756
    const/16 v17, 0xe

    #@1e5
    move/from16 v0, v17

    #@1e7
    if-eq v14, v0, :cond_a

    #@1e9
    .line 760
    :cond_c
    const/16 v17, 0x0

    #@1eb
    move/from16 v0, v17

    #@1ed
    move-object/from16 v1, p0

    #@1ef
    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    #@1f1
    goto :goto_2

    #@1f2
    .line 770
    .end local v3    # "cid":I
    .end local v9    # "isVoiceCapable":Z
    .end local v10    # "lac":I
    .end local v12    # "psc":I
    .end local v13    # "reasonRegStateDenied":I
    .end local v14    # "regState":I
    .end local v15    # "states":[Ljava/lang/String;
    .end local v16    # "type":I
    :sswitch_1
    move-object/from16 v0, p2

    #@1f4
    iget-object v15, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1f6
    check-cast v15, [Ljava/lang/String;

    #@1f8
    .line 772
    .restart local v15    # "states":[Ljava/lang/String;
    const/16 v16, 0x0

    #@1fa
    .line 773
    .restart local v16    # "type":I
    const/4 v14, 0x4

    #@1fb
    .line 774
    .restart local v14    # "regState":I
    const/16 v17, -0x1

    #@1fd
    move/from16 v0, v17

    #@1ff
    move-object/from16 v1, p0

    #@201
    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    #@203
    .line 775
    const/16 v17, 0x1

    #@205
    move/from16 v0, v17

    #@207
    move-object/from16 v1, p0

    #@209
    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    #@20b
    .line 776
    array-length v0, v15

    #@20c
    move/from16 v17, v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    #@20e
    if-lez v17, :cond_f

    #@210
    .line 778
    const/16 v17, 0x0

    #@212
    :try_start_4
    aget-object v17, v15, v17

    #@214
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@217
    move-result v14

    #@218
    .line 781
    array-length v0, v15

    #@219
    move/from16 v17, v0

    #@21b
    const/16 v18, 0x4

    #@21d
    move/from16 v0, v17

    #@21f
    move/from16 v1, v18

    #@221
    if-lt v0, v1, :cond_d

    #@223
    const/16 v17, 0x3

    #@225
    aget-object v17, v15, v17

    #@227
    if-eqz v17, :cond_d

    #@229
    .line 782
    const/16 v17, 0x3

    #@22b
    aget-object v17, v15, v17

    #@22d
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@230
    move-result v16

    #@231
    .line 784
    :cond_d
    array-length v0, v15

    #@232
    move/from16 v17, v0

    #@234
    const/16 v18, 0x5

    #@236
    move/from16 v0, v17

    #@238
    move/from16 v1, v18

    #@23a
    if-lt v0, v1, :cond_e

    #@23c
    .line 785
    const/16 v17, 0x3

    #@23e
    move/from16 v0, v17

    #@240
    if-ne v14, v0, :cond_e

    #@242
    .line 786
    const/16 v17, 0x4

    #@244
    aget-object v17, v15, v17

    #@246
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@249
    move-result v17

    #@24a
    move/from16 v0, v17

    #@24c
    move-object/from16 v1, p0

    #@24e
    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    #@250
    .line 788
    :cond_e
    array-length v0, v15

    #@251
    move/from16 v17, v0

    #@253
    const/16 v18, 0x6

    #@255
    move/from16 v0, v17

    #@257
    move/from16 v1, v18

    #@259
    if-lt v0, v1, :cond_f

    #@25b
    .line 789
    const/16 v17, 0x5

    #@25d
    aget-object v17, v15, v17

    #@25f
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@262
    move-result v17

    #@263
    move/from16 v0, v17

    #@265
    move-object/from16 v1, p0

    #@267
    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    #@269
    .line 795
    :cond_f
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    #@26b
    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    #@26e
    move-result v4

    #@26f
    .line 796
    .local v4, "dataRegState":I
    move-object/from16 v0, p0

    #@271
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@273
    move-object/from16 v17, v0

    #@275
    move-object/from16 v0, v17

    #@277
    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    #@27a
    .line 797
    move-object/from16 v0, p0

    #@27c
    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    #@27f
    move-result v17

    #@280
    move/from16 v0, v17

    #@282
    move-object/from16 v1, p0

    #@284
    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    #@286
    .line 798
    move-object/from16 v0, p0

    #@288
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@28a
    move-object/from16 v17, v0

    #@28c
    move-object/from16 v0, v17

    #@28e
    move/from16 v1, v16

    #@290
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    #@293
    .line 800
    new-instance v17, Ljava/lang/StringBuilder;

    #@295
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@298
    const-string/jumbo v18, "handlPollStateResultMessage: GsmSST setDataRegState="

    #@29b
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29e
    move-result-object v17

    #@29f
    move-object/from16 v0, v17

    #@2a1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a4
    move-result-object v17

    #@2a5
    .line 801
    const-string/jumbo v18, " regState="

    #@2a8
    .line 800
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ab
    move-result-object v17

    #@2ac
    move-object/from16 v0, v17

    #@2ae
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b1
    move-result-object v17

    #@2b2
    .line 802
    const-string/jumbo v18, " dataRadioTechnology="

    #@2b5
    .line 800
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b8
    move-result-object v17

    #@2b9
    move-object/from16 v0, v17

    #@2bb
    move/from16 v1, v16

    #@2bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c0
    move-result-object v17

    #@2c1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c4
    move-result-object v17

    #@2c5
    move-object/from16 v0, p0

    #@2c7
    move-object/from16 v1, v17

    #@2c9
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@2cc
    goto/16 :goto_0

    #@2ce
    .line 791
    .end local v4    # "dataRegState":I
    :catch_2
    move-exception v6

    #@2cf
    .line 792
    .restart local v6    # "ex":Ljava/lang/NumberFormatException;
    new-instance v17, Ljava/lang/StringBuilder;

    #@2d1
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@2d4
    const-string/jumbo v18, "error parsing GprsRegistrationState: "

    #@2d7
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2da
    move-result-object v17

    #@2db
    move-object/from16 v0, v17

    #@2dd
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e0
    move-result-object v17

    #@2e1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e4
    move-result-object v17

    #@2e5
    move-object/from16 v0, p0

    #@2e7
    move-object/from16 v1, v17

    #@2e9
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    #@2ec
    goto/16 :goto_3

    #@2ee
    .line 808
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    .end local v14    # "regState":I
    .end local v15    # "states":[Ljava/lang/String;
    .end local v16    # "type":I
    :sswitch_2
    move-object/from16 v0, p2

    #@2f0
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2f2
    check-cast v11, [Ljava/lang/String;

    #@2f4
    .line 810
    .local v11, "opNames":[Ljava/lang/String;
    if-eqz v11, :cond_3

    #@2f6
    array-length v0, v11

    #@2f7
    move/from16 v17, v0

    #@2f9
    const/16 v18, 0x3

    #@2fb
    move/from16 v0, v17

    #@2fd
    move/from16 v1, v18

    #@2ff
    if-lt v0, v1, :cond_3

    #@301
    .line 812
    move-object/from16 v0, p0

    #@303
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@305
    move-object/from16 v17, v0

    #@307
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    #@30a
    move-result v18

    #@30b
    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@30e
    move-result-object v17

    #@30f
    if-eqz v17, :cond_10

    #@311
    .line 813
    move-object/from16 v0, p0

    #@313
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@315
    move-object/from16 v17, v0

    #@317
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    #@31a
    move-result v18

    #@31b
    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@31e
    move-result-object v17

    #@31f
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    #@322
    move-result-object v2

    #@323
    .line 814
    :goto_4
    if-eqz v2, :cond_11

    #@325
    .line 815
    new-instance v17, Ljava/lang/StringBuilder;

    #@327
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@32a
    const-string/jumbo v18, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    #@32d
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@330
    move-result-object v17

    #@331
    move-object/from16 v0, v17

    #@333
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@336
    move-result-object v17

    #@337
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33a
    move-result-object v17

    #@33b
    move-object/from16 v0, p0

    #@33d
    move-object/from16 v1, v17

    #@33f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@342
    .line 816
    move-object/from16 v0, p0

    #@344
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@346
    move-object/from16 v17, v0

    #@348
    const/16 v18, 0x2

    #@34a
    aget-object v18, v11, v18

    #@34c
    move-object/from16 v0, v17

    #@34e
    move-object/from16 v1, v18

    #@350
    invoke-virtual {v0, v2, v2, v1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@353
    goto/16 :goto_0

    #@355
    .line 813
    :cond_10
    const/4 v2, 0x0

    #@356
    .local v2, "brandOverride":Ljava/lang/String;
    goto :goto_4

    #@357
    .line 818
    .end local v2    # "brandOverride":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    #@359
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@35b
    move-object/from16 v17, v0

    #@35d
    const/16 v18, 0x0

    #@35f
    aget-object v18, v11, v18

    #@361
    const/16 v19, 0x1

    #@363
    aget-object v19, v11, v19

    #@365
    const/16 v20, 0x2

    #@367
    aget-object v20, v11, v20

    #@369
    invoke-virtual/range {v17 .. v20}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@36c
    goto/16 :goto_0

    #@36e
    .line 825
    .end local v11    # "opNames":[Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p2

    #@370
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@372
    check-cast v8, [I

    #@374
    .line 826
    .local v8, "ints":[I
    move-object/from16 v0, p0

    #@376
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@378
    move-object/from16 v18, v0

    #@37a
    const/16 v17, 0x0

    #@37c
    aget v17, v8, v17

    #@37e
    const/16 v19, 0x1

    #@380
    move/from16 v0, v17

    #@382
    move/from16 v1, v19

    #@384
    if-ne v0, v1, :cond_12

    #@386
    const/16 v17, 0x1

    #@388
    :goto_5
    move-object/from16 v0, v18

    #@38a
    move/from16 v1, v17

    #@38c
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    #@38f
    .line 827
    const/16 v17, 0x0

    #@391
    aget v17, v8, v17

    #@393
    const/16 v18, 0x1

    #@395
    move/from16 v0, v17

    #@397
    move/from16 v1, v18

    #@399
    if-ne v0, v1, :cond_3

    #@39b
    move-object/from16 v0, p0

    #@39d
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@39f
    move-object/from16 v17, v0

    #@3a1
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->isManualNetSelAllowed()Z

    #@3a4
    move-result v17

    #@3a5
    if-nez v17, :cond_3

    #@3a7
    .line 833
    move-object/from16 v0, p0

    #@3a9
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@3ab
    move-object/from16 v17, v0

    #@3ad
    const/16 v18, 0x0

    #@3af
    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    #@3b2
    .line 834
    const-string/jumbo v17, " Forcing Automatic Network Selection, manual selection is not allowed"

    #@3b5
    move-object/from16 v0, p0

    #@3b7
    move-object/from16 v1, v17

    #@3b9
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    #@3bc
    goto/16 :goto_0

    #@3be
    .line 826
    :cond_12
    const/16 v17, 0x0

    #@3c0
    goto :goto_5

    #@3c1
    .line 712
    nop

    #@3c2
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    #@0
    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@a
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@c
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@e
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    #@11
    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@13
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@15
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@17
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    #@1a
    .line 559
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@1c
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@1e
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@20
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    #@23
    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@25
    const/4 v1, 0x0

    #@26
    const/4 v2, 0x0

    #@27
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    #@2a
    .line 554
    return-void
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 2

    #@0
    .prologue
    .line 1632
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x3

    #@7
    if-lt v0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2072
    const-string/jumbo v0, "GsmSST"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[GsmSST] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 2071
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2077
    const-string/jumbo v0, "GsmSST"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[GsmSST] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 2076
    return-void
.end method

.method public onImsCapabilityChanged()V
    .locals 1

    #@0
    .prologue
    .line 2192
    const/16 v0, 0x30

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    #@9
    .line 2191
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2043
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 2044
    return-void

    #@6
    .line 2047
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    move-result-object v0

    #@a
    .line 2049
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@c
    if-eq v1, v0, :cond_3

    #@e
    .line 2050
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 2051
    const-string/jumbo v1, "Removing stale icc objects."

    #@15
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@18
    .line 2052
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1a
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    #@1d
    .line 2053
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 2054
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@23
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@26
    .line 2056
    :cond_1
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@28
    .line 2057
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2a
    .line 2059
    :cond_2
    if-eqz v0, :cond_3

    #@2c
    .line 2060
    const-string/jumbo v1, "New card found"

    #@2f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@32
    .line 2061
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@34
    .line 2062
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@36
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@3c
    .line 2063
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@3e
    const/16 v2, 0x11

    #@40
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@43
    .line 2064
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@45
    if-eqz v1, :cond_3

    #@47
    .line 2065
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@49
    const/16 v2, 0x10

    #@4b
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4e
    .line 2042
    :cond_3
    return-void
.end method

.method public pollState()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 966
    const/4 v0, 0x1

    #@2
    new-array v0, v0, [I

    #@4
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    #@6
    .line 967
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    #@8
    aput v3, v0, v3

    #@a
    .line 969
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-getcom_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues()[I

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    #@17
    move-result v1

    #@18
    aget v0, v0, v1

    #@1a
    packed-switch v0, :pswitch_data_0

    #@1d
    .line 995
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    #@1f
    aget v1, v0, v3

    #@21
    add-int/lit8 v1, v1, 0x1

    #@23
    aput v1, v0, v3

    #@25
    .line 996
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@27
    .line 998
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    #@29
    const/4 v2, 0x6

    #@2a
    .line 997
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2d
    move-result-object v1

    #@2e
    .line 996
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    #@31
    .line 1000
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    #@33
    aget v1, v0, v3

    #@35
    add-int/lit8 v1, v1, 0x1

    #@37
    aput v1, v0, v3

    #@39
    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3b
    .line 1003
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    #@3d
    const/4 v2, 0x5

    #@3e
    .line 1002
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@41
    move-result-object v1

    #@42
    .line 1001
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    #@45
    .line 1005
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    #@47
    aget v1, v0, v3

    #@49
    add-int/lit8 v1, v1, 0x1

    #@4b
    aput v1, v0, v3

    #@4d
    .line 1006
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4f
    .line 1008
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    #@51
    const/4 v2, 0x4

    #@52
    .line 1007
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@55
    move-result-object v1

    #@56
    .line 1006
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    #@59
    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    #@5b
    aget v1, v0, v3

    #@5d
    add-int/lit8 v1, v1, 0x1

    #@5f
    aput v1, v0, v3

    #@61
    .line 1011
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@63
    .line 1013
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    #@65
    const/16 v2, 0xe

    #@67
    .line 1012
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6a
    move-result-object v1

    #@6b
    .line 1011
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    #@6e
    .line 965
    :goto_1
    return-void

    #@6f
    .line 971
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@71
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@74
    .line 972
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@76
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    #@79
    .line 973
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    #@7c
    .line 974
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    #@7e
    .line 975
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    #@80
    .line 976
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    #@83
    goto :goto_1

    #@84
    .line 980
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@86
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    #@89
    .line 981
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    #@8b
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    #@8e
    .line 982
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    #@91
    .line 983
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    #@93
    .line 984
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    #@95
    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@97
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@9a
    move-result v0

    #@9b
    .line 985
    const/16 v1, 0x12

    #@9d
    if-eq v1, v0, :cond_0

    #@9f
    .line 987
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    #@a2
    goto/16 :goto_0

    #@a4
    .line 969
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 5
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@0
    .prologue
    .line 2127
    monitor-enter p0

    #@1
    .line 2128
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@3
    if-nez v2, :cond_1

    #@5
    .line 2129
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@8
    move-result v0

    #@9
    .line 2132
    .local v0, "dds":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_2

    #@f
    .line 2133
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    #@14
    move-result v2

    #@15
    if-eq v0, v2, :cond_0

    #@17
    .line 2134
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@19
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    #@1c
    move-result v2

    #@1d
    if-eq v0, v2, :cond_2

    #@1f
    .line 2135
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    #@26
    move-result v2

    #@27
    .line 2132
    if-eqz v2, :cond_2

    #@29
    .line 2137
    :cond_0
    const-string/jumbo v2, "radioTurnedOff"

    #@2c
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    #@2f
    .line 2138
    const-string/jumbo v2, "Data disconnected, turn off radio right away."

    #@32
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@35
    .line 2139
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .end local v0    # "dds":I
    :cond_1
    :goto_0
    monitor-exit p0

    #@39
    .line 2126
    return-void

    #@3a
    .line 2142
    .restart local v0    # "dds":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@3c
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_3

    #@42
    .line 2143
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@44
    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@46
    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@48
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    #@4b
    .line 2144
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@4d
    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@4f
    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@51
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    #@54
    .line 2145
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@56
    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@58
    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@5a
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    #@5d
    .line 2147
    :cond_3
    const-string/jumbo v2, "radioTurnedOff"

    #@60
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    #@63
    .line 2148
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@65
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    #@68
    move-result v2

    #@69
    if-eq v0, v2, :cond_4

    #@6b
    .line 2149
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    #@72
    move-result v2

    #@73
    if-eqz v2, :cond_5

    #@75
    .line 2157
    :cond_4
    :goto_1
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    #@78
    move-result-object v1

    #@79
    .line 2158
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x26

    #@7b
    iput v2, v1, Landroid/os/Message;->what:I

    #@7d
    .line 2159
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@7f
    add-int/lit8 v2, v2, 0x1

    #@81
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@83
    iput v2, v1, Landroid/os/Message;->arg1:I

    #@85
    .line 2160
    const-wide/16 v2, 0x7530

    #@87
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@8a
    move-result v2

    #@8b
    if-eqz v2, :cond_6

    #@8d
    .line 2161
    const-string/jumbo v2, "Wait upto 30s for data to disconnect, then turn off radio."

    #@90
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@93
    .line 2162
    const/4 v2, 0x1

    #@94
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@96
    goto :goto_0

    #@97
    .line 2127
    .end local v0    # "dds":I
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    #@98
    monitor-exit p0

    #@99
    throw v2

    #@9a
    .line 2150
    .restart local v0    # "dds":I
    :cond_5
    :try_start_2
    const-string/jumbo v2, "Data is active on DDS.  Wait for all data disconnect"

    #@9d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@a0
    .line 2153
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@a3
    move-result-object v2

    #@a4
    .line 2154
    const/16 v3, 0x3e9

    #@a6
    const/4 v4, 0x0

    #@a7
    .line 2153
    invoke-virtual {v2, v0, p0, v3, v4}, Lcom/android/internal/telephony/ProxyController;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    #@aa
    .line 2155
    const/4 v2, 0x1

    #@ab
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@ad
    goto :goto_1

    #@ae
    .line 2164
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_6
    const-string/jumbo v2, "Cannot send delayed Msg, turn off radio right away."

    #@b1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@b4
    .line 2165
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    #@b7
    .line 2166
    const/4 v2, 0x0

    #@b8
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ba
    goto/16 :goto_0
.end method

.method public setImsRegistrationState(Z)V
    .locals 3
    .param p1, "registered"    # Z

    #@0
    .prologue
    .line 2175
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    if-eqz p1, :cond_1

    #@6
    .line 2188
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    #@8
    .line 2174
    return-void

    #@9
    .line 2176
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 2177
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    #@f
    .line 2179
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@14
    move-result-object v1

    #@15
    .line 2180
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v2, "alarm"

    #@18
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/app/AlarmManager;

    #@1e
    .line 2181
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    #@20
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@23
    .line 2182
    const/4 v2, 0x0

    #@24
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    #@26
    .line 2184
    const/16 v2, 0x2d

    #@28
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    #@2f
    .line 2185
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "mDeviceShuttingDown = "

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDeviceShuttingDown:Z

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@1c
    .line 507
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "mDesiredPowerState = "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@35
    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v5, "getRadioState = "

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@43
    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@52
    .line 509
    new-instance v4, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v5, "mPowerOffDelayNeed = "

    #@5a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPowerOffDelayNeed:Z

    #@60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@6b
    .line 510
    new-instance v4, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v5, "mAlarmSwitch = "

    #@73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    #@79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@84
    .line 513
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    #@86
    if-eqz v4, :cond_0

    #@88
    .line 514
    const-string/jumbo v4, "mAlarmSwitch == true"

    #@8b
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@8e
    .line 515
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@90
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@93
    move-result-object v1

    #@94
    .line 516
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v4, "alarm"

    #@97
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9a
    move-result-object v0

    #@9b
    check-cast v0, Landroid/app/AlarmManager;

    #@9d
    .line 517
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    #@9f
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@a2
    .line 518
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    #@a4
    .line 522
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    #@a6
    if-eqz v4, :cond_2

    #@a8
    .line 523
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@aa
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@ad
    move-result-object v4

    #@ae
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@b0
    if-ne v4, v5, :cond_2

    #@b2
    .line 524
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@b4
    invoke-interface {v4, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    #@b7
    .line 503
    :cond_1
    :goto_0
    return-void

    #@b8
    .line 525
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    #@ba
    if-nez v4, :cond_6

    #@bc
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@be
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@c1
    move-result-object v4

    #@c2
    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@c5
    move-result v4

    #@c6
    if-eqz v4, :cond_6

    #@c8
    .line 527
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPowerOffDelayNeed:Z

    #@ca
    if-eqz v4, :cond_5

    #@cc
    .line 528
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    #@ce
    if-eqz v4, :cond_3

    #@d0
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    #@d2
    if-eqz v4, :cond_4

    #@d4
    .line 541
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@d6
    iget-object v2, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@d8
    .line 542
    .local v2, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    #@db
    goto :goto_0

    #@dc
    .line 529
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_4
    const-string/jumbo v4, "mImsRegistrationOnOff == true"

    #@df
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@e2
    .line 530
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@e4
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@e7
    move-result-object v1

    #@e8
    .line 531
    .restart local v1    # "context":Landroid/content/Context;
    const-string/jumbo v4, "alarm"

    #@eb
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@ee
    move-result-object v0

    #@ef
    check-cast v0, Landroid/app/AlarmManager;

    #@f1
    .line 533
    .restart local v0    # "am":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    #@f3
    const-string/jumbo v4, "android.intent.action.ACTION_RADIO_OFF"

    #@f6
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f9
    .line 534
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@fc
    move-result-object v4

    #@fd
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    #@ff
    .line 536
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    #@101
    .line 537
    const-string/jumbo v4, "Alarm setting"

    #@104
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@107
    .line 539
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@10a
    move-result-wide v4

    #@10b
    const-wide/16 v6, 0xbb8

    #@10d
    add-long/2addr v4, v6

    #@10e
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    #@110
    .line 538
    const/4 v7, 0x2

    #@111
    invoke-virtual {v0, v7, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@114
    goto :goto_0

    #@115
    .line 545
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@117
    iget-object v2, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@119
    .line 546
    .restart local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    #@11c
    goto :goto_0

    #@11d
    .line 548
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_6
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDeviceShuttingDown:Z

    #@11f
    if-eqz v4, :cond_1

    #@121
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@123
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@126
    move-result-object v4

    #@127
    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    #@12a
    move-result v4

    #@12b
    if-eqz v4, :cond_1

    #@12d
    .line 549
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@12f
    invoke-interface {v4, v8}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    #@132
    goto :goto_0
.end method

.method protected setRoamingType(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "currentServiceState"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 915
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_2

    #@8
    const/4 v2, 0x1

    #@9
    .line 916
    .local v2, "isVoiceInService":Z
    :goto_0
    if-eqz v2, :cond_0

    #@b
    .line 917
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_4

    #@11
    .line 919
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_3

    #@1b
    .line 921
    const/4 v3, 0x2

    #@1c
    .line 920
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@1f
    .line 931
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_5

    #@25
    const/4 v1, 0x1

    #@26
    .line 932
    .local v1, "isDataInService":Z
    :goto_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@29
    move-result v0

    #@2a
    .line 933
    .local v0, "dataRegType":I
    if-eqz v1, :cond_1

    #@2c
    .line 934
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@2f
    move-result v3

    #@30
    if-nez v3, :cond_6

    #@32
    .line 935
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@35
    .line 913
    :cond_1
    :goto_3
    return-void

    #@36
    .line 915
    .end local v0    # "dataRegType":I
    .end local v1    # "isDataInService":Z
    .end local v2    # "isVoiceInService":Z
    :cond_2
    const/4 v2, 0x0

    #@37
    .restart local v2    # "isVoiceInService":Z
    goto :goto_0

    #@38
    .line 924
    :cond_3
    const/4 v3, 0x3

    #@39
    .line 923
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@3c
    goto :goto_1

    #@3d
    .line 927
    :cond_4
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@40
    goto :goto_1

    #@41
    .line 931
    :cond_5
    const/4 v1, 0x0

    #@42
    .restart local v1    # "isDataInService":Z
    goto :goto_2

    #@43
    .line 936
    .restart local v0    # "dataRegType":I
    :cond_6
    invoke-static {v0}, Landroid/telephony/ServiceState;->isGsm(I)Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_8

    #@49
    .line 937
    if-eqz v2, :cond_7

    #@4b
    .line 939
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    #@4e
    move-result v3

    #@4f
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@52
    goto :goto_3

    #@53
    .line 943
    :cond_7
    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@56
    goto :goto_3

    #@57
    .line 947
    :cond_8
    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@5a
    goto :goto_3
.end method

.method protected updateRoamingState()V
    .locals 6

    #@0
    .prologue
    .line 871
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    #@2
    if-nez v4, :cond_2

    #@4
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    #@6
    .line 872
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    #@8
    if-eqz v4, :cond_0

    #@a
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@c
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_3

    #@12
    .line 878
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@14
    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    #@17
    .line 881
    const-string/jumbo v4, "carrier_config"

    #@1a
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/internal/telephony/ICarrierConfigLoader;

    #@20
    .line 882
    .local v1, "configLoader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    if-eqz v1, :cond_7

    #@22
    .line 884
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@24
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    #@27
    move-result v4

    #@28
    invoke-interface {v1, v4}, Lcom/android/internal/telephony/ICarrierConfigLoader;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@2b
    move-result-object v0

    #@2c
    .line 886
    .local v0, "b":Landroid/os/PersistableBundle;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    #@2f
    move-result v4

    #@30
    if-eqz v4, :cond_5

    #@32
    .line 887
    const-string/jumbo v4, "updateRoamingState: carrier config override always on home network"

    #@35
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 888
    const/4 v3, 0x0

    #@39
    .line 905
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3b
    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@3e
    .line 906
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@40
    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@43
    .line 857
    return-void

    #@44
    .line 871
    .end local v1    # "configLoader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    :cond_2
    const/4 v3, 0x1

    #@45
    .local v3, "roaming":Z
    goto :goto_0

    #@46
    .line 873
    .end local v3    # "roaming":Z
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@48
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isSameNamedOperators(Landroid/telephony/ServiceState;)Z

    #@4b
    move-result v4

    #@4c
    if-nez v4, :cond_4

    #@4e
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@50
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    #@53
    move-result v4

    #@54
    .line 872
    if-eqz v4, :cond_0

    #@56
    .line 874
    :cond_4
    const/4 v3, 0x0

    #@57
    .restart local v3    # "roaming":Z
    goto :goto_1

    #@58
    .line 889
    .end local v3    # "roaming":Z
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v1    # "configLoader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@5a
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    #@61
    move-result v4

    #@62
    if-eqz v4, :cond_6

    #@64
    .line 890
    new-instance v4, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v5, "updateRoamingState: carrier config override set non roaming:"

    #@6c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    .line 891
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@72
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    .line 890
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v4

    #@7a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@81
    .line 892
    const/4 v3, 0x0

    #@82
    .restart local v3    # "roaming":Z
    goto :goto_2

    #@83
    .line 893
    .end local v3    # "roaming":Z
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@85
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    #@8c
    move-result v4

    #@8d
    if-eqz v4, :cond_1

    #@8f
    .line 894
    new-instance v4, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v5, "updateRoamingState: carrier config override set roaming:"

    #@97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    .line 895
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@9d
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@a0
    move-result-object v5

    #@a1
    .line 894
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v4

    #@a5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v4

    #@a9
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@ac
    .line 896
    const/4 v3, 0x1

    #@ad
    .restart local v3    # "roaming":Z
    goto :goto_2

    #@ae
    .line 898
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v3    # "roaming":Z
    :catch_0
    move-exception v2

    #@af
    .line 899
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "updateRoamingState: unable to access carrier config service"

    #@b2
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    #@b5
    goto :goto_2

    #@b6
    .line 902
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_7
    const-string/jumbo v4, "updateRoamingState: no carrier config service available"

    #@b9
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@bc
    goto/16 :goto_2
.end method

.method protected updateSpnDisplay()V
    .locals 15

    #@0
    .prologue
    .line 585
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@2
    .line 586
    .local v9, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v3, 0x0

    #@3
    .line 587
    .local v3, "plmn":Ljava/lang/String;
    const/4 v2, 0x0

    #@4
    .line 588
    .local v2, "showPlmn":Z
    if-eqz v9, :cond_4

    #@6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@8
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getDisplayRule(Ljava/lang/String;)I

    #@f
    move-result v12

    #@10
    .line 589
    .local v12, "rule":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@12
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@15
    move-result v0

    #@16
    const/4 v1, 0x1

    #@17
    if-eq v0, v1, :cond_0

    #@19
    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1b
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@1e
    move-result v0

    #@1f
    const/4 v1, 0x2

    #@20
    if-ne v0, v1, :cond_6

    #@22
    .line 591
    :cond_0
    const/4 v2, 0x1

    #@23
    .line 592
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    #@25
    if-eqz v0, :cond_5

    #@27
    .line 594
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@2a
    move-result-object v0

    #@2b
    .line 595
    const v1, 0x104027a

    #@2e
    .line 594
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@31
    move-result-object v0

    #@32
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    .line 601
    .local v3, "plmn":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v1, "updateSpnDisplay: radio is on but out of service, set plmn=\'"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 602
    const-string/jumbo v1, "\'"

    #@49
    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@54
    .line 622
    :goto_2
    if-eqz v9, :cond_a

    #@56
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    .line 623
    .local v5, "spn":Ljava/lang/String;
    :goto_3
    move-object v6, v5

    #@5b
    .line 624
    .local v6, "dataSpn":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5e
    move-result v0

    #@5f
    if-nez v0, :cond_c

    #@61
    .line 625
    and-int/lit8 v0, v12, 0x1

    #@63
    .line 626
    const/4 v1, 0x1

    #@64
    .line 625
    if-ne v0, v1, :cond_b

    #@66
    const/4 v4, 0x1

    #@67
    .line 628
    .local v4, "showSpn":Z
    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6a
    move-result v0

    #@6b
    if-nez v0, :cond_d

    #@6d
    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@6f
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    #@72
    move-result-object v0

    #@73
    if-eqz v0, :cond_d

    #@75
    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@77
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    #@7a
    move-result-object v0

    #@7b
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@7d
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    #@80
    move-result v0

    #@81
    .line 628
    if-eqz v0, :cond_d

    #@83
    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@85
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@88
    move-result-object v0

    #@89
    .line 633
    const v1, 0x10400c6

    #@8c
    .line 632
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@8f
    move-result-object v0

    #@90
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@93
    move-result-object v8

    #@94
    .line 634
    .local v8, "formatVoice":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@96
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@99
    move-result-object v0

    #@9a
    .line 635
    const v1, 0x10400c7

    #@9d
    .line 634
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@a0
    move-result-object v0

    #@a1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@a4
    move-result-object v7

    #@a5
    .line 636
    .local v7, "formatData":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a8
    move-result-object v11

    #@a9
    .line 637
    .local v11, "originalSpn":Ljava/lang/String;
    const/4 v0, 0x1

    #@aa
    new-array v0, v0, [Ljava/lang/Object;

    #@ac
    const/4 v1, 0x0

    #@ad
    aput-object v11, v0, v1

    #@af
    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b2
    move-result-object v5

    #@b3
    .line 638
    const/4 v0, 0x1

    #@b4
    new-array v0, v0, [Ljava/lang/Object;

    #@b6
    const/4 v1, 0x0

    #@b7
    aput-object v11, v0, v1

    #@b9
    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@bc
    move-result-object v6

    #@bd
    .line 639
    const/4 v4, 0x1

    #@be
    .line 640
    const/4 v2, 0x0

    #@bf
    .line 649
    .end local v5    # "spn":Ljava/lang/String;
    .end local v7    # "formatData":Ljava/lang/String;
    .end local v8    # "formatVoice":Ljava/lang/String;
    .end local v11    # "originalSpn":Ljava/lang/String;
    :cond_1
    :goto_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    #@c1
    if-ne v2, v0, :cond_2

    #@c3
    .line 650
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    #@c5
    if-eq v4, v0, :cond_f

    #@c7
    .line 655
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v1, "updateSpnDisplay: changed sending intent rule="

    #@cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v0

    #@d3
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v0

    #@d7
    .line 657
    const-string/jumbo v1, " showPlmn=\'%b\' plmn=\'%s\' showSpn=\'%b\' spn=\'%s\' dataSpn=\'%s\'"

    #@da
    .line 655
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v0

    #@de
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v0

    #@e2
    const/4 v1, 0x5

    #@e3
    new-array v1, v1, [Ljava/lang/Object;

    #@e5
    .line 658
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e8
    move-result-object v13

    #@e9
    const/4 v14, 0x0

    #@ea
    aput-object v13, v1, v14

    #@ec
    const/4 v13, 0x1

    #@ed
    aput-object v3, v1, v13

    #@ef
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@f2
    move-result-object v13

    #@f3
    const/4 v14, 0x2

    #@f4
    aput-object v13, v1, v14

    #@f6
    const/4 v13, 0x3

    #@f7
    aput-object v5, v1, v13

    #@f9
    const/4 v13, 0x4

    #@fa
    aput-object v6, v1, v13

    #@fc
    .line 655
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ff
    move-result-object v0

    #@100
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@103
    .line 660
    new-instance v10, Landroid/content/Intent;

    #@105
    const-string/jumbo v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    #@108
    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10b
    .line 661
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v0, 0x20000000

    #@10d
    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@110
    .line 662
    const-string/jumbo v0, "showSpn"

    #@113
    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@116
    .line 663
    const-string/jumbo v0, "spn"

    #@119
    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@11c
    .line 664
    const-string/jumbo v0, "spnData"

    #@11f
    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@122
    .line 665
    const-string/jumbo v0, "showPlmn"

    #@125
    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@128
    .line 666
    const-string/jumbo v0, "plmn"

    #@12b
    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@12e
    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@130
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@133
    move-result v0

    #@134
    invoke-static {v10, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@137
    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@139
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@13c
    move-result-object v0

    #@13d
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@13f
    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@142
    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@144
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@146
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@149
    move-result v1

    #@14a
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    #@14d
    move-result v0

    #@14e
    if-nez v0, :cond_3

    #@150
    .line 672
    const/4 v0, 0x1

    #@151
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpnUpdatePending:Z

    #@153
    .line 676
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_6
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    #@155
    .line 677
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    #@157
    .line 678
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    #@159
    .line 679
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    #@15b
    .line 680
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@15d
    .line 566
    return-void

    #@15e
    .line 588
    .end local v4    # "showSpn":Z
    .end local v6    # "dataSpn":Ljava/lang/String;
    .end local v12    # "rule":I
    .local v3, "plmn":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    #@15f
    .restart local v12    # "rule":I
    goto/16 :goto_0

    #@161
    .line 598
    :cond_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@164
    move-result-object v0

    #@165
    .line 599
    const v1, 0x1040262

    #@168
    .line 598
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@16b
    move-result-object v0

    #@16c
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@16f
    move-result-object v3

    #@170
    .local v3, "plmn":Ljava/lang/String;
    goto/16 :goto_1

    #@172
    .line 603
    .local v3, "plmn":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@174
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@177
    move-result v0

    #@178
    if-nez v0, :cond_9

    #@17a
    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@17c
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@17f
    move-result-object v3

    #@180
    .line 606
    .local v3, "plmn":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@183
    move-result v0

    #@184
    if-nez v0, :cond_8

    #@186
    .line 607
    and-int/lit8 v0, v12, 0x2

    #@188
    .line 608
    const/4 v1, 0x2

    #@189
    .line 607
    if-ne v0, v1, :cond_7

    #@18b
    const/4 v2, 0x1

    #@18c
    goto/16 :goto_2

    #@18e
    :cond_7
    const/4 v2, 0x0

    #@18f
    goto/16 :goto_2

    #@191
    .line 606
    :cond_8
    const/4 v2, 0x0

    #@192
    goto/16 :goto_2

    #@194
    .line 611
    .local v3, "plmn":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x1

    #@195
    .line 612
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@198
    move-result-object v0

    #@199
    .line 613
    const v1, 0x1040262

    #@19c
    .line 612
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@19f
    move-result-object v0

    #@1a0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1a3
    move-result-object v3

    #@1a4
    .line 614
    .local v3, "plmn":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    #@1a6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a9
    const-string/jumbo v1, "updateSpnDisplay: radio is off w/ showPlmn="

    #@1ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v0

    #@1b0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v0

    #@1b4
    .line 615
    const-string/jumbo v1, " plmn="

    #@1b7
    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v0

    #@1bb
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v0

    #@1bf
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c2
    move-result-object v0

    #@1c3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    #@1c6
    goto/16 :goto_2

    #@1c8
    .line 622
    :cond_a
    const-string/jumbo v5, ""

    #@1cb
    .restart local v5    # "spn":Ljava/lang/String;
    goto/16 :goto_3

    #@1cd
    .line 625
    .restart local v6    # "dataSpn":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    #@1ce
    .restart local v4    # "showSpn":Z
    goto/16 :goto_4

    #@1d0
    .line 624
    .end local v4    # "showSpn":Z
    :cond_c
    const/4 v4, 0x0

    #@1d1
    .restart local v4    # "showSpn":Z
    goto/16 :goto_4

    #@1d3
    .line 641
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1d5
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@1d8
    move-result v0

    #@1d9
    const/4 v1, 0x3

    #@1da
    if-eq v0, v1, :cond_e

    #@1dc
    .line 642
    if-eqz v2, :cond_1

    #@1de
    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1e1
    move-result v0

    #@1e2
    .line 641
    if-eqz v0, :cond_1

    #@1e4
    .line 644
    :cond_e
    const/4 v5, 0x0

    #@1e5
    .line 645
    .local v5, "spn":Ljava/lang/String;
    const/4 v4, 0x0

    #@1e6
    goto/16 :goto_5

    #@1e8
    .line 651
    .end local v5    # "spn":Ljava/lang/String;
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    #@1ea
    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1ed
    move-result v0

    #@1ee
    if-eqz v0, :cond_2

    #@1f0
    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    #@1f2
    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1f5
    move-result v0

    #@1f6
    if-eqz v0, :cond_2

    #@1f8
    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@1fa
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1fd
    move-result v0

    #@1fe
    if-eqz v0, :cond_2

    #@200
    goto/16 :goto_6
.end method

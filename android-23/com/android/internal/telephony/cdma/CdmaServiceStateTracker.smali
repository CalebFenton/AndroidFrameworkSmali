.class public Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;,
        Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I = null

.field protected static final DEFAULT_MNC:Ljava/lang/String; = "00"

.field protected static final INVALID_MCC:Ljava/lang/String; = "000"

.field static final LOG_TAG:Ljava/lang/String; = "CdmaSST"

.field private static final MS_PER_HOUR:I = 0x36ee80

.field private static final NITZ_UPDATE_DIFF_DEFAULT:I = 0x7d0

.field private static final NITZ_UPDATE_SPACING_DEFAULT:I = 0x927c0

.field private static final UNACTIVATED_MIN2_VALUE:Ljava/lang/String; = "000000"

.field private static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"


# instance fields
.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field protected mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

.field private mCr:Landroid/content/ContentResolver;

.field private mCurrentCarrier:Ljava/lang/String;

.field mCurrentOtaspMode:I

.field private mDefaultRoamingIndicator:I

.field protected mGotCountryCode:Z

.field protected mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

.field protected mHomeNetworkId:[I

.field protected mHomeSystemId:[I

.field private mIsEriTextLoaded:Z

.field private mIsInPrl:Z

.field protected mIsMinInfoReady:Z

.field protected mIsSubscriptionFromRuim:Z

.field protected mMdn:Ljava/lang/String;

.field protected mMin:Ljava/lang/String;

.field protected mNeedFixZone:Z

.field mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

.field private mNitzUpdateDiff:I

.field private mNitzUpdateSpacing:I

.field mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field protected mPrlVersion:Ljava/lang/String;

.field private mRegistrationDeniedReason:Ljava/lang/String;

.field protected mRegistrationState:I

.field private mRoamingIndicator:I

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J


# direct methods
.method private static synthetic -getcom_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->-com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->-com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I

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
    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->-com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->revertToNitzTimeZone()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->revertToNitzTime()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@0
    .prologue
    .line 172
    new-instance v0, Landroid/telephony/CellInfoCdma;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellInfoCdma;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V

    #@8
    .line 171
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "cellInfo"    # Landroid/telephony/CellInfo;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 176
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5
    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V

    #@8
    .line 93
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    #@a
    .line 97
    const-string/jumbo v2, "ro.nitz_update_spacing"

    #@d
    .line 98
    const v5, 0x927c0

    #@10
    .line 97
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@13
    move-result v2

    #@14
    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateSpacing:I

    #@16
    .line 102
    const-string/jumbo v2, "ro.nitz_update_diff"

    #@19
    .line 103
    const/16 v5, 0x7d0

    #@1b
    .line 102
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@1e
    move-result v2

    #@1f
    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateDiff:I

    #@21
    .line 112
    const/4 v2, -0x1

    #@22
    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    #@24
    .line 113
    new-instance v2, Landroid/os/RegistrantList;

    #@26
    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    #@29
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@2b
    .line 120
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    #@2d
    .line 124
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    #@2f
    .line 134
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    #@31
    .line 135
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    #@33
    .line 138
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    #@35
    .line 140
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsEriTextLoaded:Z

    #@37
    .line 141
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@39
    .line 147
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    #@3b
    .line 153
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    #@3d
    .line 155
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;

    #@3f
    new-instance v5, Landroid/os/Handler;

    #@41
    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    #@44
    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/os/Handler;)V

    #@47
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    #@49
    .line 163
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;

    #@4b
    new-instance v5, Landroid/os/Handler;

    #@4d
    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    #@50
    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/os/Handler;)V

    #@53
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    #@55
    .line 178
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@57
    .line 179
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5e
    move-result-object v2

    #@5f
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@61
    .line 180
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    #@63
    invoke-direct {v2}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    #@66
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@68
    .line 181
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    #@6a
    invoke-direct {v2}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    #@6d
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@6f
    .line 183
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@72
    move-result-object v2

    #@73
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@75
    .line 184
    const/16 v6, 0x27

    #@77
    .line 183
    invoke-static {v2, v5, p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@7a
    move-result-object v2

    #@7b
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@7d
    .line 185
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@7f
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    #@82
    move-result v2

    #@83
    if-nez v2, :cond_0

    #@85
    move v2, v3

    #@86
    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@88
    .line 189
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@8b
    move-result-object v2

    #@8c
    const-string/jumbo v5, "power"

    #@8f
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@92
    move-result-object v1

    #@93
    check-cast v1, Landroid/os/PowerManager;

    #@95
    .line 190
    .local v1, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v2, "ServiceStateTracker"

    #@98
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@9b
    move-result-object v2

    #@9c
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@9e
    .line 192
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@a0
    invoke-interface {v2, p0, v3, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@a3
    .line 194
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@a5
    const/16 v5, 0x1e

    #@a7
    invoke-interface {v2, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@aa
    .line 195
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@ac
    const/16 v5, 0xb

    #@ae
    invoke-interface {v2, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    #@b1
    .line 197
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@b3
    const/16 v5, 0x28

    #@b5
    invoke-interface {v2, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@b8
    .line 198
    const/16 v2, 0x24

    #@ba
    invoke-virtual {p1, p0, v2, v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@bd
    .line 199
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@bf
    const/16 v5, 0x25

    #@c1
    invoke-interface {v2, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    #@c4
    .line 202
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@c6
    const-string/jumbo v5, "airplane_mode_on"

    #@c9
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@cc
    move-result v0

    #@cd
    .line 203
    .local v0, "airplaneMode":I
    if-gtz v0, :cond_1

    #@cf
    move v2, v3

    #@d0
    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    #@d2
    .line 205
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@d4
    .line 206
    const-string/jumbo v5, "auto_time"

    #@d7
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@da
    move-result-object v5

    #@db
    .line 207
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    #@dd
    .line 205
    invoke-virtual {v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@e0
    .line 208
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@e2
    .line 209
    const-string/jumbo v5, "auto_time_zone"

    #@e5
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@e8
    move-result-object v5

    #@e9
    .line 210
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    #@eb
    .line 208
    invoke-virtual {v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@ee
    .line 211
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    #@f1
    .line 213
    new-instance v2, Lcom/android/internal/telephony/HbpcdUtils;

    #@f3
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@f6
    move-result-object v3

    #@f7
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/HbpcdUtils;-><init>(Landroid/content/Context;)V

    #@fa
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    #@fc
    .line 216
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyOtaspChanged(I)V

    #@ff
    .line 175
    return-void

    #@100
    .end local v0    # "airplaneMode":I
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    move v2, v4

    #@101
    .line 185
    goto :goto_0

    #@102
    .restart local v0    # "airplaneMode":I
    .restart local v1    # "powerManager":Landroid/os/PowerManager;
    :cond_1
    move v2, v4

    #@103
    .line 203
    goto :goto_1
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 9
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    #@0
    .prologue
    .line 1422
    move v2, p1

    #@1
    .line 1423
    .local v2, "rawOffset":I
    if-eqz p2, :cond_0

    #@3
    .line 1424
    const v6, 0x36ee80

    #@6
    sub-int/2addr v2, v6

    #@7
    .line 1426
    :cond_0
    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    #@a
    move-result-object v5

    #@b
    .line 1427
    .local v5, "zones":[Ljava/lang/String;
    const/4 v1, 0x0

    #@c
    .line 1428
    .local v1, "guess":Ljava/util/TimeZone;
    new-instance v0, Ljava/util/Date;

    #@e
    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    #@11
    .line 1429
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
    .line 1430
    .local v4, "zone":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@1a
    move-result-object v3

    #@1b
    .line 1431
    .local v3, "tz":Ljava/util/TimeZone;
    invoke-virtual {v3, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    #@1e
    move-result v8

    #@1f
    if-ne v8, p1, :cond_2

    #@21
    .line 1432
    invoke-virtual {v3, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@24
    move-result v8

    #@25
    if-ne v8, p2, :cond_2

    #@27
    .line 1433
    move-object v1, v3

    #@28
    .line 1438
    .end local v1    # "guess":Ljava/util/TimeZone;
    .end local v3    # "tz":Ljava/util/TimeZone;
    .end local v4    # "zone":Ljava/lang/String;
    :cond_1
    return-object v1

    #@29
    .line 1429
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
    .line 1778
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@4
    const-string/jumbo v4, "auto_time"

    #@7
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v3

    #@b
    if-lez v3, :cond_0

    #@d
    :goto_0
    return v1

    #@e
    :cond_0
    move v1, v2

    #@f
    goto :goto_0

    #@10
    .line 1779
    :catch_0
    move-exception v0

    #@11
    .line 1780
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
    .line 1786
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@4
    const-string/jumbo v4, "auto_time_zone"

    #@7
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v3

    #@b
    if-lez v3, :cond_0

    #@d
    :goto_0
    return v1

    #@e
    :cond_0
    move v1, v2

    #@f
    goto :goto_0

    #@10
    .line 1787
    :catch_0
    move-exception v0

    #@11
    .line 1788
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
    .line 1412
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    .line 1413
    .local v0, "guess":Ljava/util/TimeZone;
    if-nez v0, :cond_0

    #@6
    .line 1415
    if-eqz p2, :cond_1

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    #@c
    move-result-object v0

    #@d
    .line 1417
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
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@27
    .line 1418
    return-object v0

    #@28
    .line 1415
    :cond_1
    const/4 v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1417
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    goto :goto_1
.end method

.method private getSubscriptionInfoAndStartPollingThreads()V
    .locals 2

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const/16 v1, 0x22

    #@4
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    #@b
    .line 280
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    #@e
    .line 276
    return-void
.end method

.method private handleCdmaSubscriptionSource(I)V
    .locals 3
    .param p1, "newSubscriptionSource"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v2, "Subscription Source : "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@18
    .line 544
    if-nez p1, :cond_0

    #@1a
    const/4 v0, 0x1

    #@1b
    .line 543
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@1d
    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v1, "isFromRuim: "

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@36
    .line 546
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveCdmaSubscriptionSource(I)V

    #@39
    .line 547
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@3b
    if-nez v0, :cond_1

    #@3d
    .line 549
    const/16 v0, 0x23

    #@3f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    #@46
    .line 541
    :cond_1
    return-void
.end method

.method private isHomeSid(I)Z
    .locals 2
    .param p1, "sid"    # I

    #@0
    .prologue
    .line 1867
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 1868
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    #@7
    array-length v1, v1

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 1869
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    #@c
    aget v1, v1, v0

    #@e
    if-ne p1, v1, :cond_0

    #@10
    .line 1870
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 1868
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1874
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method private isRoamIndForHomeSystem(Ljava/lang/String;)Z
    .locals 6
    .param p1, "roamInd"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1533
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@3
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v2

    #@b
    .line 1534
    const v4, 0x107003b

    #@e
    .line 1533
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 1536
    .local v1, "homeRoamIndicators":[Ljava/lang/String;
    if-eqz v1, :cond_2

    #@14
    .line 1539
    array-length v4, v1

    #@15
    move v2, v3

    #@16
    :goto_0
    if-ge v2, v4, :cond_1

    #@18
    aget-object v0, v1, v2

    #@1a
    .line 1540
    .local v0, "homeRoamInd":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_0

    #@20
    .line 1541
    const/4 v2, 0x1

    #@21
    return v2

    #@22
    .line 1539
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1545
    .end local v0    # "homeRoamInd":Ljava/lang/String;
    :cond_1
    return v3

    #@26
    .line 1549
    :cond_2
    return v3
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 8
    .param p1, "cdmaRoaming"    # Z
    .param p2, "s"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1560
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@3
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@6
    move-result-object v5

    #@7
    .line 1561
    const-string/jumbo v7, "phone"

    #@a
    .line 1560
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v5

    #@e
    check-cast v5, Landroid/telephony/TelephonyManager;

    #@10
    .line 1562
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    #@12
    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@15
    move-result v7

    #@16
    .line 1560
    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    .line 1566
    .local v4, "spn":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaLong()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 1567
    .local v2, "onsl":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 1569
    .local v3, "onss":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@24
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    .line 1570
    :goto_0
    if-eqz v3, :cond_2

    #@2a
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    .line 1572
    :goto_1
    if-eqz p1, :cond_0

    #@30
    if-nez v0, :cond_0

    #@32
    if-eqz v1, :cond_3

    #@34
    :cond_0
    move v5, v6

    #@35
    :goto_2
    return v5

    #@36
    .line 1569
    :cond_1
    const/4 v0, 0x0

    #@37
    .local v0, "equalsOnsl":Z
    goto :goto_0

    #@38
    .line 1570
    .end local v0    # "equalsOnsl":Z
    :cond_2
    const/4 v1, 0x0

    #@39
    .local v1, "equalsOnss":Z
    goto :goto_1

    #@3a
    .line 1572
    .end local v1    # "equalsOnss":Z
    :cond_3
    const/4 v5, 0x1

    #@3b
    goto :goto_2
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 4

    #@0
    .prologue
    .line 1449
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDontPollSignalStrength:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1452
    return-void

    #@5
    .line 1457
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage()Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 1458
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    #@b
    iput v1, v0, Landroid/os/Message;->what:I

    #@d
    .line 1461
    const-wide/16 v2, 0x4e20

    #@f
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@12
    .line 1448
    return-void
.end method

.method private revertToNitzTime()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 1829
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@5
    const-string/jumbo v1, "auto_time"

    #@8
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1830
    return-void

    #@f
    .line 1833
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v1, "revertToNitzTime: mSavedTime="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    #@1d
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string/jumbo v1, " mSavedAtTime="

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    #@2a
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@35
    .line 1835
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    #@37
    cmp-long v0, v0, v4

    #@39
    if-eqz v0, :cond_1

    #@3b
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    #@3d
    cmp-long v0, v0, v4

    #@3f
    if-eqz v0, :cond_1

    #@41
    .line 1836
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    #@43
    .line 1837
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@46
    move-result-wide v2

    #@47
    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    #@49
    sub-long/2addr v2, v4

    #@4a
    .line 1836
    add-long/2addr v0, v2

    #@4b
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    #@4e
    .line 1828
    :cond_1
    return-void
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1842
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@3
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v0

    #@b
    .line 1843
    const-string/jumbo v1, "auto_time_zone"

    #@e
    .line 1842
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 1844
    return-void

    #@15
    .line 1846
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v1, "revertToNitzTimeZone: tz=\'"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@2e
    .line 1847
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@30
    if-eqz v0, :cond_1

    #@32
    .line 1848
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@34
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    #@37
    .line 1841
    :cond_1
    return-void
.end method

.method private saveCdmaSubscriptionSource(I)V
    .locals 4
    .param p1, "source"    # I

    #@0
    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Storing cdma subscription source: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@17
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@19
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@20
    move-result-object v0

    #@21
    .line 270
    const-string/jumbo v1, "subscription_mode"

    #@24
    .line 269
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@27
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v1, "Read from settings: "

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@35
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3c
    move-result-object v1

    #@3d
    .line 273
    const-string/jumbo v2, "subscription_mode"

    #@40
    const/4 v3, -0x1

    #@41
    .line 272
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@44
    move-result v1

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@50
    .line 267
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1793
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@2
    .line 1792
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .param p1, "time"    # J

    #@0
    .prologue
    .line 1820
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
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@1e
    .line 1821
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    #@21
    .line 1822
    new-instance v0, Landroid/content/Intent;

    #@23
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIME"

    #@26
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@29
    .line 1823
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    #@2b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@2e
    .line 1824
    const-string/jumbo v1, "time"

    #@31
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@34
    .line 1825
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@36
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@39
    move-result-object v1

    #@3a
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@3c
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@3f
    .line 1819
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1803
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
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@17
    .line 1805
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@19
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

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
    .line 1806
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    #@29
    .line 1807
    new-instance v1, Landroid/content/Intent;

    #@2b
    const-string/jumbo v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    #@2e
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@31
    .line 1808
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    #@33
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@36
    .line 1809
    const-string/jumbo v2, "time-zone"

    #@39
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3c
    .line 1810
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@3e
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@41
    move-result-object v2

    #@42
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@44
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@47
    .line 1802
    return-void
.end method

.method private setRoamingOff()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1161
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@6
    .line 1162
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@8
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@b
    .line 1163
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    #@11
    .line 1160
    return-void
.end method

.method private setRoamingOn()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4
    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@7
    .line 1155
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@9
    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@c
    .line 1156
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@e
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    #@11
    .line 1157
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@13
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    #@16
    .line 1153
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 38
    .param p1, "nitz"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    #@0
    .prologue
    .line 1586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v26

    #@4
    .line 1588
    .local v26, "start":J
    new-instance v34, Ljava/lang/StringBuilder;

    #@6
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v35, "NITZ: "

    #@c
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v34

    #@10
    move-object/from16 v0, v34

    #@12
    move-object/from16 v1, p1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v34

    #@18
    const-string/jumbo v35, ","

    #@1b
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v34

    #@1f
    move-object/from16 v0, v34

    #@21
    move-wide/from16 v1, p2

    #@23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@26
    move-result-object v34

    #@27
    .line 1589
    const-string/jumbo v35, " start="

    #@2a
    .line 1588
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v34

    #@2e
    move-object/from16 v0, v34

    #@30
    move-wide/from16 v1, v26

    #@32
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@35
    move-result-object v34

    #@36
    .line 1589
    const-string/jumbo v35, " delay="

    #@39
    .line 1588
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v34

    #@3d
    .line 1589
    sub-long v36, v26, p2

    #@3f
    .line 1588
    move-object/from16 v0, v34

    #@41
    move-wide/from16 v1, v36

    #@43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@46
    move-result-object v34

    #@47
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v34

    #@4b
    move-object/from16 v0, p0

    #@4d
    move-object/from16 v1, v34

    #@4f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@52
    .line 1595
    :try_start_0
    const-string/jumbo v34, "GMT"

    #@55
    invoke-static/range {v34 .. v34}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@58
    move-result-object v34

    #@59
    invoke-static/range {v34 .. v34}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@5c
    move-result-object v6

    #@5d
    .line 1597
    .local v6, "c":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    #@60
    .line 1598
    const/16 v34, 0x10

    #@62
    const/16 v35, 0x0

    #@64
    move/from16 v0, v34

    #@66
    move/from16 v1, v35

    #@68
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@6b
    .line 1600
    const-string/jumbo v34, "[/:,+-]"

    #@6e
    move-object/from16 v0, p1

    #@70
    move-object/from16 v1, v34

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@75
    move-result-object v21

    #@76
    .line 1602
    .local v21, "nitzSubs":[Ljava/lang/String;
    const/16 v34, 0x0

    #@78
    aget-object v34, v21, v34

    #@7a
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7d
    move-result v34

    #@7e
    move/from16 v0, v34

    #@80
    add-int/lit16 v0, v0, 0x7d0

    #@82
    move/from16 v32, v0

    #@84
    .line 1603
    .local v32, "year":I
    const/16 v34, 0x1

    #@86
    move/from16 v0, v34

    #@88
    move/from16 v1, v32

    #@8a
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@8d
    .line 1606
    const/16 v34, 0x1

    #@8f
    aget-object v34, v21, v34

    #@91
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@94
    move-result v34

    #@95
    add-int/lit8 v20, v34, -0x1

    #@97
    .line 1607
    .local v20, "month":I
    const/16 v34, 0x2

    #@99
    move/from16 v0, v34

    #@9b
    move/from16 v1, v20

    #@9d
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@a0
    .line 1609
    const/16 v34, 0x2

    #@a2
    aget-object v34, v21, v34

    #@a4
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a7
    move-result v7

    #@a8
    .line 1610
    .local v7, "date":I
    const/16 v34, 0x5

    #@aa
    move/from16 v0, v34

    #@ac
    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    #@af
    .line 1612
    const/16 v34, 0x3

    #@b1
    aget-object v34, v21, v34

    #@b3
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b6
    move-result v14

    #@b7
    .line 1613
    .local v14, "hour":I
    const/16 v34, 0xa

    #@b9
    move/from16 v0, v34

    #@bb
    invoke-virtual {v6, v0, v14}, Ljava/util/Calendar;->set(II)V

    #@be
    .line 1615
    const/16 v34, 0x4

    #@c0
    aget-object v34, v21, v34

    #@c2
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@c5
    move-result v17

    #@c6
    .line 1616
    .local v17, "minute":I
    const/16 v34, 0xc

    #@c8
    move/from16 v0, v34

    #@ca
    move/from16 v1, v17

    #@cc
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@cf
    .line 1618
    const/16 v34, 0x5

    #@d1
    aget-object v34, v21, v34

    #@d3
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d6
    move-result v24

    #@d7
    .line 1619
    .local v24, "second":I
    const/16 v34, 0xd

    #@d9
    move/from16 v0, v34

    #@db
    move/from16 v1, v24

    #@dd
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@e0
    .line 1621
    const/16 v34, 0x2d

    #@e2
    move-object/from16 v0, p1

    #@e4
    move/from16 v1, v34

    #@e6
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@e9
    move-result v34

    #@ea
    const/16 v35, -0x1

    #@ec
    move/from16 v0, v34

    #@ee
    move/from16 v1, v35

    #@f0
    if-ne v0, v1, :cond_6

    #@f2
    const/16 v25, 0x1

    #@f4
    .line 1623
    .local v25, "sign":Z
    :goto_0
    const/16 v34, 0x6

    #@f6
    aget-object v34, v21, v34

    #@f8
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@fb
    move-result v30

    #@fc
    .line 1625
    .local v30, "tzOffset":I
    move-object/from16 v0, v21

    #@fe
    array-length v0, v0

    #@ff
    move/from16 v34, v0

    #@101
    const/16 v35, 0x8

    #@103
    move/from16 v0, v34

    #@105
    move/from16 v1, v35

    #@107
    if-lt v0, v1, :cond_7

    #@109
    const/16 v34, 0x7

    #@10b
    aget-object v34, v21, v34

    #@10d
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@110
    move-result v8

    #@111
    .line 1635
    .local v8, "dst":I
    :goto_1
    if-eqz v25, :cond_8

    #@113
    const/16 v34, 0x1

    #@115
    :goto_2
    mul-int v34, v34, v30

    #@117
    mul-int/lit8 v34, v34, 0xf

    #@119
    mul-int/lit8 v34, v34, 0x3c

    #@11b
    move/from16 v0, v34

    #@11d
    mul-int/lit16 v0, v0, 0x3e8

    #@11f
    move/from16 v30, v0

    #@121
    .line 1637
    const/16 v33, 0x0

    #@123
    .line 1643
    .local v33, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, v21

    #@125
    array-length v0, v0

    #@126
    move/from16 v34, v0

    #@128
    const/16 v35, 0x9

    #@12a
    move/from16 v0, v34

    #@12c
    move/from16 v1, v35

    #@12e
    if-lt v0, v1, :cond_0

    #@130
    .line 1644
    const/16 v34, 0x8

    #@132
    aget-object v34, v21, v34

    #@134
    const/16 v35, 0x21

    #@136
    const/16 v36, 0x2f

    #@138
    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@13b
    move-result-object v31

    #@13c
    .line 1645
    .local v31, "tzname":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@13f
    move-result-object v33

    #@140
    .line 1648
    .end local v31    # "tzname":Ljava/lang/String;
    .end local v33    # "zone":Ljava/util/TimeZone;
    :cond_0
    move-object/from16 v0, p0

    #@142
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@144
    move-object/from16 v34, v0

    #@146
    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@149
    move-result-object v34

    #@14a
    .line 1649
    const-string/jumbo v35, "phone"

    #@14d
    .line 1648
    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@150
    move-result-object v34

    #@151
    check-cast v34, Landroid/telephony/TelephonyManager;

    #@153
    .line 1650
    move-object/from16 v0, p0

    #@155
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@157
    move-object/from16 v35, v0

    #@159
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@15c
    move-result v35

    #@15d
    .line 1648
    invoke-virtual/range {v34 .. v35}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    #@160
    move-result-object v16

    #@161
    .line 1652
    .local v16, "iso":Ljava/lang/String;
    if-nez v33, :cond_1

    #@163
    .line 1653
    move-object/from16 v0, p0

    #@165
    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    #@167
    move/from16 v34, v0

    #@169
    if-eqz v34, :cond_1

    #@16b
    .line 1654
    if-eqz v16, :cond_a

    #@16d
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@170
    move-result v34

    #@171
    if-lez v34, :cond_a

    #@173
    .line 1655
    if-eqz v8, :cond_9

    #@175
    const/16 v34, 0x1

    #@177
    .line 1656
    :goto_3
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@17a
    move-result-wide v36

    #@17b
    .line 1655
    move/from16 v0, v30

    #@17d
    move/from16 v1, v34

    #@17f
    move-wide/from16 v2, v36

    #@181
    move-object/from16 v4, v16

    #@183
    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    #@186
    move-result-object v33

    #@187
    .line 1668
    :cond_1
    :goto_4
    if-eqz v33, :cond_2

    #@189
    move-object/from16 v0, p0

    #@18b
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    #@18d
    move/from16 v34, v0

    #@18f
    move/from16 v0, v34

    #@191
    move/from16 v1, v30

    #@193
    if-eq v0, v1, :cond_c

    #@195
    .line 1673
    :cond_2
    :goto_5
    const/16 v34, 0x1

    #@197
    move/from16 v0, v34

    #@199
    move-object/from16 v1, p0

    #@19b
    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    #@19d
    .line 1674
    move/from16 v0, v30

    #@19f
    move-object/from16 v1, p0

    #@1a1
    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    #@1a3
    .line 1675
    if-eqz v8, :cond_e

    #@1a5
    const/16 v34, 0x1

    #@1a7
    :goto_6
    move/from16 v0, v34

    #@1a9
    move-object/from16 v1, p0

    #@1ab
    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    #@1ad
    .line 1676
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@1b0
    move-result-wide v34

    #@1b1
    move-wide/from16 v0, v34

    #@1b3
    move-object/from16 v2, p0

    #@1b5
    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    #@1b7
    .line 1679
    :cond_3
    new-instance v34, Ljava/lang/StringBuilder;

    #@1b9
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@1bc
    const-string/jumbo v35, "NITZ: tzOffset="

    #@1bf
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v34

    #@1c3
    move-object/from16 v0, v34

    #@1c5
    move/from16 v1, v30

    #@1c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ca
    move-result-object v34

    #@1cb
    const-string/jumbo v35, " dst="

    #@1ce
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v34

    #@1d2
    move-object/from16 v0, v34

    #@1d4
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v34

    #@1d8
    const-string/jumbo v35, " zone="

    #@1db
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v35

    #@1df
    .line 1680
    if-eqz v33, :cond_f

    #@1e1
    invoke-virtual/range {v33 .. v33}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@1e4
    move-result-object v34

    #@1e5
    .line 1679
    :goto_7
    move-object/from16 v0, v35

    #@1e7
    move-object/from16 v1, v34

    #@1e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v34

    #@1ed
    .line 1681
    const-string/jumbo v35, " iso="

    #@1f0
    .line 1679
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v34

    #@1f4
    move-object/from16 v0, v34

    #@1f6
    move-object/from16 v1, v16

    #@1f8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v34

    #@1fc
    .line 1681
    const-string/jumbo v35, " mGotCountryCode="

    #@1ff
    .line 1679
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@202
    move-result-object v34

    #@203
    .line 1681
    move-object/from16 v0, p0

    #@205
    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    #@207
    move/from16 v35, v0

    #@209
    .line 1679
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@20c
    move-result-object v34

    #@20d
    .line 1682
    const-string/jumbo v35, " mNeedFixZone="

    #@210
    .line 1679
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@213
    move-result-object v34

    #@214
    .line 1682
    move-object/from16 v0, p0

    #@216
    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    #@218
    move/from16 v35, v0

    #@21a
    .line 1679
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21d
    move-result-object v34

    #@21e
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@221
    move-result-object v34

    #@222
    move-object/from16 v0, p0

    #@224
    move-object/from16 v1, v34

    #@226
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@229
    .line 1685
    if-eqz v33, :cond_5

    #@22b
    .line 1686
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTimeZone()Z

    #@22e
    move-result v34

    #@22f
    if-eqz v34, :cond_4

    #@231
    .line 1687
    invoke-virtual/range {v33 .. v33}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@234
    move-result-object v34

    #@235
    move-object/from16 v0, p0

    #@237
    move-object/from16 v1, v34

    #@239
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    #@23c
    .line 1689
    :cond_4
    invoke-virtual/range {v33 .. v33}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@23f
    move-result-object v34

    #@240
    move-object/from16 v0, p0

    #@242
    move-object/from16 v1, v34

    #@244
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    #@247
    .line 1692
    :cond_5
    const-string/jumbo v34, "gsm.ignore-nitz"

    #@24a
    invoke-static/range {v34 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@24d
    move-result-object v15

    #@24e
    .line 1693
    .local v15, "ignore":Ljava/lang/String;
    if-eqz v15, :cond_10

    #@250
    const-string/jumbo v34, "yes"

    #@253
    move-object/from16 v0, v34

    #@255
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@258
    move-result v34

    #@259
    if-eqz v34, :cond_10

    #@25b
    .line 1694
    const-string/jumbo v34, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    #@25e
    move-object/from16 v0, p0

    #@260
    move-object/from16 v1, v34

    #@262
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@265
    .line 1695
    return-void

    #@266
    .line 1621
    .end local v8    # "dst":I
    .end local v15    # "ignore":Ljava/lang/String;
    .end local v16    # "iso":Ljava/lang/String;
    .end local v25    # "sign":Z
    .end local v30    # "tzOffset":I
    :cond_6
    const/16 v25, 0x0

    #@268
    .restart local v25    # "sign":Z
    goto/16 :goto_0

    #@26a
    .line 1626
    .restart local v30    # "tzOffset":I
    :cond_7
    const/4 v8, 0x0

    #@26b
    .restart local v8    # "dst":I
    goto/16 :goto_1

    #@26d
    .line 1635
    :cond_8
    const/16 v34, -0x1

    #@26f
    goto/16 :goto_2

    #@271
    .line 1655
    .restart local v16    # "iso":Ljava/lang/String;
    :cond_9
    const/16 v34, 0x0

    #@273
    goto/16 :goto_3

    #@275
    .line 1663
    :cond_a
    if-eqz v8, :cond_b

    #@277
    const/16 v34, 0x1

    #@279
    :goto_8
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@27c
    move-result-wide v36

    #@27d
    move-object/from16 v0, p0

    #@27f
    move/from16 v1, v30

    #@281
    move/from16 v2, v34

    #@283
    move-wide/from16 v3, v36

    #@285
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    #@288
    move-result-object v33

    #@289
    .local v33, "zone":Ljava/util/TimeZone;
    goto/16 :goto_4

    #@28b
    .end local v33    # "zone":Ljava/util/TimeZone;
    :cond_b
    const/16 v34, 0x0

    #@28d
    goto :goto_8

    #@28e
    .line 1668
    :cond_c
    move-object/from16 v0, p0

    #@290
    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    #@292
    move/from16 v35, v0

    #@294
    if-eqz v8, :cond_d

    #@296
    const/16 v34, 0x1

    #@298
    :goto_9
    move/from16 v0, v35

    #@29a
    move/from16 v1, v34

    #@29c
    if-eq v0, v1, :cond_3

    #@29e
    goto/16 :goto_5

    #@2a0
    :cond_d
    const/16 v34, 0x0

    #@2a2
    goto :goto_9

    #@2a3
    .line 1675
    :cond_e
    const/16 v34, 0x0

    #@2a5
    goto/16 :goto_6

    #@2a7
    .line 1680
    :cond_f
    const-string/jumbo v34, "NULL"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@2aa
    goto/16 :goto_7

    #@2ac
    .line 1699
    .restart local v15    # "ignore":Ljava/lang/String;
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    #@2ae
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2b0
    move-object/from16 v34, v0

    #@2b2
    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@2b5
    .line 1705
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2b8
    move-result-wide v34

    #@2b9
    sub-long v18, v34, p2

    #@2bb
    .line 1707
    .local v18, "millisSinceNitzReceived":J
    const-wide/16 v34, 0x0

    #@2bd
    cmp-long v34, v18, v34

    #@2bf
    if-gez v34, :cond_11

    #@2c1
    .line 1710
    new-instance v34, Ljava/lang/StringBuilder;

    #@2c3
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@2c6
    const-string/jumbo v35, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    #@2c9
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cc
    move-result-object v34

    #@2cd
    move-object/from16 v0, v34

    #@2cf
    move-object/from16 v1, p1

    #@2d1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d4
    move-result-object v34

    #@2d5
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d8
    move-result-object v34

    #@2d9
    move-object/from16 v0, p0

    #@2db
    move-object/from16 v1, v34

    #@2dd
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e0
    .line 1767
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2e3
    move-result-wide v10

    #@2e4
    .line 1768
    .local v10, "end":J
    new-instance v34, Ljava/lang/StringBuilder;

    #@2e6
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@2e9
    const-string/jumbo v35, "NITZ: end="

    #@2ec
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ef
    move-result-object v34

    #@2f0
    move-object/from16 v0, v34

    #@2f2
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2f5
    move-result-object v34

    #@2f6
    const-string/jumbo v35, " dur="

    #@2f9
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fc
    move-result-object v34

    #@2fd
    sub-long v36, v10, v26

    #@2ff
    move-object/from16 v0, v34

    #@301
    move-wide/from16 v1, v36

    #@303
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@306
    move-result-object v34

    #@307
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30a
    move-result-object v34

    #@30b
    move-object/from16 v0, p0

    #@30d
    move-object/from16 v1, v34

    #@30f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@312
    .line 1769
    move-object/from16 v0, p0

    #@314
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@316
    move-object/from16 v34, v0

    #@318
    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@31b
    .line 1714
    return-void

    #@31c
    .line 1717
    .end local v10    # "end":J
    :cond_11
    const-wide/32 v34, 0x7fffffff

    #@31f
    cmp-long v34, v18, v34

    #@321
    if-lez v34, :cond_12

    #@323
    .line 1720
    :try_start_3
    new-instance v34, Ljava/lang/StringBuilder;

    #@325
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@328
    const-string/jumbo v35, "NITZ: not setting time, processing has taken "

    #@32b
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32e
    move-result-object v34

    #@32f
    .line 1721
    const-wide/32 v36, 0x5265c00

    #@332
    div-long v36, v18, v36

    #@334
    .line 1720
    move-object/from16 v0, v34

    #@336
    move-wide/from16 v1, v36

    #@338
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@33b
    move-result-object v34

    #@33c
    .line 1722
    const-string/jumbo v35, " days"

    #@33f
    .line 1720
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@342
    move-result-object v34

    #@343
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@346
    move-result-object v34

    #@347
    move-object/from16 v0, p0

    #@349
    move-object/from16 v1, v34

    #@34b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34e
    .line 1767
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@351
    move-result-wide v10

    #@352
    .line 1768
    .restart local v10    # "end":J
    new-instance v34, Ljava/lang/StringBuilder;

    #@354
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@357
    const-string/jumbo v35, "NITZ: end="

    #@35a
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35d
    move-result-object v34

    #@35e
    move-object/from16 v0, v34

    #@360
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@363
    move-result-object v34

    #@364
    const-string/jumbo v35, " dur="

    #@367
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36a
    move-result-object v34

    #@36b
    sub-long v36, v10, v26

    #@36d
    move-object/from16 v0, v34

    #@36f
    move-wide/from16 v1, v36

    #@371
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@374
    move-result-object v34

    #@375
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@378
    move-result-object v34

    #@379
    move-object/from16 v0, p0

    #@37b
    move-object/from16 v1, v34

    #@37d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@380
    .line 1769
    move-object/from16 v0, p0

    #@382
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@384
    move-object/from16 v34, v0

    #@386
    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    #@389
    .line 1724
    return-void

    #@38a
    .line 1728
    .end local v10    # "end":J
    :cond_12
    move-wide/from16 v0, v18

    #@38c
    long-to-int v0, v0

    #@38d
    move/from16 v34, v0

    #@38f
    const/16 v35, 0xe

    #@391
    :try_start_5
    move/from16 v0, v35

    #@393
    move/from16 v1, v34

    #@395
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    #@398
    .line 1730
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTime()Z

    #@39b
    move-result v34

    #@39c
    if-eqz v34, :cond_14

    #@39e
    .line 1734
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@3a1
    move-result-wide v34

    #@3a2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3a5
    move-result-wide v36

    #@3a6
    sub-long v12, v34, v36

    #@3a8
    .line 1735
    .local v12, "gained":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3ab
    move-result-wide v34

    #@3ac
    move-object/from16 v0, p0

    #@3ae
    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    #@3b0
    move-wide/from16 v36, v0

    #@3b2
    sub-long v28, v34, v36

    #@3b4
    .line 1736
    .local v28, "timeSinceLastUpdate":J
    move-object/from16 v0, p0

    #@3b6
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@3b8
    move-object/from16 v34, v0

    #@3ba
    .line 1737
    const-string/jumbo v35, "nitz_update_spacing"

    #@3bd
    move-object/from16 v0, p0

    #@3bf
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateSpacing:I

    #@3c1
    move/from16 v36, v0

    #@3c3
    .line 1736
    invoke-static/range {v34 .. v36}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@3c6
    move-result v23

    #@3c7
    .line 1738
    .local v23, "nitzUpdateSpacing":I
    move-object/from16 v0, p0

    #@3c9
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@3cb
    move-object/from16 v34, v0

    #@3cd
    .line 1739
    const-string/jumbo v35, "nitz_update_diff"

    #@3d0
    move-object/from16 v0, p0

    #@3d2
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateDiff:I

    #@3d4
    move/from16 v36, v0

    #@3d6
    .line 1738
    invoke-static/range {v34 .. v36}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@3d9
    move-result v22

    #@3da
    .line 1741
    .local v22, "nitzUpdateDiff":I
    move-object/from16 v0, p0

    #@3dc
    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    #@3de
    move-wide/from16 v34, v0

    #@3e0
    const-wide/16 v36, 0x0

    #@3e2
    cmp-long v34, v34, v36

    #@3e4
    if-eqz v34, :cond_13

    #@3e6
    move/from16 v0, v23

    #@3e8
    int-to-long v0, v0

    #@3e9
    move-wide/from16 v34, v0

    #@3eb
    cmp-long v34, v28, v34

    #@3ed
    if-lez v34, :cond_15

    #@3ef
    .line 1744
    :cond_13
    new-instance v34, Ljava/lang/StringBuilder;

    #@3f1
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@3f4
    const-string/jumbo v35, "NITZ: Auto updating time of day to "

    #@3f7
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fa
    move-result-object v34

    #@3fb
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@3fe
    move-result-object v35

    #@3ff
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@402
    move-result-object v34

    #@403
    .line 1745
    const-string/jumbo v35, " NITZ receive delay="

    #@406
    .line 1744
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@409
    move-result-object v34

    #@40a
    move-object/from16 v0, v34

    #@40c
    move-wide/from16 v1, v18

    #@40e
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@411
    move-result-object v34

    #@412
    .line 1746
    const-string/jumbo v35, "ms gained="

    #@415
    .line 1744
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@418
    move-result-object v34

    #@419
    move-object/from16 v0, v34

    #@41b
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@41e
    move-result-object v34

    #@41f
    .line 1746
    const-string/jumbo v35, "ms from "

    #@422
    .line 1744
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@425
    move-result-object v34

    #@426
    move-object/from16 v0, v34

    #@428
    move-object/from16 v1, p1

    #@42a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42d
    move-result-object v34

    #@42e
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@431
    move-result-object v34

    #@432
    move-object/from16 v0, p0

    #@434
    move-object/from16 v1, v34

    #@436
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@439
    .line 1749
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@43c
    move-result-wide v34

    #@43d
    move-object/from16 v0, p0

    #@43f
    move-wide/from16 v1, v34

    #@441
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    #@444
    .line 1762
    .end local v12    # "gained":J
    .end local v22    # "nitzUpdateDiff":I
    .end local v23    # "nitzUpdateSpacing":I
    .end local v28    # "timeSinceLastUpdate":J
    :cond_14
    const-string/jumbo v34, "NITZ: update nitz time property"

    #@447
    move-object/from16 v0, p0

    #@449
    move-object/from16 v1, v34

    #@44b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@44e
    .line 1763
    const-string/jumbo v34, "gsm.nitz.time"

    #@451
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@454
    move-result-wide v36

    #@455
    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@458
    move-result-object v35

    #@459
    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@45c
    .line 1764
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@45f
    move-result-wide v34

    #@460
    move-wide/from16 v0, v34

    #@462
    move-object/from16 v2, p0

    #@464
    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    #@466
    .line 1765
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@469
    move-result-wide v34

    #@46a
    move-wide/from16 v0, v34

    #@46c
    move-object/from16 v2, p0

    #@46e
    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@470
    .line 1767
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@473
    move-result-wide v10

    #@474
    .line 1768
    .restart local v10    # "end":J
    new-instance v34, Ljava/lang/StringBuilder;

    #@476
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@479
    const-string/jumbo v35, "NITZ: end="

    #@47c
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47f
    move-result-object v34

    #@480
    move-object/from16 v0, v34

    #@482
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@485
    move-result-object v34

    #@486
    const-string/jumbo v35, " dur="

    #@489
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48c
    move-result-object v34

    #@48d
    sub-long v36, v10, v26

    #@48f
    move-object/from16 v0, v34

    #@491
    move-wide/from16 v1, v36

    #@493
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@496
    move-result-object v34

    #@497
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49a
    move-result-object v34

    #@49b
    move-object/from16 v0, p0

    #@49d
    move-object/from16 v1, v34

    #@49f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@4a2
    .line 1769
    move-object/from16 v0, p0

    #@4a4
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@4a6
    move-object/from16 v34, v0

    #@4a8
    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    #@4ab
    .line 1581
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "date":I
    .end local v8    # "dst":I
    .end local v10    # "end":J
    .end local v14    # "hour":I
    .end local v15    # "ignore":Ljava/lang/String;
    .end local v16    # "iso":Ljava/lang/String;
    .end local v17    # "minute":I
    .end local v18    # "millisSinceNitzReceived":J
    .end local v20    # "month":I
    .end local v21    # "nitzSubs":[Ljava/lang/String;
    .end local v24    # "second":I
    .end local v25    # "sign":Z
    .end local v30    # "tzOffset":I
    .end local v32    # "year":I
    :goto_a
    return-void

    #@4ac
    .line 1742
    .restart local v6    # "c":Ljava/util/Calendar;
    .restart local v7    # "date":I
    .restart local v8    # "dst":I
    .restart local v12    # "gained":J
    .restart local v14    # "hour":I
    .restart local v15    # "ignore":Ljava/lang/String;
    .restart local v16    # "iso":Ljava/lang/String;
    .restart local v17    # "minute":I
    .restart local v18    # "millisSinceNitzReceived":J
    .restart local v20    # "month":I
    .restart local v21    # "nitzSubs":[Ljava/lang/String;
    .restart local v22    # "nitzUpdateDiff":I
    .restart local v23    # "nitzUpdateSpacing":I
    .restart local v24    # "second":I
    .restart local v25    # "sign":Z
    .restart local v28    # "timeSinceLastUpdate":J
    .restart local v30    # "tzOffset":I
    .restart local v32    # "year":I
    :cond_15
    :try_start_7
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    #@4af
    move-result-wide v34

    #@4b0
    move/from16 v0, v22

    #@4b2
    int-to-long v0, v0

    #@4b3
    move-wide/from16 v36, v0

    #@4b5
    cmp-long v34, v34, v36

    #@4b7
    if-gtz v34, :cond_13

    #@4b9
    .line 1752
    new-instance v34, Ljava/lang/StringBuilder;

    #@4bb
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@4be
    const-string/jumbo v35, "NITZ: ignore, a previous update was "

    #@4c1
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c4
    move-result-object v34

    #@4c5
    move-object/from16 v0, v34

    #@4c7
    move-wide/from16 v1, v28

    #@4c9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4cc
    move-result-object v34

    #@4cd
    .line 1753
    const-string/jumbo v35, "ms ago and gained="

    #@4d0
    .line 1752
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d3
    move-result-object v34

    #@4d4
    move-object/from16 v0, v34

    #@4d6
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4d9
    move-result-object v34

    #@4da
    .line 1753
    const-string/jumbo v35, "ms"

    #@4dd
    .line 1752
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e0
    move-result-object v34

    #@4e1
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e4
    move-result-object v34

    #@4e5
    move-object/from16 v0, p0

    #@4e7
    move-object/from16 v1, v34

    #@4e9
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@4ec
    .line 1767
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4ef
    move-result-wide v10

    #@4f0
    .line 1768
    .restart local v10    # "end":J
    new-instance v34, Ljava/lang/StringBuilder;

    #@4f2
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@4f5
    const-string/jumbo v35, "NITZ: end="

    #@4f8
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fb
    move-result-object v34

    #@4fc
    move-object/from16 v0, v34

    #@4fe
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@501
    move-result-object v34

    #@502
    const-string/jumbo v35, " dur="

    #@505
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@508
    move-result-object v34

    #@509
    sub-long v36, v10, v26

    #@50b
    move-object/from16 v0, v34

    #@50d
    move-wide/from16 v1, v36

    #@50f
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@512
    move-result-object v34

    #@513
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@516
    move-result-object v34

    #@517
    move-object/from16 v0, p0

    #@519
    move-object/from16 v1, v34

    #@51b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@51e
    .line 1769
    move-object/from16 v0, p0

    #@520
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@522
    move-object/from16 v34, v0

    #@524
    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V

    #@527
    .line 1755
    return-void

    #@528
    .line 1766
    .end local v10    # "end":J
    .end local v12    # "gained":J
    .end local v18    # "millisSinceNitzReceived":J
    .end local v22    # "nitzUpdateDiff":I
    .end local v23    # "nitzUpdateSpacing":I
    .end local v28    # "timeSinceLastUpdate":J
    :catchall_0
    move-exception v34

    #@529
    .line 1767
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@52c
    move-result-wide v10

    #@52d
    .line 1768
    .restart local v10    # "end":J
    new-instance v35, Ljava/lang/StringBuilder;

    #@52f
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@532
    const-string/jumbo v36, "NITZ: end="

    #@535
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@538
    move-result-object v35

    #@539
    move-object/from16 v0, v35

    #@53b
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@53e
    move-result-object v35

    #@53f
    const-string/jumbo v36, " dur="

    #@542
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@545
    move-result-object v35

    #@546
    sub-long v36, v10, v26

    #@548
    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@54b
    move-result-object v35

    #@54c
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54f
    move-result-object v35

    #@550
    move-object/from16 v0, p0

    #@552
    move-object/from16 v1, v35

    #@554
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@557
    .line 1769
    move-object/from16 v0, p0

    #@559
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@55b
    move-object/from16 v35, v0

    #@55d
    invoke-virtual/range {v35 .. v35}, Landroid/os/PowerManager$WakeLock;->release()V

    #@560
    .line 1766
    throw v34
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    #@561
    .line 1771
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "date":I
    .end local v8    # "dst":I
    .end local v10    # "end":J
    .end local v14    # "hour":I
    .end local v15    # "ignore":Ljava/lang/String;
    .end local v16    # "iso":Ljava/lang/String;
    .end local v17    # "minute":I
    .end local v20    # "month":I
    .end local v21    # "nitzSubs":[Ljava/lang/String;
    .end local v24    # "second":I
    .end local v25    # "sign":Z
    .end local v30    # "tzOffset":I
    .end local v32    # "year":I
    :catch_0
    move-exception v9

    #@562
    .line 1772
    .local v9, "ex":Ljava/lang/RuntimeException;
    new-instance v34, Ljava/lang/StringBuilder;

    #@564
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@567
    const-string/jumbo v35, "NITZ: Parsing NITZ time "

    #@56a
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56d
    move-result-object v34

    #@56e
    move-object/from16 v0, v34

    #@570
    move-object/from16 v1, p1

    #@572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@575
    move-result-object v34

    #@576
    const-string/jumbo v35, " ex="

    #@579
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57c
    move-result-object v34

    #@57d
    move-object/from16 v0, v34

    #@57f
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@582
    move-result-object v34

    #@583
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@586
    move-result-object v34

    #@587
    move-object/from16 v0, p0

    #@589
    move-object/from16 v1, v34

    #@58b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    #@58e
    goto/16 :goto_a
.end method


# virtual methods
.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->checkCorrectThread()V

    #@3
    .line 222
    const-string/jumbo v0, "ServiceStateTracker dispose"

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@9
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@b
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    #@e
    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    #@13
    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@15
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    #@18
    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@1a
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForEriFileLoaded(Landroid/os/Handler;)V

    #@1d
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1f
    if-eqz v0, :cond_0

    #@21
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@23
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    #@26
    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@28
    if-eqz v0, :cond_1

    #@2a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@2c
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@2f
    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@31
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    #@34
    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@36
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    #@38
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@3b
    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@3d
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    #@3f
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@42
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@44
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    #@47
    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@49
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaPrlChanged(Landroid/os/Handler;)V

    #@4c
    .line 236
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    #@4f
    .line 220
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2057
    const-string/jumbo v0, "CdmaServiceStateTracker extends:"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 2058
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@9
    .line 2059
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@c
    .line 2060
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, " mPhone="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25
    .line 2061
    new-instance v0, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v1, " mSS="

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e
    .line 2062
    new-instance v0, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v1, " mNewSS="

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@57
    .line 2063
    new-instance v0, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v1, " mCellLoc="

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@70
    .line 2064
    new-instance v0, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v1, " mNewCellLoc="

    #@78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v0

    #@7c
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v0

    #@86
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@89
    .line 2065
    new-instance v0, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v1, " mCurrentOtaspMode="

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v0

    #@9f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a2
    .line 2066
    new-instance v0, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v1, " mRoamingIndicator="

    #@aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v0

    #@ae
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v0

    #@b4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v0

    #@b8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bb
    .line 2067
    new-instance v0, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v1, " mIsInPrl="

    #@c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v0

    #@c7
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    #@c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v0

    #@cd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v0

    #@d1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d4
    .line 2068
    new-instance v0, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v1, " mDefaultRoamingIndicator="

    #@dc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v0

    #@e0
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    #@e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v0

    #@e6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v0

    #@ea
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ed
    .line 2069
    new-instance v0, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    const-string/jumbo v1, " mRegistrationState="

    #@f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v0

    #@f9
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    #@fb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v0

    #@ff
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v0

    #@103
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@106
    .line 2070
    new-instance v0, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v1, " mNeedFixZone="

    #@10e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v0

    #@112
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    #@114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@117
    move-result-object v0

    #@118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v0

    #@11c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11f
    .line 2071
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@122
    .line 2072
    new-instance v0, Ljava/lang/StringBuilder;

    #@124
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    const-string/jumbo v1, " mZoneOffset="

    #@12a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v0

    #@12e
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    #@130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@133
    move-result-object v0

    #@134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v0

    #@138
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13b
    .line 2073
    new-instance v0, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v1, " mZoneDst="

    #@143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v0

    #@147
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    #@149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v0

    #@14d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v0

    #@151
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@154
    .line 2074
    new-instance v0, Ljava/lang/StringBuilder;

    #@156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@159
    const-string/jumbo v1, " mZoneTime="

    #@15c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v0

    #@160
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    #@162
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@165
    move-result-object v0

    #@166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@169
    move-result-object v0

    #@16a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16d
    .line 2075
    new-instance v0, Ljava/lang/StringBuilder;

    #@16f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@172
    const-string/jumbo v1, " mGotCountryCode="

    #@175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v0

    #@179
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    #@17b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v0

    #@17f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@182
    move-result-object v0

    #@183
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@186
    .line 2076
    new-instance v0, Ljava/lang/StringBuilder;

    #@188
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@18b
    const-string/jumbo v1, " mSavedTimeZone="

    #@18e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v0

    #@192
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v0

    #@198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19b
    move-result-object v0

    #@19c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19f
    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    #@1a1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a4
    const-string/jumbo v1, " mSavedTime="

    #@1a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v0

    #@1ab
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    #@1ad
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v0

    #@1b1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b4
    move-result-object v0

    #@1b5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b8
    .line 2078
    new-instance v0, Ljava/lang/StringBuilder;

    #@1ba
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1bd
    const-string/jumbo v1, " mSavedAtTime="

    #@1c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v0

    #@1c4
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    #@1c6
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v0

    #@1ca
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cd
    move-result-object v0

    #@1ce
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d1
    .line 2079
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1d6
    const-string/jumbo v1, " mWakeLock="

    #@1d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v0

    #@1dd
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v0

    #@1e3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e6
    move-result-object v0

    #@1e7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ea
    .line 2080
    new-instance v0, Ljava/lang/StringBuilder;

    #@1ec
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1ef
    const-string/jumbo v1, " mCurPlmn="

    #@1f2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v0

    #@1f6
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@1f8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v0

    #@1fc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ff
    move-result-object v0

    #@200
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@203
    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    #@205
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@208
    const-string/jumbo v1, " mMdn="

    #@20b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v0

    #@20f
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    #@211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@214
    move-result-object v0

    #@215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@218
    move-result-object v0

    #@219
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@21c
    .line 2082
    new-instance v0, Ljava/lang/StringBuilder;

    #@21e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@221
    const-string/jumbo v1, " mHomeSystemId="

    #@224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@227
    move-result-object v0

    #@228
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    #@22a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22d
    move-result-object v0

    #@22e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@231
    move-result-object v0

    #@232
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@235
    .line 2083
    new-instance v0, Ljava/lang/StringBuilder;

    #@237
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@23a
    const-string/jumbo v1, " mHomeNetworkId="

    #@23d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@240
    move-result-object v0

    #@241
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    #@243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v0

    #@247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24a
    move-result-object v0

    #@24b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24e
    .line 2084
    new-instance v0, Ljava/lang/StringBuilder;

    #@250
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@253
    const-string/jumbo v1, " mMin="

    #@256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@259
    move-result-object v0

    #@25a
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    #@25c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25f
    move-result-object v0

    #@260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@263
    move-result-object v0

    #@264
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@267
    .line 2085
    new-instance v0, Ljava/lang/StringBuilder;

    #@269
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@26c
    const-string/jumbo v1, " mPrlVersion="

    #@26f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@272
    move-result-object v0

    #@273
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@278
    move-result-object v0

    #@279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27c
    move-result-object v0

    #@27d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@280
    .line 2086
    new-instance v0, Ljava/lang/StringBuilder;

    #@282
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@285
    const-string/jumbo v1, " mIsMinInfoReady="

    #@288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28b
    move-result-object v0

    #@28c
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    #@28e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@291
    move-result-object v0

    #@292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@295
    move-result-object v0

    #@296
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@299
    .line 2087
    new-instance v0, Ljava/lang/StringBuilder;

    #@29b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@29e
    const-string/jumbo v1, " mIsEriTextLoaded="

    #@2a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a4
    move-result-object v0

    #@2a5
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsEriTextLoaded:Z

    #@2a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2aa
    move-result-object v0

    #@2ab
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ae
    move-result-object v0

    #@2af
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b2
    .line 2088
    new-instance v0, Ljava/lang/StringBuilder;

    #@2b4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b7
    const-string/jumbo v1, " mIsSubscriptionFromRuim="

    #@2ba
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bd
    move-result-object v0

    #@2be
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@2c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2c3
    move-result-object v0

    #@2c4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c7
    move-result-object v0

    #@2c8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2cb
    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    #@2cd
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d0
    const-string/jumbo v1, " mCdmaSSM="

    #@2d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d6
    move-result-object v0

    #@2d7
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@2d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2dc
    move-result-object v0

    #@2dd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e0
    move-result-object v0

    #@2e1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e4
    .line 2090
    new-instance v0, Ljava/lang/StringBuilder;

    #@2e6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2e9
    const-string/jumbo v1, " mRegistrationDeniedReason="

    #@2ec
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ef
    move-result-object v0

    #@2f0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    #@2f2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f5
    move-result-object v0

    #@2f6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f9
    move-result-object v0

    #@2fa
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2fd
    .line 2091
    new-instance v0, Ljava/lang/StringBuilder;

    #@2ff
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@302
    const-string/jumbo v1, " mCurrentCarrier="

    #@305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@308
    move-result-object v0

    #@309
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    #@30b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30e
    move-result-object v0

    #@30f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@312
    move-result-object v0

    #@313
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@316
    .line 2092
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@319
    .line 2056
    return-void
.end method

.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 241
    const-string/jumbo v0, "CdmaServiceStateTracker finalized"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@6
    .line 240
    return-void
.end method

.method protected fixTimeZone(Ljava/lang/String;)V
    .locals 13
    .param p1, "isoCountryCode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1052
    const/4 v6, 0x0

    #@2
    .line 1055
    .local v6, "zone":Ljava/util/TimeZone;
    const-string/jumbo v8, "persist.sys.timezone"

    #@5
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v7

    #@9
    .line 1057
    .local v7, "zoneName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v9, "fixTimeZone zoneName=\'"

    #@11
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v8

    #@15
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v8

    #@19
    .line 1058
    const-string/jumbo v9, "\' mZoneOffset="

    #@1c
    .line 1057
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v8

    #@20
    .line 1058
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    #@22
    .line 1057
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v8

    #@26
    .line 1058
    const-string/jumbo v9, " mZoneDst="

    #@29
    .line 1057
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v8

    #@2d
    .line 1058
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    #@2f
    .line 1057
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    .line 1059
    const-string/jumbo v9, " iso-cc=\'"

    #@36
    .line 1057
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v8

    #@3e
    .line 1060
    const-string/jumbo v9, "\' iso-cc-idx="

    #@41
    .line 1057
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v8

    #@45
    .line 1060
    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    #@47
    invoke-static {v9, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    #@4a
    move-result v9

    #@4b
    .line 1057
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v8

    #@4f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@56
    .line 1062
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    #@58
    if-nez v8, :cond_2

    #@5a
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    #@5c
    if-nez v8, :cond_2

    #@5e
    if-eqz v7, :cond_2

    #@60
    .line 1063
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@63
    move-result v8

    #@64
    if-lez v8, :cond_2

    #@66
    .line 1064
    sget-object v8, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    #@68
    invoke-static {v8, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    #@6b
    move-result v8

    #@6c
    if-gez v8, :cond_2

    #@6e
    .line 1067
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@71
    move-result-object v6

    #@72
    .line 1068
    .local v6, "zone":Ljava/util/TimeZone;
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    #@74
    if-eqz v8, :cond_0

    #@76
    .line 1069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@79
    move-result-wide v2

    #@7a
    .line 1070
    .local v2, "ctm":J
    invoke-virtual {v6, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    #@7d
    move-result v8

    #@7e
    int-to-long v4, v8

    #@7f
    .line 1072
    .local v4, "tzOffset":J
    new-instance v8, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v9, "fixTimeZone: tzOffset="

    #@87
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v8

    #@8b
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v8

    #@8f
    .line 1073
    const-string/jumbo v9, " ltod="

    #@92
    .line 1072
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v8

    #@96
    .line 1073
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    #@99
    move-result-object v9

    #@9a
    .line 1072
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v8

    #@9e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v8

    #@a2
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@a5
    .line 1075
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTime()Z

    #@a8
    move-result v8

    #@a9
    if-eqz v8, :cond_1

    #@ab
    .line 1076
    sub-long v0, v2, v4

    #@ad
    .line 1077
    .local v0, "adj":J
    new-instance v8, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v9, "fixTimeZone: adj ltod="

    #@b5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v8

    #@b9
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    #@bc
    move-result-object v9

    #@bd
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v8

    #@c1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v8

    #@c5
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@c8
    .line 1078
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    #@cb
    .line 1085
    .end local v0    # "adj":J
    .end local v2    # "ctm":J
    .end local v4    # "tzOffset":J
    :cond_0
    :goto_0
    const-string/jumbo v8, "fixTimeZone: using default TimeZone"

    #@ce
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@d1
    .line 1096
    :goto_1
    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    #@d3
    .line 1098
    if-eqz v6, :cond_5

    #@d5
    .line 1099
    new-instance v8, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v9, "fixTimeZone: zone != null zone.getID="

    #@dd
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v8

    #@e1
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@e4
    move-result-object v9

    #@e5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v8

    #@e9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v8

    #@ed
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@f0
    .line 1100
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTimeZone()Z

    #@f3
    move-result v8

    #@f4
    if-eqz v8, :cond_4

    #@f6
    .line 1101
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@f9
    move-result-object v8

    #@fa
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    #@fd
    .line 1105
    :goto_2
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@100
    move-result-object v8

    #@101
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    #@104
    .line 1051
    :goto_3
    return-void

    #@105
    .line 1081
    .restart local v2    # "ctm":J
    .restart local v4    # "tzOffset":J
    :cond_1
    iget-wide v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    #@107
    sub-long/2addr v8, v4

    #@108
    iput-wide v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    #@10a
    .line 1082
    new-instance v8, Ljava/lang/StringBuilder;

    #@10c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@10f
    const-string/jumbo v9, "fixTimeZone: adj mSavedTime="

    #@112
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v8

    #@116
    iget-wide v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    #@118
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v8

    #@11c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11f
    move-result-object v8

    #@120
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@123
    goto :goto_0

    #@124
    .line 1086
    .end local v2    # "ctm":J
    .end local v4    # "tzOffset":J
    .local v6, "zone":Ljava/util/TimeZone;
    :cond_2
    const-string/jumbo v8, ""

    #@127
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12a
    move-result v8

    #@12b
    if-eqz v8, :cond_3

    #@12d
    .line 1089
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    #@12f
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    #@131
    iget-wide v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    #@133
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    #@136
    move-result-object v6

    #@137
    .line 1090
    .local v6, "zone":Ljava/util/TimeZone;
    const-string/jumbo v8, "fixTimeZone: using NITZ TimeZone"

    #@13a
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@13d
    goto :goto_1

    #@13e
    .line 1092
    .local v6, "zone":Ljava/util/TimeZone;
    :cond_3
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    #@140
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    #@142
    iget-wide v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    #@144
    invoke-static {v8, v9, v10, v11, p1}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    #@147
    move-result-object v6

    #@148
    .line 1093
    .local v6, "zone":Ljava/util/TimeZone;
    const-string/jumbo v8, "fixTimeZone: using getTimeZone(off, dst, time, iso)"

    #@14b
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@14e
    goto :goto_1

    #@14f
    .line 1103
    :cond_4
    const-string/jumbo v8, "fixTimeZone: skip changing zone as getAutoTimeZone was false"

    #@152
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@155
    goto :goto_2

    #@156
    .line 1107
    :cond_5
    const-string/jumbo v8, "fixTimeZone: zone == null, do nothing for zone"

    #@159
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@15c
    goto :goto_3
.end method

.method protected fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "sid"    # I

    #@0
    .prologue
    const v7, 0x36ee80

    #@3
    const/4 v4, 0x0

    #@4
    .line 1364
    if-gtz p2, :cond_0

    #@6
    .line 1366
    return-object p1

    #@7
    .line 1373
    :cond_0
    const/4 v0, 0x0

    #@8
    .line 1374
    .local v0, "isNitzTimeZone":Z
    const/4 v2, 0x0

    #@9
    .line 1375
    .local v2, "timeZone":I
    const/4 v3, 0x0

    #@a
    .line 1376
    .local v3, "tzone":Ljava/util/TimeZone;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@c
    if-eqz v5, :cond_4

    #@e
    .line 1378
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@10
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    #@17
    move-result v5

    #@18
    div-int v2, v5, v7

    #@1a
    .line 1379
    const/4 v0, 0x1

    #@1b
    .line 1386
    .end local v3    # "tzone":Ljava/util/TimeZone;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    #@1d
    .line 1387
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    #@1f
    if-eqz v6, :cond_2

    #@21
    const/4 v4, 0x1

    #@22
    .line 1386
    :cond_2
    invoke-virtual {v5, p2, v2, v4, v0}, Lcom/android/internal/telephony/HbpcdUtils;->getMcc(IIIZ)I

    #@25
    move-result v1

    #@26
    .line 1388
    .local v1, "mcc":I
    if-lez v1, :cond_3

    #@28
    .line 1389
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    const-string/jumbo v5, "00"

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object p1

    #@40
    .line 1391
    :cond_3
    return-object p1

    #@41
    .line 1381
    .end local v1    # "mcc":I
    .restart local v3    # "tzone":Ljava/util/TimeZone;
    :cond_4
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    #@43
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    #@45
    iget-wide v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    #@47
    invoke-direct {p0, v5, v6, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    #@4a
    move-result-object v3

    #@4b
    .line 1382
    .local v3, "tzone":Ljava/util/TimeZone;
    if-eqz v3, :cond_1

    #@4d
    .line 1383
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    #@50
    move-result v5

    #@51
    div-int v2, v5, v7

    #@53
    goto :goto_0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1894
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    #@0
    .prologue
    .line 1511
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected getHomeOperatorNumeric()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 981
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    .line 982
    const-string/jumbo v2, "phone"

    #@9
    .line 981
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/telephony/TelephonyManager;

    #@f
    .line 983
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@14
    move-result v2

    #@15
    .line 981
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 984
    .local v0, "numeric":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 985
    sget-object v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    #@21
    const-string/jumbo v2, ""

    #@24
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 987
    :cond_0
    return-object v0
.end method

.method getImsi()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1907
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@3
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    .line 1908
    const-string/jumbo v2, "phone"

    #@a
    .line 1907
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroid/telephony/TelephonyManager;

    #@10
    .line 1909
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    #@12
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@15
    move-result v2

    #@16
    .line 1907
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 1911
    .local v0, "operatorNumeric":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_0

    #@20
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    if-eqz v1, :cond_0

    #@26
    .line 1912
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    return-object v1

    #@3c
    .line 1914
    :cond_0
    return-object v3
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1890
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getOtasp()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x6

    #@1
    const/4 v3, 0x0

    #@2
    .line 1933
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1934
    const/4 v1, 0x2

    #@b
    return v1

    #@c
    .line 1936
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    #@e
    if-eqz v1, :cond_1

    #@10
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    #@12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@15
    move-result v1

    #@16
    if-ge v1, v4, :cond_2

    #@18
    .line 1937
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "getOtasp: bad mMin=\'"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, "\'"

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@38
    .line 1938
    const/4 v0, 0x1

    #@39
    .line 1948
    .local v0, "provisioningState":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v2, "getOtasp: state="

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@50
    .line 1949
    return v0

    #@51
    .line 1940
    .end local v0    # "provisioningState":I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    #@53
    const-string/jumbo v2, "1111110111"

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v1

    #@5a
    if-nez v1, :cond_3

    #@5c
    .line 1941
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    #@5e
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    const-string/jumbo v2, "000000"

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v1

    #@69
    .line 1940
    if-nez v1, :cond_3

    #@6b
    .line 1942
    const-string/jumbo v1, "test_cdma_setup"

    #@6e
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@71
    move-result v1

    #@72
    .line 1940
    if-eqz v1, :cond_4

    #@74
    .line 1943
    :cond_3
    const/4 v0, 0x2

    #@75
    .restart local v0    # "provisioningState":I
    goto :goto_0

    #@76
    .line 1945
    .end local v0    # "provisioningState":I
    :cond_4
    const/4 v0, 0x3

    #@77
    .restart local v0    # "provisioningState":I
    goto :goto_0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@2
    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1899
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    #@0
    .prologue
    .line 2009
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@7
    move-result v1

    #@8
    .line 2010
    const/4 v2, 0x2

    #@9
    .line 2009
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 289
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@4
    iget-boolean v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    #@6
    if-nez v4, :cond_0

    #@8
    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v19, "Received message "

    #@10
    move-object/from16 v0, v19

    #@12
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    move-object/from16 v0, p1

    #@18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    const-string/jumbo v19, "["

    #@1f
    move-object/from16 v0, v19

    #@21
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    move-object/from16 v0, p1

    #@27
    iget v0, v0, Landroid/os/Message;->what:I

    #@29
    move/from16 v19, v0

    #@2b
    move/from16 v0, v19

    #@2d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    const-string/jumbo v19, "]"

    #@34
    move-object/from16 v0, v19

    #@36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    .line 291
    const-string/jumbo v19, " while being destroyed. Ignoring."

    #@3d
    .line 290
    move-object/from16 v0, v19

    #@3f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    move-object/from16 v0, p0

    #@49
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    #@4c
    .line 292
    return-void

    #@4d
    .line 295
    :cond_0
    move-object/from16 v0, p1

    #@4f
    iget v4, v0, Landroid/os/Message;->what:I

    #@51
    packed-switch v4, :pswitch_data_0

    #@54
    .line 536
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    #@57
    .line 284
    :cond_1
    :goto_0
    return-void

    #@58
    .line 297
    :pswitch_1
    move-object/from16 v0, p0

    #@5a
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@5c
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    #@5f
    move-result v4

    #@60
    move-object/from16 v0, p0

    #@62
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    #@65
    goto :goto_0

    #@66
    .line 301
    :pswitch_2
    move-object/from16 v0, p0

    #@68
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@6a
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLteOnCdmaMode()I

    #@6d
    move-result v4

    #@6e
    const/16 v19, 0x1

    #@70
    move/from16 v0, v19

    #@72
    if-ne v4, v0, :cond_2

    #@74
    .line 303
    const-string/jumbo v4, "Receive EVENT_RUIM_READY"

    #@77
    move-object/from16 v0, p0

    #@79
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@7c
    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    #@7f
    .line 311
    :goto_1
    move-object/from16 v0, p0

    #@81
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@83
    const/16 v19, 0xe

    #@85
    move-object/from16 v0, p0

    #@87
    move/from16 v1, v19

    #@89
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@8c
    move-result-object v19

    #@8d
    move-object/from16 v0, v19

    #@8f
    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    #@92
    .line 313
    move-object/from16 v0, p0

    #@94
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@96
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    #@99
    goto :goto_0

    #@9a
    .line 306
    :cond_2
    const-string/jumbo v4, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription."

    #@9d
    move-object/from16 v0, p0

    #@9f
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@a2
    .line 307
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    #@a5
    goto :goto_1

    #@a6
    .line 317
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updatePhoneObject()V

    #@a9
    .line 320
    move-object/from16 v0, p0

    #@ab
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@ad
    const/16 v19, 0xe

    #@af
    move-object/from16 v0, p0

    #@b1
    move/from16 v1, v19

    #@b3
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@b6
    move-result-object v19

    #@b7
    move-object/from16 v0, v19

    #@b9
    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    #@bc
    .line 325
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    #@bf
    goto :goto_0

    #@c0
    .line 329
    :pswitch_4
    move-object/from16 v0, p0

    #@c2
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@c4
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@c7
    move-result-object v4

    #@c8
    sget-object v19, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@ca
    move-object/from16 v0, v19

    #@cc
    if-ne v4, v0, :cond_3

    #@ce
    .line 330
    move-object/from16 v0, p0

    #@d0
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@d2
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    #@d5
    move-result v4

    #@d6
    move-object/from16 v0, p0

    #@d8
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    #@db
    .line 333
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    #@de
    .line 336
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setPowerStateToDesired()V

    #@e1
    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    #@e4
    goto/16 :goto_0

    #@e6
    .line 341
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    #@e9
    goto/16 :goto_0

    #@eb
    .line 348
    :pswitch_6
    move-object/from16 v0, p0

    #@ed
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@ef
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@f2
    move-result-object v4

    #@f3
    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@f6
    move-result v4

    #@f7
    if-nez v4, :cond_4

    #@f9
    .line 350
    return-void

    #@fa
    .line 352
    :cond_4
    move-object/from16 v0, p1

    #@fc
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@fe
    check-cast v10, Landroid/os/AsyncResult;

    #@100
    .line 353
    .local v10, "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x0

    #@101
    move-object/from16 v0, p0

    #@103
    invoke-virtual {v0, v10, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    #@106
    .line 354
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    #@109
    goto/16 :goto_0

    #@10b
    .line 359
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    move-object/from16 v0, p1

    #@10d
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10f
    check-cast v10, Landroid/os/AsyncResult;

    #@111
    .line 361
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@113
    if-nez v4, :cond_b

    #@115
    .line 362
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@117
    move-object/from16 v18, v0

    #@119
    check-cast v18, [Ljava/lang/String;

    #@11b
    .line 363
    .local v18, "states":[Ljava/lang/String;
    const/4 v5, -0x1

    #@11c
    .line 364
    .local v5, "baseStationId":I
    const v6, 0x7fffffff

    #@11f
    .line 365
    .local v6, "baseStationLatitude":I
    const v7, 0x7fffffff

    #@122
    .line 366
    .local v7, "baseStationLongitude":I
    const/4 v8, -0x1

    #@123
    .line 367
    .local v8, "systemId":I
    const/4 v9, -0x1

    #@124
    .line 369
    .local v9, "networkId":I
    move-object/from16 v0, v18

    #@126
    array-length v4, v0

    #@127
    const/16 v19, 0x9

    #@129
    move/from16 v0, v19

    #@12b
    if-le v4, v0, :cond_a

    #@12d
    .line 371
    const/4 v4, 0x4

    #@12e
    :try_start_0
    aget-object v4, v18, v4

    #@130
    if-eqz v4, :cond_5

    #@132
    .line 372
    const/4 v4, 0x4

    #@133
    aget-object v4, v18, v4

    #@135
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@138
    move-result v5

    #@139
    .line 374
    :cond_5
    const/4 v4, 0x5

    #@13a
    aget-object v4, v18, v4

    #@13c
    if-eqz v4, :cond_6

    #@13e
    .line 375
    const/4 v4, 0x5

    #@13f
    aget-object v4, v18, v4

    #@141
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@144
    move-result v6

    #@145
    .line 377
    :cond_6
    const/4 v4, 0x6

    #@146
    aget-object v4, v18, v4

    #@148
    if-eqz v4, :cond_7

    #@14a
    .line 378
    const/4 v4, 0x6

    #@14b
    aget-object v4, v18, v4

    #@14d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@150
    move-result v7

    #@151
    .line 381
    :cond_7
    if-nez v6, :cond_8

    #@153
    if-nez v7, :cond_8

    #@155
    .line 382
    const v6, 0x7fffffff

    #@158
    .line 383
    const v7, 0x7fffffff

    #@15b
    .line 385
    :cond_8
    const/16 v4, 0x8

    #@15d
    aget-object v4, v18, v4

    #@15f
    if-eqz v4, :cond_9

    #@161
    .line 386
    const/16 v4, 0x8

    #@163
    aget-object v4, v18, v4

    #@165
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@168
    move-result v8

    #@169
    .line 388
    :cond_9
    const/16 v4, 0x9

    #@16b
    aget-object v4, v18, v4

    #@16d
    if-eqz v4, :cond_a

    #@16f
    .line 389
    const/16 v4, 0x9

    #@171
    aget-object v4, v18, v4

    #@173
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@176
    move-result v9

    #@177
    .line 396
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    #@179
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@17b
    invoke-virtual/range {v4 .. v9}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    #@17e
    .line 398
    move-object/from16 v0, p0

    #@180
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@182
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    #@185
    .line 403
    .end local v5    # "baseStationId":I
    .end local v6    # "baseStationLatitude":I
    .end local v7    # "baseStationLongitude":I
    .end local v8    # "systemId":I
    .end local v9    # "networkId":I
    .end local v18    # "states":[Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->disableSingleLocationUpdate()V

    #@188
    goto/16 :goto_0

    #@18a
    .line 391
    .restart local v5    # "baseStationId":I
    .restart local v6    # "baseStationLatitude":I
    .restart local v7    # "baseStationLongitude":I
    .restart local v8    # "systemId":I
    .restart local v9    # "networkId":I
    .restart local v18    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v12

    #@18b
    .line 392
    .local v12, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@18d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@190
    const-string/jumbo v19, "error parsing cell location data: "

    #@193
    move-object/from16 v0, v19

    #@195
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v4

    #@199
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v4

    #@19d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a0
    move-result-object v4

    #@1a1
    move-object/from16 v0, p0

    #@1a3
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    #@1a6
    goto :goto_2

    #@1a7
    .line 409
    .end local v5    # "baseStationId":I
    .end local v6    # "baseStationLatitude":I
    .end local v7    # "baseStationLongitude":I
    .end local v8    # "systemId":I
    .end local v9    # "networkId":I
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "ex":Ljava/lang/NumberFormatException;
    .end local v18    # "states":[Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p1

    #@1a9
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1ab
    check-cast v10, Landroid/os/AsyncResult;

    #@1ad
    .line 410
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    #@1af
    iget v4, v0, Landroid/os/Message;->what:I

    #@1b1
    move-object/from16 v0, p0

    #@1b3
    invoke-virtual {v0, v4, v10}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    #@1b6
    goto/16 :goto_0

    #@1b8
    .line 414
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    move-object/from16 v0, p1

    #@1ba
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1bc
    check-cast v10, Landroid/os/AsyncResult;

    #@1be
    .line 416
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1c0
    if-nez v4, :cond_1

    #@1c2
    .line 417
    iget-object v11, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1c4
    check-cast v11, [Ljava/lang/String;

    #@1c6
    .line 418
    .local v11, "cdmaSubscription":[Ljava/lang/String;
    if-eqz v11, :cond_d

    #@1c8
    array-length v4, v11

    #@1c9
    const/16 v19, 0x5

    #@1cb
    move/from16 v0, v19

    #@1cd
    if-lt v4, v0, :cond_d

    #@1cf
    .line 419
    const/4 v4, 0x0

    #@1d0
    aget-object v4, v11, v4

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    #@1d6
    .line 420
    const/4 v4, 0x1

    #@1d7
    aget-object v4, v11, v4

    #@1d9
    const/16 v19, 0x2

    #@1db
    aget-object v19, v11, v19

    #@1dd
    move-object/from16 v0, p0

    #@1df
    move-object/from16 v1, v19

    #@1e1
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    #@1e4
    .line 422
    const/4 v4, 0x3

    #@1e5
    aget-object v4, v11, v4

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    #@1eb
    .line 423
    const/4 v4, 0x4

    #@1ec
    aget-object v4, v11, v4

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@1f2
    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f7
    const-string/jumbo v19, "GET_CDMA_SUBSCRIPTION: MDN="

    #@1fa
    move-object/from16 v0, v19

    #@1fc
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ff
    move-result-object v4

    #@200
    move-object/from16 v0, p0

    #@202
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    #@204
    move-object/from16 v19, v0

    #@206
    move-object/from16 v0, v19

    #@208
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v4

    #@20c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20f
    move-result-object v4

    #@210
    move-object/from16 v0, p0

    #@212
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@215
    .line 426
    const/4 v4, 0x1

    #@216
    move-object/from16 v0, p0

    #@218
    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    #@21a
    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateOtaspState()V

    #@21d
    .line 429
    move-object/from16 v0, p0

    #@21f
    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@221
    if-nez v4, :cond_c

    #@223
    move-object/from16 v0, p0

    #@225
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@227
    if-eqz v4, :cond_c

    #@229
    .line 431
    const-string/jumbo v4, "GET_CDMA_SUBSCRIPTION set imsi in mIccRecords"

    #@22c
    move-object/from16 v0, p0

    #@22e
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@231
    .line 433
    move-object/from16 v0, p0

    #@233
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@235
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getImsi()Ljava/lang/String;

    #@238
    move-result-object v19

    #@239
    move-object/from16 v0, v19

    #@23b
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setImsi(Ljava/lang/String;)V

    #@23e
    goto/16 :goto_0

    #@240
    .line 436
    :cond_c
    const-string/jumbo v4, "GET_CDMA_SUBSCRIPTION either mIccRecords is null  or NV type device - not setting Imsi in mIccRecords"

    #@243
    move-object/from16 v0, p0

    #@245
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@248
    goto/16 :goto_0

    #@24a
    .line 442
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    #@24c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24f
    const-string/jumbo v19, "GET_CDMA_SUBSCRIPTION: error parsing cdmaSubscription params num="

    #@252
    move-object/from16 v0, v19

    #@254
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v4

    #@258
    .line 443
    array-length v0, v11

    #@259
    move/from16 v19, v0

    #@25b
    .line 442
    move/from16 v0, v19

    #@25d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@260
    move-result-object v4

    #@261
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@264
    move-result-object v4

    #@265
    move-object/from16 v0, p0

    #@267
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@26a
    goto/16 :goto_0

    #@26c
    .line 452
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "cdmaSubscription":[Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p0

    #@26e
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@270
    const/16 v19, 0x3

    #@272
    move-object/from16 v0, p0

    #@274
    move/from16 v1, v19

    #@276
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@279
    move-result-object v19

    #@27a
    move-object/from16 v0, v19

    #@27c
    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    #@27f
    goto/16 :goto_0

    #@281
    .line 456
    :pswitch_b
    move-object/from16 v0, p1

    #@283
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@285
    check-cast v10, Landroid/os/AsyncResult;

    #@287
    .line 458
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@289
    check-cast v4, [Ljava/lang/Object;

    #@28b
    const/16 v19, 0x0

    #@28d
    aget-object v16, v4, v19

    #@28f
    check-cast v16, Ljava/lang/String;

    #@291
    .line 459
    .local v16, "nitzString":Ljava/lang/String;
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@293
    check-cast v4, [Ljava/lang/Object;

    #@295
    const/16 v19, 0x1

    #@297
    aget-object v4, v4, v19

    #@299
    check-cast v4, Ljava/lang/Long;

    #@29b
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@29e
    move-result-wide v14

    #@29f
    .line 461
    .local v14, "nitzReceiveTime":J
    move-object/from16 v0, p0

    #@2a1
    move-object/from16 v1, v16

    #@2a3
    invoke-direct {v0, v1, v14, v15}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    #@2a6
    goto/16 :goto_0

    #@2a8
    .line 467
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "nitzReceiveTime":J
    .end local v16    # "nitzString":Ljava/lang/String;
    :pswitch_c
    move-object/from16 v0, p1

    #@2aa
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2ac
    check-cast v10, Landroid/os/AsyncResult;

    #@2ae
    .line 471
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x1

    #@2af
    move-object/from16 v0, p0

    #@2b1
    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDontPollSignalStrength:Z

    #@2b3
    .line 473
    const/4 v4, 0x0

    #@2b4
    move-object/from16 v0, p0

    #@2b6
    invoke-virtual {v0, v10, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    #@2b9
    goto/16 :goto_0

    #@2bb
    .line 477
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    new-instance v4, Ljava/lang/StringBuilder;

    #@2bd
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c0
    const-string/jumbo v19, "EVENT_RUIM_RECORDS_LOADED: what="

    #@2c3
    move-object/from16 v0, v19

    #@2c5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c8
    move-result-object v4

    #@2c9
    move-object/from16 v0, p1

    #@2cb
    iget v0, v0, Landroid/os/Message;->what:I

    #@2cd
    move/from16 v19, v0

    #@2cf
    move/from16 v0, v19

    #@2d1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d4
    move-result-object v4

    #@2d5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d8
    move-result-object v4

    #@2d9
    move-object/from16 v0, p0

    #@2db
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@2de
    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updatePhoneObject()V

    #@2e1
    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    #@2e4
    goto/16 :goto_0

    #@2e6
    .line 483
    :pswitch_e
    move-object/from16 v0, p1

    #@2e8
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2ea
    check-cast v10, Landroid/os/AsyncResult;

    #@2ec
    .line 485
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2ee
    if-nez v4, :cond_1

    #@2f0
    .line 486
    move-object/from16 v0, p0

    #@2f2
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2f4
    const/16 v19, 0x1f

    #@2f6
    const/16 v20, 0x0

    #@2f8
    move-object/from16 v0, p0

    #@2fa
    move/from16 v1, v19

    #@2fc
    move-object/from16 v2, v20

    #@2fe
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@301
    move-result-object v19

    #@302
    move-object/from16 v0, v19

    #@304
    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    #@307
    goto/16 :goto_0

    #@309
    .line 492
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    const-string/jumbo v4, "[CdmaServiceStateTracker] ERI file has been loaded, repolling."

    #@30c
    move-object/from16 v0, p0

    #@30e
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@311
    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    #@314
    goto/16 :goto_0

    #@316
    .line 497
    :pswitch_10
    move-object/from16 v0, p1

    #@318
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@31a
    check-cast v10, Landroid/os/AsyncResult;

    #@31c
    .line 498
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@31e
    if-nez v4, :cond_1

    #@320
    .line 499
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@322
    check-cast v13, [I

    #@324
    .line 500
    .local v13, "ints":[I
    const/4 v4, 0x0

    #@325
    aget v17, v13, v4

    #@327
    .line 501
    .local v17, "otaStatus":I
    const/16 v4, 0x8

    #@329
    move/from16 v0, v17

    #@32b
    if-eq v0, v4, :cond_e

    #@32d
    .line 502
    const/16 v4, 0xa

    #@32f
    move/from16 v0, v17

    #@331
    if-ne v0, v4, :cond_1

    #@333
    .line 503
    :cond_e
    const-string/jumbo v4, "EVENT_OTA_PROVISION_STATUS_CHANGE: Complete, Reload MDN"

    #@336
    move-object/from16 v0, p0

    #@338
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@33b
    .line 504
    move-object/from16 v0, p0

    #@33d
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@33f
    const/16 v19, 0x22

    #@341
    move-object/from16 v0, p0

    #@343
    move/from16 v1, v19

    #@345
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@348
    move-result-object v19

    #@349
    move-object/from16 v0, v19

    #@34b
    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    #@34e
    goto/16 :goto_0

    #@350
    .line 510
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "ints":[I
    .end local v17    # "otaStatus":I
    :pswitch_11
    move-object/from16 v0, p1

    #@352
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@354
    check-cast v10, Landroid/os/AsyncResult;

    #@356
    .line 511
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@358
    if-nez v4, :cond_1

    #@35a
    .line 512
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@35c
    check-cast v13, [I

    #@35e
    .line 513
    .restart local v13    # "ints":[I
    const/4 v4, 0x0

    #@35f
    aget v4, v13, v4

    #@361
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@364
    move-result-object v4

    #@365
    move-object/from16 v0, p0

    #@367
    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@369
    goto/16 :goto_0

    #@36b
    .line 518
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "ints":[I
    :pswitch_12
    const-string/jumbo v4, "EVENT_CHANGE_IMS_STATE"

    #@36e
    move-object/from16 v0, p0

    #@370
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@373
    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setPowerStateToDesired()V

    #@376
    goto/16 :goto_0

    #@378
    .line 523
    :pswitch_13
    const-string/jumbo v4, "EVENT_POLL_STATE_NETWORK_SELECTION_MODE"

    #@37b
    move-object/from16 v0, p0

    #@37d
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@380
    .line 524
    move-object/from16 v0, p1

    #@382
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@384
    check-cast v10, Landroid/os/AsyncResult;

    #@386
    .line 525
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@388
    if-nez v4, :cond_f

    #@38a
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@38c
    if-eqz v4, :cond_f

    #@38e
    .line 526
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@390
    check-cast v13, [I

    #@392
    .line 527
    .restart local v13    # "ints":[I
    const/4 v4, 0x0

    #@393
    aget v4, v13, v4

    #@395
    const/16 v19, 0x1

    #@397
    move/from16 v0, v19

    #@399
    if-ne v4, v0, :cond_1

    #@39b
    .line 528
    move-object/from16 v0, p0

    #@39d
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@39f
    const/16 v19, 0x0

    #@3a1
    move-object/from16 v0, v19

    #@3a3
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    #@3a6
    goto/16 :goto_0

    #@3a8
    .line 531
    .end local v13    # "ints":[I
    :cond_f
    const-string/jumbo v4, "Unable to getNetworkSelectionMode"

    #@3ab
    move-object/from16 v0, p0

    #@3ad
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@3b0
    goto/16 :goto_0

    #@3b2
    .line 295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_2
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_3
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_1
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 12
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    .line 807
    iget-object v7, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@5
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    #@7
    if-eq v7, v8, :cond_0

    #@9
    return-void

    #@a
    .line 809
    :cond_0
    iget-object v7, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@c
    if-eqz v7, :cond_b

    #@e
    .line 810
    const/4 v1, 0x0

    #@f
    .line 812
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v7, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@11
    instance-of v7, v7, Lcom/android/internal/telephony/CommandException;

    #@13
    if-eqz v7, :cond_1

    #@15
    .line 813
    iget-object v7, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@17
    check-cast v7, Lcom/android/internal/telephony/CommandException;

    #@19
    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@1c
    move-result-object v1

    #@1d
    .line 816
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@1f
    if-ne v1, v7, :cond_2

    #@21
    .line 818
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cancelPollState()V

    #@24
    .line 819
    return-void

    #@25
    .line 822
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    #@27
    if-eq v1, v7, :cond_3

    #@29
    .line 823
    new-instance v7, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v8, "handlePollStateResult: RIL returned an error where it must succeed"

    #@31
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v7

    #@35
    .line 824
    iget-object v8, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@37
    .line 823
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    #@42
    .line 833
    :cond_3
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    #@44
    aget v8, v7, v9

    #@46
    add-int/lit8 v8, v8, -0x1

    #@48
    aput v8, v7, v9

    #@4a
    .line 835
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    #@4c
    aget v7, v7, v9

    #@4e
    if-nez v7, :cond_a

    #@50
    .line 836
    const/4 v5, 0x0

    #@51
    .line 837
    .local v5, "namMatch":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    #@54
    move-result v7

    #@55
    if-nez v7, :cond_4

    #@57
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@59
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getSystemId()I

    #@5c
    move-result v7

    #@5d
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isHomeSid(I)Z

    #@60
    move-result v7

    #@61
    if-eqz v7, :cond_4

    #@63
    .line 838
    const/4 v5, 0x1

    #@64
    .line 842
    :cond_4
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@66
    if-eqz v7, :cond_5

    #@68
    .line 843
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@6a
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@6c
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@6f
    move-result v8

    #@70
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@72
    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    #@75
    move-result v8

    #@76
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@79
    .line 847
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@7b
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@7e
    move-result v7

    #@7f
    if-nez v7, :cond_c

    #@81
    const/4 v4, 0x1

    #@82
    .line 848
    .local v4, "isVoiceInService":Z
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@84
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@87
    move-result v0

    #@88
    .line 849
    .local v0, "dataRegType":I
    if-eqz v4, :cond_6

    #@8a
    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@8d
    move-result v7

    #@8e
    if-eqz v7, :cond_6

    #@90
    .line 850
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@92
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@94
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@97
    move-result v8

    #@98
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@9b
    .line 854
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@9d
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    #@9f
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    #@a2
    .line 855
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@a4
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    #@a6
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@a9
    .line 856
    const/4 v3, 0x1

    #@aa
    .line 857
    .local v3, "isPrlLoaded":Z
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@ac
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@af
    move-result v7

    #@b0
    if-eqz v7, :cond_7

    #@b2
    .line 858
    const/4 v3, 0x0

    #@b3
    .line 860
    :cond_7
    if-eqz v3, :cond_8

    #@b5
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@b7
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@ba
    move-result v7

    #@bb
    if-nez v7, :cond_d

    #@bd
    .line 862
    :cond_8
    const-string/jumbo v7, "Turn off roaming indicator if !isPrlLoaded or voice RAT is unknown"

    #@c0
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@c3
    .line 863
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@c5
    invoke-virtual {v7, v10}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@c8
    .line 891
    :cond_9
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@ca
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    #@cd
    move-result v6

    #@ce
    .line 892
    .local v6, "roamingIndicator":I
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@d0
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@d2
    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@d4
    .line 893
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    #@d6
    .line 892
    invoke-virtual {v8, v6, v9}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconIndex(II)I

    #@d9
    move-result v8

    #@da
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    #@dd
    .line 894
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@df
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@e1
    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@e3
    .line 895
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    #@e5
    .line 894
    invoke-virtual {v8, v6, v9}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconMode(II)I

    #@e8
    move-result v8

    #@e9
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    #@ec
    .line 901
    new-instance v7, Ljava/lang/StringBuilder;

    #@ee
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f1
    const-string/jumbo v8, "Set CDMA Roaming Indicator to: "

    #@f4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v7

    #@f8
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@fa
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    #@fd
    move-result v8

    #@fe
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@101
    move-result-object v7

    #@102
    .line 902
    const-string/jumbo v8, ". voiceRoaming = "

    #@105
    .line 901
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v7

    #@109
    .line 902
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@10b
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@10e
    move-result v8

    #@10f
    .line 901
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@112
    move-result-object v7

    #@113
    .line 903
    const-string/jumbo v8, ". dataRoaming = "

    #@116
    .line 901
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v7

    #@11a
    .line 903
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@11c
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@11f
    move-result v8

    #@120
    .line 901
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@123
    move-result-object v7

    #@124
    .line 904
    const-string/jumbo v8, ", isPrlLoaded = "

    #@127
    .line 901
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v7

    #@12b
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v7

    #@12f
    .line 905
    const-string/jumbo v8, ". namMatch = "

    #@132
    .line 901
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v7

    #@136
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@139
    move-result-object v7

    #@13a
    .line 905
    const-string/jumbo v8, " , mIsInPrl = "

    #@13d
    .line 901
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v7

    #@141
    .line 905
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    #@143
    .line 901
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@146
    move-result-object v7

    #@147
    .line 906
    const-string/jumbo v8, ", mRoamingIndicator = "

    #@14a
    .line 901
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v7

    #@14e
    .line 906
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    #@150
    .line 901
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@153
    move-result-object v7

    #@154
    .line 907
    const-string/jumbo v8, ", mDefaultRoamingIndicator= "

    #@157
    .line 901
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v7

    #@15b
    .line 907
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    #@15d
    .line 901
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@160
    move-result-object v7

    #@161
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v7

    #@165
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@168
    .line 909
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    #@16b
    .line 805
    .end local v0    # "dataRegType":I
    .end local v3    # "isPrlLoaded":Z
    .end local v4    # "isVoiceInService":Z
    .end local v5    # "namMatch":Z
    .end local v6    # "roamingIndicator":I
    :cond_a
    return-void

    #@16c
    .line 827
    :cond_b
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@16f
    goto/16 :goto_0

    #@171
    .line 828
    :catch_0
    move-exception v2

    #@172
    .line 829
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    #@174
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@177
    const-string/jumbo v8, "handlePollStateResult: Exception while polling service state. Probably malformed RIL response."

    #@17a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v7

    #@17e
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v7

    #@182
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@185
    move-result-object v7

    #@186
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    #@189
    goto/16 :goto_0

    #@18b
    .line 847
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v5    # "namMatch":Z
    :cond_c
    const/4 v4, 0x0

    #@18c
    .restart local v4    # "isVoiceInService":Z
    goto/16 :goto_1

    #@18e
    .line 864
    .restart local v0    # "dataRegType":I
    .restart local v3    # "isPrlLoaded":Z
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    #@191
    move-result v7

    #@192
    if-nez v7, :cond_9

    #@194
    .line 865
    if-nez v5, :cond_e

    #@196
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    #@198
    if-eqz v7, :cond_10

    #@19a
    .line 868
    :cond_e
    if-eqz v5, :cond_f

    #@19c
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    #@19e
    if-eqz v7, :cond_11

    #@1a0
    .line 877
    :cond_f
    if-nez v5, :cond_13

    #@1a2
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    #@1a4
    if-eqz v7, :cond_13

    #@1a6
    .line 879
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1a8
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    #@1aa
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1ad
    goto/16 :goto_2

    #@1af
    .line 867
    :cond_10
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1b1
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    #@1b3
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1b6
    goto/16 :goto_2

    #@1b8
    .line 870
    :cond_11
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1ba
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@1bd
    move-result v7

    #@1be
    .line 871
    const/16 v8, 0xe

    #@1c0
    .line 870
    if-ne v7, v8, :cond_12

    #@1c2
    .line 872
    const-string/jumbo v7, "Turn off roaming indicator as voice is LTE"

    #@1c5
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@1c8
    .line 873
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1ca
    invoke-virtual {v7, v10}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1cd
    goto/16 :goto_2

    #@1cf
    .line 875
    :cond_12
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1d1
    invoke-virtual {v7, v11}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1d4
    goto/16 :goto_2

    #@1d6
    .line 882
    :cond_13
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    #@1d8
    if-gt v7, v11, :cond_14

    #@1da
    .line 883
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1dc
    invoke-virtual {v7, v10}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1df
    goto/16 :goto_2

    #@1e1
    .line 886
    :cond_14
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1e3
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    #@1e5
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1e8
    goto/16 :goto_2
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 27
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 617
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 795
    const-string/jumbo v3, "handlePollStateResultMessage: RIL response handle in wrong phone! Expected CDMA RIL request and get GSM RIL request."

    #@6
    move-object/from16 v0, p0

    #@8
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    #@b
    .line 614
    :cond_0
    :goto_0
    return-void

    #@c
    .line 619
    :sswitch_0
    move-object/from16 v0, p2

    #@e
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@10
    move-object/from16 v22, v0

    #@12
    check-cast v22, [Ljava/lang/String;

    #@14
    .line 621
    .local v22, "states":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v24, "handlePollStateResultMessage: EVENT_POLL_STATE_GPRS states.length="

    #@1c
    move-object/from16 v0, v24

    #@1e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    .line 622
    move-object/from16 v0, v22

    #@24
    array-length v0, v0

    #@25
    move/from16 v24, v0

    #@27
    .line 621
    move/from16 v0, v24

    #@29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 622
    const-string/jumbo v24, " states="

    #@30
    .line 621
    move-object/from16 v0, v24

    #@32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    move-object/from16 v0, v22

    #@38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    move-object/from16 v0, p0

    #@42
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@45
    .line 625
    const/16 v19, 0x4

    #@47
    .line 626
    .local v19, "regState":I
    const/4 v12, 0x0

    #@48
    .line 628
    .local v12, "dataRadioTechnology":I
    move-object/from16 v0, v22

    #@4a
    array-length v3, v0

    #@4b
    if-lez v3, :cond_1

    #@4d
    .line 630
    const/4 v3, 0x0

    #@4e
    :try_start_0
    aget-object v3, v22, v3

    #@50
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@53
    move-result v19

    #@54
    .line 633
    move-object/from16 v0, v22

    #@56
    array-length v3, v0

    #@57
    const/16 v24, 0x4

    #@59
    move/from16 v0, v24

    #@5b
    if-lt v3, v0, :cond_1

    #@5d
    const/4 v3, 0x3

    #@5e
    aget-object v3, v22, v3

    #@60
    if-eqz v3, :cond_1

    #@62
    .line 634
    const/4 v3, 0x3

    #@63
    aget-object v3, v22, v3

    #@65
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@68
    move-result v12

    #@69
    .line 642
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    #@6b
    move/from16 v1, v19

    #@6d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    #@70
    move-result v13

    #@71
    .line 643
    .local v13, "dataRegState":I
    move-object/from16 v0, p0

    #@73
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@75
    invoke-virtual {v3, v13}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    #@78
    .line 644
    move-object/from16 v0, p0

    #@7a
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@7c
    invoke-virtual {v3, v12}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    #@7f
    .line 645
    move-object/from16 v0, p0

    #@81
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@83
    move-object/from16 v0, p0

    #@85
    move/from16 v1, v19

    #@87
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeIsRoaming(I)Z

    #@8a
    move-result v24

    #@8b
    move/from16 v0, v24

    #@8d
    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@90
    .line 647
    new-instance v3, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v24, "handlPollStateResultMessage: cdma setDataRegState="

    #@98
    move-object/from16 v0, v24

    #@9a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v3

    #@9e
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v3

    #@a2
    .line 648
    const-string/jumbo v24, " regState="

    #@a5
    .line 647
    move-object/from16 v0, v24

    #@a7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v3

    #@ab
    move/from16 v0, v19

    #@ad
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    .line 649
    const-string/jumbo v24, " dataRadioTechnology="

    #@b4
    .line 647
    move-object/from16 v0, v24

    #@b6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v3

    #@be
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v3

    #@c2
    move-object/from16 v0, p0

    #@c4
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@c7
    goto/16 :goto_0

    #@c9
    .line 636
    .end local v13    # "dataRegState":I
    :catch_0
    move-exception v15

    #@ca
    .line 637
    .local v15, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v24, "handlePollStateResultMessage: error parsing GprsRegistrationState: "

    #@d2
    move-object/from16 v0, v24

    #@d4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v3

    #@d8
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v3

    #@dc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v3

    #@e0
    move-object/from16 v0, p0

    #@e2
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    #@e5
    goto :goto_1

    #@e6
    .line 655
    .end local v12    # "dataRadioTechnology":I
    .end local v15    # "ex":Ljava/lang/NumberFormatException;
    .end local v19    # "regState":I
    .end local v22    # "states":[Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p2

    #@e8
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@ea
    move-object/from16 v22, v0

    #@ec
    check-cast v22, [Ljava/lang/String;

    #@ee
    .line 657
    .restart local v22    # "states":[Ljava/lang/String;
    const/16 v20, 0x4

    #@f0
    .line 658
    .local v20, "registrationState":I
    const/16 v17, -0x1

    #@f2
    .line 659
    .local v17, "radioTechnology":I
    const/4 v4, -0x1

    #@f3
    .line 661
    .local v4, "baseStationId":I
    const v5, 0x7fffffff

    #@f6
    .line 663
    .local v5, "baseStationLatitude":I
    const v6, 0x7fffffff

    #@f9
    .line 664
    .local v6, "baseStationLongitude":I
    const/4 v11, 0x0

    #@fa
    .line 665
    .local v11, "cssIndicator":I
    const/4 v7, 0x0

    #@fb
    .line 666
    .local v7, "systemId":I
    const/4 v8, 0x0

    #@fc
    .line 667
    .local v8, "networkId":I
    const/16 v21, -0x1

    #@fe
    .line 668
    .local v21, "roamingIndicator":I
    const/16 v23, 0x0

    #@100
    .line 669
    .local v23, "systemIsInPrl":I
    const/4 v14, 0x0

    #@101
    .line 670
    .local v14, "defaultRoamingIndicator":I
    const/16 v18, 0x0

    #@103
    .line 672
    .local v18, "reasonForDenial":I
    move-object/from16 v0, v22

    #@105
    array-length v3, v0

    #@106
    const/16 v24, 0xe

    #@108
    move/from16 v0, v24

    #@10a
    if-lt v3, v0, :cond_10

    #@10c
    .line 674
    const/4 v3, 0x0

    #@10d
    :try_start_1
    aget-object v3, v22, v3

    #@10f
    if-eqz v3, :cond_2

    #@111
    .line 675
    const/4 v3, 0x0

    #@112
    aget-object v3, v22, v3

    #@114
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@117
    move-result v20

    #@118
    .line 677
    :cond_2
    const/4 v3, 0x3

    #@119
    aget-object v3, v22, v3

    #@11b
    if-eqz v3, :cond_3

    #@11d
    .line 678
    const/4 v3, 0x3

    #@11e
    aget-object v3, v22, v3

    #@120
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@123
    move-result v17

    #@124
    .line 680
    :cond_3
    const/4 v3, 0x4

    #@125
    aget-object v3, v22, v3

    #@127
    if-eqz v3, :cond_4

    #@129
    .line 681
    const/4 v3, 0x4

    #@12a
    aget-object v3, v22, v3

    #@12c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12f
    move-result v4

    #@130
    .line 683
    :cond_4
    const/4 v3, 0x5

    #@131
    aget-object v3, v22, v3

    #@133
    if-eqz v3, :cond_5

    #@135
    .line 684
    const/4 v3, 0x5

    #@136
    aget-object v3, v22, v3

    #@138
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@13b
    move-result v5

    #@13c
    .line 686
    :cond_5
    const/4 v3, 0x6

    #@13d
    aget-object v3, v22, v3

    #@13f
    if-eqz v3, :cond_6

    #@141
    .line 687
    const/4 v3, 0x6

    #@142
    aget-object v3, v22, v3

    #@144
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@147
    move-result v6

    #@148
    .line 690
    :cond_6
    if-nez v5, :cond_7

    #@14a
    if-nez v6, :cond_7

    #@14c
    .line 691
    const v5, 0x7fffffff

    #@14f
    .line 692
    const v6, 0x7fffffff

    #@152
    .line 694
    :cond_7
    const/4 v3, 0x7

    #@153
    aget-object v3, v22, v3

    #@155
    if-eqz v3, :cond_8

    #@157
    .line 695
    const/4 v3, 0x7

    #@158
    aget-object v3, v22, v3

    #@15a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@15d
    move-result v11

    #@15e
    .line 697
    :cond_8
    const/16 v3, 0x8

    #@160
    aget-object v3, v22, v3

    #@162
    if-eqz v3, :cond_9

    #@164
    .line 698
    const/16 v3, 0x8

    #@166
    aget-object v3, v22, v3

    #@168
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@16b
    move-result v7

    #@16c
    .line 700
    :cond_9
    const/16 v3, 0x9

    #@16e
    aget-object v3, v22, v3

    #@170
    if-eqz v3, :cond_a

    #@172
    .line 701
    const/16 v3, 0x9

    #@174
    aget-object v3, v22, v3

    #@176
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@179
    move-result v8

    #@17a
    .line 703
    :cond_a
    const/16 v3, 0xa

    #@17c
    aget-object v3, v22, v3

    #@17e
    if-eqz v3, :cond_b

    #@180
    .line 704
    const/16 v3, 0xa

    #@182
    aget-object v3, v22, v3

    #@184
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@187
    move-result v21

    #@188
    .line 706
    :cond_b
    const/16 v3, 0xb

    #@18a
    aget-object v3, v22, v3

    #@18c
    if-eqz v3, :cond_c

    #@18e
    .line 707
    const/16 v3, 0xb

    #@190
    aget-object v3, v22, v3

    #@192
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@195
    move-result v23

    #@196
    .line 709
    :cond_c
    const/16 v3, 0xc

    #@198
    aget-object v3, v22, v3

    #@19a
    if-eqz v3, :cond_d

    #@19c
    .line 710
    const/16 v3, 0xc

    #@19e
    aget-object v3, v22, v3

    #@1a0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a3
    move-result v14

    #@1a4
    .line 712
    :cond_d
    const/16 v3, 0xd

    #@1a6
    aget-object v3, v22, v3

    #@1a8
    if-eqz v3, :cond_e

    #@1aa
    .line 713
    const/16 v3, 0xd

    #@1ac
    aget-object v3, v22, v3

    #@1ae
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@1b1
    move-result v18

    #@1b2
    .line 724
    :cond_e
    :goto_2
    move/from16 v0, v20

    #@1b4
    move-object/from16 v1, p0

    #@1b6
    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    #@1b8
    .line 729
    move-object/from16 v0, p0

    #@1ba
    move/from16 v1, v20

    #@1bc
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeIsRoaming(I)Z

    #@1bf
    move-result v3

    #@1c0
    if-eqz v3, :cond_f

    #@1c2
    const/16 v3, 0xa

    #@1c4
    aget-object v3, v22, v3

    #@1c6
    move-object/from16 v0, p0

    #@1c8
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamIndForHomeSystem(Ljava/lang/String;)Z

    #@1cb
    move-result v3

    #@1cc
    if-eqz v3, :cond_11

    #@1ce
    :cond_f
    const/4 v10, 0x0

    #@1cf
    .line 730
    .local v10, "cdmaRoaming":Z
    :goto_3
    move-object/from16 v0, p0

    #@1d1
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1d3
    invoke-virtual {v3, v10}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@1d6
    .line 731
    move-object/from16 v0, p0

    #@1d8
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1da
    move-object/from16 v0, p0

    #@1dc
    move/from16 v1, v20

    #@1de
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    #@1e1
    move-result v24

    #@1e2
    move/from16 v0, v24

    #@1e4
    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setState(I)V

    #@1e7
    .line 733
    move-object/from16 v0, p0

    #@1e9
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1eb
    move/from16 v0, v17

    #@1ed
    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    #@1f0
    .line 735
    move-object/from16 v0, p0

    #@1f2
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1f4
    invoke-virtual {v3, v11}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    #@1f7
    .line 736
    move-object/from16 v0, p0

    #@1f9
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1fb
    invoke-virtual {v3, v7, v8}, Landroid/telephony/ServiceState;->setSystemAndNetworkId(II)V

    #@1fe
    .line 737
    move/from16 v0, v21

    #@200
    move-object/from16 v1, p0

    #@202
    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    #@204
    .line 738
    if-nez v23, :cond_12

    #@206
    const/4 v3, 0x0

    #@207
    :goto_4
    move-object/from16 v0, p0

    #@209
    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    #@20b
    .line 739
    move-object/from16 v0, p0

    #@20d
    iput v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    #@20f
    .line 743
    move-object/from16 v0, p0

    #@211
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@213
    invoke-virtual/range {v3 .. v8}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    #@216
    .line 746
    if-nez v18, :cond_13

    #@218
    .line 747
    const-string/jumbo v3, "General"

    #@21b
    move-object/from16 v0, p0

    #@21d
    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    #@21f
    .line 754
    :goto_5
    move-object/from16 v0, p0

    #@221
    iget v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    #@223
    const/16 v24, 0x3

    #@225
    move/from16 v0, v24

    #@227
    if-ne v3, v0, :cond_0

    #@229
    .line 755
    new-instance v3, Ljava/lang/StringBuilder;

    #@22b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22e
    const-string/jumbo v24, "Registration denied, "

    #@231
    move-object/from16 v0, v24

    #@233
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v3

    #@237
    move-object/from16 v0, p0

    #@239
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    #@23b
    move-object/from16 v24, v0

    #@23d
    move-object/from16 v0, v24

    #@23f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@242
    move-result-object v3

    #@243
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@246
    move-result-object v3

    #@247
    move-object/from16 v0, p0

    #@249
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@24c
    goto/16 :goto_0

    #@24e
    .line 715
    .end local v10    # "cdmaRoaming":Z
    :catch_1
    move-exception v15

    #@24f
    .line 716
    .restart local v15    # "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@251
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@254
    const-string/jumbo v24, "EVENT_POLL_STATE_REGISTRATION_CDMA: error parsing: "

    #@257
    move-object/from16 v0, v24

    #@259
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25c
    move-result-object v3

    #@25d
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@260
    move-result-object v3

    #@261
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@264
    move-result-object v3

    #@265
    move-object/from16 v0, p0

    #@267
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    #@26a
    goto/16 :goto_2

    #@26c
    .line 719
    .end local v15    # "ex":Ljava/lang/NumberFormatException;
    :cond_10
    new-instance v3, Ljava/lang/RuntimeException;

    #@26e
    new-instance v24, Ljava/lang/StringBuilder;

    #@270
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@273
    const-string/jumbo v25, "Warning! Wrong number of parameters returned from RIL_REQUEST_REGISTRATION_STATE: expected 14 or more strings and got "

    #@276
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@279
    move-result-object v24

    #@27a
    .line 721
    move-object/from16 v0, v22

    #@27c
    array-length v0, v0

    #@27d
    move/from16 v25, v0

    #@27f
    .line 719
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@282
    move-result-object v24

    #@283
    .line 721
    const-string/jumbo v25, " strings"

    #@286
    .line 719
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@289
    move-result-object v24

    #@28a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28d
    move-result-object v24

    #@28e
    move-object/from16 v0, v24

    #@290
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@293
    throw v3

    #@294
    .line 729
    :cond_11
    const/4 v10, 0x1

    #@295
    .restart local v10    # "cdmaRoaming":Z
    goto/16 :goto_3

    #@297
    .line 738
    :cond_12
    const/4 v3, 0x1

    #@298
    goto/16 :goto_4

    #@29a
    .line 748
    :cond_13
    const/4 v3, 0x1

    #@29b
    move/from16 v0, v18

    #@29d
    if-ne v0, v3, :cond_14

    #@29f
    .line 749
    const-string/jumbo v3, "Authentication Failure"

    #@2a2
    move-object/from16 v0, p0

    #@2a4
    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    #@2a6
    goto/16 :goto_5

    #@2a8
    .line 751
    :cond_14
    const-string/jumbo v3, ""

    #@2ab
    move-object/from16 v0, p0

    #@2ad
    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    #@2af
    goto/16 :goto_5

    #@2b1
    .line 760
    .end local v4    # "baseStationId":I
    .end local v5    # "baseStationLatitude":I
    .end local v6    # "baseStationLongitude":I
    .end local v7    # "systemId":I
    .end local v8    # "networkId":I
    .end local v10    # "cdmaRoaming":Z
    .end local v11    # "cssIndicator":I
    .end local v14    # "defaultRoamingIndicator":I
    .end local v17    # "radioTechnology":I
    .end local v18    # "reasonForDenial":I
    .end local v20    # "registrationState":I
    .end local v21    # "roamingIndicator":I
    .end local v22    # "states":[Ljava/lang/String;
    .end local v23    # "systemIsInPrl":I
    :sswitch_2
    move-object/from16 v0, p2

    #@2b3
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2b5
    move-object/from16 v16, v0

    #@2b7
    check-cast v16, [Ljava/lang/String;

    #@2b9
    .line 762
    .local v16, "opNames":[Ljava/lang/String;
    if-eqz v16, :cond_1b

    #@2bb
    move-object/from16 v0, v16

    #@2bd
    array-length v3, v0

    #@2be
    const/16 v24, 0x3

    #@2c0
    move/from16 v0, v24

    #@2c2
    if-lt v3, v0, :cond_1b

    #@2c4
    .line 765
    const/4 v3, 0x2

    #@2c5
    aget-object v3, v16, v3

    #@2c7
    if-eqz v3, :cond_15

    #@2c9
    const/4 v3, 0x2

    #@2ca
    aget-object v3, v16, v3

    #@2cc
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@2cf
    move-result v3

    #@2d0
    const/16 v24, 0x5

    #@2d2
    move/from16 v0, v24

    #@2d4
    if-ge v3, v0, :cond_17

    #@2d6
    .line 768
    :cond_15
    :goto_6
    sget-object v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    #@2d8
    const-string/jumbo v24, "00000"

    #@2db
    .line 767
    move-object/from16 v0, v24

    #@2dd
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e0
    move-result-object v3

    #@2e1
    const/16 v24, 0x2

    #@2e3
    aput-object v3, v16, v24

    #@2e5
    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2ea
    const-string/jumbo v24, "RIL_REQUEST_OPERATOR.response[2], the numeric,  is bad. Using SystemProperties \'"

    #@2ed
    move-object/from16 v0, v24

    #@2ef
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f2
    move-result-object v3

    #@2f3
    .line 772
    sget-object v24, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    #@2f5
    .line 770
    move-object/from16 v0, v24

    #@2f7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fa
    move-result-object v3

    #@2fb
    .line 773
    const-string/jumbo v24, "\'= "

    #@2fe
    .line 770
    move-object/from16 v0, v24

    #@300
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@303
    move-result-object v3

    #@304
    .line 773
    const/16 v24, 0x2

    #@306
    aget-object v24, v16, v24

    #@308
    .line 770
    move-object/from16 v0, v24

    #@30a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30d
    move-result-object v3

    #@30e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@311
    move-result-object v3

    #@312
    move-object/from16 v0, p0

    #@314
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@317
    .line 777
    :cond_16
    move-object/from16 v0, p0

    #@319
    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@31b
    if-nez v3, :cond_18

    #@31d
    .line 779
    move-object/from16 v0, p0

    #@31f
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@321
    const/16 v24, 0x0

    #@323
    aget-object v24, v16, v24

    #@325
    const/16 v25, 0x1

    #@327
    aget-object v25, v16, v25

    #@329
    const/16 v26, 0x2

    #@32b
    aget-object v26, v16, v26

    #@32d
    move-object/from16 v0, v24

    #@32f
    move-object/from16 v1, v25

    #@331
    move-object/from16 v2, v26

    #@333
    invoke-virtual {v3, v0, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@336
    goto/16 :goto_0

    #@338
    .line 766
    :cond_17
    const-string/jumbo v3, "00000"

    #@33b
    const/16 v24, 0x2

    #@33d
    aget-object v24, v16, v24

    #@33f
    move-object/from16 v0, v24

    #@341
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@344
    move-result v3

    #@345
    .line 765
    if-eqz v3, :cond_16

    #@347
    goto :goto_6

    #@348
    .line 781
    :cond_18
    move-object/from16 v0, p0

    #@34a
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@34c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getPhoneId()I

    #@34f
    move-result v24

    #@350
    move/from16 v0, v24

    #@352
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@355
    move-result-object v3

    #@356
    if-eqz v3, :cond_19

    #@358
    .line 782
    move-object/from16 v0, p0

    #@35a
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@35c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getPhoneId()I

    #@35f
    move-result v24

    #@360
    move/from16 v0, v24

    #@362
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@365
    move-result-object v3

    #@366
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    #@369
    move-result-object v9

    #@36a
    .line 783
    :goto_7
    if-eqz v9, :cond_1a

    #@36c
    .line 784
    move-object/from16 v0, p0

    #@36e
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@370
    const/16 v24, 0x2

    #@372
    aget-object v24, v16, v24

    #@374
    move-object/from16 v0, v24

    #@376
    invoke-virtual {v3, v9, v9, v0}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@379
    goto/16 :goto_0

    #@37b
    .line 782
    :cond_19
    const/4 v9, 0x0

    #@37c
    .local v9, "brandOverride":Ljava/lang/String;
    goto :goto_7

    #@37d
    .line 786
    .end local v9    # "brandOverride":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    #@37f
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@381
    const/16 v24, 0x0

    #@383
    aget-object v24, v16, v24

    #@385
    const/16 v25, 0x1

    #@387
    aget-object v25, v16, v25

    #@389
    const/16 v26, 0x2

    #@38b
    aget-object v26, v16, v26

    #@38d
    move-object/from16 v0, v24

    #@38f
    move-object/from16 v1, v25

    #@391
    move-object/from16 v2, v26

    #@393
    invoke-virtual {v3, v0, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@396
    goto/16 :goto_0

    #@398
    .line 790
    :cond_1b
    const-string/jumbo v3, "EVENT_POLL_STATE_OPERATOR_CDMA: error parsing opNames"

    #@39b
    move-object/from16 v0, p0

    #@39d
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@3a0
    goto/16 :goto_0

    #@3a2
    .line 617
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    #@0
    .prologue
    .line 1955
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@4
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    #@9
    .line 1956
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@b
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@d
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@f
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    #@12
    .line 1957
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@14
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@16
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@18
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    #@1b
    .line 1958
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1d
    const/4 v1, 0x0

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    #@22
    .line 1953
    return-void
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    #@0
    .prologue
    .line 1886
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected isInvalidOperatorNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1359
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x5

    #@7
    if-ge v0, v1, :cond_1

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    .line 1360
    :cond_1
    const-string/jumbo v0, "000"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    goto :goto_0
.end method

.method public isMinInfoReady()Z
    .locals 1

    #@0
    .prologue
    .line 1924
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    #@2
    return v0
.end method

.method protected isSidsAllZeros()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1853
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1854
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .line 1855
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    #@d
    aget v1, v1, v0

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 1856
    return v2

    #@12
    .line 1854
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1860
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x1

    #@16
    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2047
    const-string/jumbo v0, "CdmaSST"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[CdmaSST] "

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
    .line 2046
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2052
    const-string/jumbo v0, "CdmaSST"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[CdmaSST] "

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
    .line 2051
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2015
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 2016
    return-void

    #@6
    .line 2019
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    move-result-object v0

    #@a
    .line 2021
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@c
    if-eq v1, v0, :cond_3

    #@e
    .line 2022
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 2023
    const-string/jumbo v1, "Removing stale icc objects."

    #@15
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@18
    .line 2024
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1a
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    #@1d
    .line 2025
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 2026
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@23
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@26
    .line 2028
    :cond_1
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@28
    .line 2029
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2a
    .line 2031
    :cond_2
    if-eqz v0, :cond_3

    #@2c
    .line 2032
    const-string/jumbo v1, "New card found"

    #@2f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@32
    .line 2033
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@34
    .line 2034
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@36
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@3c
    .line 2035
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@3e
    if-eqz v1, :cond_3

    #@40
    .line 2036
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@42
    const/16 v2, 0x1a

    #@44
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@47
    .line 2037
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@49
    if-eqz v1, :cond_3

    #@4b
    .line 2038
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@4d
    const/16 v2, 0x1b

    #@4f
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@52
    .line 2014
    :cond_3
    return-void
.end method

.method protected parseSidNid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sidStr"    # Ljava/lang/String;
    .param p2, "nidStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1962
    if-eqz p1, :cond_0

    #@2
    .line 1963
    const-string/jumbo v4, ","

    #@5
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 1964
    .local v3, "sid":[Ljava/lang/String;
    array-length v4, v3

    #@a
    new-array v4, v4, [I

    #@c
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    #@e
    .line 1965
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@10
    if-ge v1, v4, :cond_0

    #@12
    .line 1967
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    #@14
    aget-object v5, v3, v1

    #@16
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@19
    move-result v5

    #@1a
    aput v5, v4, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1965
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1968
    :catch_0
    move-exception v0

    #@20
    .line 1969
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v5, "error parsing system id: "

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    #@37
    goto :goto_1

    #@38
    .line 1973
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .end local v3    # "sid":[Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v5, "CDMA_SUBSCRIPTION: SID="

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@4f
    .line 1975
    if-eqz p2, :cond_1

    #@51
    .line 1976
    const-string/jumbo v4, ","

    #@54
    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    .line 1977
    .local v2, "nid":[Ljava/lang/String;
    array-length v4, v2

    #@59
    new-array v4, v4, [I

    #@5b
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    #@5d
    .line 1978
    const/4 v1, 0x0

    #@5e
    .restart local v1    # "i":I
    :goto_2
    array-length v4, v2

    #@5f
    if-ge v1, v4, :cond_1

    #@61
    .line 1980
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    #@63
    aget-object v5, v2, v1

    #@65
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@68
    move-result v5

    #@69
    aput v5, v4, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@6b
    .line 1978
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@6d
    goto :goto_2

    #@6e
    .line 1981
    :catch_1
    move-exception v0

    #@6f
    .line 1982
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v5, "CDMA_SUBSCRIPTION: error parsing network id: "

    #@77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    #@86
    goto :goto_3

    #@87
    .line 1986
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .end local v2    # "nid":[Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v5, "CDMA_SUBSCRIPTION: NID="

    #@8f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v4

    #@97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@9e
    .line 1961
    return-void
.end method

.method public pollState()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1004
    const/4 v0, 0x1

    #@2
    new-array v0, v0, [I

    #@4
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    #@6
    .line 1005
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    #@8
    aput v3, v0, v3

    #@a
    .line 1007
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->-getcom_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues()[I

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

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
    .line 1033
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    #@1f
    aget v1, v0, v3

    #@21
    add-int/lit8 v1, v1, 0x1

    #@23
    aput v1, v0, v3

    #@25
    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@27
    .line 1036
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    #@29
    const/16 v2, 0x19

    #@2b
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2e
    move-result-object v1

    #@2f
    .line 1035
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    #@32
    .line 1038
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    #@34
    aget v1, v0, v3

    #@36
    add-int/lit8 v1, v1, 0x1

    #@38
    aput v1, v0, v3

    #@3a
    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3c
    .line 1041
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    #@3e
    const/16 v2, 0x18

    #@40
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@43
    move-result-object v1

    #@44
    .line 1040
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    #@47
    .line 1043
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    #@49
    aget v1, v0, v3

    #@4b
    add-int/lit8 v1, v1, 0x1

    #@4d
    aput v1, v0, v3

    #@4f
    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@51
    .line 1046
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    #@53
    .line 1045
    const/4 v2, 0x5

    #@54
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@57
    move-result-object v1

    #@58
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    #@5b
    .line 1003
    :goto_1
    return-void

    #@5c
    .line 1009
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@5e
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@61
    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@63
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    #@66
    .line 1011
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    #@69
    .line 1012
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    #@6b
    .line 1014
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    #@6e
    goto :goto_1

    #@6f
    .line 1018
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@71
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    #@74
    .line 1019
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@76
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    #@79
    .line 1020
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    #@7c
    .line 1021
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    #@7e
    .line 1024
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@80
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@83
    move-result v0

    #@84
    .line 1023
    const/16 v1, 0x12

    #@86
    if-eq v1, v0, :cond_0

    #@88
    .line 1025
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    #@8b
    goto :goto_0

    #@8c
    .line 1007
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 32

    #@0
    .prologue
    .line 1167
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateRoamingState()V

    #@3
    .line 1169
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    #@6
    .line 1170
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->resetServiceStateInIwlanMode()V

    #@9
    .line 1171
    new-instance v29, Ljava/lang/StringBuilder;

    #@b
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v30, "pollStateDone: cdma oldSS=["

    #@11
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v29

    #@15
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@19
    move-object/from16 v30, v0

    #@1b
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v29

    #@1f
    const-string/jumbo v30, "] newSS=["

    #@22
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v29

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@2a
    move-object/from16 v30, v0

    #@2c
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v29

    #@30
    const-string/jumbo v30, "]"

    #@33
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v29

    #@37
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v29

    #@3b
    move-object/from16 v0, p0

    #@3d
    move-object/from16 v1, v29

    #@3f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@42
    .line 1174
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@46
    move-object/from16 v29, v0

    #@48
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@4b
    move-result v29

    #@4c
    if-eqz v29, :cond_15

    #@4e
    .line 1175
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@52
    move-object/from16 v29, v0

    #@54
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@57
    move-result v29

    #@58
    if-nez v29, :cond_14

    #@5a
    const/16 v16, 0x1

    #@5c
    .line 1178
    .local v16, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@60
    move-object/from16 v29, v0

    #@62
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@65
    move-result v29

    #@66
    if-nez v29, :cond_17

    #@68
    .line 1179
    move-object/from16 v0, p0

    #@6a
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@6c
    move-object/from16 v29, v0

    #@6e
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@71
    move-result v29

    #@72
    if-eqz v29, :cond_16

    #@74
    const/4 v14, 0x1

    #@75
    .line 1182
    .local v14, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@79
    move-object/from16 v29, v0

    #@7b
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@7e
    move-result v29

    #@7f
    if-eqz v29, :cond_19

    #@81
    .line 1183
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@85
    move-object/from16 v29, v0

    #@87
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@8a
    move-result v29

    #@8b
    if-nez v29, :cond_18

    #@8d
    const/4 v8, 0x1

    #@8e
    .line 1186
    .local v8, "hasCdmaDataConnectionAttached":Z
    :goto_2
    move-object/from16 v0, p0

    #@90
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@92
    move-object/from16 v29, v0

    #@94
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@97
    move-result v29

    #@98
    if-nez v29, :cond_1b

    #@9a
    .line 1187
    move-object/from16 v0, p0

    #@9c
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@9e
    move-object/from16 v29, v0

    #@a0
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@a3
    move-result v29

    #@a4
    if-eqz v29, :cond_1a

    #@a6
    const/4 v10, 0x1

    #@a7
    .line 1190
    .local v10, "hasCdmaDataConnectionDetached":Z
    :goto_3
    move-object/from16 v0, p0

    #@a9
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@ab
    move-object/from16 v29, v0

    #@ad
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@b0
    move-result v29

    #@b1
    move-object/from16 v0, p0

    #@b3
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@b5
    move-object/from16 v30, v0

    #@b7
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@ba
    move-result v30

    #@bb
    move/from16 v0, v29

    #@bd
    move/from16 v1, v30

    #@bf
    if-eq v0, v1, :cond_1c

    #@c1
    const/4 v9, 0x1

    #@c2
    .line 1193
    .local v9, "hasCdmaDataConnectionChanged":Z
    :goto_4
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c6
    move-object/from16 v29, v0

    #@c8
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@cb
    move-result v29

    #@cc
    move-object/from16 v0, p0

    #@ce
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@d0
    move-object/from16 v30, v0

    #@d2
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@d5
    move-result v30

    #@d6
    move/from16 v0, v29

    #@d8
    move/from16 v1, v30

    #@da
    if-eq v0, v1, :cond_1d

    #@dc
    const/16 v18, 0x1

    #@de
    .line 1196
    .local v18, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_5
    move-object/from16 v0, p0

    #@e0
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@e2
    move-object/from16 v29, v0

    #@e4
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@e7
    move-result v29

    #@e8
    move-object/from16 v0, p0

    #@ea
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@ec
    move-object/from16 v30, v0

    #@ee
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@f1
    move-result v30

    #@f2
    move/from16 v0, v29

    #@f4
    move/from16 v1, v30

    #@f6
    if-eq v0, v1, :cond_1e

    #@f8
    const/16 v17, 0x1

    #@fa
    .line 1198
    .local v17, "hasRilDataRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    #@fc
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@fe
    move-object/from16 v29, v0

    #@100
    move-object/from16 v0, p0

    #@102
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@104
    move-object/from16 v30, v0

    #@106
    invoke-virtual/range {v29 .. v30}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    #@109
    move-result v29

    #@10a
    if-eqz v29, :cond_1f

    #@10c
    const/4 v11, 0x0

    #@10d
    .line 1200
    .local v11, "hasChanged":Z
    :goto_7
    move-object/from16 v0, p0

    #@10f
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@111
    move-object/from16 v29, v0

    #@113
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@116
    move-result v29

    #@117
    if-nez v29, :cond_20

    #@119
    move-object/from16 v0, p0

    #@11b
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@11d
    move-object/from16 v29, v0

    #@11f
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@122
    move-result v20

    #@123
    .line 1202
    :goto_8
    move-object/from16 v0, p0

    #@125
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@127
    move-object/from16 v29, v0

    #@129
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@12c
    move-result v29

    #@12d
    if-eqz v29, :cond_0

    #@12f
    move-object/from16 v0, p0

    #@131
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@133
    move-object/from16 v29, v0

    #@135
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@138
    move-result v29

    #@139
    if-eqz v29, :cond_21

    #@13b
    :cond_0
    const/16 v19, 0x0

    #@13d
    .line 1204
    .local v19, "hasVoiceRoamingOff":Z
    :goto_9
    move-object/from16 v0, p0

    #@13f
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@141
    move-object/from16 v29, v0

    #@143
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@146
    move-result v29

    #@147
    if-nez v29, :cond_22

    #@149
    move-object/from16 v0, p0

    #@14b
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@14d
    move-object/from16 v29, v0

    #@14f
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@152
    move-result v13

    #@153
    .line 1206
    :goto_a
    move-object/from16 v0, p0

    #@155
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@157
    move-object/from16 v29, v0

    #@159
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@15c
    move-result v29

    #@15d
    if-eqz v29, :cond_1

    #@15f
    move-object/from16 v0, p0

    #@161
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@163
    move-object/from16 v29, v0

    #@165
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@168
    move-result v29

    #@169
    if-eqz v29, :cond_23

    #@16b
    :cond_1
    const/4 v12, 0x0

    #@16c
    .line 1208
    .local v12, "hasDataRoamingOff":Z
    :goto_b
    move-object/from16 v0, p0

    #@16e
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@170
    move-object/from16 v29, v0

    #@172
    move-object/from16 v0, p0

    #@174
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@176
    move-object/from16 v30, v0

    #@178
    invoke-virtual/range {v29 .. v30}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    #@17b
    move-result v29

    #@17c
    if-eqz v29, :cond_24

    #@17e
    const/4 v15, 0x0

    #@17f
    .line 1211
    .local v15, "hasLocationChanged":Z
    :goto_c
    move-object/from16 v0, p0

    #@181
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@183
    move-object/from16 v29, v0

    #@185
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@188
    move-result-object v29

    #@189
    const-string/jumbo v30, "phone"

    #@18c
    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@18f
    move-result-object v27

    #@190
    check-cast v27, Landroid/telephony/TelephonyManager;

    #@192
    .line 1214
    .local v27, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    #@194
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@196
    move-object/from16 v29, v0

    #@198
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@19b
    move-result v29

    #@19c
    move-object/from16 v0, p0

    #@19e
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1a0
    move-object/from16 v30, v0

    #@1a2
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@1a5
    move-result v30

    #@1a6
    move/from16 v0, v29

    #@1a8
    move/from16 v1, v30

    #@1aa
    if-ne v0, v1, :cond_2

    #@1ac
    .line 1215
    move-object/from16 v0, p0

    #@1ae
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1b0
    move-object/from16 v29, v0

    #@1b2
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@1b5
    move-result v29

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1ba
    move-object/from16 v30, v0

    #@1bc
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@1bf
    move-result v30

    #@1c0
    move/from16 v0, v29

    #@1c2
    move/from16 v1, v30

    #@1c4
    if-eq v0, v1, :cond_3

    #@1c6
    .line 1216
    :cond_2
    const/16 v29, 0x4

    #@1c8
    move/from16 v0, v29

    #@1ca
    new-array v0, v0, [Ljava/lang/Object;

    #@1cc
    move-object/from16 v29, v0

    #@1ce
    .line 1217
    move-object/from16 v0, p0

    #@1d0
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1d2
    move-object/from16 v30, v0

    #@1d4
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@1d7
    move-result v30

    #@1d8
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1db
    move-result-object v30

    #@1dc
    const/16 v31, 0x0

    #@1de
    aput-object v30, v29, v31

    #@1e0
    move-object/from16 v0, p0

    #@1e2
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1e4
    move-object/from16 v30, v0

    #@1e6
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@1e9
    move-result v30

    #@1ea
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1ed
    move-result-object v30

    #@1ee
    const/16 v31, 0x1

    #@1f0
    aput-object v30, v29, v31

    #@1f2
    .line 1218
    move-object/from16 v0, p0

    #@1f4
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1f6
    move-object/from16 v30, v0

    #@1f8
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@1fb
    move-result v30

    #@1fc
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1ff
    move-result-object v30

    #@200
    const/16 v31, 0x2

    #@202
    aput-object v30, v29, v31

    #@204
    move-object/from16 v0, p0

    #@206
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@208
    move-object/from16 v30, v0

    #@20a
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@20d
    move-result v30

    #@20e
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@211
    move-result-object v30

    #@212
    const/16 v31, 0x3

    #@214
    aput-object v30, v29, v31

    #@216
    .line 1216
    const v30, 0xc3c4

    #@219
    move/from16 v0, v30

    #@21b
    move-object/from16 v1, v29

    #@21d
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@220
    .line 1222
    :cond_3
    move-object/from16 v0, p0

    #@222
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@224
    move-object/from16 v28, v0

    #@226
    .line 1223
    .local v28, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    #@228
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@22a
    move-object/from16 v29, v0

    #@22c
    move-object/from16 v0, v29

    #@22e
    move-object/from16 v1, p0

    #@230
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@232
    .line 1224
    move-object/from16 v0, v28

    #@234
    move-object/from16 v1, p0

    #@236
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@238
    .line 1226
    move-object/from16 v0, p0

    #@23a
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@23c
    move-object/from16 v29, v0

    #@23e
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@241
    .line 1228
    move-object/from16 v0, p0

    #@243
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@245
    move-object/from16 v26, v0

    #@247
    .line 1229
    .local v26, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    #@249
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@24b
    move-object/from16 v29, v0

    #@24d
    move-object/from16 v0, v29

    #@24f
    move-object/from16 v1, p0

    #@251
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@253
    .line 1230
    move-object/from16 v0, v26

    #@255
    move-object/from16 v1, p0

    #@257
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@259
    .line 1232
    if-eqz v18, :cond_4

    #@25b
    .line 1233
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updatePhoneObject()V

    #@25e
    .line 1236
    :cond_4
    if-eqz v17, :cond_5

    #@260
    .line 1237
    move-object/from16 v0, p0

    #@262
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@264
    move-object/from16 v29, v0

    #@266
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@269
    move-result v29

    #@26a
    move-object/from16 v0, p0

    #@26c
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@26e
    move-object/from16 v30, v0

    #@270
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@273
    move-result v30

    #@274
    move-object/from16 v0, v27

    #@276
    move/from16 v1, v29

    #@278
    move/from16 v2, v30

    #@27a
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    #@27d
    .line 1240
    move-object/from16 v0, p0

    #@27f
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@281
    move-object/from16 v29, v0

    #@283
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@286
    move-result v29

    #@287
    .line 1239
    const/16 v30, 0x12

    #@289
    move/from16 v0, v30

    #@28b
    move/from16 v1, v29

    #@28d
    if-ne v0, v1, :cond_5

    #@28f
    .line 1241
    const-string/jumbo v29, "pollStateDone: IWLAN enabled"

    #@292
    move-object/from16 v0, p0

    #@294
    move-object/from16 v1, v29

    #@296
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@299
    .line 1245
    :cond_5
    if-eqz v16, :cond_6

    #@29b
    .line 1246
    move-object/from16 v0, p0

    #@29d
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    #@29f
    move-object/from16 v29, v0

    #@2a1
    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@2a4
    .line 1249
    :cond_6
    if-eqz v11, :cond_a

    #@2a6
    .line 1250
    move-object/from16 v0, p0

    #@2a8
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2aa
    move-object/from16 v29, v0

    #@2ac
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2af
    move-result-object v29

    #@2b0
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@2b3
    move-result v29

    #@2b4
    if-eqz v29, :cond_7

    #@2b6
    move-object/from16 v0, p0

    #@2b8
    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@2ba
    move/from16 v29, v0

    #@2bc
    if-eqz v29, :cond_25

    #@2be
    .line 1266
    :cond_7
    :goto_d
    move-object/from16 v0, p0

    #@2c0
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@2c2
    move-object/from16 v29, v0

    #@2c4
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@2c7
    move-result v29

    #@2c8
    move-object/from16 v0, p0

    #@2ca
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2cc
    move-object/from16 v30, v0

    #@2ce
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@2d1
    move-result-object v30

    #@2d2
    move-object/from16 v0, v27

    #@2d4
    move/from16 v1, v29

    #@2d6
    move-object/from16 v2, v30

    #@2d8
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    #@2db
    .line 1268
    move-object/from16 v0, p0

    #@2dd
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@2df
    move-object/from16 v29, v0

    #@2e1
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@2e4
    move-result v29

    #@2e5
    move-object/from16 v0, v27

    #@2e7
    move/from16 v1, v29

    #@2e9
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    #@2ec
    move-result-object v24

    #@2ed
    .line 1269
    .local v24, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2ef
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2f1
    move-object/from16 v29, v0

    #@2f3
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@2f6
    move-result-object v23

    #@2f7
    .line 1272
    .local v23, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2f9
    move-object/from16 v1, v23

    #@2fb
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    #@2fe
    move-result v29

    #@2ff
    if-eqz v29, :cond_8

    #@301
    .line 1273
    move-object/from16 v0, p0

    #@303
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@305
    move-object/from16 v29, v0

    #@307
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getSystemId()I

    #@30a
    move-result v25

    #@30b
    .line 1274
    .local v25, "sid":I
    move-object/from16 v0, p0

    #@30d
    move-object/from16 v1, v23

    #@30f
    move/from16 v2, v25

    #@311
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    #@314
    move-result-object v23

    #@315
    .line 1277
    .end local v25    # "sid":I
    :cond_8
    move-object/from16 v0, p0

    #@317
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@319
    move-object/from16 v29, v0

    #@31b
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@31e
    move-result v29

    #@31f
    move-object/from16 v0, v27

    #@321
    move/from16 v1, v29

    #@323
    move-object/from16 v2, v23

    #@325
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    #@328
    .line 1279
    move-object/from16 v0, p0

    #@32a
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@32c
    move-object/from16 v29, v0

    #@32e
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@331
    move-result-object v29

    #@332
    .line 1278
    move-object/from16 v0, p0

    #@334
    move-object/from16 v1, v23

    #@336
    move-object/from16 v2, v24

    #@338
    move-object/from16 v3, v29

    #@33a
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    #@33d
    .line 1281
    move-object/from16 v0, p0

    #@33f
    move-object/from16 v1, v23

    #@341
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    #@344
    move-result v29

    #@345
    if-eqz v29, :cond_27

    #@347
    .line 1282
    new-instance v29, Ljava/lang/StringBuilder;

    #@349
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@34c
    const-string/jumbo v30, "operatorNumeric "

    #@34f
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@352
    move-result-object v29

    #@353
    move-object/from16 v0, v29

    #@355
    move-object/from16 v1, v23

    #@357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35a
    move-result-object v29

    #@35b
    const-string/jumbo v30, "is invalid"

    #@35e
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@361
    move-result-object v29

    #@362
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@365
    move-result-object v29

    #@366
    move-object/from16 v0, p0

    #@368
    move-object/from16 v1, v29

    #@36a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@36d
    .line 1283
    move-object/from16 v0, p0

    #@36f
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@371
    move-object/from16 v29, v0

    #@373
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@376
    move-result v29

    #@377
    const-string/jumbo v30, ""

    #@37a
    move-object/from16 v0, v27

    #@37c
    move/from16 v1, v29

    #@37e
    move-object/from16 v2, v30

    #@380
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@383
    .line 1284
    const/16 v29, 0x0

    #@385
    move/from16 v0, v29

    #@387
    move-object/from16 v1, p0

    #@389
    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    #@38b
    .line 1308
    :cond_9
    :goto_e
    move-object/from16 v0, p0

    #@38d
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@38f
    move-object/from16 v29, v0

    #@391
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@394
    move-result v30

    #@395
    .line 1309
    move-object/from16 v0, p0

    #@397
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@399
    move-object/from16 v29, v0

    #@39b
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@39e
    move-result v29

    #@39f
    if-nez v29, :cond_28

    #@3a1
    move-object/from16 v0, p0

    #@3a3
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3a5
    move-object/from16 v29, v0

    #@3a7
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@3aa
    move-result v29

    #@3ab
    .line 1308
    :goto_f
    move-object/from16 v0, v27

    #@3ad
    move/from16 v1, v30

    #@3af
    move/from16 v2, v29

    #@3b1
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    #@3b4
    .line 1311
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    #@3b7
    .line 1313
    move-object/from16 v0, p0

    #@3b9
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3bb
    move-object/from16 v29, v0

    #@3bd
    move-object/from16 v0, p0

    #@3bf
    move-object/from16 v1, v29

    #@3c1
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    #@3c4
    .line 1314
    new-instance v29, Ljava/lang/StringBuilder;

    #@3c6
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@3c9
    const-string/jumbo v30, "Broadcasting ServiceState : "

    #@3cc
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3cf
    move-result-object v29

    #@3d0
    move-object/from16 v0, p0

    #@3d2
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3d4
    move-object/from16 v30, v0

    #@3d6
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d9
    move-result-object v29

    #@3da
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3dd
    move-result-object v29

    #@3de
    move-object/from16 v0, p0

    #@3e0
    move-object/from16 v1, v29

    #@3e2
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@3e5
    .line 1315
    move-object/from16 v0, p0

    #@3e7
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@3e9
    move-object/from16 v29, v0

    #@3eb
    move-object/from16 v0, p0

    #@3ed
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3ef
    move-object/from16 v30, v0

    #@3f1
    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    #@3f4
    .line 1318
    .end local v23    # "operatorNumeric":Ljava/lang/String;
    .end local v24    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_a
    if-eqz v8, :cond_b

    #@3f6
    .line 1319
    move-object/from16 v0, p0

    #@3f8
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    #@3fa
    move-object/from16 v29, v0

    #@3fc
    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@3ff
    .line 1322
    :cond_b
    if-eqz v10, :cond_c

    #@401
    .line 1323
    move-object/from16 v0, p0

    #@403
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@405
    move-object/from16 v29, v0

    #@407
    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@40a
    .line 1326
    :cond_c
    if-nez v9, :cond_d

    #@40c
    if-eqz v17, :cond_e

    #@40e
    .line 1327
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    #@411
    .line 1329
    move-object/from16 v0, p0

    #@413
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@415
    move-object/from16 v29, v0

    #@417
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@41a
    move-result v29

    #@41b
    .line 1328
    const/16 v30, 0x12

    #@41d
    move/from16 v0, v30

    #@41f
    move/from16 v1, v29

    #@421
    if-ne v0, v1, :cond_29

    #@423
    .line 1330
    move-object/from16 v0, p0

    #@425
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@427
    move-object/from16 v29, v0

    #@429
    const-string/jumbo v30, "iwlanAvailable"

    #@42c
    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@42f
    .line 1336
    :cond_e
    :goto_10
    if-eqz v20, :cond_f

    #@431
    .line 1337
    move-object/from16 v0, p0

    #@433
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@435
    move-object/from16 v29, v0

    #@437
    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@43a
    .line 1340
    :cond_f
    if-eqz v19, :cond_10

    #@43c
    .line 1341
    move-object/from16 v0, p0

    #@43e
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@440
    move-object/from16 v29, v0

    #@442
    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@445
    .line 1344
    :cond_10
    if-eqz v13, :cond_11

    #@447
    .line 1345
    move-object/from16 v0, p0

    #@449
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@44b
    move-object/from16 v29, v0

    #@44d
    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@450
    .line 1348
    :cond_11
    if-eqz v12, :cond_12

    #@452
    .line 1349
    move-object/from16 v0, p0

    #@454
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@456
    move-object/from16 v29, v0

    #@458
    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@45b
    .line 1352
    :cond_12
    if-eqz v15, :cond_13

    #@45d
    .line 1353
    move-object/from16 v0, p0

    #@45f
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@461
    move-object/from16 v29, v0

    #@463
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    #@466
    .line 1166
    :cond_13
    return-void

    #@467
    .line 1175
    .end local v8    # "hasCdmaDataConnectionAttached":Z
    .end local v9    # "hasCdmaDataConnectionChanged":Z
    .end local v10    # "hasCdmaDataConnectionDetached":Z
    .end local v11    # "hasChanged":Z
    .end local v12    # "hasDataRoamingOff":Z
    .end local v14    # "hasDeregistered":Z
    .end local v15    # "hasLocationChanged":Z
    .end local v16    # "hasRegistered":Z
    .end local v17    # "hasRilDataRadioTechnologyChanged":Z
    .end local v18    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v19    # "hasVoiceRoamingOff":Z
    .end local v26    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v27    # "tm":Landroid/telephony/TelephonyManager;
    .end local v28    # "tss":Landroid/telephony/ServiceState;
    :cond_14
    const/16 v16, 0x0

    #@469
    .restart local v16    # "hasRegistered":Z
    goto/16 :goto_0

    #@46b
    .line 1174
    .end local v16    # "hasRegistered":Z
    :cond_15
    const/16 v16, 0x0

    #@46d
    .restart local v16    # "hasRegistered":Z
    goto/16 :goto_0

    #@46f
    .line 1179
    :cond_16
    const/4 v14, 0x0

    #@470
    .restart local v14    # "hasDeregistered":Z
    goto/16 :goto_1

    #@472
    .line 1178
    .end local v14    # "hasDeregistered":Z
    :cond_17
    const/4 v14, 0x0

    #@473
    .restart local v14    # "hasDeregistered":Z
    goto/16 :goto_1

    #@475
    .line 1183
    :cond_18
    const/4 v8, 0x0

    #@476
    .restart local v8    # "hasCdmaDataConnectionAttached":Z
    goto/16 :goto_2

    #@478
    .line 1182
    .end local v8    # "hasCdmaDataConnectionAttached":Z
    :cond_19
    const/4 v8, 0x0

    #@479
    .restart local v8    # "hasCdmaDataConnectionAttached":Z
    goto/16 :goto_2

    #@47b
    .line 1187
    :cond_1a
    const/4 v10, 0x0

    #@47c
    .restart local v10    # "hasCdmaDataConnectionDetached":Z
    goto/16 :goto_3

    #@47e
    .line 1186
    .end local v10    # "hasCdmaDataConnectionDetached":Z
    :cond_1b
    const/4 v10, 0x0

    #@47f
    .restart local v10    # "hasCdmaDataConnectionDetached":Z
    goto/16 :goto_3

    #@481
    .line 1190
    :cond_1c
    const/4 v9, 0x0

    #@482
    .restart local v9    # "hasCdmaDataConnectionChanged":Z
    goto/16 :goto_4

    #@484
    .line 1193
    :cond_1d
    const/16 v18, 0x0

    #@486
    .restart local v18    # "hasRilVoiceRadioTechnologyChanged":Z
    goto/16 :goto_5

    #@488
    .line 1196
    :cond_1e
    const/16 v17, 0x0

    #@48a
    .restart local v17    # "hasRilDataRadioTechnologyChanged":Z
    goto/16 :goto_6

    #@48c
    .line 1198
    :cond_1f
    const/4 v11, 0x1

    #@48d
    .restart local v11    # "hasChanged":Z
    goto/16 :goto_7

    #@48f
    .line 1200
    :cond_20
    const/16 v20, 0x0

    #@491
    .local v20, "hasVoiceRoamingOn":Z
    goto/16 :goto_8

    #@493
    .line 1202
    .end local v20    # "hasVoiceRoamingOn":Z
    :cond_21
    const/16 v19, 0x1

    #@495
    .restart local v19    # "hasVoiceRoamingOff":Z
    goto/16 :goto_9

    #@497
    .line 1204
    :cond_22
    const/4 v13, 0x0

    #@498
    .local v13, "hasDataRoamingOn":Z
    goto/16 :goto_a

    #@49a
    .line 1206
    .end local v13    # "hasDataRoamingOn":Z
    :cond_23
    const/4 v12, 0x1

    #@49b
    .restart local v12    # "hasDataRoamingOff":Z
    goto/16 :goto_b

    #@49d
    .line 1208
    :cond_24
    const/4 v15, 0x1

    #@49e
    .restart local v15    # "hasLocationChanged":Z
    goto/16 :goto_c

    #@4a0
    .line 1253
    .restart local v26    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v27    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v28    # "tss":Landroid/telephony/ServiceState;
    :cond_25
    move-object/from16 v0, p0

    #@4a2
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4a4
    move-object/from16 v29, v0

    #@4a6
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@4a9
    move-result v29

    #@4aa
    if-nez v29, :cond_26

    #@4ac
    .line 1254
    move-object/from16 v0, p0

    #@4ae
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@4b0
    move-object/from16 v29, v0

    #@4b2
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    #@4b5
    move-result-object v5

    #@4b6
    .line 1261
    .local v5, "eriText":Ljava/lang/String;
    :goto_11
    move-object/from16 v0, p0

    #@4b8
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4ba
    move-object/from16 v29, v0

    #@4bc
    move-object/from16 v0, v29

    #@4be
    invoke-virtual {v0, v5}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    #@4c1
    goto/16 :goto_d

    #@4c3
    .line 1258
    .end local v5    # "eriText":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p0

    #@4c5
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@4c7
    move-object/from16 v29, v0

    #@4c9
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@4cc
    move-result-object v29

    #@4cd
    .line 1259
    const v30, 0x10400c4

    #@4d0
    .line 1258
    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@4d3
    move-result-object v29

    #@4d4
    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@4d7
    move-result-object v5

    #@4d8
    .restart local v5    # "eriText":Ljava/lang/String;
    goto :goto_11

    #@4d9
    .line 1286
    .end local v5    # "eriText":Ljava/lang/String;
    .restart local v23    # "operatorNumeric":Ljava/lang/String;
    .restart local v24    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_27
    const-string/jumbo v21, ""

    #@4dc
    .line 1287
    .local v21, "isoCountryCode":Ljava/lang/String;
    const/16 v29, 0x0

    #@4de
    const/16 v30, 0x3

    #@4e0
    move-object/from16 v0, v23

    #@4e2
    move/from16 v1, v29

    #@4e4
    move/from16 v2, v30

    #@4e6
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4e9
    move-result-object v22

    #@4ea
    .line 1290
    .local v22, "mcc":Ljava/lang/String;
    const/16 v29, 0x0

    #@4ec
    const/16 v30, 0x3

    #@4ee
    :try_start_0
    move-object/from16 v0, v23

    #@4f0
    move/from16 v1, v29

    #@4f2
    move/from16 v2, v30

    #@4f4
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4f7
    move-result-object v29

    #@4f8
    .line 1289
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4fb
    move-result v29

    #@4fc
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4ff
    move-result-object v21

    #@500
    .line 1297
    :goto_12
    move-object/from16 v0, p0

    #@502
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@504
    move-object/from16 v29, v0

    #@506
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@509
    move-result v29

    #@50a
    move-object/from16 v0, v27

    #@50c
    move/from16 v1, v29

    #@50e
    move-object/from16 v2, v21

    #@510
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@513
    .line 1298
    const/16 v29, 0x1

    #@515
    move/from16 v0, v29

    #@517
    move-object/from16 v1, p0

    #@519
    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    #@51b
    .line 1300
    move-object/from16 v0, p0

    #@51d
    move-object/from16 v1, v23

    #@51f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    #@522
    .line 1302
    move-object/from16 v0, p0

    #@524
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@526
    move-object/from16 v29, v0

    #@528
    .line 1303
    move-object/from16 v0, p0

    #@52a
    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    #@52c
    move/from16 v30, v0

    #@52e
    .line 1302
    move-object/from16 v0, p0

    #@530
    move-object/from16 v1, v29

    #@532
    move-object/from16 v2, v23

    #@534
    move-object/from16 v3, v24

    #@536
    move/from16 v4, v30

    #@538
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@53b
    move-result v29

    #@53c
    if-eqz v29, :cond_9

    #@53e
    .line 1304
    move-object/from16 v0, p0

    #@540
    move-object/from16 v1, v21

    #@542
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    #@545
    goto/16 :goto_e

    #@547
    .line 1293
    :catch_0
    move-exception v7

    #@548
    .line 1294
    .local v7, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v29, Ljava/lang/StringBuilder;

    #@54a
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@54d
    const-string/jumbo v30, "pollStateDone: countryCodeForMcc error"

    #@550
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@553
    move-result-object v29

    #@554
    move-object/from16 v0, v29

    #@556
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@559
    move-result-object v29

    #@55a
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55d
    move-result-object v29

    #@55e
    move-object/from16 v0, p0

    #@560
    move-object/from16 v1, v29

    #@562
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    #@565
    goto :goto_12

    #@566
    .line 1291
    .end local v7    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v6

    #@567
    .line 1292
    .local v6, "ex":Ljava/lang/NumberFormatException;
    new-instance v29, Ljava/lang/StringBuilder;

    #@569
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@56c
    const-string/jumbo v30, "pollStateDone: countryCodeForMcc error"

    #@56f
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@572
    move-result-object v29

    #@573
    move-object/from16 v0, v29

    #@575
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@578
    move-result-object v29

    #@579
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57c
    move-result-object v29

    #@57d
    move-object/from16 v0, p0

    #@57f
    move-object/from16 v1, v29

    #@581
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    #@584
    goto/16 :goto_12

    #@586
    .line 1309
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    .end local v21    # "isoCountryCode":Ljava/lang/String;
    .end local v22    # "mcc":Ljava/lang/String;
    :cond_28
    const/16 v29, 0x1

    #@588
    goto/16 :goto_f

    #@58a
    .line 1332
    .end local v23    # "operatorNumeric":Ljava/lang/String;
    .end local v24    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    #@58c
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@58e
    move-object/from16 v29, v0

    #@590
    const/16 v30, 0x0

    #@592
    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@595
    goto/16 :goto_10
.end method

.method protected radioTechnologyToDataServiceState(I)I
    .locals 2
    .param p1, "code"    # I

    #@0
    .prologue
    .line 1465
    const/4 v0, 0x1

    #@1
    .line 1466
    .local v0, "retVal":I
    packed-switch p1, :pswitch_data_0

    #@4
    .line 1482
    :pswitch_0
    const-string/jumbo v1, "radioTechnologyToDataServiceState: Wrong radioTechnology code."

    #@7
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    #@a
    .line 1485
    :goto_0
    :pswitch_1
    return v0

    #@b
    .line 1479
    :pswitch_2
    const/4 v0, 0x0

    #@c
    .line 1480
    goto :goto_0

    #@d
    .line 1466
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected regCodeIsRoaming(I)Z
    .locals 1
    .param p1, "code"    # I

    #@0
    .prologue
    .line 1521
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

.method protected regCodeToServiceState(I)I
    .locals 3
    .param p1, "code"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 1491
    packed-switch p1, :pswitch_data_0

    #@5
    .line 1504
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
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    #@1c
    .line 1505
    return v2

    #@1d
    .line 1493
    :pswitch_0
    return v2

    #@1e
    .line 1495
    :pswitch_1
    return v0

    #@1f
    .line 1499
    :pswitch_2
    return v2

    #@20
    .line 1501
    :pswitch_3
    return v0

    #@21
    .line 1491
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 251
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 252
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 254
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isMinInfoReady()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 255
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@13
    .line 250
    :cond_0
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 4
    .param p1, "registered"    # Z

    #@0
    .prologue
    .line 2097
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "ImsRegistrationState - registered : "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@17
    .line 2099
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsRegistrationOnOff:Z

    #@19
    if-eqz v2, :cond_0

    #@1b
    if-eqz p1, :cond_1

    #@1d
    .line 2112
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsRegistrationOnOff:Z

    #@1f
    .line 2096
    return-void

    #@20
    .line 2100
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAlarmSwitch:Z

    #@22
    if-eqz v2, :cond_0

    #@24
    .line 2101
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsRegistrationOnOff:Z

    #@26
    .line 2103
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@28
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@2b
    move-result-object v1

    #@2c
    .line 2104
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v2, "alarm"

    #@2f
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/app/AlarmManager;

    #@35
    .line 2105
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    #@37
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@3a
    .line 2106
    const/4 v2, 0x0

    #@3b
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAlarmSwitch:Z

    #@3d
    .line 2108
    const/16 v2, 0x2d

    #@3f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    #@46
    .line 2109
    return-void
.end method

.method protected setOperatorIdd(Ljava/lang/String;)V
    .locals 4
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1397
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    #@2
    .line 1398
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x3

    #@4
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b
    move-result v2

    #@c
    .line 1397
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HbpcdUtils;->getIddByMcc(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 1399
    .local v0, "idd":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 1404
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@1a
    const-string/jumbo v2, "gsm.operator.idpstring"

    #@1d
    const-string/jumbo v3, "+"

    #@20
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    .line 1394
    :goto_0
    return-void

    #@24
    .line 1400
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@26
    const-string/jumbo v2, "gsm.operator.idpstring"

    #@29
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    goto :goto_0
.end method

.method protected setPowerStateToDesired()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 556
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 557
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7
    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@a
    move-result-object v1

    #@b
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@d
    if-ne v1, v2, :cond_1

    #@f
    .line 558
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@11
    const/4 v2, 0x1

    #@12
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    #@15
    .line 554
    :cond_0
    :goto_0
    return-void

    #@16
    .line 559
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    #@18
    if-nez v1, :cond_2

    #@1a
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1c
    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 560
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@28
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2a
    .line 563
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    #@2d
    goto :goto_0

    #@2e
    .line 564
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDeviceShuttingDown:Z

    #@30
    if-eqz v1, :cond_0

    #@32
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@34
    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_0

    #@3e
    .line 565
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@40
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    #@43
    goto :goto_0
.end method

.method protected setRoamingType(Landroid/telephony/ServiceState;)V
    .locals 11
    .param p1, "currentServiceState"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v9, 0x2

    #@2
    const/4 v8, 0x0

    #@3
    .line 921
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@6
    move-result v6

    #@7
    if-nez v6, :cond_2

    #@9
    const/4 v5, 0x1

    #@a
    .line 922
    .local v5, "isVoiceInService":Z
    :goto_0
    if-eqz v5, :cond_0

    #@c
    .line 923
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_6

    #@12
    .line 925
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@14
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b
    move-result-object v6

    #@1c
    .line 926
    const v7, 0x1070043

    #@1f
    .line 925
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@22
    move-result-object v3

    #@23
    .line 927
    .local v3, "intRoamingIndicators":[I
    if-eqz v3, :cond_4

    #@25
    array-length v6, v3

    #@26
    if-lez v6, :cond_4

    #@28
    .line 929
    invoke-virtual {p1, v9}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@2b
    .line 930
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    #@2e
    move-result v0

    #@2f
    .line 931
    .local v0, "curRoamingIndicator":I
    const/4 v2, 0x0

    #@30
    .local v2, "i":I
    :goto_1
    array-length v6, v3

    #@31
    if-ge v2, v6, :cond_0

    #@33
    .line 932
    aget v6, v3, v2

    #@35
    if-ne v0, v6, :cond_3

    #@37
    .line 933
    invoke-virtual {p1, v10}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@3a
    .line 953
    .end local v0    # "curRoamingIndicator":I
    .end local v2    # "i":I
    .end local v3    # "intRoamingIndicators":[I
    :cond_0
    :goto_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@3d
    move-result v6

    #@3e
    if-nez v6, :cond_7

    #@40
    const/4 v4, 0x1

    #@41
    .line 954
    .local v4, "isDataInService":Z
    :goto_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@44
    move-result v1

    #@45
    .line 955
    .local v1, "dataRegType":I
    if-eqz v4, :cond_1

    #@47
    .line 956
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@4a
    move-result v6

    #@4b
    if-nez v6, :cond_8

    #@4d
    .line 957
    invoke-virtual {p1, v8}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@50
    .line 919
    :cond_1
    :goto_4
    return-void

    #@51
    .line 921
    .end local v1    # "dataRegType":I
    .end local v4    # "isDataInService":Z
    .end local v5    # "isVoiceInService":Z
    :cond_2
    const/4 v5, 0x0

    #@52
    .restart local v5    # "isVoiceInService":Z
    goto :goto_0

    #@53
    .line 931
    .restart local v0    # "curRoamingIndicator":I
    .restart local v2    # "i":I
    .restart local v3    # "intRoamingIndicators":[I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@55
    goto :goto_1

    #@56
    .line 940
    .end local v0    # "curRoamingIndicator":I
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    #@5d
    move-result v6

    #@5e
    if-eqz v6, :cond_5

    #@60
    .line 941
    invoke-virtual {p1, v9}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@63
    goto :goto_2

    #@64
    .line 944
    :cond_5
    invoke-virtual {p1, v10}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@67
    goto :goto_2

    #@68
    .line 949
    .end local v3    # "intRoamingIndicators":[I
    :cond_6
    invoke-virtual {p1, v8}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@6b
    goto :goto_2

    #@6c
    .line 953
    :cond_7
    const/4 v4, 0x0

    #@6d
    .restart local v4    # "isDataInService":Z
    goto :goto_3

    #@6e
    .line 958
    .restart local v1    # "dataRegType":I
    :cond_8
    invoke-static {v1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@71
    move-result v6

    #@72
    if-eqz v6, :cond_a

    #@74
    .line 959
    if-eqz v5, :cond_9

    #@76
    .line 961
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    #@79
    move-result v6

    #@7a
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@7d
    goto :goto_4

    #@7e
    .line 966
    :cond_9
    const/4 v6, 0x1

    #@7f
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@82
    goto :goto_4

    #@83
    .line 970
    :cond_a
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    #@8a
    move-result v6

    #@8b
    if-eqz v6, :cond_b

    #@8d
    .line 971
    invoke-virtual {p1, v9}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@90
    goto :goto_4

    #@91
    .line 973
    :cond_b
    invoke-virtual {p1, v10}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@94
    goto :goto_4
.end method

.method protected setSignalStrengthDefaultValues()V
    .locals 2

    #@0
    .prologue
    .line 991
    new-instance v0, Landroid/telephony/SignalStrength;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@8
    .line 990
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 259
    return-void
.end method

.method protected updateOtaspState()V
    .locals 4

    #@0
    .prologue
    .line 1990
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getOtasp()I

    #@3
    move-result v1

    #@4
    .line 1991
    .local v1, "otaspMode":I
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    #@6
    .line 1992
    .local v0, "oldOtaspMode":I
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    #@8
    .line 1995
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1996
    const-string/jumbo v2, "CDMA_SUBSCRIPTION: call notifyRegistrants()"

    #@f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@12
    .line 1997
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@14
    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@17
    .line 1999
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    #@19
    if-eq v0, v2, :cond_1

    #@1b
    .line 2001
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "CDMA_SUBSCRIPTION: call notifyOtaspChanged old otaspMode="

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 2002
    const-string/jumbo v3, " new otaspMode="

    #@2e
    .line 2001
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 2002
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    #@34
    .line 2001
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@3f
    .line 2004
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@41
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    #@43
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyOtaspChanged(I)V

    #@46
    .line 1989
    :cond_1
    return-void
.end method

.method protected updateRoamingState()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 1117
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@5
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@8
    move-result v5

    #@9
    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    #@c
    .line 1120
    const-string/jumbo v4, "carrier_config"

    #@f
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/internal/telephony/ICarrierConfigLoader;

    #@15
    .line 1121
    .local v1, "configLoader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    if-eqz v1, :cond_6

    #@17
    .line 1123
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@19
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    #@1c
    move-result v4

    #@1d
    invoke-interface {v1, v4}, Lcom/android/internal/telephony/ICarrierConfigLoader;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@20
    move-result-object v0

    #@21
    .line 1124
    .local v0, "b":Landroid/os/PersistableBundle;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@23
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getSystemId()I

    #@26
    move-result v4

    #@27
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    .line 1126
    .local v3, "systemId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_2

    #@31
    .line 1127
    const-string/jumbo v4, "updateRoamingState: carrier config override always on home network"

    #@34
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@37
    .line 1128
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setRoamingOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 1147
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v3    # "systemId":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@3c
    if-eqz v4, :cond_1

    #@3e
    const-string/jumbo v4, "telephony.test.forceRoaming"

    #@41
    const/4 v5, 0x0

    #@42
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_1

    #@48
    .line 1148
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4a
    invoke-virtual {v4, v6}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@4d
    .line 1149
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4f
    invoke-virtual {v4, v6}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@52
    .line 1115
    :cond_1
    return-void

    #@53
    .line 1129
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v3    # "systemId":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@55
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    #@5c
    move-result v4

    #@5d
    if-nez v4, :cond_3

    #@5f
    .line 1130
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isNonRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    #@62
    move-result v4

    #@63
    .line 1129
    if-eqz v4, :cond_4

    #@65
    .line 1131
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v5, "updateRoamingState: carrier config override set non-roaming:"

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    .line 1132
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@73
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    .line 1131
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    .line 1132
    const-string/jumbo v5, ", "

    #@7e
    .line 1131
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v4

    #@86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v4

    #@8a
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@8d
    .line 1133
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setRoamingOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@90
    goto :goto_0

    #@91
    .line 1140
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v3    # "systemId":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@92
    .line 1141
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "updateRoamingState: unable to access carrier config service"

    #@95
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    #@98
    goto :goto_0

    #@99
    .line 1134
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v3    # "systemId":Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@9b
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@9e
    move-result-object v4

    #@9f
    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    #@a2
    move-result v4

    #@a3
    if-nez v4, :cond_5

    #@a5
    .line 1135
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    #@a8
    move-result v4

    #@a9
    .line 1134
    if-eqz v4, :cond_0

    #@ab
    .line 1136
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v5, "updateRoamingState: carrier config override set roaming:"

    #@b3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v4

    #@b7
    .line 1137
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@b9
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@bc
    move-result-object v5

    #@bd
    .line 1136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v4

    #@c1
    .line 1137
    const-string/jumbo v5, ", "

    #@c4
    .line 1136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v4

    #@c8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v4

    #@cc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v4

    #@d0
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@d3
    .line 1138
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setRoamingOn()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@d6
    goto/16 :goto_0

    #@d8
    .line 1144
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v3    # "systemId":Ljava/lang/String;
    :cond_6
    const-string/jumbo v4, "updateRoamingState: no carrier config service available"

    #@db
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@de
    goto/16 :goto_0
.end method

.method protected updateSpnDisplay()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 573
    .local v3, "plmn":Ljava/lang/String;
    const/4 v2, 0x0

    #@9
    .line 575
    .local v2, "showPlmn":Z
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@b
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_0

    #@11
    .line 580
    if-eqz v3, :cond_1

    #@13
    const/4 v2, 0x1

    #@14
    .line 582
    :goto_0
    const-string/jumbo v0, "updateSpnDisplay: changed sending intent showPlmn=\'%b\' plmn=\'%s\'"

    #@17
    const/4 v1, 0x2

    #@18
    new-array v1, v1, [Ljava/lang/Object;

    #@1a
    .line 583
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1d
    move-result-object v5

    #@1e
    aput-object v5, v1, v4

    #@20
    aput-object v3, v1, v7

    #@22
    .line 582
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    #@29
    .line 585
    new-instance v6, Landroid/content/Intent;

    #@2b
    const-string/jumbo v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    #@2e
    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@31
    .line 586
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v0, 0x20000000

    #@33
    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@36
    .line 587
    const-string/jumbo v0, "showSpn"

    #@39
    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@3c
    .line 588
    const-string/jumbo v0, "spn"

    #@3f
    const-string/jumbo v1, ""

    #@42
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@45
    .line 589
    const-string/jumbo v0, "showPlmn"

    #@48
    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@4b
    .line 590
    const-string/jumbo v0, "plmn"

    #@4e
    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@51
    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@53
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@56
    move-result v0

    #@57
    invoke-static {v6, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@5a
    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@5c
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@5f
    move-result-object v0

    #@60
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@62
    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@65
    .line 594
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@67
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@69
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@6c
    move-result v1

    #@6d
    .line 595
    const-string/jumbo v5, ""

    #@70
    .line 594
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    #@73
    move-result v0

    #@74
    if-nez v0, :cond_0

    #@76
    .line 596
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSpnUpdatePending:Z

    #@78
    .line 600
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurShowSpn:Z

    #@7a
    .line 601
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurShowPlmn:Z

    #@7c
    .line 602
    const-string/jumbo v0, ""

    #@7f
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurSpn:Ljava/lang/String;

    #@81
    .line 603
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@83
    .line 570
    return-void

    #@84
    .line 580
    :cond_1
    const/4 v2, 0x0

    #@85
    goto :goto_0
.end method

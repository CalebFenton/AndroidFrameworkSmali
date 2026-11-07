.class public Landroid/telephony/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ServiceState$RoamingType;,
        Landroid/telephony/ServiceState$RilRadioTechnology;,
        Landroid/telephony/ServiceState$DuplexMode;,
        Landroid/telephony/ServiceState$FrequencyRange;,
        Landroid/telephony/ServiceState$RegState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o DBG:Z = false

.field public static final whitelist DUPLEX_MODE_FDD:I = 0x1

.field public static final whitelist DUPLEX_MODE_TDD:I = 0x2

.field public static final whitelist DUPLEX_MODE_UNKNOWN:I = 0x0

.field private static final blacklist EXTRA_SERVICE_STATE:Ljava/lang/String; = "android.intent.extra.SERVICE_STATE"

.field public static final blacklist FREQUENCY_RANGE_COUNT:I = 0x5

.field public static final blacklist FREQUENCY_RANGE_HIGH:I = 0x3

.field public static final blacklist FREQUENCY_RANGE_LOW:I = 0x1

.field public static final blacklist FREQUENCY_RANGE_MID:I = 0x2

.field public static final blacklist FREQUENCY_RANGE_MMWAVE:I = 0x4

.field public static final blacklist FREQUENCY_RANGE_UNKNOWN:I = 0x0

.field static final greylist-max-o LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final greylist-max-o NEXT_RIL_RADIO_TECHNOLOGY:I = 0x15

.field public static final greylist-max-o RIL_RADIO_CDMA_TECHNOLOGY_BITMASK:I = 0x18f8

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_1xRTT:I = 0x6

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_EDGE:I = 0x2

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_EHRPD:I = 0xd

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_EVDO_0:I = 0x7

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_EVDO_A:I = 0x8

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_EVDO_B:I = 0xc

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_GPRS:I = 0x1

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_GSM:I = 0x10

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_HSDPA:I = 0x9

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_HSPA:I = 0xb

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_HSPAP:I = 0xf

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_HSUPA:I = 0xa

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_IS95A:I = 0x4

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_IS95B:I = 0x5

.field public static final greylist-max-p RIL_RADIO_TECHNOLOGY_IWLAN:I = 0x12

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_LTE:I = 0xe

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_LTE_CA:I = 0x13

.field public static final blacklist RIL_RADIO_TECHNOLOGY_NR:I = 0x14

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_TD_SCDMA:I = 0x11

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_UMTS:I = 0x3

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_UNKNOWN:I = 0x0

.field public static final whitelist ROAMING_TYPE_DOMESTIC:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROAMING_TYPE_INTERNATIONAL:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROAMING_TYPE_NOT_ROAMING:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROAMING_TYPE_UNKNOWN:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATE_EMERGENCY_ONLY:I = 0x2

.field public static final whitelist STATE_IN_SERVICE:I = 0x0

.field public static final whitelist STATE_OUT_OF_SERVICE:I = 0x1

.field public static final whitelist STATE_POWER_OFF:I = 0x3

.field public static final whitelist UNKNOWN_ID:I = -0x1

.field static final greylist-max-o VDBG:Z = false


# instance fields
.field private blacklist mArfcnRsrpBoost:I

.field private greylist-max-p mCdmaDefaultRoamingIndicator:I

.field private greylist-max-p mCdmaEriIconIndex:I

.field private greylist-max-p mCdmaEriIconMode:I

.field private greylist-max-p mCdmaRoamingIndicator:I

.field private greylist-max-o mCellBandwidths:[I

.field private greylist-max-o mChannelNumber:I

.field private greylist-max-p mCssIndicator:Z

.field private greylist-max-o mDataRegState:I

.field private greylist-max-o mIsDataRoamingFromRegistration:Z

.field private greylist-max-o mIsEmergencyOnly:Z

.field private blacklist mIsIwlanPreferred:Z

.field private greylist-max-p mIsManualNetworkSelection:Z

.field private greylist-max-p mNetworkId:I

.field private final blacklist mNetworkRegistrationInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/NetworkRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNrFrequencyRange:I

.field private blacklist mOperatorAlphaLong:Ljava/lang/String;

.field private blacklist mOperatorAlphaLongRaw:Ljava/lang/String;

.field private blacklist mOperatorAlphaShort:Ljava/lang/String;

.field private blacklist mOperatorAlphaShortRaw:Ljava/lang/String;

.field private blacklist mOperatorNumeric:Ljava/lang/String;

.field private greylist-max-p mSystemId:I

.field private greylist-max-o mVoiceRegState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 526
    new-instance v0, Landroid/telephony/ServiceState$1;

    invoke-direct {v0}, Landroid/telephony/ServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 279
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 355
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 361
    iput v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 416
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 279
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 355
    const/4 v1, 0x0

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 361
    iput v1, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 363
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3c

    move v2, v0

    goto :goto_3d

    :cond_3c
    move v2, v1

    :goto_3d
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_47

    move v2, v0

    goto :goto_48

    :cond_47
    move v2, v1

    :goto_48
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_75

    goto :goto_76

    :cond_75
    move v0, v1

    :goto_76
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 482
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 483
    :try_start_81
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    const-class v2, Landroid/telephony/NetworkRegistrationInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/telephony/NetworkRegistrationInfo;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 484
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_81 .. :try_end_8f} :catchall_ba

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 492
    return-void

    .line 484
    :catchall_ba
    move-exception v1

    :try_start_bb
    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw v1
.end method

.method public constructor whitelist <init>(Landroid/telephony/ServiceState;)V
    .registers 4
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 279
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 355
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 361
    iput v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 424
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 425
    return-void
.end method

.method public static greylist-max-p bearerBitmapHasCdma(I)Z
    .registers 2
    .param p0, "networkTypeBitmask"    # I

    .line 1893
    nop

    .line 1894
    invoke-static {p0}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x18f8

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1893
    :goto_c
    return v0
.end method

.method public static greylist-max-r bitmaskHasTech(II)Z
    .registers 5
    .param p0, "bearerBitmask"    # I
    .param p1, "radioTech"    # I

    .line 1900
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 1901
    return v0

    .line 1902
    :cond_4
    const/4 v1, 0x0

    if-lt p1, v0, :cond_11

    .line 1903
    add-int/lit8 v2, p1, -0x1

    shl-int v2, v0, v2

    and-int/2addr v2, p0

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    return v0

    .line 1905
    :cond_11
    return v1
.end method

.method public static greylist-max-o convertBearerBitmaskToNetworkTypeBitmask(I)I
    .registers 4
    .param p0, "bearerBitmask"    # I

    .line 1967
    if-nez p0, :cond_4

    .line 1968
    const/4 v0, 0x0

    return v0

    .line 1970
    :cond_4
    const/4 v0, 0x0

    .line 1971
    .local v0, "networkTypeBitmask":I
    const/4 v1, 0x0

    .local v1, "bearerInt":I
    :goto_6
    const/16 v2, 0x15

    if-ge v1, v2, :cond_1c

    .line 1972
    invoke-static {p0, v1}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1973
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v0, v2

    .line 1971
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1976
    .end local v1    # "bearerInt":I
    :cond_1c
    return v0
.end method

.method public static greylist-max-o convertNetworkTypeBitmaskToBearerBitmask(I)I
    .registers 4
    .param p0, "networkTypeBitmask"    # I

    .line 1946
    if-nez p0, :cond_4

    .line 1947
    const/4 v0, 0x0

    return v0

    .line 1949
    :cond_4
    const/4 v0, 0x0

    .line 1950
    .local v0, "bearerBitmask":I
    const/4 v1, 0x0

    .local v1, "bearerInt":I
    :goto_6
    const/16 v2, 0x15

    if-ge v1, v2, :cond_1c

    .line 1951
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    invoke-static {p0, v2}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1952
    invoke-static {v1}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v0, v2

    .line 1950
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1955
    .end local v1    # "bearerInt":I
    :cond_1c
    return v0
.end method

.method private static greylist-max-p equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 1437
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static blacklist frequencyRangeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "range"    # I

    .line 1144
    packed-switch p0, :pswitch_data_18

    .line 1151
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1149
    :pswitch_8
    const-string v0, "MMWAVE"

    return-object v0

    .line 1148
    :pswitch_b
    const-string v0, "HIGH"

    return-object v0

    .line 1147
    :pswitch_e
    const-string v0, "MID"

    return-object v0

    .line 1146
    :pswitch_11
    const-string v0, "LOW"

    return-object v0

    .line 1145
    :pswitch_14
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist-max-o getBitmaskForTech(I)I
    .registers 3
    .param p0, "radioTech"    # I

    .line 1910
    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    .line 1911
    add-int/lit8 v1, p0, -0x1

    shl-int/2addr v0, v1

    return v0

    .line 1913
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o getBitmaskFromString(Ljava/lang/String;)I
    .registers 9
    .param p0, "bearerList"    # Ljava/lang/String;

    .line 1918
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1919
    .local v0, "bearers":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1920
    .local v1, "bearerBitmask":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_25

    aget-object v5, v0, v4

    .line 1921
    .local v5, "bearer":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1923
    .local v6, "bearerInt":I
    :try_start_f
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_17} :catch_23

    .line 1926
    .end local v6    # "bearerInt":I
    .local v7, "bearerInt":I
    nop

    .line 1928
    if-nez v7, :cond_1b

    .line 1929
    return v3

    .line 1932
    :cond_1b
    invoke-static {v7}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v6

    or-int/2addr v1, v6

    .line 1920
    .end local v5    # "bearer":Ljava/lang/String;
    .end local v7    # "bearerInt":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1924
    .restart local v5    # "bearer":Ljava/lang/String;
    .restart local v6    # "bearerInt":I
    :catch_23
    move-exception v2

    .line 1925
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    return v3

    .line 1934
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "bearer":Ljava/lang/String;
    .end local v6    # "bearerInt":I
    :cond_25
    return v1
.end method

.method public static final greylist-max-o getRoamingLogString(I)Ljava/lang/String;
    .registers 2
    .param p0, "roamingType"    # I

    .line 375
    packed-switch p0, :pswitch_data_14

    .line 389
    const-string v0, "UNKNOWN"

    return-object v0

    .line 386
    :pswitch_6
    const-string v0, "International Roaming"

    return-object v0

    .line 383
    :pswitch_9
    const-string v0, "Domestic Roaming"

    return-object v0

    .line 380
    :pswitch_c
    const-string/jumbo v0, "roaming"

    return-object v0

    .line 377
    :pswitch_10
    const-string/jumbo v0, "home"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist init()V
    .registers 8

    .line 1223
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1224
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1225
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 1226
    const/4 v2, 0x0

    new-array v3, v2, [I

    iput-object v3, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 1227
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 1228
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 1229
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 1230
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1231
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1232
    iput v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1233
    iput v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1234
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1235
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1236
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 1237
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 1238
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1239
    iput v2, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 1240
    iput v2, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 1241
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 1242
    :try_start_2d
    iget-object v4, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1243
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1244
    invoke-virtual {v4, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 1245
    invoke-virtual {v4, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 1246
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 1247
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    .line 1243
    invoke-virtual {p0, v4}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1248
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1249
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 1250
    invoke-virtual {v4, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1251
    invoke-virtual {v0, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1252
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1248
    invoke-virtual {p0, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1253
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1254
    invoke-virtual {v0, v6}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1255
    invoke-virtual {v0, v6}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1256
    invoke-virtual {v0, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1257
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1253
    invoke-virtual {p0, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1258
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_2d .. :try_end_7d} :catchall_86

    .line 1259
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 1260
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 1261
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 1262
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 1263
    return-void

    .line 1258
    :catchall_86
    move-exception v0

    :try_start_87
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v0
.end method

.method public static greylist isCdma(I)Z
    .registers 2
    .param p0, "radioTechnology"    # I

    .line 1874
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xd

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public static blacklist isFrequencyRangeValid(I)Z
    .registers 3
    .param p0, "frequencyRange"    # I

    .line 2248
    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, 0x2

    if-eq p0, v1, :cond_f

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    const/4 v1, 0x4

    if-ne p0, v1, :cond_d

    goto :goto_f

    .line 2254
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 2252
    :cond_f
    :goto_f
    return v0
.end method

.method public static greylist isGsm(I)Z
    .registers 3
    .param p0, "radioTechnology"    # I

    .line 1855
    const/4 v0, 0x1

    if-eq p0, v0, :cond_33

    const/4 v1, 0x2

    if-eq p0, v1, :cond_33

    const/4 v1, 0x3

    if-eq p0, v1, :cond_33

    const/16 v1, 0x9

    if-eq p0, v1, :cond_33

    const/16 v1, 0xa

    if-eq p0, v1, :cond_33

    const/16 v1, 0xb

    if-eq p0, v1, :cond_33

    const/16 v1, 0xe

    if-eq p0, v1, :cond_33

    const/16 v1, 0xf

    if-eq p0, v1, :cond_33

    const/16 v1, 0x10

    if-eq p0, v1, :cond_33

    const/16 v1, 0x11

    if-eq p0, v1, :cond_33

    const/16 v1, 0x12

    if-eq p0, v1, :cond_33

    const/16 v1, 0x13

    if-eq p0, v1, :cond_33

    const/16 v1, 0x14

    if-ne p0, v1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :cond_33
    :goto_33
    return v0
.end method

.method public static blacklist isPsOnlyTech(I)Z
    .registers 2
    .param p0, "radioTechnology"    # I

    .line 1885
    const/16 v0, 0xe

    if-eq p0, v0, :cond_f

    const/16 v0, 0x13

    if-eq p0, v0, :cond_f

    const/16 v0, 0x14

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static greylist-max-r mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .registers 4
    .param p0, "baseSs"    # Landroid/telephony/ServiceState;
    .param p1, "voiceSs"    # Landroid/telephony/ServiceState;

    .line 1986
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-eqz v0, :cond_5

    .line 1987
    return-object p0

    .line 1990
    :cond_5
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 1993
    .local v0, "newSs":Landroid/telephony/ServiceState;
    iget v1, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v1, v0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1994
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1996
    return-object v0
.end method

.method public static greylist-max-o networkTypeToRilRadioTechnology(I)I
    .registers 2
    .param p0, "networkType"    # I

    .line 1719
    packed-switch p0, :pswitch_data_38

    .line 1759
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 1757
    :pswitch_5
    const/16 v0, 0x14

    return v0

    .line 1755
    :pswitch_8
    const/16 v0, 0x13

    return v0

    .line 1753
    :pswitch_b
    const/16 v0, 0x12

    return v0

    .line 1751
    :pswitch_e
    const/16 v0, 0x11

    return v0

    .line 1749
    :pswitch_11
    const/16 v0, 0x10

    return v0

    .line 1747
    :pswitch_14
    const/16 v0, 0xf

    return v0

    .line 1743
    :pswitch_17
    const/16 v0, 0xd

    return v0

    .line 1745
    :pswitch_1a
    const/16 v0, 0xe

    return v0

    .line 1741
    :pswitch_1d
    const/16 v0, 0xc

    return v0

    .line 1731
    :pswitch_20
    const/16 v0, 0xb

    return v0

    .line 1729
    :pswitch_23
    const/16 v0, 0xa

    return v0

    .line 1727
    :pswitch_26
    const/16 v0, 0x9

    return v0

    .line 1735
    :pswitch_29
    const/4 v0, 0x6

    return v0

    .line 1739
    :pswitch_2b
    const/16 v0, 0x8

    return v0

    .line 1737
    :pswitch_2e
    const/4 v0, 0x7

    return v0

    .line 1733
    :pswitch_30
    const/4 v0, 0x4

    return v0

    .line 1725
    :pswitch_32
    const/4 v0, 0x3

    return v0

    .line 1723
    :pswitch_34
    const/4 v0, 0x2

    return v0

    .line 1721
    :pswitch_36
    const/4 v0, 0x1

    return v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_36
        :pswitch_34
        :pswitch_32
        :pswitch_30
        :pswitch_2e
        :pswitch_2b
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_3
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static greylist newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .registers 2
    .param p0, "m"    # Landroid/os/Bundle;

    .line 407
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 408
    .local v0, "ret":Landroid/telephony/ServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 409
    return-object v0
.end method

.method public static greylist-max-o rilRadioTechnologyToAccessNetworkType(I)I
    .registers 2
    .param p0, "rt"    # I

    .line 1676
    packed-switch p0, :pswitch_data_12

    .line 1705
    const/4 v0, 0x0

    return v0

    .line 1700
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 1702
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 1698
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 1695
    :pswitch_b
    const/4 v0, 0x4

    return v0

    .line 1687
    :pswitch_d
    const/4 v0, 0x2

    return v0

    .line 1680
    :pswitch_f
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_d
        :pswitch_f
        :pswitch_d
        :pswitch_7
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static greylist-max-o rilRadioTechnologyToNetworkType(I)I
    .registers 2
    .param p0, "rat"    # I

    .line 1629
    packed-switch p0, :pswitch_data_38

    .line 1670
    const/4 v0, 0x0

    return v0

    .line 1668
    :pswitch_5
    const/16 v0, 0x14

    return v0

    .line 1666
    :pswitch_8
    const/16 v0, 0x13

    return v0

    .line 1664
    :pswitch_b
    const/16 v0, 0x12

    return v0

    .line 1662
    :pswitch_e
    const/16 v0, 0x11

    return v0

    .line 1660
    :pswitch_11
    const/16 v0, 0x10

    return v0

    .line 1658
    :pswitch_14
    const/16 v0, 0xf

    return v0

    .line 1656
    :pswitch_17
    const/16 v0, 0xd

    return v0

    .line 1654
    :pswitch_1a
    const/16 v0, 0xe

    return v0

    .line 1652
    :pswitch_1d
    const/16 v0, 0xc

    return v0

    .line 1641
    :pswitch_20
    const/16 v0, 0xa

    return v0

    .line 1639
    :pswitch_23
    const/16 v0, 0x9

    return v0

    .line 1637
    :pswitch_26
    const/16 v0, 0x8

    return v0

    .line 1650
    :pswitch_29
    const/4 v0, 0x6

    return v0

    .line 1648
    :pswitch_2b
    const/4 v0, 0x5

    return v0

    .line 1646
    :pswitch_2d
    const/4 v0, 0x7

    return v0

    .line 1644
    :pswitch_2f
    const/4 v0, 0x4

    return v0

    .line 1635
    :pswitch_31
    const/4 v0, 0x3

    return v0

    .line 1633
    :pswitch_33
    const/4 v0, 0x2

    return v0

    .line 1631
    :pswitch_35
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35
        :pswitch_33
        :pswitch_31
        :pswitch_2f
        :pswitch_2f
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static greylist-max-r rilRadioTechnologyToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "rt"    # I

    .line 1062
    packed-switch p0, :pswitch_data_5e

    .line 1127
    const-string v0, "Unexpected"

    .line 1128
    .local v0, "rtString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected radioTechnology="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PHONE"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 1124
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_1e
    const-string v0, "NR_SA"

    .line 1125
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1121
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_21
    const-string v0, "LTE_CA"

    .line 1122
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1115
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_24
    const-string v0, "IWLAN"

    .line 1116
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1118
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_27
    const-string v0, "TD-SCDMA"

    .line 1119
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1112
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2a
    const-string v0, "GSM"

    .line 1113
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1109
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2d
    const-string v0, "HSPAP"

    .line 1110
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1106
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_30
    const-string v0, "LTE"

    .line 1107
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1103
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_33
    const-string v0, "eHRPD"

    .line 1104
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1100
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_36
    const-string v0, "EvDo-rev.B"

    .line 1101
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1097
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_39
    const-string v0, "HSPA"

    .line 1098
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1094
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3c
    const-string v0, "HSUPA"

    .line 1095
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1091
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3f
    const-string v0, "HSDPA"

    .line 1092
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1088
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_42
    const-string v0, "EvDo-rev.A"

    .line 1089
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1085
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_45
    const-string v0, "EvDo-rev.0"

    .line 1086
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1082
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_48
    const-string v0, "1xRTT"

    .line 1083
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1079
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4b
    const-string v0, "CDMA-IS95B"

    .line 1080
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1076
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4e
    const-string v0, "CDMA-IS95A"

    .line 1077
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1073
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_51
    const-string v0, "UMTS"

    .line 1074
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1070
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_54
    const-string v0, "EDGE"

    .line 1071
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1067
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_57
    const-string v0, "GPRS"

    .line 1068
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_5d

    .line 1064
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_5a
    const-string v0, "Unknown"

    .line 1065
    .restart local v0    # "rtString":Ljava/lang/String;
    nop

    .line 1131
    :goto_5d
    return-object v0

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method public static greylist-max-o rilServiceStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "serviceState"    # I

    .line 1164
    packed-switch p0, :pswitch_data_12

    .line 1174
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1172
    :pswitch_6
    const-string v0, "POWER_OFF"

    return-object v0

    .line 1170
    :pswitch_9
    const-string v0, "EMERGENCY_ONLY"

    return-object v0

    .line 1168
    :pswitch_c
    const-string v0, "OUT_OF_SERVICE"

    return-object v0

    .line 1166
    :pswitch_f
    const-string v0, "IN_SERVICE"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist roamingTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "roamingType"    # I

    .line 1041
    packed-switch p0, :pswitch_data_24

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown roaming type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1045
    :pswitch_17
    const-string v0, "INTERNATIONAL"

    return-object v0

    .line 1044
    :pswitch_1a
    const-string v0, "DOMESTIC"

    return-object v0

    .line 1043
    :pswitch_1d
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1042
    :pswitch_20
    const-string v0, "NOT_ROAMING"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private greylist setFromNotifierBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "m"    # Landroid/os/Bundle;

    .line 1448
    const-string v0, "android.intent.extra.SERVICE_STATE"

    const-class v1, Landroid/telephony/ServiceState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ServiceState;

    .line 1449
    .local v0, "ssFromBundle":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_f

    .line 1450
    invoke-virtual {p0, v0}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 1452
    :cond_f
    return-void
.end method


# virtual methods
.method public blacklist addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V
    .registers 7
    .param p1, "nri"    # Landroid/telephony/NetworkRegistrationInfo;

    .line 2094
    if-nez p1, :cond_3

    return-void

    .line 2096
    :cond_3
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 2097
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    :try_start_7
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 2098
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 2099
    .local v2, "curRegState":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v4

    if-ne v3, v4, :cond_31

    .line 2100
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v4

    if-ne v3, v4, :cond_31

    .line 2101
    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2102
    goto :goto_34

    .line 2097
    .end local v2    # "curRegState":Landroid/telephony/NetworkRegistrationInfo;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2106
    .end local v1    # "i":I
    :cond_34
    :goto_34
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    new-instance v2, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v2, p1}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2107
    monitor-exit v0

    .line 2108
    return-void

    .line 2107
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v1
.end method

.method protected whitelist copyFrom(Landroid/telephony/ServiceState;)V
    .registers 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 428
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 429
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 430
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 431
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 432
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 433
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 434
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 435
    iget v0, p1, Landroid/telephony/ServiceState;->mNetworkId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 436
    iget v0, p1, Landroid/telephony/ServiceState;->mSystemId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 437
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 438
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 439
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 440
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 441
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 442
    iget v0, p1, Landroid/telephony/ServiceState;->mChannelNumber:I

    iput v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 443
    iget-object v0, p1, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    if-nez v0, :cond_42

    const/4 v0, 0x0

    goto :goto_4b

    .line 444
    :cond_42
    iget-object v0, p1, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    iget-object v1, p1, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_4b
    iput-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 445
    iget v0, p1, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    iput v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 446
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 447
    :try_start_54
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 448
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_61
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 449
    .local v2, "nri":Landroid/telephony/NetworkRegistrationInfo;
    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    new-instance v4, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v4, v2}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    nop

    .end local v2    # "nri":Landroid/telephony/NetworkRegistrationInfo;
    goto :goto_61

    .line 451
    :cond_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_54 .. :try_end_7a} :catchall_8f

    .line 452
    iget v0, p1, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 453
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 454
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 455
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 456
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 457
    return-void

    .line 451
    :catchall_8f
    move-exception v1

    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v1
.end method

.method public blacklist createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;
    .registers 6
    .param p1, "removeCoarseLocation"    # Z

    .line 2125
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 2126
    .local v0, "state":Landroid/telephony/ServiceState;
    iget-object v1, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 2127
    :try_start_8
    iget-object v2, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 2128
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/telephony/ServiceState$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/telephony/ServiceState$$ExternalSyntheticLambda0;-><init>()V

    .line 2129
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 2130
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2131
    .local v2, "networkRegistrationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    iget-object v3, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2132
    iget-object v3, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2133
    nop

    .end local v2    # "networkRegistrationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3d

    .line 2134
    if-nez p1, :cond_30

    return-object v0

    .line 2136
    :cond_30
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 2137
    iput-object v1, v0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 2138
    iput-object v1, v0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 2139
    const/4 v1, -0x1

    iput v1, v0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 2140
    iput v1, v0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 2142
    return-object v0

    .line 2133
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1003
    instance-of v0, p1, Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1004
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/ServiceState;

    .line 1006
    .local v0, "s":Landroid/telephony/ServiceState;
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v2

    .line 1007
    :try_start_c
    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iget v4, v0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-ne v3, v4, :cond_ec

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    iget v4, v0, Landroid/telephony/ServiceState;->mDataRegState:I

    if-ne v3, v4, :cond_ec

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-ne v3, v4, :cond_ec

    iget v3, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    iget v4, v0, Landroid/telephony/ServiceState;->mChannelNumber:I

    if-ne v3, v4, :cond_ec

    iget-object v3, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    iget-object v4, v0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 1011
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 1012
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 1013
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 1014
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1015
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget v3, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1016
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget v3, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1017
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1018
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1019
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1020
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1019
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-ne v3, v4, :cond_ec

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 1022
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 1023
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 1024
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_ec

    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 1025
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget v3, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    iget v4, v0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    if-ne v3, v4, :cond_ec

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    if-ne v3, v4, :cond_ec

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    if-ne v3, v4, :cond_ec

    const/4 v1, 0x1

    goto :goto_ed

    :cond_ec
    nop

    :goto_ed
    monitor-exit v2

    .line 1007
    return v1

    .line 1029
    :catchall_ef
    move-exception v1

    monitor-exit v2
    :try_end_f1
    .catchall {:try_start_c .. :try_end_f1} :catchall_ef

    throw v1
.end method

.method public greylist fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "m"    # Landroid/os/Bundle;

    .line 1466
    const-string v0, "android.intent.extra.SERVICE_STATE"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1469
    const-string/jumbo v0, "voiceRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1470
    const-string v0, "dataRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1471
    const-string v0, "dataRoamingType"

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1472
    const-string/jumbo v0, "voiceRoamingType"

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1473
    const-string/jumbo v0, "operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    const-string/jumbo v0, "operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const-string/jumbo v0, "operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const-string v0, "data-operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    const-string v0, "data-operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    const-string v0, "data-operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    const-string/jumbo v0, "manual"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1480
    const-string/jumbo v0, "radioTechnology"

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1481
    const-string v0, "dataRadioTechnology"

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1482
    const-string v0, "cssIndicator"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1483
    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1484
    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1485
    const-string v0, "cdmaRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1486
    const-string v0, "cdmaDefaultRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1487
    const-string v0, "emergencyOnly"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1488
    const-string/jumbo v0, "isDataRoamingFromRegistration"

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1489
    const-string/jumbo v0, "isUsingCarrierAggregation"

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1490
    const-string v0, "ArfcnRsrpBoost"

    iget v1, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1491
    const-string v0, "ChannelNumber"

    iget v1, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1492
    const-string v0, "CellBandwidths"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1493
    const-string/jumbo v0, "mNrFrequencyRange"

    iget v1, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1494
    const-string/jumbo v0, "operator-alpha-long-raw"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    const-string/jumbo v0, "operator-alpha-short-raw"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    return-void
.end method

.method public blacklist getArfcnRsrpBoost()I
    .registers 2

    .line 1582
    iget v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    return v0
.end method

.method public greylist getCdmaDefaultRoamingIndicator()I
    .registers 2

    .line 746
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    return v0
.end method

.method public greylist getCdmaEriIconIndex()I
    .registers 2

    .line 754
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    return v0
.end method

.method public greylist getCdmaEriIconMode()I
    .registers 2

    .line 762
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    return v0
.end method

.method public whitelist getCdmaNetworkId()I
    .registers 2

    .line 1831
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    return v0
.end method

.method public greylist getCdmaRoamingIndicator()I
    .registers 2

    .line 738
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    return v0
.end method

.method public whitelist getCdmaSystemId()I
    .registers 2

    .line 1849
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    return v0
.end method

.method public whitelist getCellBandwidths()[I
    .registers 2

    .line 630
    iget-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_a

    :cond_8
    iget-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    :goto_a
    return-object v0
.end method

.method public whitelist getChannelNumber()I
    .registers 2

    .line 621
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    return v0
.end method

.method public greylist-max-p getCssIndicator()I
    .registers 2

    .line 1813
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    return v0
.end method

.method public blacklist getDataNetworkType()I
    .registers 4

    .line 1775
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1777
    .local v1, "iwlanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1782
    .local v0, "wwanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_28

    .line 1790
    :cond_13
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    if-eqz v2, :cond_1e

    goto :goto_23

    .line 1796
    :cond_1e
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    return v2

    .line 1791
    :cond_23
    :goto_23
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    return v2

    .line 1783
    :cond_28
    :goto_28
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    goto :goto_30

    .line 1784
    :cond_2f
    const/4 v2, 0x0

    .line 1783
    :goto_30
    return v2
.end method

.method public greylist-max-q getDataOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .line 866
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-q getDataOperatorNumeric()Ljava/lang/String;
    .registers 2

    .line 959
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getDataRegState()I
    .registers 2

    .line 574
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    return v0
.end method

.method public blacklist getDataRegistrationState()I
    .registers 2

    .line 590
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method public greylist-max-p getDataRoaming()Z
    .registers 2

    .line 684
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o getDataRoamingFromRegistration()Z
    .registers 2

    .line 707
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    return v0
.end method

.method public greylist-max-p getDataRoamingType()I
    .registers 3

    .line 717
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 719
    .local v0, "regState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_d

    .line 720
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result v1

    return v1

    .line 722
    :cond_d
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getDuplexMode()I
    .registers 3

    .line 605
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 606
    const/4 v0, 0x0

    return v0

    .line 609
    :cond_c
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getOperatingBandForEarfcn(I)I

    move-result v0

    .line 610
    .local v0, "band":I
    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getDuplexModeForEutranBand(I)I

    move-result v1

    return v1
.end method

.method public whitelist getIsManualSelection()Z
    .registers 2

    .line 968
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    return v0
.end method

.method public whitelist getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;
    .registers 7
    .param p1, "domain"    # I
    .param p2, "transportType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2077
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 2078
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 2079
    .local v2, "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v3

    if-ne v3, p2, :cond_29

    .line 2080
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_29

    .line 2081
    new-instance v1, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v1, v2}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    monitor-exit v0

    return-object v1

    .line 2083
    .end local v2    # "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    :cond_29
    goto :goto_9

    .line 2084
    :cond_2a
    monitor-exit v0

    .line 2086
    const/4 v0, 0x0

    return-object v0

    .line 2084
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public whitelist getNetworkRegistrationInfoList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/NetworkRegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 2006
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 2007
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2008
    .local v1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NetworkRegistrationInfo;

    .line 2009
    .local v3, "nri":Landroid/telephony/NetworkRegistrationInfo;
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v4, v3}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2010
    nop

    .end local v3    # "nri":Landroid/telephony/NetworkRegistrationInfo;
    goto :goto_e

    .line 2011
    :cond_24
    monitor-exit v0

    return-object v1

    .line 2012
    .end local v1    # "newList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public whitelist getNetworkRegistrationInfoListForDomain(I)Ljava/util/List;
    .registers 7
    .param p1, "domain"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/NetworkRegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 2050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2052
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 2053
    :try_start_8
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NetworkRegistrationInfo;

    .line 2054
    .local v3, "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_29

    .line 2055
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v4, v3}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2057
    .end local v3    # "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    :cond_29
    goto :goto_e

    .line 2058
    :cond_2a
    monitor-exit v1

    .line 2060
    return-object v0

    .line 2058
    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public whitelist getNetworkRegistrationInfoListForTransportType(I)Ljava/util/List;
    .registers 7
    .param p1, "transportType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/NetworkRegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 2026
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2028
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 2029
    :try_start_8
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NetworkRegistrationInfo;

    .line 2030
    .local v3, "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v4

    if-ne v4, p1, :cond_28

    .line 2031
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v4, v3}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2033
    .end local v3    # "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    :cond_28
    goto :goto_e

    .line 2034
    :cond_29
    monitor-exit v1

    .line 2036
    return-object v0

    .line 2034
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public blacklist getNrFrequencyRange()I
    .registers 2

    .line 1557
    iget v0, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    return v0
.end method

.method public blacklist getNrState()I
    .registers 3

    .line 1566
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1568
    .local v0, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    .line 1569
    :cond_a
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result v1

    return v1
.end method

.method public greylist-max-o getOperatorAlpha()Ljava/lang/String;
    .registers 2

    .line 889
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 890
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0

    .line 893
    :cond_b
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorAlphaLong()Ljava/lang/String;
    .registers 2

    .line 783
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOperatorAlphaLongRaw()Ljava/lang/String;
    .registers 2

    .line 2162
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .line 824
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOperatorAlphaShortRaw()Ljava/lang/String;
    .registers 2

    .line 2182
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorNumeric()Ljava/lang/String;
    .registers 2

    .line 918
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getRilDataRadioTechnology()I
    .registers 2

    .line 1616
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-r getRilVoiceRadioTechnology()I
    .registers 3

    .line 1606
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1608
    .local v0, "wwanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_10

    .line 1609
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v1

    return v1

    .line 1611
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getRoaming()Z
    .registers 2

    .line 647
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 541
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    return v0
.end method

.method public greylist-max-p getVoiceNetworkType()I
    .registers 3

    .line 1802
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1804
    .local v0, "regState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_c

    .line 1805
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    return v1

    .line 1807
    :cond_c
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-q getVoiceOperatorAlphaLong()Ljava/lang/String;
    .registers 2

    .line 804
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-q getVoiceOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .line 845
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-p getVoiceOperatorNumeric()Ljava/lang/String;
    .registers 2

    .line 938
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-p getVoiceRegState()I
    .registers 2

    .line 556
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    return v0
.end method

.method public greylist-max-p getVoiceRoaming()Z
    .registers 2

    .line 657
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-p getVoiceRoamingType()I
    .registers 3

    .line 667
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 669
    .local v0, "regState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_c

    .line 670
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result v1

    return v1

    .line 672
    :cond_c
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 27

    .line 973
    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v2

    .line 974
    :try_start_5
    iget v0, v1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 975
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, v1, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 976
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, v1, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 977
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, v1, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 978
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v1, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iget-object v8, v1, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iget-object v9, v1, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iget-boolean v0, v1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 982
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v0, v1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 983
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget v0, v1, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 984
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v0, v1, Landroid/telephony/ServiceState;->mSystemId:I

    .line 985
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v0, v1, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 986
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v0, v1, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 987
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v0, v1, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 988
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v0, v1, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 989
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-boolean v0, v1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 990
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    iget v0, v1, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 991
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget-object v0, v1, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    move-object/from16 v20, v0

    iget v0, v1, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 993
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget-object v0, v1, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v1, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-boolean v0, v1, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 996
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    iget-boolean v0, v1, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 997
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    filled-new-array/range {v3 .. v25}, [Ljava/lang/Object;

    move-result-object v0

    .line 974
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    monitor-exit v2

    return v0

    .line 998
    :catchall_8b
    move-exception v0

    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_5 .. :try_end_8d} :catchall_8b

    throw v0
.end method

.method public greylist isEmergencyOnly()Z
    .registers 2

    .line 730
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    return v0
.end method

.method public blacklist isIwlanPreferred()Z
    .registers 2

    .line 2206
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    return v0
.end method

.method public whitelist isSearching()Z
    .registers 6

    .line 2221
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 2224
    .local v2, "psRegState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v3

    if-ne v3, v0, :cond_f

    .line 2226
    return v1

    .line 2229
    :cond_f
    invoke-virtual {p0, v1, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    .line 2232
    .local v3, "csRegState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v4

    if-ne v4, v0, :cond_1c

    .line 2234
    return v1

    .line 2236
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isUsingCarrierAggregation()Z
    .registers 6

    .line 1540
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    return v1

    .line 1542
    :cond_9
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 1543
    :try_start_c
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NetworkRegistrationInfo;

    .line 1544
    .local v3, "nri":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v4

    if-eqz v4, :cond_26

    monitor-exit v0

    return v1

    .line 1545
    .end local v3    # "nri":Landroid/telephony/NetworkRegistrationInfo;
    :cond_26
    goto :goto_12

    .line 1546
    :cond_27
    monitor-exit v0

    .line 1547
    const/4 v0, 0x0

    return v0

    .line 1546
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public whitelist isUsingNonTerrestrialNetwork()Z
    .registers 5

    .line 2264
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 2265
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 2266
    .local v2, "nri":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetwork()Z

    move-result v3

    if-eqz v3, :cond_1e

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2267
    .end local v2    # "nri":Landroid/telephony/NetworkRegistrationInfo;
    :cond_1e
    goto :goto_9

    .line 2268
    :cond_1f
    monitor-exit v0

    .line 2269
    const/4 v0, 0x0

    return v0

    .line 2268
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist setArfcnRsrpBoost(I)V
    .registers 2
    .param p1, "arfcnRsrpBoost"    # I

    .line 1587
    iput p1, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 1588
    return-void
.end method

.method public greylist-max-p setCdmaDefaultRoamingIndicator(I)V
    .registers 2
    .param p1, "roaming"    # I

    .line 1388
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1389
    return-void
.end method

.method public greylist-max-p setCdmaEriIconIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .line 1396
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 1397
    return-void
.end method

.method public greylist-max-p setCdmaEriIconMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 1404
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 1405
    return-void
.end method

.method public greylist-max-p setCdmaRoamingIndicator(I)V
    .registers 2
    .param p1, "roaming"    # I

    .line 1380
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1381
    return-void
.end method

.method public blacklist setCdmaSystemAndNetworkId(II)V
    .registers 3
    .param p1, "systemId"    # I
    .param p2, "networkId"    # I

    .line 1599
    iput p1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1600
    iput p2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1601
    return-void
.end method

.method public blacklist setCellBandwidths([I)V
    .registers 2
    .param p1, "bandwidths"    # [I

    .line 1311
    iput-object p1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 1312
    return-void
.end method

.method public blacklist setChannelNumber(I)V
    .registers 2
    .param p1, "channelNumber"    # I

    .line 1317
    iput p1, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 1318
    return-void
.end method

.method public greylist-max-p setCssIndicator(I)V
    .registers 3
    .param p1, "css"    # I

    .line 1593
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1594
    return-void
.end method

.method public greylist-max-p setDataRegState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 1304
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1306
    return-void
.end method

.method public greylist-max-r setDataRoaming(Z)V
    .registers 2
    .param p1, "dataRoaming"    # Z

    .line 1349
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    .line 1350
    return-void
.end method

.method public blacklist setDataRoamingFromRegistration(Z)V
    .registers 2
    .param p1, "dataRoaming"    # Z

    .line 694
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 695
    return-void
.end method

.method public blacklist setDataRoamingType(I)V
    .registers 6
    .param p1, "type"    # I

    .line 1355
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1357
    .local v2, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v2, :cond_19

    .line 1358
    new-instance v3, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1359
    invoke-virtual {v3, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1360
    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1361
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1363
    :cond_19
    invoke-virtual {v2, p1}, Landroid/telephony/NetworkRegistrationInfo;->setRoamingType(I)V

    .line 1364
    invoke-virtual {p0, v2}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1365
    return-void
.end method

.method public greylist-max-p setEmergencyOnly(Z)V
    .registers 2
    .param p1, "emergencyOnly"    # Z

    .line 1372
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1373
    return-void
.end method

.method public whitelist setIsManualSelection(Z)V
    .registers 2
    .param p1, "isManual"    # Z

    .line 1425
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1426
    return-void
.end method

.method public blacklist setIwlanPreferred(Z)V
    .registers 2
    .param p1, "isIwlanPreferred"    # Z

    .line 2192
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 2193
    return-void
.end method

.method public blacklist setNrFrequencyRange(I)V
    .registers 2
    .param p1, "nrFrequencyRange"    # I

    .line 1577
    iput p1, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 1578
    return-void
.end method

.method public greylist-max-r setOperatorAlphaLong(Ljava/lang/String;)V
    .registers 2
    .param p1, "longName"    # Ljava/lang/String;

    .line 1421
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 1422
    return-void
.end method

.method public blacklist setOperatorAlphaLongRaw(Ljava/lang/String;)V
    .registers 2
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;

    .line 2149
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 2150
    return-void
.end method

.method public blacklist setOperatorAlphaShortRaw(Ljava/lang/String;)V
    .registers 2
    .param p1, "operatorAlphaShort"    # Ljava/lang/String;

    .line 2169
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 2170
    return-void
.end method

.method public whitelist setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .line 1408
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 1409
    iput-object p2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 1410
    iput-object p3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 1411
    return-void
.end method

.method public blacklist setOutOfService(Z)V
    .registers 3
    .param p1, "powerOff"    # Z

    .line 1282
    invoke-direct {p0}, Landroid/telephony/ServiceState;->init()V

    .line 1283
    if-eqz p1, :cond_a

    .line 1284
    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1285
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1287
    :cond_a
    return-void
.end method

.method public blacklist setRilDataRadioTechnology(I)V
    .registers 6
    .param p1, "rt"    # I

    .line 1520
    const-string v0, "PHONE"

    const-string v1, "ServiceState.setRilDataRadioTechnology() called. It\'s encouraged to use addNetworkRegistrationInfo() instead *******"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1528
    .local v2, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v2, :cond_20

    .line 1529
    new-instance v3, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1530
    invoke-virtual {v3, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1531
    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1532
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1534
    :cond_20
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 1535
    invoke-virtual {p0, v2}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1536
    return-void
.end method

.method public blacklist setRilVoiceRadioTechnology(I)V
    .registers 5
    .param p1, "rt"    # I

    .line 1501
    const-string v0, "PHONE"

    const-string v1, "ServiceState.setRilVoiceRadioTechnology() called. It\'s encouraged to use addNetworkRegistrationInfo() instead *******"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1506
    .local v1, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v1, :cond_1f

    .line 1507
    new-instance v2, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1508
    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v2

    .line 1509
    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1510
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1512
    :cond_1f
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 1513
    invoke-virtual {p0, v1}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1514
    return-void
.end method

.method public whitelist setRoaming(Z)V
    .registers 2
    .param p1, "roaming"    # Z

    .line 1321
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 1322
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1323
    return-void
.end method

.method public whitelist setState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 1290
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 1292
    return-void
.end method

.method public whitelist setStateOff()V
    .registers 2

    .line 1270
    invoke-direct {p0}, Landroid/telephony/ServiceState;->init()V

    .line 1271
    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1272
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1273
    return-void
.end method

.method public whitelist setStateOutOfService()V
    .registers 1

    .line 1266
    invoke-direct {p0}, Landroid/telephony/ServiceState;->init()V

    .line 1267
    return-void
.end method

.method public greylist-max-r setVoiceRegState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 1297
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1299
    return-void
.end method

.method public greylist-max-r setVoiceRoaming(Z)V
    .registers 2
    .param p1, "roaming"    # Z

    .line 1328
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 1329
    return-void
.end method

.method public blacklist setVoiceRoamingType(I)V
    .registers 5
    .param p1, "type"    # I

    .line 1334
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1336
    .local v1, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v1, :cond_18

    .line 1337
    new-instance v2, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1338
    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v2

    .line 1339
    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1340
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1342
    :cond_18
    invoke-virtual {v1, p1}, Landroid/telephony/NetworkRegistrationInfo;->setRoamingType(I)V

    .line 1343
    invoke-virtual {p0, v1}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1344
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1180
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 1181
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{mVoiceRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1182
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDataRegState="

    .line 1183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1184
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChannelNumber="

    .line 1185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duplexMode()="

    .line 1186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDuplexMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCellBandwidths="

    .line 1187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorAlphaLong="

    .line 1188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorAlphaShort="

    .line 1189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isManualNetworkSelection="

    .line 1190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1191
    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v2, :cond_bc

    const-string v2, "(manual)"

    goto :goto_be

    :cond_bc
    const-string v2, "(automatic)"

    :goto_be
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getRilVoiceRadioTechnology="

    .line 1192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1193
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getRilDataRadioTechnology="

    .line 1194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1195
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCssIndicator="

    .line 1196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v2, :cond_136

    const-string/jumbo v2, "supported"

    goto :goto_139

    :cond_136
    const-string/jumbo v2, "unsupported"

    :goto_139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNetworkId="

    .line 1197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSystemId="

    .line 1198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCdmaRoamingIndicator="

    .line 1199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCdmaDefaultRoamingIndicator="

    .line 1200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsEmergencyOnly="

    .line 1201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isUsingCarrierAggregation="

    .line 1202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mArfcnRsrpBoost="

    .line 1203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNetworkRegistrationInfos="

    .line 1204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNrFrequencyRange="

    .line 1205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_1ac

    .line 1206
    iget v2, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    goto :goto_1ad

    :cond_1ac
    const/4 v2, 0x0

    .line 1205
    :goto_1ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorAlphaLongRaw="

    .line 1207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorAlphaShortRaw="

    .line 1208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsDataRoamingFromRegistration="

    .line 1209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 1210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsIwlanPreferred="

    .line 1211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsUsingNonTerrestrialNetwork="

    .line 1212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1213
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    .line 1214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 1181
    return-object v1

    .line 1215
    :catchall_1fc
    move-exception v1

    monitor-exit v0
    :try_end_1fe
    .catchall {:try_start_3 .. :try_end_1fe} :catchall_1fc

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 495
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 511
    :try_start_4e
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 512
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_78

    .line 513
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 515
    iget v0, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 518
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 519
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 520
    return-void

    .line 512
    :catchall_78
    move-exception v1

    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v1
.end method

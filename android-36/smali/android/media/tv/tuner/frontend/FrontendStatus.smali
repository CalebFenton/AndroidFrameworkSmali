.class public Landroid/media/tv/tuner/frontend/FrontendStatus;
.super Ljava/lang/Object;
.source "FrontendStatus.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;,
        Landroid/media/tv/tuner/frontend/FrontendStatus$FrontendRollOff;,
        Landroid/media/tv/tuner/frontend/FrontendStatus$FrontendGuardInterval;,
        Landroid/media/tv/tuner/frontend/FrontendStatus$FrontendTransmissionMode;,
        Landroid/media/tv/tuner/frontend/FrontendStatus$FrontendBandwidth;,
        Landroid/media/tv/tuner/frontend/FrontendStatus$FrontendInterleaveMode;,
        Landroid/media/tv/tuner/frontend/FrontendStatus$FrontendModulation;,
        Landroid/media/tv/tuner/frontend/FrontendStatus$FrontendStatusType;
    }
.end annotation


# static fields
.field public static final whitelist FRONTEND_STATUS_TYPE_AGC:I = 0xe

.field public static final whitelist FRONTEND_STATUS_TYPE_ATSC3_ALL_PLP_INFO:I = 0x29

.field public static final whitelist FRONTEND_STATUS_TYPE_ATSC3_PLP_INFO:I = 0x15

.field public static final whitelist FRONTEND_STATUS_TYPE_BANDWIDTH:I = 0x19

.field public static final whitelist FRONTEND_STATUS_TYPE_BER:I = 0x2

.field public static final whitelist FRONTEND_STATUS_TYPE_BERS:I = 0x17

.field public static final whitelist FRONTEND_STATUS_TYPE_CODERATES:I = 0x18

.field public static final whitelist FRONTEND_STATUS_TYPE_DEMOD_LOCK:I = 0x0

.field public static final whitelist FRONTEND_STATUS_TYPE_DVBT_CELL_IDS:I = 0x28

.field public static final whitelist FRONTEND_STATUS_TYPE_EWBS:I = 0xd

.field public static final whitelist FRONTEND_STATUS_TYPE_FEC:I = 0x8

.field public static final whitelist FRONTEND_STATUS_TYPE_FREQ_OFFSET:I = 0x12

.field public static final whitelist FRONTEND_STATUS_TYPE_GUARD_INTERVAL:I = 0x1a

.field public static final whitelist FRONTEND_STATUS_TYPE_HIERARCHY:I = 0x13

.field public static final whitelist FRONTEND_STATUS_TYPE_INTERLEAVINGS:I = 0x1e

.field public static final whitelist FRONTEND_STATUS_TYPE_IPTV_AVERAGE_JITTER_MS:I = 0x2e

.field public static final whitelist FRONTEND_STATUS_TYPE_IPTV_CONTENT_URL:I = 0x2a

.field public static final whitelist FRONTEND_STATUS_TYPE_IPTV_PACKETS_LOST:I = 0x2b

.field public static final whitelist FRONTEND_STATUS_TYPE_IPTV_PACKETS_RECEIVED:I = 0x2c

.field public static final whitelist FRONTEND_STATUS_TYPE_IPTV_WORST_JITTER_MS:I = 0x2d

.field public static final whitelist FRONTEND_STATUS_TYPE_ISDBT_MODE:I = 0x25

.field public static final whitelist FRONTEND_STATUS_TYPE_ISDBT_PARTIAL_RECEPTION_FLAG:I = 0x26

.field public static final whitelist FRONTEND_STATUS_TYPE_ISDBT_SEGMENTS:I = 0x1f

.field public static final whitelist FRONTEND_STATUS_TYPE_IS_LINEAR:I = 0x23

.field public static final whitelist FRONTEND_STATUS_TYPE_IS_MISO_ENABLED:I = 0x22

.field public static final whitelist FRONTEND_STATUS_TYPE_IS_SHORT_FRAMES_ENABLED:I = 0x24

.field public static final whitelist FRONTEND_STATUS_TYPE_LAYER_ERROR:I = 0x10

.field public static final whitelist FRONTEND_STATUS_TYPE_LNA:I = 0xf

.field public static final whitelist FRONTEND_STATUS_TYPE_LNB_VOLTAGE:I = 0xb

.field public static final whitelist FRONTEND_STATUS_TYPE_MER:I = 0x11

.field public static final whitelist FRONTEND_STATUS_TYPE_MODULATION:I = 0x9

.field public static final whitelist FRONTEND_STATUS_TYPE_MODULATIONS_EXT:I = 0x16

.field public static final whitelist FRONTEND_STATUS_TYPE_PER:I = 0x3

.field public static final whitelist FRONTEND_STATUS_TYPE_PLP_ID:I = 0xc

.field public static final whitelist FRONTEND_STATUS_TYPE_PRE_BER:I = 0x4

.field public static final whitelist FRONTEND_STATUS_TYPE_RF_LOCK:I = 0x14

.field public static final whitelist FRONTEND_STATUS_TYPE_ROLL_OFF:I = 0x21

.field public static final whitelist FRONTEND_STATUS_TYPE_SIGNAL_QUALITY:I = 0x5

.field public static final whitelist FRONTEND_STATUS_TYPE_SIGNAL_STRENGTH:I = 0x6

.field public static final whitelist FRONTEND_STATUS_TYPE_SNR:I = 0x1

.field public static final whitelist FRONTEND_STATUS_TYPE_SPECTRAL:I = 0xa

.field public static final whitelist FRONTEND_STATUS_TYPE_STANDARD_EXTENSION:I = 0x2f

.field public static final whitelist FRONTEND_STATUS_TYPE_STREAM_IDS:I = 0x27

.field public static final whitelist FRONTEND_STATUS_TYPE_SYMBOL_RATE:I = 0x7

.field public static final whitelist FRONTEND_STATUS_TYPE_T2_SYSTEM_ID:I = 0x1d

.field public static final whitelist FRONTEND_STATUS_TYPE_TRANSMISSION_MODE:I = 0x1b

.field public static final whitelist FRONTEND_STATUS_TYPE_TS_DATA_RATES:I = 0x20

.field public static final whitelist FRONTEND_STATUS_TYPE_UEC:I = 0x1c


# instance fields
.field private blacklist mAgc:Ljava/lang/Integer;

.field private blacklist mAllPlpInfo:[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;

.field private blacklist mBandwidth:Ljava/lang/Integer;

.field private blacklist mBer:Ljava/lang/Integer;

.field private blacklist mBers:[I

.field private blacklist mCodeRates:[I

.field private blacklist mDvbtCellIds:[I

.field private blacklist mFreqOffset:Ljava/lang/Long;

.field private blacklist mGuardInterval:Ljava/lang/Integer;

.field private blacklist mHierarchy:Ljava/lang/Integer;

.field private blacklist mInnerFec:Ljava/lang/Long;

.field private blacklist mInterleaving:[I

.field private blacklist mInversion:Ljava/lang/Integer;

.field private blacklist mIptvAverageJitterMs:Ljava/lang/Integer;

.field private blacklist mIptvContentUrl:Ljava/lang/String;

.field private blacklist mIptvPacketsLost:Ljava/lang/Long;

.field private blacklist mIptvPacketsReceived:Ljava/lang/Long;

.field private blacklist mIptvWorstJitterMs:Ljava/lang/Integer;

.field private blacklist mIsDemodLocked:Ljava/lang/Boolean;

.field private blacklist mIsEwbs:Ljava/lang/Boolean;

.field private blacklist mIsLayerErrors:[Z

.field private blacklist mIsLinear:Ljava/lang/Boolean;

.field private blacklist mIsLnaOn:Ljava/lang/Boolean;

.field private blacklist mIsMisoEnabled:Ljava/lang/Boolean;

.field private blacklist mIsRfLocked:Ljava/lang/Boolean;

.field private blacklist mIsShortFrames:Ljava/lang/Boolean;

.field private blacklist mIsdbtMode:Ljava/lang/Integer;

.field private blacklist mIsdbtPartialReceptionFlag:Ljava/lang/Integer;

.field private blacklist mIsdbtSegment:[I

.field private blacklist mLnbVoltage:Ljava/lang/Integer;

.field private blacklist mMer:Ljava/lang/Integer;

.field private blacklist mModulation:Ljava/lang/Integer;

.field private blacklist mModulationsExt:[I

.field private blacklist mPer:Ljava/lang/Integer;

.field private blacklist mPerBer:Ljava/lang/Integer;

.field private blacklist mPlpId:Ljava/lang/Integer;

.field private blacklist mPlpInfo:[Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;

.field private blacklist mRollOff:Ljava/lang/Integer;

.field private blacklist mSignalQuality:Ljava/lang/Integer;

.field private blacklist mSignalStrength:Ljava/lang/Integer;

.field private blacklist mSnr:Ljava/lang/Integer;

.field private blacklist mStandardExtension:Landroid/media/tv/tuner/frontend/StandardExtension;

.field private blacklist mStreamIds:[I

.field private blacklist mSymbolRate:Ljava/lang/Integer;

.field private blacklist mSystemId:Ljava/lang/Integer;

.field private blacklist mTransmissionMode:Ljava/lang/Integer;

.field private blacklist mTsDataRate:[I

.field private blacklist mUec:Ljava/lang/Integer;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    return-void
.end method


# virtual methods
.method public whitelist getAgc()I
    .registers 3

    .line 720
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mAgc:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 723
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mAgc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 721
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Agc status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAllAtsc3PlpInfo()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;",
            ">;"
        }
    .end annotation

    .line 1153
    const/high16 v0, 0x20000

    const-string v1, "Atsc3PlpInfo all status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1157
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mAllPlpInfo:[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;

    if-nez v0, :cond_11

    .line 1158
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 1160
    :cond_11
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mAllPlpInfo:[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1155
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Atsc3PlpInfo all status is empty"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAtsc3PlpTuningInfo()[Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;
    .registers 3

    .line 802
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mPlpInfo:[Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;

    if-eqz v0, :cond_7

    .line 805
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mPlpInfo:[Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;

    return-object v0

    .line 803
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Atsc3PlpTuningInfo status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBandwidth()I
    .registers 3

    .line 857
    const v0, 0x10001

    const-string v1, "getBandwidth status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 859
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mBandwidth:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 862
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mBandwidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 860
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bandwidth status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBer()I
    .registers 3

    .line 600
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mBer:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 603
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mBer:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 601
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ber status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBers()[I
    .registers 3

    .line 820
    const v0, 0x10001

    const-string v1, "getBers status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 822
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mBers:[I

    if-eqz v0, :cond_f

    .line 825
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mBers:[I

    return-object v0

    .line 823
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bers status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCodeRates()[I
    .registers 3

    .line 841
    const v0, 0x10001

    const-string v1, "getCodeRates status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 843
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mCodeRates:[I

    if-eqz v0, :cond_f

    .line 846
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mCodeRates:[I

    return-object v0

    .line 844
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CodeRates status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDvbtCellIds()[I
    .registers 3

    .line 1132
    const/high16 v0, 0x20000

    const-string v1, "dvbt cell ids status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 1134
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mDvbtCellIds:[I

    if-eqz v0, :cond_e

    .line 1137
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mDvbtCellIds:[I

    return-object v0

    .line 1135
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dvbt cell ids are empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getExtendedModulations()[I
    .registers 3

    .line 1001
    const v0, 0x10001

    const-string v1, "getExtendedModulations status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 1003
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mModulationsExt:[I

    if-eqz v0, :cond_f

    .line 1006
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mModulationsExt:[I

    return-object v0

    .line 1004
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExtendedModulations status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFreqOffset()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 765
    invoke-virtual {p0}, Landroid/media/tv/tuner/frontend/FrontendStatus;->getFreqOffsetLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getFreqOffsetLong()J
    .registers 3

    .line 773
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mFreqOffset:Ljava/lang/Long;

    if-eqz v0, :cond_b

    .line 776
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mFreqOffset:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 774
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FreqOffset status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getGuardInterval()I
    .registers 3

    .line 873
    const v0, 0x10001

    const-string v1, "getGuardInterval status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 875
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mGuardInterval:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 878
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mGuardInterval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 876
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GuardInterval status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getHierarchy()I
    .registers 3

    .line 783
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mHierarchy:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 786
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mHierarchy:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 784
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hierarchy status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getInnerFec()J
    .registers 3

    .line 661
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mInnerFec:Ljava/lang/Long;

    if-eqz v0, :cond_b

    .line 664
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mInnerFec:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 662
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InnerFec status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getInterleaving()[I
    .registers 3

    .line 942
    const v0, 0x10001

    const-string v1, "getInterleaving status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 944
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mInterleaving:[I

    if-eqz v0, :cond_f

    .line 947
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mInterleaving:[I

    return-object v0

    .line 945
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interleaving status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIptvAverageJitterMillis()I
    .registers 3

    .line 1279
    const/high16 v0, 0x30000

    const-string v1, "IptvAverageJitterMs status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 1281
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIptvAverageJitterMs:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 1284
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIptvAverageJitterMs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1282
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IptvAverageJitterMs status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIptvContentUrl()Ljava/lang/String;
    .registers 3

    .line 1207
    const/high16 v0, 0x30000

    const-string v1, "IptvContentUrl status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 1209
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIptvContentUrl:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1212
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIptvContentUrl:Ljava/lang/String;

    return-object v0

    .line 1210
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IptvContentUrl status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIptvPacketsLost()J
    .registers 3

    .line 1225
    const/high16 v0, 0x30000

    const-string v1, "IptvPacketsLost status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 1227
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIptvPacketsLost:Ljava/lang/Long;

    if-eqz v0, :cond_12

    .line 1230
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIptvPacketsLost:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 1228
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IptvPacketsLost status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIptvPacketsReceived()J
    .registers 3

    .line 1243
    const/high16 v0, 0x30000

    const-string v1, "IptvPacketsReceived status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 1245
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIptvPacketsReceived:Ljava/lang/Long;

    if-eqz v0, :cond_12

    .line 1248
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIptvPacketsReceived:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 1246
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IptvPacketsReceived status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIptvWorstJitterMillis()I
    .registers 3

    .line 1261
    const/high16 v0, 0x30000

    const-string v1, "IptvWorstJitterMs status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 1263
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIptvWorstJitterMs:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 1266
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIptvWorstJitterMs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1264
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IptvWorstJitterMs status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIsdbtMode()I
    .registers 3

    .line 1079
    const/high16 v0, 0x20000

    const-string v1, "IsdbtMode status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 1081
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsdbtMode:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 1084
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsdbtMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1082
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IsdbtMode status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIsdbtPartialReceptionFlag()I
    .registers 3

    .line 1096
    const/high16 v0, 0x20000

    const-string v1, "IsdbtPartialReceptionFlag status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 1098
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsdbtPartialReceptionFlag:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 1101
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsdbtPartialReceptionFlag:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1099
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IsdbtPartialReceptionFlag status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIsdbtSegment()[I
    .registers 3

    .line 964
    const v0, 0x10001

    const-string v1, "getIsdbtSegment status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 966
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsdbtSegment:[I

    if-eqz v0, :cond_f

    .line 969
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsdbtSegment:[I

    return-object v0

    .line 967
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IsdbtSegment status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLayerErrors()[Z
    .registers 3

    .line 743
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsLayerErrors:[Z

    if-eqz v0, :cond_7

    .line 746
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsLayerErrors:[Z

    return-object v0

    .line 744
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LayerErrors status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLnbVoltage()I
    .registers 3

    .line 691
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mLnbVoltage:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 694
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mLnbVoltage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 692
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LnbVoltage status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMer()I
    .registers 3

    .line 752
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mMer:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 755
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mMer:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 753
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mer status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getModulation()I
    .registers 3

    .line 671
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mModulation:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 674
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mModulation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 672
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Modulation status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPer()I
    .registers 3

    .line 612
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mPer:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 615
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mPer:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 613
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Per status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPerBer()I
    .registers 3

    .line 623
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mPerBer:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 626
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mPerBer:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 624
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PerBer status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPlpId()I
    .registers 3

    .line 700
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mPlpId:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 703
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mPlpId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 701
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PlpId status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRollOff()I
    .registers 3

    .line 1017
    const v0, 0x10001

    const-string v1, "getRollOff status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 1019
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mRollOff:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 1022
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mRollOff:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1020
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RollOff status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSignalQuality()I
    .registers 3

    .line 632
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSignalQuality:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 635
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSignalQuality:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 633
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SignalQuality status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSignalStrength()I
    .registers 3

    .line 641
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSignalStrength:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 644
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSignalStrength:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 642
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SignalStrength status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSnr()I
    .registers 3

    .line 589
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSnr:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 592
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSnr:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 590
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Snr status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSpectralInversion()I
    .registers 3

    .line 681
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mInversion:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 684
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mInversion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 682
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpectralInversion status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getStandardExtension()Landroid/media/tv/tuner/frontend/StandardExtension;
    .registers 3

    .line 1302
    const/high16 v0, 0x40000

    const-string v1, "StandardExtension status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 1304
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mStandardExtension:Landroid/media/tv/tuner/frontend/StandardExtension;

    if-eqz v0, :cond_e

    .line 1307
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mStandardExtension:Landroid/media/tv/tuner/frontend/StandardExtension;

    return-object v0

    .line 1305
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardExtension status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getStreamIds()[I
    .registers 3

    .line 1114
    const/high16 v0, 0x20000

    const-string/jumbo v1, "stream ids status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 1116
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mStreamIds:[I

    if-eqz v0, :cond_f

    .line 1119
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mStreamIds:[I

    return-object v0

    .line 1117
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stream ids are empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSymbolRate()I
    .registers 3

    .line 650
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSymbolRate:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 653
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSymbolRate:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 651
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SymbolRate status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSystemId()I
    .registers 3

    .line 921
    const v0, 0x10001

    const-string/jumbo v1, "getSystemId status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 923
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSystemId:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    .line 926
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSystemId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 924
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SystemId status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTransmissionMode()I
    .registers 3

    .line 889
    const v0, 0x10001

    const-string/jumbo v1, "getTransmissionMode status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 891
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mTransmissionMode:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    .line 894
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mTransmissionMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 892
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TransmissionMode status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTsDataRate()[I
    .registers 3

    .line 980
    const v0, 0x10001

    const-string/jumbo v1, "getTsDataRate status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 982
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mTsDataRate:[I

    if-eqz v0, :cond_10

    .line 985
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mTsDataRate:[I

    return-object v0

    .line 983
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TsDataRate status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getUec()I
    .registers 3

    .line 905
    const v0, 0x10001

    const-string/jumbo v1, "getUec status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 907
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mUec:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    .line 910
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mUec:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 908
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uec status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isDemodLocked()Z
    .registers 3

    .line 580
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsDemodLocked:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 583
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsDemodLocked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 581
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DemodLocked status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isEwbs()Z
    .registers 3

    .line 709
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsEwbs:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 712
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsEwbs:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 710
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ewbs status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isLinear()Z
    .registers 3

    .line 1047
    const v0, 0x10001

    const-string/jumbo v1, "isLinear status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 1049
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsLinear:Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    .line 1052
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsLinear:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1050
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "isLinear status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isLnaOn()Z
    .registers 3

    .line 729
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsLnaOn:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 732
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsLnaOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 730
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LnaOn status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isMisoEnabled()Z
    .registers 3

    .line 1032
    const v0, 0x10001

    const-string/jumbo v1, "isMisoEnabled status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 1034
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsMisoEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    .line 1037
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsMisoEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1035
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "isMisoEnabled status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isRfLocked()Z
    .registers 3

    .line 792
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsRfLocked:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 795
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsRfLocked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 793
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "isRfLocked status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isShortFramesEnabled()Z
    .registers 3

    .line 1062
    const v0, 0x10001

    const-string/jumbo v1, "isShortFramesEnabled status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    .line 1064
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsShortFrames:Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    .line 1067
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsShortFrames:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1065
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "isShortFramesEnabled status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

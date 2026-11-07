.class public final Landroid/net/wifi/WifiUsabilityStatsEntry;
.super Ljava/lang/Object;
.source "WifiUsabilityStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;,
        Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;,
        Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;,
        Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;,
        Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;,
        Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;,
        Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;,
        Landroid/net/wifi/WifiUsabilityStatsEntry$WifiChannelBandwidth;,
        Landroid/net/wifi/WifiUsabilityStatsEntry$WifiSpatialStreams;,
        Landroid/net/wifi/WifiUsabilityStatsEntry$WifiPreambleType;,
        Landroid/net/wifi/WifiUsabilityStatsEntry$WmeAccessCategory;,
        Landroid/net/wifi/WifiUsabilityStatsEntry$ProbeStatus;,
        Landroid/net/wifi/WifiUsabilityStatsEntry$LinkState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LINK_STATE_IN_USE:I = 0x2

.field public static final whitelist LINK_STATE_NOT_IN_USE:I = 0x1

.field public static final whitelist LINK_STATE_UNKNOWN:I = 0x0

.field public static final whitelist NUM_WME_ACCESS_CATEGORIES:I = 0x4

.field public static final whitelist PROBE_STATUS_FAILURE:I = 0x3

.field public static final whitelist PROBE_STATUS_NO_PROBE:I = 0x1

.field public static final whitelist PROBE_STATUS_SUCCESS:I = 0x2

.field public static final whitelist PROBE_STATUS_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "WifiUsabilityStatsEntry"

.field public static final whitelist WIFI_BANDWIDTH_10_MHZ:I = 0x6

.field public static final whitelist WIFI_BANDWIDTH_160_MHZ:I = 0x3

.field public static final whitelist WIFI_BANDWIDTH_20_MHZ:I = 0x0

.field public static final whitelist WIFI_BANDWIDTH_320_MHZ:I = 0x7

.field public static final whitelist WIFI_BANDWIDTH_40_MHZ:I = 0x1

.field public static final whitelist WIFI_BANDWIDTH_5_MHZ:I = 0x5

.field public static final whitelist WIFI_BANDWIDTH_80P80_MHZ:I = 0x4

.field public static final whitelist WIFI_BANDWIDTH_80_MHZ:I = 0x2

.field public static final whitelist WIFI_BANDWIDTH_INVALID:I = -0x1

.field public static final whitelist WIFI_PREAMBLE_CCK:I = 0x1

.field public static final whitelist WIFI_PREAMBLE_EHT:I = 0x6

.field public static final whitelist WIFI_PREAMBLE_HE:I = 0x5

.field public static final whitelist WIFI_PREAMBLE_HT:I = 0x2

.field public static final whitelist WIFI_PREAMBLE_INVALID:I = -0x1

.field public static final whitelist WIFI_PREAMBLE_OFDM:I = 0x0

.field public static final whitelist WIFI_PREAMBLE_VHT:I = 0x3

.field public static final whitelist WIFI_SPATIAL_STREAMS_FOUR:I = 0x4

.field public static final whitelist WIFI_SPATIAL_STREAMS_INVALID:I = -0x1

.field public static final whitelist WIFI_SPATIAL_STREAMS_ONE:I = 0x1

.field public static final whitelist WIFI_SPATIAL_STREAMS_THREE:I = 0x3

.field public static final whitelist WIFI_SPATIAL_STREAMS_TWO:I = 0x2

.field public static final whitelist WME_ACCESS_CATEGORY_BE:I = 0x0

.field public static final whitelist WME_ACCESS_CATEGORY_BK:I = 0x1

.field public static final whitelist WME_ACCESS_CATEGORY_VI:I = 0x2

.field public static final whitelist WME_ACCESS_CATEGORY_VO:I = 0x3


# instance fields
.field private final blacklist mCellularDataNetworkType:I

.field private final blacklist mCellularSignalStrengthDb:I

.field private final blacklist mCellularSignalStrengthDbm:I

.field private final blacklist mChannelUtilizationRatio:I

.field private final blacklist mContentionTimeStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

.field private final blacklist mIsBluetoothConnected:Z

.field private final blacklist mIsCellularDataAvailable:Z

.field private final blacklist mIsLowLatencyActivated:Z

.field private final blacklist mIsNetworkCapabilitiesDownstreamSufficient:I

.field private final blacklist mIsNetworkCapabilitiesUpstreamSufficient:I

.field private final blacklist mIsSameRegisteredCell:Z

.field private final blacklist mIsThroughputPredictorDownstreamSufficient:I

.field private final blacklist mIsThroughputPredictorUpstreamSufficient:I

.field private final blacklist mIsThroughputSufficient:Z

.field private final blacklist mIsWifiScoringEnabled:Z

.field private final blacklist mLabelBadEventCount:I

.field private final blacklist mLinkSpeedMbps:I

.field private final blacklist mLinkStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMaxSupportedRxLinkSpeed:I

.field private final blacklist mMaxSupportedTxLinkSpeed:I

.field private blacklist mMloMode:I

.field private final blacklist mProbeElapsedTimeSinceLastUpdateMillis:I

.field private final blacklist mProbeMcsRateSinceLastUpdate:I

.field private final blacklist mProbeStatusSinceLastUpdate:I

.field private final blacklist mRadioStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

.field private final blacklist mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

.field private final blacklist mRssi:I

.field private final blacklist mRxLinkSpeedMbps:I

.field private final blacklist mRxTransmittedBytes:J

.field private final blacklist mStatusDataStall:I

.field private final blacklist mThreadDeviceRole:I

.field private final blacklist mTimeSliceDutyCycleInPercent:I

.field private final blacklist mTimeStampMillis:J

.field private final blacklist mTotalBackgroundScanTimeMillis:J

.field private final blacklist mTotalBeaconRx:J

.field private final blacklist mTotalCcaBusyFreqTimeMillis:J

.field private final blacklist mTotalHotspot2ScanTimeMillis:J

.field private final blacklist mTotalNanScanTimeMillis:J

.field private final blacklist mTotalPnoScanTimeMillis:J

.field private final blacklist mTotalRadioOnFreqTimeMillis:J

.field private final blacklist mTotalRadioOnTimeMillis:J

.field private final blacklist mTotalRadioRxTimeMillis:J

.field private final blacklist mTotalRadioTxTimeMillis:J

.field private final blacklist mTotalRoamScanTimeMillis:J

.field private final blacklist mTotalRxSuccess:J

.field private final blacklist mTotalScanTimeMillis:J

.field private final blacklist mTotalTxBad:J

.field private final blacklist mTotalTxRetries:J

.field private final blacklist mTotalTxSuccess:J

.field private final blacklist mTxTransmittedBytes:J

.field private final blacklist mUwbAdapterState:I

.field private final blacklist mVoipMode:I

.field private final blacklist mWifiFrameworkState:I

.field private final blacklist mWifiLinkCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1318
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JIIJJJJJJJJJJJJJJJJIIIII[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;[Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;IZZZIIIZLandroid/util/SparseArray;IIJJIIIIIIZIZIIIII)V
    .registers 90
    .param p1, "timeStampMillis"    # J
    .param p3, "rssi"    # I
    .param p4, "linkSpeedMbps"    # I
    .param p5, "totalTxSuccess"    # J
    .param p7, "totalTxRetries"    # J
    .param p9, "totalTxBad"    # J
    .param p11, "totalRxSuccess"    # J
    .param p13, "totalRadioOnTimeMillis"    # J
    .param p15, "totalRadioTxTimeMillis"    # J
    .param p17, "totalRadioRxTimeMillis"    # J
    .param p19, "totalScanTimeMillis"    # J
    .param p21, "totalNanScanTimeMillis"    # J
    .param p23, "totalBackgroundScanTimeMillis"    # J
    .param p25, "totalRoamScanTimeMillis"    # J
    .param p27, "totalPnoScanTimeMillis"    # J
    .param p29, "totalHotspot2ScanTimeMillis"    # J
    .param p31, "totalCcaBusyFreqTimeMillis"    # J
    .param p33, "totalRadioOnFreqTimeMillis"    # J
    .param p35, "totalBeaconRx"    # J
    .param p37, "probeStatusSinceLastUpdate"    # I
    .param p38, "probeElapsedTimeSinceLastUpdateMillis"    # I
    .param p39, "probeMcsRateSinceLastUpdate"    # I
    .param p40, "rxLinkSpeedMbps"    # I
    .param p41, "timeSliceDutyCycleInPercent"    # I
    .param p42, "contentionTimeStats"    # [Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;
    .param p43, "rateStats"    # [Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
    .param p44, "radiostats"    # [Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;
    .param p45, "channelUtilizationRatio"    # I
    .param p46, "isThroughputSufficient"    # Z
    .param p47, "isWifiScoringEnabled"    # Z
    .param p48, "isCellularDataAvailable"    # Z
    .param p49, "cellularDataNetworkType"    # I
    .param p50, "cellularSignalStrengthDbm"    # I
    .param p51, "cellularSignalStrengthDb"    # I
    .param p52, "isSameRegisteredCell"    # Z
    .param p54, "wifiLinkCount"    # I
    .param p55, "mloMode"    # I
    .param p56, "txTransmittedBytes"    # J
    .param p58, "rxTransmittedBytes"    # J
    .param p60, "labelBadEventCount"    # I
    .param p61, "wifiFrameworkState"    # I
    .param p62, "isNetworkCapabilitiesDownstreamSufficient"    # I
    .param p63, "isNetworkCapabilitiesUpstreamSufficient"    # I
    .param p64, "isThroughputPredictorDownstreamSufficient"    # I
    .param p65, "isThroughputPredictorUpstreamSufficient"    # I
    .param p66, "isBluetoothConnected"    # Z
    .param p67, "uwbAdapterState"    # I
    .param p68, "isLowLatencyActivated"    # Z
    .param p69, "maxSupportedTxLinkSpeed"    # I
    .param p70, "maxSupportedRxLinkSpeed"    # I
    .param p71, "voipMode"    # I
    .param p72, "threadDeviceRole"    # I
    .param p73, "statusDataStall"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIIJJJJJJJJJJJJJJJJIIIII[",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;",
            "[",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;",
            "[",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;",
            "IZZZIIIZ",
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;",
            ">;IIJJIIIIIIZIZIIIII)V"
        }
    .end annotation

    .line 1197
    .local p53, "linkStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1198
    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTimeStampMillis:J

    .line 1199
    move/from16 v3, p3

    iput v3, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRssi:I

    .line 1200
    move/from16 v4, p4

    iput v4, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkSpeedMbps:I

    .line 1201
    move-wide/from16 v5, p5

    iput-wide v5, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxSuccess:J

    .line 1202
    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxRetries:J

    .line 1203
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxBad:J

    .line 1204
    move-wide/from16 v11, p11

    iput-wide v11, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRxSuccess:J

    .line 1205
    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioOnTimeMillis:J

    .line 1206
    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioTxTimeMillis:J

    .line 1207
    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioRxTimeMillis:J

    .line 1208
    move-wide/from16 v1, p19

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalScanTimeMillis:J

    .line 1209
    move-wide/from16 v1, p21

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalNanScanTimeMillis:J

    .line 1210
    move-wide/from16 v1, p23

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalBackgroundScanTimeMillis:J

    .line 1211
    move-wide/from16 v1, p25

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRoamScanTimeMillis:J

    .line 1212
    move-wide/from16 v1, p27

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalPnoScanTimeMillis:J

    .line 1213
    move-wide/from16 v1, p29

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalHotspot2ScanTimeMillis:J

    .line 1214
    move-wide/from16 v1, p31

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalCcaBusyFreqTimeMillis:J

    .line 1215
    move-wide/from16 v1, p33

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioOnFreqTimeMillis:J

    .line 1216
    move-wide/from16 v1, p35

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalBeaconRx:J

    .line 1217
    move/from16 v15, p37

    iput v15, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeStatusSinceLastUpdate:I

    .line 1218
    move/from16 v1, p38

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeElapsedTimeSinceLastUpdateMillis:I

    .line 1219
    move/from16 v2, p39

    iput v2, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeMcsRateSinceLastUpdate:I

    .line 1220
    move/from16 v1, p40

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRxLinkSpeedMbps:I

    .line 1221
    move/from16 v1, p41

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTimeSliceDutyCycleInPercent:I

    .line 1222
    move-object/from16 v1, p42

    iput-object v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mContentionTimeStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    .line 1223
    move-object/from16 v1, p43

    iput-object v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    .line 1224
    move-object/from16 v1, p44

    iput-object v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRadioStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

    .line 1225
    move/from16 v1, p45

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mChannelUtilizationRatio:I

    .line 1226
    move/from16 v1, p46

    iput-boolean v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsThroughputSufficient:Z

    .line 1227
    move/from16 v1, p47

    iput-boolean v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsWifiScoringEnabled:Z

    .line 1228
    move/from16 v1, p48

    iput-boolean v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsCellularDataAvailable:Z

    .line 1229
    move/from16 v1, p49

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularDataNetworkType:I

    .line 1230
    move/from16 v1, p50

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularSignalStrengthDbm:I

    .line 1231
    move/from16 v1, p51

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularSignalStrengthDb:I

    .line 1232
    move/from16 v1, p52

    iput-boolean v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsSameRegisteredCell:Z

    .line 1233
    move-object/from16 v1, p53

    iput-object v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    .line 1234
    move/from16 v1, p54

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mWifiLinkCount:I

    .line 1235
    move/from16 v1, p55

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mMloMode:I

    .line 1236
    move-wide/from16 v1, p56

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTxTransmittedBytes:J

    .line 1237
    move-wide/from16 v1, p58

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRxTransmittedBytes:J

    .line 1238
    move/from16 v1, p60

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLabelBadEventCount:I

    .line 1239
    move/from16 v2, p61

    iput v2, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mWifiFrameworkState:I

    .line 1240
    move/from16 v1, p62

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsNetworkCapabilitiesDownstreamSufficient:I

    .line 1241
    move/from16 v1, p63

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsNetworkCapabilitiesUpstreamSufficient:I

    .line 1242
    move/from16 v1, p64

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsThroughputPredictorDownstreamSufficient:I

    .line 1243
    move/from16 v1, p65

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsThroughputPredictorUpstreamSufficient:I

    .line 1244
    move/from16 v1, p66

    iput-boolean v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsBluetoothConnected:Z

    .line 1245
    move/from16 v1, p67

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mUwbAdapterState:I

    .line 1246
    move/from16 v1, p68

    iput-boolean v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsLowLatencyActivated:Z

    .line 1247
    move/from16 v1, p69

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mMaxSupportedTxLinkSpeed:I

    .line 1248
    move/from16 v1, p70

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mMaxSupportedRxLinkSpeed:I

    .line 1249
    move/from16 v1, p71

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mVoipMode:I

    .line 1250
    move/from16 v1, p72

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mThreadDeviceRole:I

    .line 1251
    move/from16 v1, p73

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mStatusDataStall:I

    .line 1252
    return-void
.end method

.method public static blacklist getLinkStateString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 61
    packed-switch p0, :pswitch_data_c

    .line 67
    const-string v0, "LINK_STATE_UNKNOWN"

    return-object v0

    .line 65
    :pswitch_6
    const-string v0, "LINK_STATE_IN_USE"

    return-object v0

    .line 63
    :pswitch_9
    const-string v0, "LINK_STATE_NOT_IN_USE"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1256
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCellularDataNetworkType()I
    .registers 2

    .line 2035
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularDataNetworkType:I

    return v0
.end method

.method public whitelist getCellularSignalStrengthDb()I
    .registers 2

    .line 2051
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularSignalStrengthDb:I

    return v0
.end method

.method public whitelist getCellularSignalStrengthDbm()I
    .registers 2

    .line 2043
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularSignalStrengthDbm:I

    return v0
.end method

.method public blacklist getCenterFreqFirstSegment(I)I
    .registers 5
    .param p1, "linkId"    # I

    .line 1464
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1465
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmCenterFreqFirstSegment(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I

    move-result v0

    return v0

    .line 1467
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCenterFreqSecondSegment(I)I
    .registers 5
    .param p1, "linkId"    # I

    .line 1479
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1480
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmCenterFreqSecondSegment(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I

    move-result v0

    return v0

    .line 1482
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getChannelUtilizationRatio()I
    .registers 2

    .line 1998
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mChannelUtilizationRatio:I

    return v0
.end method

.method public blacklist getChannelWidth(I)I
    .registers 5
    .param p1, "linkId"    # I

    .line 1449
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1450
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmChannelWidth(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I

    move-result v0

    return v0

    .line 1452
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getContentionTimeStats(I)Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;
    .registers 4
    .param p1, "ac"    # I

    .line 1804
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mContentionTimeStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mContentionTimeStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 1806
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mContentionTimeStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    aget-object v0, v0, p1

    return-object v0

    .line 1808
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The ContentionTimeStats is not filled out correctly: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mContentionTimeStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    .line 1809
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1808
    const-string v1, "WifiUsabilityStatsEntry"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;-><init>()V

    return-object v0
.end method

.method public whitelist getContentionTimeStats(II)Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;
    .registers 6
    .param p1, "linkId"    # I
    .param p2, "ac"    # I

    .line 1823
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1826
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmContentionTimeStats(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    move-result-object v0

    .line 1828
    .local v0, "linkContentionTimeStats":[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;
    if-eqz v0, :cond_1d

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1d

    .line 1830
    aget-object v1, v0, p2

    return-object v1

    .line 1832
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The ContentionTimeStats is not filled out correctly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mContentionTimeStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    .line 1833
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1832
    const-string v2, "WifiUsabilityStatsEntry"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    new-instance v1, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    invoke-direct {v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;-><init>()V

    return-object v1

    .line 1824
    .end local v0    # "linkContentionTimeStats":[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;
    :cond_41
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getFrequencyMhz(I)I
    .registers 5
    .param p1, "linkId"    # I

    .line 1423
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmFrequencyMhz(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I

    move-result v0

    return v0

    .line 1424
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getLabelBadEventCount()J
    .registers 3

    .line 2081
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLabelBadEventCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist getLinkIds()[I
    .registers 4

    .line 1355
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 1356
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1357
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget-object v2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1358
    iget-object v2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v0, v1

    .line 1357
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1360
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method

.method public whitelist getLinkSpeedMbps()I
    .registers 2

    .line 1491
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkSpeedMbps:I

    return v0
.end method

.method public whitelist getLinkState(I)I
    .registers 5
    .param p1, "linkId"    # I

    .line 1371
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmState(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I

    move-result v0

    return v0

    .line 1372
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getLowLatencyModeState()Z
    .registers 2

    .line 2121
    iget-boolean v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsLowLatencyActivated:Z

    return v0
.end method

.method public blacklist getMaxSupportedRxLinkSpeed()I
    .registers 2

    .line 2131
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mMaxSupportedRxLinkSpeed:I

    return v0
.end method

.method public blacklist getMaxSupportedTxLinkSpeed()I
    .registers 2

    .line 2126
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mMaxSupportedTxLinkSpeed:I

    return v0
.end method

.method public blacklist getMloMode()I
    .registers 2

    .line 2066
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mMloMode:I

    return v0
.end method

.method public blacklist getPacketStats(II)Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;
    .registers 6
    .param p1, "linkId"    # I
    .param p2, "ac"    # I

    .line 1848
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1851
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmPacketStats(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)[Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;

    move-result-object v0

    .line 1853
    .local v0, "linkPacketStats":[Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;
    if-eqz v0, :cond_1d

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1d

    .line 1855
    aget-object v1, v0, p2

    return-object v1

    .line 1857
    :cond_1d
    const-string v1, "WifiUsabilityStatsEntry"

    const-string v2, "The PacketStats is not filled out correctly"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    new-instance v1, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;

    invoke-direct {v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;-><init>()V

    return-object v1

    .line 1849
    .end local v0    # "linkPacketStats":[Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;
    :cond_2a
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getPeerInfo(I)Ljava/util/List;
    .registers 5
    .param p1, "linkId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;",
            ">;"
        }
    .end annotation

    .line 1953
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1954
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmPeerInfo(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)[Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;

    move-result-object v0

    .line 1955
    .local v0, "peerInfo":[Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;
    if-eqz v0, :cond_1b

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1956
    :cond_1b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1958
    .end local v0    # "peerInfo":[Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;
    :cond_20
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getProbeElapsedTimeSinceLastUpdateMillis()I
    .registers 2

    .line 1722
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeElapsedTimeSinceLastUpdateMillis:I

    return v0
.end method

.method public whitelist getProbeMcsRateSinceLastUpdate()I
    .registers 2

    .line 1727
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeMcsRateSinceLastUpdate:I

    return v0
.end method

.method public whitelist getProbeStatusSinceLastUpdate()I
    .registers 2

    .line 1717
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeStatusSinceLastUpdate:I

    return v0
.end method

.method public whitelist getRadioId(I)J
    .registers 5
    .param p1, "linkId"    # I

    .line 1410
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmRadioId(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 1411
    :cond_16
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRateStats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;",
            ">;"
        }
    .end annotation

    .line 1879
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    if-eqz v0, :cond_b

    .line 1880
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1882
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRateStats(I)Ljava/util/List;
    .registers 5
    .param p1, "linkId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;",
            ">;"
        }
    .end annotation

    .line 1904
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1905
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmRateStats(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    move-result-object v0

    .line 1906
    .local v0, "rateStats":[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
    if-eqz v0, :cond_1b

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1907
    :cond_1b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1909
    .end local v0    # "rateStats":[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
    :cond_20
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRateStats(II)Ljava/util/List;
    .registers 6
    .param p1, "linkId"    # I
    .param p2, "peerIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;",
            ">;"
        }
    .end annotation

    .line 1933
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1934
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getPeerInfo(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_35

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getPeerInfo(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_35

    .line 1935
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmPeerInfo(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)[Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->-$$Nest$fgetmRateStats(Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;)[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    move-result-object v0

    .line 1936
    .local v0, "rateStats":[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
    if-eqz v0, :cond_35

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1938
    .end local v0    # "rateStats":[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
    :cond_35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1940
    :cond_3a
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRssi()I
    .registers 2

    .line 1387
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRssi:I

    return v0
.end method

.method public whitelist getRssi(I)I
    .registers 5
    .param p1, "linkId"    # I

    .line 1397
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmRssi(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I

    move-result v0

    return v0

    .line 1398
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRssiMgmt(I)I
    .registers 5
    .param p1, "linkId"    # I

    .line 1436
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmRssiMgmt(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I

    move-result v0

    return v0

    .line 1437
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRxLinkSpeedMbps()I
    .registers 2

    .line 1738
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRxLinkSpeedMbps:I

    return v0
.end method

.method public whitelist getRxLinkSpeedMbps(I)I
    .registers 5
    .param p1, "linkId"    # I

    .line 1750
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmRxLinkSpeedMbps(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I

    move-result v0

    return v0

    .line 1751
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRxTransmittedBytes()J
    .registers 3

    .line 2076
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRxTransmittedBytes:J

    return-wide v0
.end method

.method public blacklist getScanResultsWithSameFreq(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;
    .registers 5
    .param p1, "linkId"    # I

    .line 1971
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1972
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    .line 1973
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmScanResultsWithSameFreq(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)[Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;

    move-result-object v0

    .line 1974
    .local v0, "scanResultsWithSameFreq":[Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;
    return-object v0

    .line 1976
    .end local v0    # "scanResultsWithSameFreq":[Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getStatusDataStall()I
    .registers 2

    .line 2146
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mStatusDataStall:I

    return v0
.end method

.method public blacklist getThreadDeviceRole()I
    .registers 2

    .line 2141
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mThreadDeviceRole:I

    return v0
.end method

.method public whitelist getTimeSliceDutyCycleInPercent()I
    .registers 3

    .line 1766
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTimeSliceDutyCycleInPercent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1769
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTimeSliceDutyCycleInPercent:I

    return v0

    .line 1767
    :cond_8
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Unknown value"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTimeSliceDutyCycleInPercent(I)I
    .registers 5
    .param p1, "linkId"    # I

    .line 1785
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1788
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmTimeSliceDutyCycleInPercent(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    .line 1791
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmTimeSliceDutyCycleInPercent(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I

    move-result v0

    return v0

    .line 1789
    :cond_24
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Unknown value"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1786
    :cond_2c
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTimeStampMillis()J
    .registers 3

    .line 1377
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTimeStampMillis:J

    return-wide v0
.end method

.method public whitelist getTotalBackgroundScanTimeMillis()J
    .registers 3

    .line 1627
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalBackgroundScanTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalBeaconRx()J
    .registers 3

    .line 1700
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalBeaconRx:J

    return-wide v0
.end method

.method public whitelist getTotalBeaconRx(I)J
    .registers 5
    .param p1, "linkId"    # I

    .line 1711
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmTotalBeaconRx(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)J

    move-result-wide v0

    return-wide v0

    .line 1712
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTotalCcaBusyFreqTimeMillis()J
    .registers 3

    .line 1653
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalCcaBusyFreqTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalCcaBusyFreqTimeMillis(I)J
    .registers 5
    .param p1, "linkId"    # I

    .line 1666
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmTotalCcaBusyFreqTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)J

    move-result-wide v0

    return-wide v0

    .line 1667
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTotalHotspot2ScanTimeMillis()J
    .registers 3

    .line 1643
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalHotspot2ScanTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalNanScanTimeMillis()J
    .registers 3

    .line 1622
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalNanScanTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalPnoScanTimeMillis()J
    .registers 3

    .line 1637
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalPnoScanTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalRadioOnFreqTimeMillis()J
    .registers 3

    .line 1676
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioOnFreqTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalRadioOnFreqTimeMillis(I)J
    .registers 5
    .param p1, "linkId"    # I

    .line 1688
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmTotalRadioOnFreqTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)J

    move-result-wide v0

    return-wide v0

    .line 1689
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTotalRadioOnTimeMillis()J
    .registers 3

    .line 1602
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioOnTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalRadioRxTimeMillis()J
    .registers 3

    .line 1612
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioRxTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalRadioTxTimeMillis()J
    .registers 3

    .line 1607
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioTxTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalRoamScanTimeMillis()J
    .registers 3

    .line 1632
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRoamScanTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalRxSuccess()J
    .registers 3

    .line 1585
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRxSuccess:J

    return-wide v0
.end method

.method public whitelist getTotalRxSuccess(I)J
    .registers 5
    .param p1, "linkId"    # I

    .line 1596
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmTotalRxSuccess(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)J

    move-result-wide v0

    return-wide v0

    .line 1597
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTotalScanTimeMillis()J
    .registers 3

    .line 1617
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalScanTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalTxBad()J
    .registers 3

    .line 1562
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxBad:J

    return-wide v0
.end method

.method public whitelist getTotalTxBad(I)J
    .registers 5
    .param p1, "linkId"    # I

    .line 1573
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmTotalTxBad(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)J

    move-result-wide v0

    return-wide v0

    .line 1574
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTotalTxRetries()J
    .registers 3

    .line 1538
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxRetries:J

    return-wide v0
.end method

.method public whitelist getTotalTxRetries(I)J
    .registers 5
    .param p1, "linkId"    # I

    .line 1550
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmTotalTxRetries(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)J

    move-result-wide v0

    return-wide v0

    .line 1551
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTotalTxSuccess()J
    .registers 3

    .line 1515
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxSuccess:J

    return-wide v0
.end method

.method public whitelist getTotalTxSuccess(I)J
    .registers 5
    .param p1, "linkId"    # I

    .line 1526
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmTotalTxSuccess(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)J

    move-result-wide v0

    return-wide v0

    .line 1527
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTxLinkSpeedMbps(I)I
    .registers 5
    .param p1, "linkId"    # I

    .line 1503
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-static {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->-$$Nest$fgetmTxLinkSpeedMbps(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I

    move-result v0

    return v0

    .line 1504
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getTxTransmittedBytes()J
    .registers 3

    .line 2071
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTxTransmittedBytes:J

    return-wide v0
.end method

.method public blacklist getUwbAdapterState()I
    .registers 2

    .line 2116
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mUwbAdapterState:I

    return v0
.end method

.method public blacklist getVoipMode()I
    .registers 2

    .line 2136
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mVoipMode:I

    return v0
.end method

.method public blacklist getWifiFrameworkState()I
    .registers 2

    .line 2086
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mWifiFrameworkState:I

    return v0
.end method

.method public blacklist getWifiLinkCount()I
    .registers 2

    .line 2061
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mWifiLinkCount:I

    return v0
.end method

.method public whitelist getWifiLinkLayerRadioStats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;",
            ">;"
        }
    .end annotation

    .line 1985
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRadioStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

    if-eqz v0, :cond_b

    .line 1986
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRadioStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1988
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isBluetoothConnected()Z
    .registers 2

    .line 2111
    iget-boolean v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsBluetoothConnected:Z

    return v0
.end method

.method public whitelist isCellularDataAvailable()Z
    .registers 2

    .line 2030
    iget-boolean v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsCellularDataAvailable:Z

    return v0
.end method

.method public blacklist isNetworkCapabilitiesDownstreamSufficient()I
    .registers 2

    .line 2091
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsNetworkCapabilitiesDownstreamSufficient:I

    return v0
.end method

.method public blacklist isNetworkCapabilitiesUpstreamSufficient()I
    .registers 2

    .line 2096
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsNetworkCapabilitiesUpstreamSufficient:I

    return v0
.end method

.method public whitelist isSameRegisteredCell()Z
    .registers 2

    .line 2056
    iget-boolean v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsSameRegisteredCell:Z

    return v0
.end method

.method public blacklist isThroughputPredictorDownstreamSufficient()I
    .registers 2

    .line 2101
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsThroughputPredictorDownstreamSufficient:I

    return v0
.end method

.method public blacklist isThroughputPredictorUpstreamSufficient()I
    .registers 2

    .line 2106
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsThroughputPredictorUpstreamSufficient:I

    return v0
.end method

.method public whitelist isThroughputSufficient()Z
    .registers 2

    .line 2011
    iget-boolean v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsThroughputSufficient:Z

    return v0
.end method

.method public whitelist isWifiScoringEnabled()Z
    .registers 2

    .line 2021
    iget-boolean v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsWifiScoringEnabled:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1261
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTimeStampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1262
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkSpeedMbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxSuccess:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1265
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxRetries:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1266
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxBad:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1267
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRxSuccess:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1268
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioOnTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1269
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioTxTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1270
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioRxTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1271
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1272
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalNanScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1273
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalBackgroundScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1274
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRoamScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1275
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalPnoScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1276
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalHotspot2ScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1277
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalCcaBusyFreqTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1278
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioOnFreqTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1279
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalBeaconRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1280
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeStatusSinceLastUpdate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1281
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeElapsedTimeSinceLastUpdateMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeMcsRateSinceLastUpdate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1283
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRxLinkSpeedMbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTimeSliceDutyCycleInPercent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mContentionTimeStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1286
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1287
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRadioStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1288
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mChannelUtilizationRatio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    iget-boolean v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsThroughputSufficient:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1290
    iget-boolean v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsWifiScoringEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1291
    iget-boolean v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsCellularDataAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1292
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularDataNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularSignalStrengthDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1294
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularSignalStrengthDb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1295
    iget-boolean v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsSameRegisteredCell:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1296
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkStats:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 1297
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mWifiLinkCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1298
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mMloMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1299
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTxTransmittedBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1300
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRxTransmittedBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1301
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLabelBadEventCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mWifiFrameworkState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsNetworkCapabilitiesDownstreamSufficient:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1304
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsNetworkCapabilitiesUpstreamSufficient:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1305
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsThroughputPredictorDownstreamSufficient:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1306
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsThroughputPredictorUpstreamSufficient:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1307
    iget-boolean v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsBluetoothConnected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1308
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mUwbAdapterState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    iget-boolean v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsLowLatencyActivated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1310
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mMaxSupportedTxLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mMaxSupportedRxLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1312
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mVoipMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1313
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mThreadDeviceRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1314
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mStatusDataStall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1315
    return-void
.end method

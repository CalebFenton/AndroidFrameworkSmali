.class public final Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;
.super Ljava/lang/Object;
.source "WifiUsabilityStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiUsabilityStatsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinkStats"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCenterFreqFirstSegment:I

.field private final blacklist mCenterFreqSecondSegment:I

.field private blacklist mChannelWidth:I

.field private final blacklist mContentionTimeStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

.field private final blacklist mFrequencyMhz:I

.field private final blacklist mLinkId:I

.field private final blacklist mPacketStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;

.field private final blacklist mPeerInfo:[Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;

.field private final blacklist mRadioId:I

.field private final blacklist mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

.field private final blacklist mRssi:I

.field private final blacklist mRssiMgmt:I

.field private final blacklist mRxLinkSpeedMbps:I

.field private final blacklist mScanResultsWithSameFreq:[Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;

.field private final blacklist mState:I

.field private final blacklist mTimeSliceDutyCycleInPercent:I

.field private final blacklist mTotalBeaconRx:J

.field private final blacklist mTotalCcaBusyFreqTimeMillis:J

.field private final blacklist mTotalRadioOnFreqTimeMillis:J

.field private final blacklist mTotalRxSuccess:J

.field private final blacklist mTotalTxBad:J

.field private final blacklist mTotalTxRetries:J

.field private final blacklist mTotalTxSuccess:J

.field private final blacklist mTxLinkSpeedMbps:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCenterFreqFirstSegment(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mCenterFreqFirstSegment:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCenterFreqSecondSegment(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mCenterFreqSecondSegment:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannelWidth(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mChannelWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentionTimeStats(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mContentionTimeStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrequencyMhz(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mFrequencyMhz:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPacketStats(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)[Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mPacketStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPeerInfo(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)[Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mPeerInfo:[Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRadioId(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRadioId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRateStats(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRssi(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRssi:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRssiMgmt(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRssiMgmt:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRxLinkSpeedMbps(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRxLinkSpeedMbps:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScanResultsWithSameFreq(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)[Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mScanResultsWithSameFreq:[Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeSliceDutyCycleInPercent(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTimeSliceDutyCycleInPercent:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalBeaconRx(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalBeaconRx:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalCcaBusyFreqTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalCcaBusyFreqTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalRadioOnFreqTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalRadioOnFreqTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalRxSuccess(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalRxSuccess:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalTxBad(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalTxBad:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalTxRetries(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalTxRetries:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalTxSuccess(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalTxSuccess:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTxLinkSpeedMbps(Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTxLinkSpeedMbps:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1149
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 5

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mLinkId:I

    .line 1023
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mState:I

    .line 1024
    const/16 v2, -0x7f

    iput v2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRssi:I

    .line 1025
    iput v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRadioId:I

    .line 1026
    iput v1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mFrequencyMhz:I

    .line 1027
    iput v1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRssiMgmt:I

    .line 1028
    iput v1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mChannelWidth:I

    .line 1029
    iput v1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mCenterFreqFirstSegment:I

    .line 1030
    iput v1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mCenterFreqSecondSegment:I

    .line 1031
    iput v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTxLinkSpeedMbps:I

    .line 1032
    iput v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRxLinkSpeedMbps:I

    .line 1033
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalTxSuccess:J

    .line 1034
    iput-wide v2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalTxRetries:J

    .line 1035
    iput-wide v2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalTxBad:J

    .line 1036
    iput-wide v2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalRxSuccess:J

    .line 1037
    iput-wide v2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalBeaconRx:J

    .line 1038
    iput v1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTimeSliceDutyCycleInPercent:I

    .line 1039
    iput-wide v2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalCcaBusyFreqTimeMillis:J

    .line 1040
    iput-wide v2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalRadioOnFreqTimeMillis:J

    .line 1041
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mContentionTimeStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    .line 1042
    iput-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    .line 1043
    iput-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mPacketStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;

    .line 1044
    iput-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mPeerInfo:[Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;

    .line 1045
    iput-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mScanResultsWithSameFreq:[Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;

    .line 1046
    return-void
.end method

.method public constructor blacklist <init>(IIIIIIIIIIIJJJJJIJJ[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;[Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;[Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;[Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;)V
    .registers 48
    .param p1, "linkId"    # I
    .param p2, "state"    # I
    .param p3, "radioId"    # I
    .param p4, "rssi"    # I
    .param p5, "frequencyMhz"    # I
    .param p6, "rssiMgmt"    # I
    .param p7, "channelWidth"    # I
    .param p8, "centerFreqFirstSegment"    # I
    .param p9, "centerFreqSecondSegment"    # I
    .param p10, "txLinkSpeedMpbs"    # I
    .param p11, "rxLinkSpeedMpbs"    # I
    .param p12, "totalTxSuccess"    # J
    .param p14, "totalTxRetries"    # J
    .param p16, "totalTxBad"    # J
    .param p18, "totalRxSuccess"    # J
    .param p20, "totalBeaconRx"    # J
    .param p22, "timeSliceDutyCycleInPercent"    # I
    .param p23, "totalCcaBusyFreqTimeMillis"    # J
    .param p25, "totalRadioOnFreqTimeMillis"    # J
    .param p27, "contentionTimeStats"    # [Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;
    .param p28, "rateStats"    # [Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
    .param p29, "packetStats"    # [Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;
    .param p30, "peerInfo"    # [Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;
    .param p31, "scanResultsWithSameFreq"    # [Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;

    .line 1087
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1088
    move/from16 v1, p1

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mLinkId:I

    .line 1089
    move/from16 v2, p2

    iput v2, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mState:I

    .line 1090
    move/from16 v3, p3

    iput v3, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRadioId:I

    .line 1091
    move/from16 v4, p4

    iput v4, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRssi:I

    .line 1092
    move/from16 v5, p5

    iput v5, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mFrequencyMhz:I

    .line 1093
    move/from16 v6, p6

    iput v6, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRssiMgmt:I

    .line 1094
    move/from16 v7, p7

    iput v7, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mChannelWidth:I

    .line 1095
    move/from16 v8, p8

    iput v8, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mCenterFreqFirstSegment:I

    .line 1096
    move/from16 v9, p9

    iput v9, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mCenterFreqSecondSegment:I

    .line 1097
    move/from16 v10, p10

    iput v10, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTxLinkSpeedMbps:I

    .line 1098
    move/from16 v11, p11

    iput v11, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRxLinkSpeedMbps:I

    .line 1099
    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalTxSuccess:J

    .line 1100
    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalTxRetries:J

    .line 1101
    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalTxBad:J

    .line 1102
    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalRxSuccess:J

    .line 1103
    move-wide/from16 v1, p20

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalBeaconRx:J

    .line 1104
    move/from16 v1, p22

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTimeSliceDutyCycleInPercent:I

    .line 1105
    move-wide/from16 v1, p23

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalCcaBusyFreqTimeMillis:J

    .line 1106
    move-wide/from16 v1, p25

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalRadioOnFreqTimeMillis:J

    .line 1107
    move-object/from16 v1, p27

    iput-object v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mContentionTimeStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    .line 1108
    move-object/from16 v2, p28

    iput-object v2, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    .line 1109
    move-object/from16 v1, p29

    iput-object v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mPacketStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;

    .line 1110
    move-object/from16 v1, p30

    iput-object v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mPeerInfo:[Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;

    .line 1111
    move-object/from16 v1, p31

    iput-object v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mScanResultsWithSameFreq:[Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;

    .line 1112
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1116
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1121
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mLinkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRadioId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1124
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mFrequencyMhz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1126
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRssiMgmt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1127
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mChannelWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mCenterFreqFirstSegment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1129
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mCenterFreqSecondSegment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTxLinkSpeedMbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRxLinkSpeedMbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalTxSuccess:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1133
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalTxRetries:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1134
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalTxBad:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1135
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalRxSuccess:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1136
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalBeaconRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1137
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTimeSliceDutyCycleInPercent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalCcaBusyFreqTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1139
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mTotalRadioOnFreqTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1140
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mContentionTimeStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1141
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1142
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mPacketStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1143
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mPeerInfo:[Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1144
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;->mScanResultsWithSameFreq:[Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1145
    return-void
.end method

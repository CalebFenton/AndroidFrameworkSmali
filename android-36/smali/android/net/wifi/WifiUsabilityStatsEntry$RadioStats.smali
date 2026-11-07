.class public final Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;
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
    name = "RadioStats"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INVALID_RADIO_ID:I = -0x1


# instance fields
.field private blacklist mRadioId:I

.field private blacklist mTotalBackgroundScanTimeMillis:J

.field private blacklist mTotalHotspot2ScanTimeMillis:J

.field private blacklist mTotalNanScanTimeMillis:J

.field private blacklist mTotalPnoScanTimeMillis:J

.field private blacklist mTotalRadioOnTimeMillis:J

.field private blacklist mTotalRadioRxTimeMillis:J

.field private blacklist mTotalRadioTxTimeMillis:J

.field private blacklist mTotalRoamScanTimeMillis:J

.field private blacklist mTotalScanTimeMillis:J

.field private blacklist mTxTimeMsPerLevel:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmRadioId(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mRadioId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalBackgroundScanTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalBackgroundScanTimeMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalHotspot2ScanTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalHotspot2ScanTimeMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalNanScanTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalNanScanTimeMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalPnoScanTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalPnoScanTimeMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalRadioOnTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioOnTimeMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalRadioRxTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioRxTimeMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalRadioTxTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioTxTimeMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalRoamScanTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRoamScanTimeMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalScanTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalScanTimeMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTxTimeMsPerLevel(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;[I)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTxTimeMsPerLevel:[I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 860
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    return-void
.end method

.method public constructor whitelist <init>(IJJJJJJJJJ)V
    .registers 36
    .param p1, "radioId"    # I
    .param p2, "onTime"    # J
    .param p4, "txTime"    # J
    .param p6, "rxTime"    # J
    .param p8, "onTimeScan"    # J
    .param p10, "onTimeNanScan"    # J
    .param p12, "onTimeBackgroundScan"    # J
    .param p14, "onTimeRoamScan"    # J
    .param p16, "onTimePnoScan"    # J
    .param p18, "onTimeHs20Scan"    # J

    .line 785
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 786
    move/from16 v1, p1

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mRadioId:I

    .line 787
    move-wide/from16 v2, p2

    iput-wide v2, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioOnTimeMillis:J

    .line 788
    move-wide/from16 v4, p4

    iput-wide v4, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioTxTimeMillis:J

    .line 789
    move-wide/from16 v6, p6

    iput-wide v6, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioRxTimeMillis:J

    .line 790
    move-wide/from16 v8, p8

    iput-wide v8, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalScanTimeMillis:J

    .line 791
    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalNanScanTimeMillis:J

    .line 792
    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalBackgroundScanTimeMillis:J

    .line 793
    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRoamScanTimeMillis:J

    .line 794
    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalPnoScanTimeMillis:J

    .line 795
    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalHotspot2ScanTimeMillis:J

    .line 796
    return-void
.end method

.method public constructor blacklist <init>(IJJJJJJJJJ[I)V
    .registers 37
    .param p1, "radioId"    # I
    .param p2, "onTime"    # J
    .param p4, "txTime"    # J
    .param p6, "rxTime"    # J
    .param p8, "onTimeScan"    # J
    .param p10, "onTimeNanScan"    # J
    .param p12, "onTimeBackgroundScan"    # J
    .param p14, "onTimeRoamScan"    # J
    .param p16, "onTimePnoScan"    # J
    .param p18, "onTimeHs20Scan"    # J
    .param p20, "txTimeMsPerLevel"    # [I

    .line 825
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 826
    move/from16 v1, p1

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mRadioId:I

    .line 827
    move-wide/from16 v2, p2

    iput-wide v2, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioOnTimeMillis:J

    .line 828
    move-wide/from16 v4, p4

    iput-wide v4, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioTxTimeMillis:J

    .line 829
    move-wide/from16 v6, p6

    iput-wide v6, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioRxTimeMillis:J

    .line 830
    move-wide/from16 v8, p8

    iput-wide v8, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalScanTimeMillis:J

    .line 831
    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalNanScanTimeMillis:J

    .line 832
    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalBackgroundScanTimeMillis:J

    .line 833
    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRoamScanTimeMillis:J

    .line 834
    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalPnoScanTimeMillis:J

    .line 835
    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalHotspot2ScanTimeMillis:J

    .line 836
    move-object/from16 v3, p20

    iput-object v3, v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTxTimeMsPerLevel:[I

    .line 837
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRadioId()J
    .registers 3

    .line 887
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mRadioId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist getTotalBackgroundScanTimeMillis()J
    .registers 3

    .line 924
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalBackgroundScanTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalHotspot2ScanTimeMillis()J
    .registers 3

    .line 942
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalHotspot2ScanTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalNanScanTimeMillis()J
    .registers 3

    .line 919
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalNanScanTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalPnoScanTimeMillis()J
    .registers 3

    .line 934
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalPnoScanTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalRadioOnTimeMillis()J
    .registers 3

    .line 892
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioOnTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalRadioRxTimeMillis()J
    .registers 3

    .line 907
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioRxTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalRadioTxTimeMillis()J
    .registers 3

    .line 900
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioTxTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalRoamScanTimeMillis()J
    .registers 3

    .line 929
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRoamScanTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTotalScanTimeMillis()J
    .registers 3

    .line 914
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalScanTimeMillis:J

    return-wide v0
.end method

.method public blacklist getTxTimeMsPerLevel()[I
    .registers 2

    .line 949
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTxTimeMsPerLevel:[I

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 846
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mRadioId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioOnTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 848
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioTxTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 849
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioRxTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 850
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 851
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalNanScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 852
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalBackgroundScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 853
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRoamScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 854
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalPnoScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 855
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalHotspot2ScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 856
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTxTimeMsPerLevel:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 857
    return-void
.end method

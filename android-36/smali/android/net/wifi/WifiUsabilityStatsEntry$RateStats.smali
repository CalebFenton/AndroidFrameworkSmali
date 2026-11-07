.class public final Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
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
    name = "RateStats"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBitRateInKbps:I

.field private blacklist mBw:I

.field private blacklist mMpduLost:I

.field private blacklist mNss:I

.field private blacklist mPreamble:I

.field private blacklist mRateMcsIdx:I

.field private blacklist mRetries:I

.field private blacklist mRxMpdu:I

.field private blacklist mTxMpdu:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmBitRateInKbps(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mBitRateInKbps:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBw(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mBw:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMpduLost(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mMpduLost:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNss(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mNss:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreamble(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mPreamble:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRateMcsIdx(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRateMcsIdx:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRetries(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRetries:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRxMpdu(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRxMpdu:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTxMpdu(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mTxMpdu:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 527
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    return-void
.end method

.method public constructor whitelist <init>(IIIIIIIII)V
    .registers 10
    .param p1, "preamble"    # I
    .param p2, "nss"    # I
    .param p3, "bw"    # I
    .param p4, "rateMcsIdx"    # I
    .param p5, "bitRateInKbps"    # I
    .param p6, "txMpdu"    # I
    .param p7, "rxMpdu"    # I
    .param p8, "mpduLost"    # I
    .param p9, "retries"    # I

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mPreamble:I

    .line 498
    iput p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mNss:I

    .line 499
    iput p3, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mBw:I

    .line 500
    iput p4, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRateMcsIdx:I

    .line 501
    iput p5, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mBitRateInKbps:I

    .line 502
    iput p6, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mTxMpdu:I

    .line 503
    iput p7, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRxMpdu:I

    .line 504
    iput p8, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mMpduLost:I

    .line 505
    iput p9, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRetries:I

    .line 506
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBandwidthInMhz()I
    .registers 2

    .line 558
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mBw:I

    return v0
.end method

.method public whitelist getBitRateInKbps()I
    .registers 2

    .line 571
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mBitRateInKbps:I

    return v0
.end method

.method public whitelist getMpduLost()I
    .registers 2

    .line 586
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mMpduLost:I

    return v0
.end method

.method public whitelist getNumberOfSpatialStreams()I
    .registers 2

    .line 553
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mNss:I

    return v0
.end method

.method public whitelist getPreamble()I
    .registers 2

    .line 548
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mPreamble:I

    return v0
.end method

.method public whitelist getRateMcsIdx()I
    .registers 2

    .line 566
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRateMcsIdx:I

    return v0
.end method

.method public whitelist getRetries()I
    .registers 2

    .line 591
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRetries:I

    return v0
.end method

.method public whitelist getRxMpdu()I
    .registers 2

    .line 581
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRxMpdu:I

    return v0
.end method

.method public whitelist getTxMpdu()I
    .registers 2

    .line 576
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mTxMpdu:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 515
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mPreamble:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mNss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mBw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRateMcsIdx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mBitRateInKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mTxMpdu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRxMpdu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mMpduLost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRetries:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    return-void
.end method

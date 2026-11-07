.class public final Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;
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
    name = "ScanResultWithSameFreq"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFrequencyMhz:I

.field private blacklist mRssi:I

.field private blacklist mScanResultTimestampMicros:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmFrequencyMhz(Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->mFrequencyMhz:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRssi(Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->mRssi:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScanResultTimestampMicros(Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->mScanResultTimestampMicros:J

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 704
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    return-void
.end method

.method public constructor blacklist <init>(JII)V
    .registers 5
    .param p1, "scanResultTimestampMicros"    # J
    .param p3, "rssi"    # I
    .param p4, "frequencyMhz"    # I

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->mScanResultTimestampMicros:J

    .line 687
    iput p3, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->mRssi:I

    .line 688
    iput p4, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->mFrequencyMhz:I

    .line 689
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFrequency()I
    .registers 2

    .line 731
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->mFrequencyMhz:I

    return v0
.end method

.method public blacklist getRssi()I
    .registers 2

    .line 726
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->mRssi:I

    return v0
.end method

.method public blacklist getScanResultTimestampMicros()J
    .registers 3

    .line 721
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->mScanResultTimestampMicros:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 698
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->mScanResultTimestampMicros:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 699
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->mFrequencyMhz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    return-void
.end method

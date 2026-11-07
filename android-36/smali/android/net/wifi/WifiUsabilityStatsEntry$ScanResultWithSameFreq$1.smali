.class Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq$1;
.super Ljava/lang/Object;
.source "WifiUsabilityStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 707
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;-><init>()V

    .line 709
    .local v0, "scanResultWithSameFreq":Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->-$$Nest$fputmScanResultTimestampMicros(Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;J)V

    .line 710
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->-$$Nest$fputmRssi(Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;I)V

    .line 711
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->-$$Nest$fputmFrequencyMhz(Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;I)V

    .line 712
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 705
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;
    .registers 3
    .param p1, "size"    # I

    .line 715
    new-array v0, p1, [Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 705
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq$1;->newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;

    move-result-object p1

    return-object p1
.end method

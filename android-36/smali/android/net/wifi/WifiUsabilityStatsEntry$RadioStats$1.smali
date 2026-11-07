.class Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats$1;
.super Ljava/lang/Object;
.source "WifiUsabilityStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 863
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;-><init>()V

    .line 864
    .local v0, "stats":Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->-$$Nest$fputmRadioId(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;I)V

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->-$$Nest$fputmTotalRadioOnTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->-$$Nest$fputmTotalRadioTxTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->-$$Nest$fputmTotalRadioRxTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->-$$Nest$fputmTotalScanTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V

    .line 869
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->-$$Nest$fputmTotalNanScanTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V

    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->-$$Nest$fputmTotalBackgroundScanTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V

    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->-$$Nest$fputmTotalRoamScanTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V

    .line 872
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->-$$Nest$fputmTotalPnoScanTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V

    .line 873
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->-$$Nest$fputmTotalHotspot2ScanTimeMillis(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)V

    .line 874
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->-$$Nest$fputmTxTimeMsPerLevel(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;[I)V

    .line 875
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

    .line 861
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;
    .registers 3
    .param p1, "size"    # I

    .line 878
    new-array v0, p1, [Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

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

    .line 861
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats$1;->newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

    move-result-object p1

    return-object p1
.end method

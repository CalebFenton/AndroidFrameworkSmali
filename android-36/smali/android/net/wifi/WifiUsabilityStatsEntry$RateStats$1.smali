.class Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats$1;
.super Ljava/lang/Object;
.source "WifiUsabilityStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 529
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;-><init>()V

    .line 530
    .local v0, "stats":Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->-$$Nest$fputmPreamble(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->-$$Nest$fputmNss(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->-$$Nest$fputmBw(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->-$$Nest$fputmRateMcsIdx(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->-$$Nest$fputmBitRateInKbps(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->-$$Nest$fputmTxMpdu(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->-$$Nest$fputmRxMpdu(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->-$$Nest$fputmMpduLost(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->-$$Nest$fputmRetries(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)V

    .line 539
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

    .line 527
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
    .registers 3
    .param p1, "size"    # I

    .line 542
    new-array v0, p1, [Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

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

    .line 527
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats$1;->newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    move-result-object p1

    return-object p1
.end method

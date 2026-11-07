.class Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo$1;
.super Ljava/lang/Object;
.source "WifiUsabilityStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 635
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;-><init>()V

    .line 636
    .local v0, "stats":Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->-$$Nest$fputmStaCount(Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;I)V

    .line 637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->-$$Nest$fputmChanUtil(Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;I)V

    .line 638
    sget-object v1, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->-$$Nest$fputmRateStats(Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;)V

    .line 639
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

    .line 633
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;
    .registers 3
    .param p1, "size"    # I

    .line 642
    new-array v0, p1, [Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;

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

    .line 633
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo$1;->newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;

    move-result-object p1

    return-object p1
.end method

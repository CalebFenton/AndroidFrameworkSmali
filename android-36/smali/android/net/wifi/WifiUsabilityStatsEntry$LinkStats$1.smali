.class Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats$1;
.super Ljava/lang/Object;
.source "WifiUsabilityStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;
    .registers 36
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1152
    move-object/from16 v0, p1

    new-instance v1, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 1155
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 1156
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    move-object/from16 v28, v1

    sget-object v1, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1157
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    move-object/from16 v29, v1

    sget-object v1, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1158
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    move-object/from16 v30, v1

    sget-object v1, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1159
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;

    move-object/from16 v31, v1

    sget-object v1, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1160
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;

    move-object/from16 v32, v1

    sget-object v1, Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1161
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;

    move-object/from16 v33, v32

    move-object/from16 v32, v1

    move-object/from16 v1, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v33

    invoke-direct/range {v1 .. v32}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;-><init>(IIIIIIIIIIIJJJJJIJJ[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;[Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;[Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;[Landroid/net/wifi/WifiUsabilityStatsEntry$ScanResultWithSameFreq;)V

    .line 1152
    return-object v1
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

    .line 1150
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;
    .registers 3
    .param p1, "size"    # I

    .line 1165
    new-array v0, p1, [Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

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

    .line 1150
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats$1;->newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    move-result-object p1

    return-object p1
.end method

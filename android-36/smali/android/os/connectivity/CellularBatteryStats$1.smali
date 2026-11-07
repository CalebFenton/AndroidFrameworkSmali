.class Landroid/os/connectivity/CellularBatteryStats$1;
.super Ljava/lang/Object;
.source "CellularBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/connectivity/CellularBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/connectivity/CellularBatteryStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/CellularBatteryStats;
    .registers 28
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 63
    .local v1, "loggingDurationMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 64
    .local v3, "kernelActiveTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 65
    .local v5, "numPacketsTx":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 66
    .local v7, "numBytesTx":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 67
    .local v9, "numPacketsRx":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 68
    .local v11, "numBytesRx":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 69
    .local v13, "sleepTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 70
    .local v15, "idleTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 71
    .local v17, "rxTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 72
    .local v19, "energyConsumedMaMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v21

    .line 73
    .local v21, "timeInRatMs":[J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v22

    .line 74
    .local v22, "timeInRxSignalStrengthLevelMs":[J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v23

    .line 75
    .local v23, "txTimeMs":[J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 77
    .local v24, "monitoredRailChargeConsumedMaMs":J
    new-instance v0, Landroid/os/connectivity/CellularBatteryStats;

    invoke-direct/range {v0 .. v25}, Landroid/os/connectivity/CellularBatteryStats;-><init>(JJJJJJJJJJ[J[J[JJ)V

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

    .line 60
    invoke-virtual {p0, p1}, Landroid/os/connectivity/CellularBatteryStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/CellularBatteryStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/connectivity/CellularBatteryStats;
    .registers 3
    .param p1, "size"    # I

    .line 85
    new-array v0, p1, [Landroid/os/connectivity/CellularBatteryStats;

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

    .line 60
    invoke-virtual {p0, p1}, Landroid/os/connectivity/CellularBatteryStats$1;->newArray(I)[Landroid/os/connectivity/CellularBatteryStats;

    move-result-object p1

    return-object p1
.end method

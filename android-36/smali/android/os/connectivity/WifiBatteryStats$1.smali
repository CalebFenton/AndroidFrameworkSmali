.class Landroid/os/connectivity/WifiBatteryStats$1;
.super Ljava/lang/Object;
.source "WifiBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/connectivity/WifiBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/connectivity/WifiBatteryStats;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/WifiBatteryStats;
    .registers 34
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 63
    .local v1, "loggingDurationMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 64
    .local v3, "kernelActiveTimeMillis":J
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
    .local v13, "sleepTimeMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 70
    .local v15, "scanTimeMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 71
    .local v17, "idleTimeMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 72
    .local v19, "rxTimeMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 73
    .local v21, "txTimeMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 74
    .local v23, "energyConsumedMaMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 75
    .local v25, "appScanRequestCount":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v27

    .line 76
    .local v27, "timeInStateMillis":[J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v28

    .line 77
    .local v28, "timeInRxSignalStrengthLevelMillis":[J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v29

    .line 78
    .local v29, "timeInSupplicantStateMillis":[J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .line 79
    .local v30, "monitoredRailChargeConsumedMaMillis":J
    new-instance v0, Landroid/os/connectivity/WifiBatteryStats;

    invoke-direct/range {v0 .. v31}, Landroid/os/connectivity/WifiBatteryStats;-><init>(JJJJJJJJJJJJJ[J[J[JJ)V

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
    invoke-virtual {p0, p1}, Landroid/os/connectivity/WifiBatteryStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/WifiBatteryStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/connectivity/WifiBatteryStats;
    .registers 3
    .param p1, "size"    # I

    .line 88
    new-array v0, p1, [Landroid/os/connectivity/WifiBatteryStats;

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
    invoke-virtual {p0, p1}, Landroid/os/connectivity/WifiBatteryStats$1;->newArray(I)[Landroid/os/connectivity/WifiBatteryStats;

    move-result-object p1

    return-object p1
.end method

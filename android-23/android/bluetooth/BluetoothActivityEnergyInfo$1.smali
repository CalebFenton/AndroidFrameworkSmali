.class final Landroid/bluetooth/BluetoothActivityEnergyInfo$1;
.super Ljava/lang/Object;
.source "BluetoothActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothActivityEnergyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/bluetooth/BluetoothActivityEnergyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3
    move-result-wide v1

    #@4
    .line 67
    .local v1, "timestamp":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v3

    #@8
    .line 68
    .local v3, "stackState":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@b
    move-result-wide v4

    #@c
    .line 69
    .local v4, "txTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@f
    move-result-wide v6

    #@10
    .line 70
    .local v6, "rxTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@13
    move-result-wide v8

    #@14
    .line 71
    .local v8, "idleTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@17
    move-result-wide v10

    #@18
    .line 72
    .local v10, "energyUsed":J
    new-instance v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    #@1a
    invoke-direct/range {v0 .. v11}, Landroid/bluetooth/BluetoothActivityEnergyInfo;-><init>(JIJJJJ)V

    #@1d
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 65
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothActivityEnergyInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 76
    new-array v0, p1, [Landroid/bluetooth/BluetoothActivityEnergyInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 75
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo$1;->newArray(I)[Landroid/bluetooth/BluetoothActivityEnergyInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

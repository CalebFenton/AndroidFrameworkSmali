.class final Landroid/bluetooth/BluetoothHeadsetClientCall$1;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClientCall.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClientCall;
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
        "Landroid/bluetooth/BluetoothHeadsetClientCall;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 233
    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@b
    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v2

    #@f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v4

    #@1b
    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v6

    #@23
    if-ne v6, v7, :cond_0

    #@25
    move v6, v7

    #@26
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v9

    #@2a
    if-ne v9, v7, :cond_1

    #@2c
    .line 233
    :goto_1
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;ILjava/util/UUID;ILjava/lang/String;ZZ)V

    #@2f
    return-object v0

    #@30
    :cond_0
    move v6, v8

    #@31
    .line 235
    goto :goto_0

    #@32
    :cond_1
    move v7, v8

    #@33
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 232
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClientCall$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHeadsetClientCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 240
    new-array v0, p1, [Landroid/bluetooth/BluetoothHeadsetClientCall;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 239
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClientCall$1;->newArray(I)[Landroid/bluetooth/BluetoothHeadsetClientCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

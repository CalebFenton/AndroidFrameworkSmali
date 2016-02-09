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
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 208
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
    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v2

    #@f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v3

    #@13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v5

    #@1b
    if-ne v5, v6, :cond_0

    #@1d
    move v5, v6

    #@1e
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v8

    #@22
    if-ne v8, v6, :cond_1

    #@24
    .line 208
    :goto_1
    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;ZZ)V

    #@27
    return-object v0

    #@28
    :cond_0
    move v5, v7

    #@29
    .line 210
    goto :goto_0

    #@2a
    :cond_1
    move v6, v7

    #@2b
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 207
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
    .line 215
    new-array v0, p1, [Landroid/bluetooth/BluetoothHeadsetClientCall;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 214
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClientCall$1;->newArray(I)[Landroid/bluetooth/BluetoothHeadsetClientCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

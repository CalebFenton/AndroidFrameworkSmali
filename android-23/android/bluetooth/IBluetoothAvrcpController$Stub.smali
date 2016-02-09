.class public abstract Landroid/bluetooth/IBluetoothAvrcpController$Stub;
.super Landroid/os/Binder;
.source "IBluetoothAvrcpController.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothAvrcpController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothAvrcpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothAvrcpController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothAvrcpController"

.field static final TRANSACTION_getConnectedDevices:I = 0x1

.field static final TRANSACTION_getConnectionState:I = 0x3

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x2

.field static final TRANSACTION_sendPassThroughCmd:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothAvrcpController"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothAvrcpController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothAvrcpController"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothAvrcpController;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothAvrcpController;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothAvrcpController$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothAvrcpController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v6

    #@8
    return v6

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v6, "android.bluetooth.IBluetoothAvrcpController"

    #@c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v7

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v6, "android.bluetooth.IBluetoothAvrcpController"

    #@13
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->getConnectedDevices()Ljava/util/List;

    #@19
    move-result-object v5

    #@1a
    .line 54
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d
    .line 55
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@20
    .line 56
    return v7

    #@21
    .line 60
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_2
    const-string/jumbo v6, "android.bluetooth.IBluetoothAvrcpController"

    #@24
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@2a
    move-result-object v1

    #@2b
    .line 63
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    #@2e
    move-result-object v5

    #@2f
    .line 64
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@32
    .line 65
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@35
    .line 66
    return v7

    #@36
    .line 70
    .end local v1    # "_arg0":[I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_3
    const-string/jumbo v6, "android.bluetooth.IBluetoothAvrcpController"

    #@39
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c
    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v6

    #@40
    if-eqz v6, :cond_0

    #@42
    .line 73
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@44
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@4a
    .line 78
    :goto_0
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    #@4d
    move-result v4

    #@4e
    .line 79
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@51
    .line 80
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@54
    .line 81
    return v7

    #@55
    .line 76
    .end local v4    # "_result":I
    :cond_0
    const/4 v0, 0x0

    #@56
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    #@57
    .line 85
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string/jumbo v6, "android.bluetooth.IBluetoothAvrcpController"

    #@5a
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d
    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v6

    #@61
    if-eqz v6, :cond_1

    #@63
    .line 88
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@65
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@68
    move-result-object v0

    #@69
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@6b
    .line 94
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6e
    move-result v2

    #@6f
    .line 96
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@72
    move-result v3

    #@73
    .line 97
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V

    #@76
    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@79
    .line 99
    return v7

    #@7a
    .line 91
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :cond_1
    const/4 v0, 0x0

    #@7b
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    #@7c
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

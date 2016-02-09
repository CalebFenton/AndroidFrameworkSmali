.class public abstract Landroid/bluetooth/IBluetoothPan$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPan.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothPan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothPan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothPan$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothPan"

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_disconnect:I = 0x4

.field static final TRANSACTION_getConnectedDevices:I = 0x5

.field static final TRANSACTION_getConnectionState:I = 0x7

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x6

.field static final TRANSACTION_isTetheringOn:I = 0x1

.field static final TRANSACTION_setBluetoothTethering:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothPan"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothPan$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPan;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothPan"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothPan;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothPan;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothPan$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothPan$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v6

    #@9
    return v6

    #@a
    .line 47
    :sswitch_0
    const-string/jumbo v6, "android.bluetooth.IBluetoothPan"

    #@d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    return v7

    #@11
    .line 52
    :sswitch_1
    const-string/jumbo v8, "android.bluetooth.IBluetoothPan"

    #@14
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothPan$Stub;->isTetheringOn()Z

    #@1a
    move-result v5

    #@1b
    .line 54
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e
    .line 55
    if-eqz v5, :cond_0

    #@20
    move v6, v7

    #@21
    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 56
    return v7

    #@25
    .line 60
    .end local v5    # "_result":Z
    :sswitch_2
    const-string/jumbo v6, "android.bluetooth.IBluetoothPan"

    #@28
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_1

    #@31
    const/4 v1, 0x1

    #@32
    .line 63
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothPan$Stub;->setBluetoothTethering(Z)V

    #@35
    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@38
    .line 65
    return v7

    #@39
    .line 62
    .end local v1    # "_arg0":Z
    :cond_1
    const/4 v1, 0x0

    #@3a
    .restart local v1    # "_arg0":Z
    goto :goto_0

    #@3b
    .line 69
    .end local v1    # "_arg0":Z
    :sswitch_3
    const-string/jumbo v8, "android.bluetooth.IBluetoothPan"

    #@3e
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v8

    #@45
    if-eqz v8, :cond_3

    #@47
    .line 72
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@49
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@4f
    .line 77
    :goto_1
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothPan$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    #@52
    move-result v5

    #@53
    .line 78
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@56
    .line 79
    if-eqz v5, :cond_2

    #@58
    move v6, v7

    #@59
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    .line 80
    return v7

    #@5d
    .line 75
    .end local v5    # "_result":Z
    :cond_3
    const/4 v0, 0x0

    #@5e
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    #@5f
    .line 84
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string/jumbo v8, "android.bluetooth.IBluetoothPan"

    #@62
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@65
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v8

    #@69
    if-eqz v8, :cond_5

    #@6b
    .line 87
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6d
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@70
    move-result-object v0

    #@71
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@73
    .line 92
    :goto_2
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothPan$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    #@76
    move-result v5

    #@77
    .line 93
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7a
    .line 94
    if-eqz v5, :cond_4

    #@7c
    move v6, v7

    #@7d
    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@80
    .line 95
    return v7

    #@81
    .line 90
    .end local v5    # "_result":Z
    :cond_5
    const/4 v0, 0x0

    #@82
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    #@83
    .line 99
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_5
    const-string/jumbo v6, "android.bluetooth.IBluetoothPan"

    #@86
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@89
    .line 100
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothPan$Stub;->getConnectedDevices()Ljava/util/List;

    #@8c
    move-result-object v4

    #@8d
    .line 101
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@90
    .line 102
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@93
    .line 103
    return v7

    #@94
    .line 107
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_6
    const-string/jumbo v6, "android.bluetooth.IBluetoothPan"

    #@97
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9a
    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@9d
    move-result-object v2

    #@9e
    .line 110
    .local v2, "_arg0":[I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothPan$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    #@a1
    move-result-object v4

    #@a2
    .line 111
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a5
    .line 112
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@a8
    .line 113
    return v7

    #@a9
    .line 117
    .end local v2    # "_arg0":[I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_7
    const-string/jumbo v6, "android.bluetooth.IBluetoothPan"

    #@ac
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@af
    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b2
    move-result v6

    #@b3
    if-eqz v6, :cond_6

    #@b5
    .line 120
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b7
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ba
    move-result-object v0

    #@bb
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@bd
    .line 125
    :goto_3
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothPan$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    #@c0
    move-result v3

    #@c1
    .line 126
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c4
    .line 127
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@c7
    .line 128
    return v7

    #@c8
    .line 123
    .end local v3    # "_result":I
    :cond_6
    const/4 v0, 0x0

    #@c9
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    #@ca
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public abstract Landroid/bluetooth/IBluetoothA2dpSink$Stub;
.super Landroid/os/Binder;
.source "IBluetoothA2dpSink.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothA2dpSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothA2dpSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothA2dpSink$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothA2dpSink"

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getAudioConfig:I = 0x6

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothA2dpSink"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dpSink;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothA2dpSink"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothA2dpSink;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothA2dpSink;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothA2dpSink$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v6

    #@9
    return v6

    #@a
    .line 47
    :sswitch_0
    const-string/jumbo v6, "android.bluetooth.IBluetoothA2dpSink"

    #@d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    return v7

    #@11
    .line 52
    :sswitch_1
    const-string/jumbo v8, "android.bluetooth.IBluetoothA2dpSink"

    #@14
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v8

    #@1b
    if-eqz v8, :cond_1

    #@1d
    .line 55
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@25
    .line 60
    :goto_0
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    #@28
    move-result v5

    #@29
    .line 61
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 62
    if-eqz v5, :cond_0

    #@2e
    move v6, v7

    #@2f
    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 63
    return v7

    #@33
    .line 58
    .end local v5    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    #@34
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    #@35
    .line 67
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    const-string/jumbo v8, "android.bluetooth.IBluetoothA2dpSink"

    #@38
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v8

    #@3f
    if-eqz v8, :cond_3

    #@41
    .line 70
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@43
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@49
    .line 75
    :goto_1
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    #@4c
    move-result v5

    #@4d
    .line 76
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@50
    .line 77
    if-eqz v5, :cond_2

    #@52
    move v6, v7

    #@53
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@56
    .line 78
    return v7

    #@57
    .line 73
    .end local v5    # "_result":Z
    :cond_3
    const/4 v0, 0x0

    #@58
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    #@59
    .line 82
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    const-string/jumbo v6, "android.bluetooth.IBluetoothA2dpSink"

    #@5c
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f
    .line 83
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->getConnectedDevices()Ljava/util/List;

    #@62
    move-result-object v4

    #@63
    .line 84
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@66
    .line 85
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@69
    .line 86
    return v7

    #@6a
    .line 90
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_4
    const-string/jumbo v6, "android.bluetooth.IBluetoothA2dpSink"

    #@6d
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70
    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@73
    move-result-object v1

    #@74
    .line 93
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    #@77
    move-result-object v4

    #@78
    .line 94
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b
    .line 95
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@7e
    .line 96
    return v7

    #@7f
    .line 100
    .end local v1    # "_arg0":[I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_5
    const-string/jumbo v6, "android.bluetooth.IBluetoothA2dpSink"

    #@82
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@85
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@88
    move-result v6

    #@89
    if-eqz v6, :cond_4

    #@8b
    .line 103
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8d
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@90
    move-result-object v0

    #@91
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@93
    .line 108
    :goto_2
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    #@96
    move-result v2

    #@97
    .line 109
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9a
    .line 110
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9d
    .line 111
    return v7

    #@9e
    .line 106
    .end local v2    # "_result":I
    :cond_4
    const/4 v0, 0x0

    #@9f
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    #@a0
    .line 115
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string/jumbo v8, "android.bluetooth.IBluetoothA2dpSink"

    #@a3
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a6
    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a9
    move-result v8

    #@aa
    if-eqz v8, :cond_5

    #@ac
    .line 118
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ae
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b1
    move-result-object v0

    #@b2
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@b4
    .line 123
    :goto_3
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;

    #@b7
    move-result-object v3

    #@b8
    .line 124
    .local v3, "_result":Landroid/bluetooth/BluetoothAudioConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bb
    .line 125
    if-eqz v3, :cond_6

    #@bd
    .line 126
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@c0
    .line 127
    invoke-virtual {v3, p3, v7}, Landroid/bluetooth/BluetoothAudioConfig;->writeToParcel(Landroid/os/Parcel;I)V

    #@c3
    .line 132
    :goto_4
    return v7

    #@c4
    .line 121
    .end local v3    # "_result":Landroid/bluetooth/BluetoothAudioConfig;
    :cond_5
    const/4 v0, 0x0

    #@c5
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    #@c6
    .line 130
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "_result":Landroid/bluetooth/BluetoothAudioConfig;
    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@c9
    goto :goto_4

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

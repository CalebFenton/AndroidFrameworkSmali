.class public abstract Landroid/bluetooth/IBluetoothA2dp$Stub;
.super Landroid/os/Binder;
.source "IBluetoothA2dp.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothA2dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothA2dp"

.field static final TRANSACTION_adjustAvrcpAbsoluteVolume:I = 0x9

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_isA2dpPlaying:I = 0xb

.field static final TRANSACTION_isAvrcpAbsoluteVolumeSupported:I = 0x8

.field static final TRANSACTION_setAvrcpAbsoluteVolume:I = 0xa

.field static final TRANSACTION_setPriority:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothA2dp"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothA2dp"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothA2dp;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothA2dp;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v7

    #@9
    return v7

    #@a
    .line 47
    :sswitch_0
    const-string/jumbo v7, "android.bluetooth.IBluetoothA2dp"

    #@d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    return v8

    #@11
    .line 52
    :sswitch_1
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    #@14
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v9

    #@1b
    if-eqz v9, :cond_1

    #@1d
    .line 55
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@25
    .line 60
    :goto_0
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    #@28
    move-result v6

    #@29
    .line 61
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 62
    if-eqz v6, :cond_0

    #@2e
    move v7, v8

    #@2f
    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 63
    return v8

    #@33
    .line 58
    .end local v6    # "_result":Z
    :cond_1
    const/4 v1, 0x0

    #@34
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    #@35
    .line 67
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    #@38
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v9

    #@3f
    if-eqz v9, :cond_3

    #@41
    .line 70
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@43
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@46
    move-result-object v1

    #@47
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@49
    .line 75
    :goto_1
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    #@4c
    move-result v6

    #@4d
    .line 76
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@50
    .line 77
    if-eqz v6, :cond_2

    #@52
    move v7, v8

    #@53
    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@56
    .line 78
    return v8

    #@57
    .line 73
    .end local v6    # "_result":Z
    :cond_3
    const/4 v1, 0x0

    #@58
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    #@59
    .line 82
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    const-string/jumbo v7, "android.bluetooth.IBluetoothA2dp"

    #@5c
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f
    .line 83
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectedDevices()Ljava/util/List;

    #@62
    move-result-object v5

    #@63
    .line 84
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@66
    .line 85
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@69
    .line 86
    return v8

    #@6a
    .line 90
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_4
    const-string/jumbo v7, "android.bluetooth.IBluetoothA2dp"

    #@6d
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70
    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@73
    move-result-object v2

    #@74
    .line 93
    .local v2, "_arg0":[I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    #@77
    move-result-object v5

    #@78
    .line 94
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b
    .line 95
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@7e
    .line 96
    return v8

    #@7f
    .line 100
    .end local v2    # "_arg0":[I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_5
    const-string/jumbo v7, "android.bluetooth.IBluetoothA2dp"

    #@82
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@85
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@88
    move-result v7

    #@89
    if-eqz v7, :cond_4

    #@8b
    .line 103
    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8d
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@90
    move-result-object v1

    #@91
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@93
    .line 108
    :goto_2
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    #@96
    move-result v4

    #@97
    .line 109
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9a
    .line 110
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9d
    .line 111
    return v8

    #@9e
    .line 106
    .end local v4    # "_result":I
    :cond_4
    const/4 v1, 0x0

    #@9f
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    #@a0
    .line 115
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    #@a3
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a6
    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a9
    move-result v9

    #@aa
    if-eqz v9, :cond_6

    #@ac
    .line 118
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ae
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b1
    move-result-object v1

    #@b2
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@b4
    .line 124
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b7
    move-result v3

    #@b8
    .line 125
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    #@bb
    move-result v6

    #@bc
    .line 126
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bf
    .line 127
    if-eqz v6, :cond_5

    #@c1
    move v7, v8

    #@c2
    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@c5
    .line 128
    return v8

    #@c6
    .line 121
    .end local v3    # "_arg1":I
    .end local v6    # "_result":Z
    :cond_6
    const/4 v1, 0x0

    #@c7
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    #@c8
    .line 132
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_7
    const-string/jumbo v7, "android.bluetooth.IBluetoothA2dp"

    #@cb
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ce
    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d1
    move-result v7

    #@d2
    if-eqz v7, :cond_7

    #@d4
    .line 135
    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d6
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d9
    move-result-object v1

    #@da
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@dc
    .line 140
    :goto_4
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    #@df
    move-result v4

    #@e0
    .line 141
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e3
    .line 142
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@e6
    .line 143
    return v8

    #@e7
    .line 138
    .end local v4    # "_result":I
    :cond_7
    const/4 v1, 0x0

    #@e8
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    #@e9
    .line 147
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_8
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    #@ec
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ef
    .line 148
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isAvrcpAbsoluteVolumeSupported()Z

    #@f2
    move-result v6

    #@f3
    .line 149
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f6
    .line 150
    if-eqz v6, :cond_8

    #@f8
    move v7, v8

    #@f9
    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@fc
    .line 151
    return v8

    #@fd
    .line 155
    .end local v6    # "_result":Z
    :sswitch_9
    const-string/jumbo v7, "android.bluetooth.IBluetoothA2dp"

    #@100
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@103
    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@106
    move-result v0

    #@107
    .line 158
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->adjustAvrcpAbsoluteVolume(I)V

    #@10a
    .line 159
    return v8

    #@10b
    .line 163
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string/jumbo v7, "android.bluetooth.IBluetoothA2dp"

    #@10e
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@111
    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@114
    move-result v0

    #@115
    .line 166
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setAvrcpAbsoluteVolume(I)V

    #@118
    .line 167
    return v8

    #@119
    .line 171
    .end local v0    # "_arg0":I
    :sswitch_b
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    #@11c
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11f
    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@122
    move-result v9

    #@123
    if-eqz v9, :cond_a

    #@125
    .line 174
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@127
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12a
    move-result-object v1

    #@12b
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@12d
    .line 179
    :goto_5
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    #@130
    move-result v6

    #@131
    .line 180
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@134
    .line 181
    if-eqz v6, :cond_9

    #@136
    move v7, v8

    #@137
    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@13a
    .line 182
    return v8

    #@13b
    .line 177
    .end local v6    # "_result":Z
    :cond_a
    const/4 v1, 0x0

    #@13c
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    #@13d
    .line 43
    nop

    #@13e
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

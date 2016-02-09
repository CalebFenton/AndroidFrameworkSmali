.class public abstract Landroid/bluetooth/IBluetoothMap$Stub;
.super Landroid/os/Binder;
.source "IBluetoothMap.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothMap$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothMap"

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_disconnect:I = 0x4

.field static final TRANSACTION_getClient:I = 0x2

.field static final TRANSACTION_getConnectedDevices:I = 0x6

.field static final TRANSACTION_getConnectionState:I = 0x8

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x7

.field static final TRANSACTION_getPriority:I = 0xa

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_isConnected:I = 0x5

.field static final TRANSACTION_setPriority:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothMap"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothMap$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothMap;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothMap"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothMap;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothMap;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothMap$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothMap$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v7

    #@9
    return v7

    #@a
    .line 47
    :sswitch_0
    const-string/jumbo v7, "android.bluetooth.IBluetoothMap"

    #@d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    return v8

    #@11
    .line 52
    :sswitch_1
    const-string/jumbo v7, "android.bluetooth.IBluetoothMap"

    #@14
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothMap$Stub;->getState()I

    #@1a
    move-result v3

    #@1b
    .line 54
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e
    .line 55
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 56
    return v8

    #@22
    .line 60
    .end local v3    # "_result":I
    :sswitch_2
    const-string/jumbo v9, "android.bluetooth.IBluetoothMap"

    #@25
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 61
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothMap$Stub;->getClient()Landroid/bluetooth/BluetoothDevice;

    #@2b
    move-result-object v4

    #@2c
    .line 62
    .local v4, "_result":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f
    .line 63
    if-eqz v4, :cond_0

    #@31
    .line 64
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 65
    invoke-virtual {v4, p3, v8}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    #@37
    .line 70
    :goto_0
    return v8

    #@38
    .line 68
    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    goto :goto_0

    #@3c
    .line 74
    .end local v4    # "_result":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    const-string/jumbo v9, "android.bluetooth.IBluetoothMap"

    #@3f
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v9

    #@46
    if-eqz v9, :cond_2

    #@48
    .line 77
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4a
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@50
    .line 82
    :goto_1
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothMap$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    #@53
    move-result v6

    #@54
    .line 83
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@57
    .line 84
    if-eqz v6, :cond_1

    #@59
    move v7, v8

    #@5a
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    .line 85
    return v8

    #@5e
    .line 80
    .end local v6    # "_result":Z
    :cond_2
    const/4 v0, 0x0

    #@5f
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    #@60
    .line 89
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string/jumbo v9, "android.bluetooth.IBluetoothMap"

    #@63
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@66
    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@69
    move-result v9

    #@6a
    if-eqz v9, :cond_4

    #@6c
    .line 92
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6e
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@71
    move-result-object v0

    #@72
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@74
    .line 97
    :goto_2
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothMap$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    #@77
    move-result v6

    #@78
    .line 98
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b
    .line 99
    if-eqz v6, :cond_3

    #@7d
    move v7, v8

    #@7e
    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@81
    .line 100
    return v8

    #@82
    .line 95
    .end local v6    # "_result":Z
    :cond_4
    const/4 v0, 0x0

    #@83
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    #@84
    .line 104
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_5
    const-string/jumbo v9, "android.bluetooth.IBluetoothMap"

    #@87
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8a
    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8d
    move-result v9

    #@8e
    if-eqz v9, :cond_6

    #@90
    .line 107
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@92
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@95
    move-result-object v0

    #@96
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@98
    .line 112
    :goto_3
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothMap$Stub;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    #@9b
    move-result v6

    #@9c
    .line 113
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9f
    .line 114
    if-eqz v6, :cond_5

    #@a1
    move v7, v8

    #@a2
    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@a5
    .line 115
    return v8

    #@a6
    .line 110
    .end local v6    # "_result":Z
    :cond_6
    const/4 v0, 0x0

    #@a7
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    #@a8
    .line 119
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string/jumbo v7, "android.bluetooth.IBluetoothMap"

    #@ab
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ae
    .line 120
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothMap$Stub;->getConnectedDevices()Ljava/util/List;

    #@b1
    move-result-object v5

    #@b2
    .line 121
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b5
    .line 122
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@b8
    .line 123
    return v8

    #@b9
    .line 127
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_7
    const-string/jumbo v7, "android.bluetooth.IBluetoothMap"

    #@bc
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bf
    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@c2
    move-result-object v1

    #@c3
    .line 130
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothMap$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    #@c6
    move-result-object v5

    #@c7
    .line 131
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ca
    .line 132
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@cd
    .line 133
    return v8

    #@ce
    .line 137
    .end local v1    # "_arg0":[I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_8
    const-string/jumbo v7, "android.bluetooth.IBluetoothMap"

    #@d1
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d4
    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d7
    move-result v7

    #@d8
    if-eqz v7, :cond_7

    #@da
    .line 140
    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@dc
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@df
    move-result-object v0

    #@e0
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@e2
    .line 145
    :goto_4
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothMap$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    #@e5
    move-result v3

    #@e6
    .line 146
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e9
    .line 147
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@ec
    .line 148
    return v8

    #@ed
    .line 143
    .end local v3    # "_result":I
    :cond_7
    const/4 v0, 0x0

    #@ee
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    #@ef
    .line 152
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_9
    const-string/jumbo v9, "android.bluetooth.IBluetoothMap"

    #@f2
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f5
    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f8
    move-result v9

    #@f9
    if-eqz v9, :cond_9

    #@fb
    .line 155
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fd
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@100
    move-result-object v0

    #@101
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@103
    .line 161
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@106
    move-result v2

    #@107
    .line 162
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/bluetooth/IBluetoothMap$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    #@10a
    move-result v6

    #@10b
    .line 163
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@10e
    .line 164
    if-eqz v6, :cond_8

    #@110
    move v7, v8

    #@111
    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@114
    .line 165
    return v8

    #@115
    .line 158
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :cond_9
    const/4 v0, 0x0

    #@116
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    #@117
    .line 169
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_a
    const-string/jumbo v7, "android.bluetooth.IBluetoothMap"

    #@11a
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11d
    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@120
    move-result v7

    #@121
    if-eqz v7, :cond_a

    #@123
    .line 172
    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@125
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@128
    move-result-object v0

    #@129
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@12b
    .line 177
    :goto_6
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothMap$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    #@12e
    move-result v3

    #@12f
    .line 178
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@132
    .line 179
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@135
    .line 180
    return v8

    #@136
    .line 175
    .end local v3    # "_result":I
    :cond_a
    const/4 v0, 0x0

    #@137
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    #@138
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
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

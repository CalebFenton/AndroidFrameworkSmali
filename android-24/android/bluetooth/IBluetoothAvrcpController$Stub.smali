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

.field static final TRANSACTION_getMetadata:I = 0x6

.field static final TRANSACTION_getPlaybackState:I = 0x7

.field static final TRANSACTION_getPlayerSettings:I = 0x5

.field static final TRANSACTION_sendGroupNavigationCmd:I = 0x9

.field static final TRANSACTION_sendPassThroughCmd:I = 0x4

.field static final TRANSACTION_setPlayerApplicationSetting:I = 0x8


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
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    .locals 12
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 198
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v11

    #@7
    return v11

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    #@b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 48
    const/4 v11, 0x1

    #@f
    return v11

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    #@13
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->getConnectedDevices()Ljava/util/List;

    #@19
    move-result-object v9

    #@1a
    .line 54
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d
    .line 55
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@20
    .line 56
    const/4 v11, 0x1

    #@21
    return v11

    #@22
    .line 60
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_2
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    #@25
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@2b
    move-result-object v2

    #@2c
    .line 63
    .local v2, "_arg0":[I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    #@2f
    move-result-object v9

    #@30
    .line 64
    .restart local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@33
    .line 65
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@36
    .line 66
    const/4 v11, 0x1

    #@37
    return v11

    #@38
    .line 70
    .end local v2    # "_arg0":[I
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_3
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    #@3b
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e
    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v11

    #@42
    if-eqz v11, :cond_0

    #@44
    .line 73
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@46
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@49
    move-result-object v1

    #@4a
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@4c
    .line 78
    :goto_0
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    #@4f
    move-result v5

    #@50
    .line 79
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@53
    .line 80
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@56
    .line 81
    const/4 v11, 0x1

    #@57
    return v11

    #@58
    .line 76
    .end local v5    # "_result":I
    :cond_0
    const/4 v1, 0x0

    #@59
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    #@5a
    .line 85
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    #@5d
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v11

    #@64
    if-eqz v11, :cond_1

    #@66
    .line 88
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@68
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6b
    move-result-object v1

    #@6c
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@6e
    .line 94
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v3

    #@72
    .line 96
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v4

    #@76
    .line 97
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V

    #@79
    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c
    .line 99
    const/4 v11, 0x1

    #@7d
    return v11

    #@7e
    .line 91
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :cond_1
    const/4 v1, 0x0

    #@7f
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    #@80
    .line 103
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_5
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    #@83
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86
    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@89
    move-result v11

    #@8a
    if-eqz v11, :cond_2

    #@8c
    .line 106
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8e
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@91
    move-result-object v1

    #@92
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@94
    .line 111
    :goto_2
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->getPlayerSettings(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    #@97
    move-result-object v6

    #@98
    .line 112
    .local v6, "_result":Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9b
    .line 113
    if-eqz v6, :cond_3

    #@9d
    .line 114
    const/4 v11, 0x1

    #@9e
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@a1
    .line 115
    const/4 v11, 0x1

    #@a2
    invoke-virtual {v6, p3, v11}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->writeToParcel(Landroid/os/Parcel;I)V

    #@a5
    .line 120
    :goto_3
    const/4 v11, 0x1

    #@a6
    return v11

    #@a7
    .line 109
    .end local v6    # "_result":Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    :cond_2
    const/4 v1, 0x0

    #@a8
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    #@a9
    .line 118
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_result":Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    :cond_3
    const/4 v11, 0x0

    #@aa
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@ad
    goto :goto_3

    #@ae
    .line 124
    .end local v6    # "_result":Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    :sswitch_6
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    #@b1
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b4
    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b7
    move-result v11

    #@b8
    if-eqz v11, :cond_4

    #@ba
    .line 127
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bc
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bf
    move-result-object v1

    #@c0
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@c2
    .line 132
    :goto_4
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->getMetadata(Landroid/bluetooth/BluetoothDevice;)Landroid/media/MediaMetadata;

    #@c5
    move-result-object v7

    #@c6
    .line 133
    .local v7, "_result":Landroid/media/MediaMetadata;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c9
    .line 134
    if-eqz v7, :cond_5

    #@cb
    .line 135
    const/4 v11, 0x1

    #@cc
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@cf
    .line 136
    const/4 v11, 0x1

    #@d0
    invoke-virtual {v7, p3, v11}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    #@d3
    .line 141
    :goto_5
    const/4 v11, 0x1

    #@d4
    return v11

    #@d5
    .line 130
    .end local v7    # "_result":Landroid/media/MediaMetadata;
    :cond_4
    const/4 v1, 0x0

    #@d6
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    #@d7
    .line 139
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v7    # "_result":Landroid/media/MediaMetadata;
    :cond_5
    const/4 v11, 0x0

    #@d8
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@db
    goto :goto_5

    #@dc
    .line 145
    .end local v7    # "_result":Landroid/media/MediaMetadata;
    :sswitch_7
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    #@df
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e2
    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e5
    move-result v11

    #@e6
    if-eqz v11, :cond_6

    #@e8
    .line 148
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ea
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ed
    move-result-object v1

    #@ee
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@f0
    .line 153
    :goto_6
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->getPlaybackState(Landroid/bluetooth/BluetoothDevice;)Landroid/media/session/PlaybackState;

    #@f3
    move-result-object v8

    #@f4
    .line 154
    .local v8, "_result":Landroid/media/session/PlaybackState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f7
    .line 155
    if-eqz v8, :cond_7

    #@f9
    .line 156
    const/4 v11, 0x1

    #@fa
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@fd
    .line 157
    const/4 v11, 0x1

    #@fe
    invoke-virtual {v8, p3, v11}, Landroid/media/session/PlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    #@101
    .line 162
    :goto_7
    const/4 v11, 0x1

    #@102
    return v11

    #@103
    .line 151
    .end local v8    # "_result":Landroid/media/session/PlaybackState;
    :cond_6
    const/4 v1, 0x0

    #@104
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    #@105
    .line 160
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v8    # "_result":Landroid/media/session/PlaybackState;
    :cond_7
    const/4 v11, 0x0

    #@106
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@109
    goto :goto_7

    #@10a
    .line 166
    .end local v8    # "_result":Landroid/media/session/PlaybackState;
    :sswitch_8
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    #@10d
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@110
    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@113
    move-result v11

    #@114
    if-eqz v11, :cond_8

    #@116
    .line 169
    sget-object v11, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@118
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11b
    move-result-object v0

    #@11c
    check-cast v0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    #@11e
    .line 174
    :goto_8
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->setPlayerApplicationSetting(Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)Z

    #@121
    move-result v10

    #@122
    .line 175
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@125
    .line 176
    if-eqz v10, :cond_9

    #@127
    const/4 v11, 0x1

    #@128
    :goto_9
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@12b
    .line 177
    const/4 v11, 0x1

    #@12c
    return v11

    #@12d
    .line 172
    .end local v10    # "_result":Z
    :cond_8
    const/4 v0, 0x0

    #@12e
    .local v0, "_arg0":Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    goto :goto_8

    #@12f
    .line 176
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    .restart local v10    # "_result":Z
    :cond_9
    const/4 v11, 0x0

    #@130
    goto :goto_9

    #@131
    .line 181
    .end local v10    # "_result":Z
    :sswitch_9
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    #@134
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@137
    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@13a
    move-result v11

    #@13b
    if-eqz v11, :cond_a

    #@13d
    .line 184
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13f
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@142
    move-result-object v1

    #@143
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@145
    .line 190
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@148
    move-result v3

    #@149
    .line 192
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@14c
    move-result v4

    #@14d
    .line 193
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->sendGroupNavigationCmd(Landroid/bluetooth/BluetoothDevice;II)V

    #@150
    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@153
    .line 195
    const/4 v11, 0x1

    #@154
    return v11

    #@155
    .line 187
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :cond_a
    const/4 v1, 0x0

    #@156
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    #@157
    .line 43
    nop

    #@158
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

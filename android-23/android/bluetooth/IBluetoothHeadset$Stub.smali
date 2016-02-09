.class public abstract Landroid/bluetooth/IBluetoothHeadset$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadset.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadset"

.field static final TRANSACTION_acceptIncomingConnect:I = 0xd

.field static final TRANSACTION_clccResponse:I = 0x16

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_connectAudio:I = 0x11

.field static final TRANSACTION_disableWBS:I = 0x18

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_disconnectAudio:I = 0x12

.field static final TRANSACTION_enableWBS:I = 0x17

.field static final TRANSACTION_getAudioState:I = 0xf

.field static final TRANSACTION_getBatteryUsageHint:I = 0xc

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_isAudioConnected:I = 0xa

.field static final TRANSACTION_isAudioOn:I = 0x10

.field static final TRANSACTION_phoneStateChanged:I = 0x15

.field static final TRANSACTION_rejectIncomingConnect:I = 0xe

.field static final TRANSACTION_sendVendorSpecificResultCode:I = 0xb

.field static final TRANSACTION_setPriority:I = 0x6

.field static final TRANSACTION_startScoUsingVirtualVoiceCall:I = 0x13

.field static final TRANSACTION_startVoiceRecognition:I = 0x8

.field static final TRANSACTION_stopScoUsingVirtualVoiceCall:I = 0x14

.field static final TRANSACTION_stopVoiceRecognition:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothHeadset"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothHeadset"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadset;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothHeadset;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 25
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
    .line 378
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 55
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v18

    #@28
    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    #@2a
    .line 60
    :goto_0
    move-object/from16 v0, p0

    #@2c
    move-object/from16 v1, v18

    #@2e
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    #@31
    move-result v24

    #@32
    .line 61
    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@35
    .line 62
    if-eqz v24, :cond_1

    #@37
    const/4 v4, 0x1

    #@38
    :goto_1
    move-object/from16 v0, p3

    #@3a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 63
    const/4 v4, 0x1

    #@3e
    return v4

    #@3f
    .line 58
    .end local v24    # "_result":Z
    :cond_0
    const/16 v18, 0x0

    #@41
    .local v18, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    #@42
    .line 62
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v24    # "_result":Z
    :cond_1
    const/4 v4, 0x0

    #@43
    goto :goto_1

    #@44
    .line 67
    .end local v24    # "_result":Z
    :sswitch_2
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@47
    move-object/from16 v0, p2

    #@49
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c
    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_2

    #@52
    .line 70
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@54
    move-object/from16 v0, p2

    #@56
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@59
    move-result-object v18

    #@5a
    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    #@5c
    .line 75
    :goto_2
    move-object/from16 v0, p0

    #@5e
    move-object/from16 v1, v18

    #@60
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    #@63
    move-result v24

    #@64
    .line 76
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@67
    .line 77
    if-eqz v24, :cond_3

    #@69
    const/4 v4, 0x1

    #@6a
    :goto_3
    move-object/from16 v0, p3

    #@6c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    .line 78
    const/4 v4, 0x1

    #@70
    return v4

    #@71
    .line 73
    .end local v24    # "_result":Z
    :cond_2
    const/16 v18, 0x0

    #@73
    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    #@74
    .line 77
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v24    # "_result":Z
    :cond_3
    const/4 v4, 0x0

    #@75
    goto :goto_3

    #@76
    .line 82
    .end local v24    # "_result":Z
    :sswitch_3
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@79
    move-object/from16 v0, p2

    #@7b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e
    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getConnectedDevices()Ljava/util/List;

    #@81
    move-result-object v23

    #@82
    .line 84
    .local v23, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@85
    .line 85
    move-object/from16 v0, p3

    #@87
    move-object/from16 v1, v23

    #@89
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@8c
    .line 86
    const/4 v4, 0x1

    #@8d
    return v4

    #@8e
    .line 90
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_4
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@91
    move-object/from16 v0, p2

    #@93
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96
    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@99
    move-result-object v19

    #@9a
    .line 93
    .local v19, "_arg0":[I
    move-object/from16 v0, p0

    #@9c
    move-object/from16 v1, v19

    #@9e
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    #@a1
    move-result-object v23

    #@a2
    .line 94
    .restart local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a5
    .line 95
    move-object/from16 v0, p3

    #@a7
    move-object/from16 v1, v23

    #@a9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@ac
    .line 96
    const/4 v4, 0x1

    #@ad
    return v4

    #@ae
    .line 100
    .end local v19    # "_arg0":[I
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_5
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@b1
    move-object/from16 v0, p2

    #@b3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b6
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b9
    move-result v4

    #@ba
    if-eqz v4, :cond_4

    #@bc
    .line 103
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@be
    move-object/from16 v0, p2

    #@c0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c3
    move-result-object v18

    #@c4
    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    #@c6
    .line 108
    :goto_4
    move-object/from16 v0, p0

    #@c8
    move-object/from16 v1, v18

    #@ca
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    #@cd
    move-result v22

    #@ce
    .line 109
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d1
    .line 110
    move-object/from16 v0, p3

    #@d3
    move/from16 v1, v22

    #@d5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d8
    .line 111
    const/4 v4, 0x1

    #@d9
    return v4

    #@da
    .line 106
    .end local v22    # "_result":I
    :cond_4
    const/16 v18, 0x0

    #@dc
    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    #@dd
    .line 115
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@e0
    move-object/from16 v0, p2

    #@e2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e5
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e8
    move-result v4

    #@e9
    if-eqz v4, :cond_5

    #@eb
    .line 118
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ed
    move-object/from16 v0, p2

    #@ef
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f2
    move-result-object v18

    #@f3
    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    #@f5
    .line 124
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f8
    move-result v6

    #@f9
    .line 125
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    #@fb
    move-object/from16 v1, v18

    #@fd
    invoke-virtual {v0, v1, v6}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    #@100
    move-result v24

    #@101
    .line 126
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@104
    .line 127
    if-eqz v24, :cond_6

    #@106
    const/4 v4, 0x1

    #@107
    :goto_6
    move-object/from16 v0, p3

    #@109
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@10c
    .line 128
    const/4 v4, 0x1

    #@10d
    return v4

    #@10e
    .line 121
    .end local v6    # "_arg1":I
    .end local v24    # "_result":Z
    :cond_5
    const/16 v18, 0x0

    #@110
    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    #@111
    .line 127
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v24    # "_result":Z
    :cond_6
    const/4 v4, 0x0

    #@112
    goto :goto_6

    #@113
    .line 132
    .end local v6    # "_arg1":I
    .end local v24    # "_result":Z
    :sswitch_7
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@116
    move-object/from16 v0, p2

    #@118
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11b
    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11e
    move-result v4

    #@11f
    if-eqz v4, :cond_7

    #@121
    .line 135
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@123
    move-object/from16 v0, p2

    #@125
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@128
    move-result-object v18

    #@129
    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    #@12b
    .line 140
    :goto_7
    move-object/from16 v0, p0

    #@12d
    move-object/from16 v1, v18

    #@12f
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    #@132
    move-result v22

    #@133
    .line 141
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@136
    .line 142
    move-object/from16 v0, p3

    #@138
    move/from16 v1, v22

    #@13a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13d
    .line 143
    const/4 v4, 0x1

    #@13e
    return v4

    #@13f
    .line 138
    .end local v22    # "_result":I
    :cond_7
    const/16 v18, 0x0

    #@141
    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    #@142
    .line 147
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_8
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@145
    move-object/from16 v0, p2

    #@147
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14a
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14d
    move-result v4

    #@14e
    if-eqz v4, :cond_8

    #@150
    .line 150
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@152
    move-object/from16 v0, p2

    #@154
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@157
    move-result-object v18

    #@158
    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    #@15a
    .line 155
    :goto_8
    move-object/from16 v0, p0

    #@15c
    move-object/from16 v1, v18

    #@15e
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    #@161
    move-result v24

    #@162
    .line 156
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@165
    .line 157
    if-eqz v24, :cond_9

    #@167
    const/4 v4, 0x1

    #@168
    :goto_9
    move-object/from16 v0, p3

    #@16a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16d
    .line 158
    const/4 v4, 0x1

    #@16e
    return v4

    #@16f
    .line 153
    .end local v24    # "_result":Z
    :cond_8
    const/16 v18, 0x0

    #@171
    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_8

    #@172
    .line 157
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v24    # "_result":Z
    :cond_9
    const/4 v4, 0x0

    #@173
    goto :goto_9

    #@174
    .line 162
    .end local v24    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@177
    move-object/from16 v0, p2

    #@179
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17c
    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17f
    move-result v4

    #@180
    if-eqz v4, :cond_a

    #@182
    .line 165
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@184
    move-object/from16 v0, p2

    #@186
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@189
    move-result-object v18

    #@18a
    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    #@18c
    .line 170
    :goto_a
    move-object/from16 v0, p0

    #@18e
    move-object/from16 v1, v18

    #@190
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    #@193
    move-result v24

    #@194
    .line 171
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@197
    .line 172
    if-eqz v24, :cond_b

    #@199
    const/4 v4, 0x1

    #@19a
    :goto_b
    move-object/from16 v0, p3

    #@19c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@19f
    .line 173
    const/4 v4, 0x1

    #@1a0
    return v4

    #@1a1
    .line 168
    .end local v24    # "_result":Z
    :cond_a
    const/16 v18, 0x0

    #@1a3
    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    #@1a4
    .line 172
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v24    # "_result":Z
    :cond_b
    const/4 v4, 0x0

    #@1a5
    goto :goto_b

    #@1a6
    .line 177
    .end local v24    # "_result":Z
    :sswitch_a
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@1a9
    move-object/from16 v0, p2

    #@1ab
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ae
    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b1
    move-result v4

    #@1b2
    if-eqz v4, :cond_c

    #@1b4
    .line 180
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b6
    move-object/from16 v0, p2

    #@1b8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1bb
    move-result-object v18

    #@1bc
    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    #@1be
    .line 185
    :goto_c
    move-object/from16 v0, p0

    #@1c0
    move-object/from16 v1, v18

    #@1c2
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    #@1c5
    move-result v24

    #@1c6
    .line 186
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c9
    .line 187
    if-eqz v24, :cond_d

    #@1cb
    const/4 v4, 0x1

    #@1cc
    :goto_d
    move-object/from16 v0, p3

    #@1ce
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1d1
    .line 188
    const/4 v4, 0x1

    #@1d2
    return v4

    #@1d3
    .line 183
    .end local v24    # "_result":Z
    :cond_c
    const/16 v18, 0x0

    #@1d5
    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    #@1d6
    .line 187
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v24    # "_result":Z
    :cond_d
    const/4 v4, 0x0

    #@1d7
    goto :goto_d

    #@1d8
    .line 192
    .end local v24    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@1db
    move-object/from16 v0, p2

    #@1dd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e0
    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e3
    move-result v4

    #@1e4
    if-eqz v4, :cond_e

    #@1e6
    .line 195
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e8
    move-object/from16 v0, p2

    #@1ea
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ed
    move-result-object v18

    #@1ee
    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    #@1f0
    .line 201
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f3
    move-result-object v20

    #@1f4
    .line 203
    .local v20, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f7
    move-result-object v21

    #@1f8
    .line 204
    .local v21, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1fa
    move-object/from16 v1, v18

    #@1fc
    move-object/from16 v2, v20

    #@1fe
    move-object/from16 v3, v21

    #@200
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothHeadset$Stub;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    #@203
    move-result v24

    #@204
    .line 205
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@207
    .line 206
    if-eqz v24, :cond_f

    #@209
    const/4 v4, 0x1

    #@20a
    :goto_f
    move-object/from16 v0, p3

    #@20c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20f
    .line 207
    const/4 v4, 0x1

    #@210
    return v4

    #@211
    .line 198
    .end local v20    # "_arg1":Ljava/lang/String;
    .end local v21    # "_arg2":Ljava/lang/String;
    .end local v24    # "_result":Z
    :cond_e
    const/16 v18, 0x0

    #@213
    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    #@214
    .line 206
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v20    # "_arg1":Ljava/lang/String;
    .restart local v21    # "_arg2":Ljava/lang/String;
    .restart local v24    # "_result":Z
    :cond_f
    const/4 v4, 0x0

    #@215
    goto :goto_f

    #@216
    .line 211
    .end local v20    # "_arg1":Ljava/lang/String;
    .end local v21    # "_arg2":Ljava/lang/String;
    .end local v24    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@219
    move-object/from16 v0, p2

    #@21b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21e
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@221
    move-result v4

    #@222
    if-eqz v4, :cond_10

    #@224
    .line 214
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@226
    move-object/from16 v0, p2

    #@228
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22b
    move-result-object v18

    #@22c
    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    #@22e
    .line 219
    :goto_10
    move-object/from16 v0, p0

    #@230
    move-object/from16 v1, v18

    #@232
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

    #@235
    move-result v22

    #@236
    .line 220
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@239
    .line 221
    move-object/from16 v0, p3

    #@23b
    move/from16 v1, v22

    #@23d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@240
    .line 222
    const/4 v4, 0x1

    #@241
    return v4

    #@242
    .line 217
    .end local v22    # "_result":I
    :cond_10
    const/16 v18, 0x0

    #@244
    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    #@245
    .line 226
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_d
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@248
    move-object/from16 v0, p2

    #@24a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24d
    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@250
    move-result v4

    #@251
    if-eqz v4, :cond_11

    #@253
    .line 229
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@255
    move-object/from16 v0, p2

    #@257
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25a
    move-result-object v18

    #@25b
    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    #@25d
    .line 234
    :goto_11
    move-object/from16 v0, p0

    #@25f
    move-object/from16 v1, v18

    #@261
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    #@264
    move-result v24

    #@265
    .line 235
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@268
    .line 236
    if-eqz v24, :cond_12

    #@26a
    const/4 v4, 0x1

    #@26b
    :goto_12
    move-object/from16 v0, p3

    #@26d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@270
    .line 237
    const/4 v4, 0x1

    #@271
    return v4

    #@272
    .line 232
    .end local v24    # "_result":Z
    :cond_11
    const/16 v18, 0x0

    #@274
    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_11

    #@275
    .line 236
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v24    # "_result":Z
    :cond_12
    const/4 v4, 0x0

    #@276
    goto :goto_12

    #@277
    .line 241
    .end local v24    # "_result":Z
    :sswitch_e
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@27a
    move-object/from16 v0, p2

    #@27c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27f
    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@282
    move-result v4

    #@283
    if-eqz v4, :cond_13

    #@285
    .line 244
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@287
    move-object/from16 v0, p2

    #@289
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28c
    move-result-object v18

    #@28d
    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    #@28f
    .line 249
    :goto_13
    move-object/from16 v0, p0

    #@291
    move-object/from16 v1, v18

    #@293
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    #@296
    move-result v24

    #@297
    .line 250
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29a
    .line 251
    if-eqz v24, :cond_14

    #@29c
    const/4 v4, 0x1

    #@29d
    :goto_14
    move-object/from16 v0, p3

    #@29f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2a2
    .line 252
    const/4 v4, 0x1

    #@2a3
    return v4

    #@2a4
    .line 247
    .end local v24    # "_result":Z
    :cond_13
    const/16 v18, 0x0

    #@2a6
    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_13

    #@2a7
    .line 251
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v24    # "_result":Z
    :cond_14
    const/4 v4, 0x0

    #@2a8
    goto :goto_14

    #@2a9
    .line 256
    .end local v24    # "_result":Z
    :sswitch_f
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@2ac
    move-object/from16 v0, p2

    #@2ae
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b1
    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b4
    move-result v4

    #@2b5
    if-eqz v4, :cond_15

    #@2b7
    .line 259
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b9
    move-object/from16 v0, p2

    #@2bb
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2be
    move-result-object v18

    #@2bf
    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    #@2c1
    .line 264
    :goto_15
    move-object/from16 v0, p0

    #@2c3
    move-object/from16 v1, v18

    #@2c5
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    #@2c8
    move-result v22

    #@2c9
    .line 265
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2cc
    .line 266
    move-object/from16 v0, p3

    #@2ce
    move/from16 v1, v22

    #@2d0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d3
    .line 267
    const/4 v4, 0x1

    #@2d4
    return v4

    #@2d5
    .line 262
    .end local v22    # "_result":I
    :cond_15
    const/16 v18, 0x0

    #@2d7
    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_15

    #@2d8
    .line 271
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_10
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@2db
    move-object/from16 v0, p2

    #@2dd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e0
    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isAudioOn()Z

    #@2e3
    move-result v24

    #@2e4
    .line 273
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e7
    .line 274
    if-eqz v24, :cond_16

    #@2e9
    const/4 v4, 0x1

    #@2ea
    :goto_16
    move-object/from16 v0, p3

    #@2ec
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2ef
    .line 275
    const/4 v4, 0x1

    #@2f0
    return v4

    #@2f1
    .line 274
    :cond_16
    const/4 v4, 0x0

    #@2f2
    goto :goto_16

    #@2f3
    .line 279
    .end local v24    # "_result":Z
    :sswitch_11
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@2f6
    move-object/from16 v0, p2

    #@2f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fb
    .line 280
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connectAudio()Z

    #@2fe
    move-result v24

    #@2ff
    .line 281
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@302
    .line 282
    if-eqz v24, :cond_17

    #@304
    const/4 v4, 0x1

    #@305
    :goto_17
    move-object/from16 v0, p3

    #@307
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@30a
    .line 283
    const/4 v4, 0x1

    #@30b
    return v4

    #@30c
    .line 282
    :cond_17
    const/4 v4, 0x0

    #@30d
    goto :goto_17

    #@30e
    .line 287
    .end local v24    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@311
    move-object/from16 v0, p2

    #@313
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@316
    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectAudio()Z

    #@319
    move-result v24

    #@31a
    .line 289
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@31d
    .line 290
    if-eqz v24, :cond_18

    #@31f
    const/4 v4, 0x1

    #@320
    :goto_18
    move-object/from16 v0, p3

    #@322
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@325
    .line 291
    const/4 v4, 0x1

    #@326
    return v4

    #@327
    .line 290
    :cond_18
    const/4 v4, 0x0

    #@328
    goto :goto_18

    #@329
    .line 295
    .end local v24    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@32c
    move-object/from16 v0, p2

    #@32e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@331
    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@334
    move-result v4

    #@335
    if-eqz v4, :cond_19

    #@337
    .line 298
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@339
    move-object/from16 v0, p2

    #@33b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33e
    move-result-object v18

    #@33f
    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    #@341
    .line 303
    :goto_19
    move-object/from16 v0, p0

    #@343
    move-object/from16 v1, v18

    #@345
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    #@348
    move-result v24

    #@349
    .line 304
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@34c
    .line 305
    if-eqz v24, :cond_1a

    #@34e
    const/4 v4, 0x1

    #@34f
    :goto_1a
    move-object/from16 v0, p3

    #@351
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@354
    .line 306
    const/4 v4, 0x1

    #@355
    return v4

    #@356
    .line 301
    .end local v24    # "_result":Z
    :cond_19
    const/16 v18, 0x0

    #@358
    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_19

    #@359
    .line 305
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v24    # "_result":Z
    :cond_1a
    const/4 v4, 0x0

    #@35a
    goto :goto_1a

    #@35b
    .line 310
    .end local v24    # "_result":Z
    :sswitch_14
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@35e
    move-object/from16 v0, p2

    #@360
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@363
    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@366
    move-result v4

    #@367
    if-eqz v4, :cond_1b

    #@369
    .line 313
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@36b
    move-object/from16 v0, p2

    #@36d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@370
    move-result-object v18

    #@371
    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    #@373
    .line 318
    :goto_1b
    move-object/from16 v0, p0

    #@375
    move-object/from16 v1, v18

    #@377
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    #@37a
    move-result v24

    #@37b
    .line 319
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@37e
    .line 320
    if-eqz v24, :cond_1c

    #@380
    const/4 v4, 0x1

    #@381
    :goto_1c
    move-object/from16 v0, p3

    #@383
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@386
    .line 321
    const/4 v4, 0x1

    #@387
    return v4

    #@388
    .line 316
    .end local v24    # "_result":Z
    :cond_1b
    const/16 v18, 0x0

    #@38a
    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1b

    #@38b
    .line 320
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v24    # "_result":Z
    :cond_1c
    const/4 v4, 0x0

    #@38c
    goto :goto_1c

    #@38d
    .line 325
    .end local v24    # "_result":Z
    :sswitch_15
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@390
    move-object/from16 v0, p2

    #@392
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@395
    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@398
    move-result v5

    #@399
    .line 329
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39c
    move-result v6

    #@39d
    .line 331
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a0
    move-result v7

    #@3a1
    .line 333
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a4
    move-result-object v8

    #@3a5
    .line 335
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a8
    move-result v9

    #@3a9
    .local v9, "_arg4":I
    move-object/from16 v4, p0

    #@3ab
    .line 336
    invoke-virtual/range {v4 .. v9}, Landroid/bluetooth/IBluetoothHeadset$Stub;->phoneStateChanged(IIILjava/lang/String;I)V

    #@3ae
    .line 337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b1
    .line 338
    const/4 v4, 0x1

    #@3b2
    return v4

    #@3b3
    .line 342
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    :sswitch_16
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@3b6
    move-object/from16 v0, p2

    #@3b8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3bb
    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3be
    move-result v5

    #@3bf
    .line 346
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c2
    move-result v6

    #@3c3
    .line 348
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c6
    move-result v7

    #@3c7
    .line 350
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ca
    move-result v14

    #@3cb
    .line 352
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ce
    move-result v4

    #@3cf
    if-eqz v4, :cond_1d

    #@3d1
    const/4 v15, 0x1

    #@3d2
    .line 354
    .local v15, "_arg4":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d5
    move-result-object v16

    #@3d6
    .line 356
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d9
    move-result v17

    #@3da
    .local v17, "_arg6":I
    move-object/from16 v10, p0

    #@3dc
    move v11, v5

    #@3dd
    move v12, v6

    #@3de
    move v13, v7

    #@3df
    .line 357
    invoke-virtual/range {v10 .. v17}, Landroid/bluetooth/IBluetoothHeadset$Stub;->clccResponse(IIIIZLjava/lang/String;I)V

    #@3e2
    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e5
    .line 359
    const/4 v4, 0x1

    #@3e6
    return v4

    #@3e7
    .line 352
    .end local v15    # "_arg4":Z
    .end local v16    # "_arg5":Ljava/lang/String;
    .end local v17    # "_arg6":I
    :cond_1d
    const/4 v15, 0x0

    #@3e8
    .restart local v15    # "_arg4":Z
    goto :goto_1d

    #@3e9
    .line 363
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":Z
    :sswitch_17
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@3ec
    move-object/from16 v0, p2

    #@3ee
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f1
    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->enableWBS()Z

    #@3f4
    move-result v24

    #@3f5
    .line 365
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f8
    .line 366
    if-eqz v24, :cond_1e

    #@3fa
    const/4 v4, 0x1

    #@3fb
    :goto_1e
    move-object/from16 v0, p3

    #@3fd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@400
    .line 367
    const/4 v4, 0x1

    #@401
    return v4

    #@402
    .line 366
    :cond_1e
    const/4 v4, 0x0

    #@403
    goto :goto_1e

    #@404
    .line 371
    .end local v24    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadset"

    #@407
    move-object/from16 v0, p2

    #@409
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40c
    .line 372
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disableWBS()Z

    #@40f
    move-result v24

    #@410
    .line 373
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@413
    .line 374
    if-eqz v24, :cond_1f

    #@415
    const/4 v4, 0x1

    #@416
    :goto_1f
    move-object/from16 v0, p3

    #@418
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@41b
    .line 375
    const/4 v4, 0x1

    #@41c
    return v4

    #@41d
    .line 374
    :cond_1f
    const/4 v4, 0x0

    #@41e
    goto :goto_1f

    #@41f
    .line 43
    nop

    #@420
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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

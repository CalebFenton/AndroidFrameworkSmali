.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_cancelBondProcess:I = 0x15

.field static final TRANSACTION_cancelDiscovery:I = 0xf

.field static final TRANSACTION_configHciSnoopLog:I = 0x2f

.field static final TRANSACTION_connectSocket:I = 0x2d

.field static final TRANSACTION_createBond:I = 0x14

.field static final TRANSACTION_createSocketChannel:I = 0x2e

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_dump:I = 0x38

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_enableNoAutoConnect:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x30

.field static final TRANSACTION_fetchRemoteUuids:I = 0x1f

.field static final TRANSACTION_getActivityEnergyInfoFromController:I = 0x36

.field static final TRANSACTION_getAdapterConnectionState:I = 0x11

.field static final TRANSACTION_getAddress:I = 0x6

.field static final TRANSACTION_getBondState:I = 0x17

.field static final TRANSACTION_getBondedDevices:I = 0x13

.field static final TRANSACTION_getConnectionState:I = 0x18

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xc

.field static final TRANSACTION_getMessageAccessPermission:I = 0x26

.field static final TRANSACTION_getName:I = 0x9

.field static final TRANSACTION_getPhonebookAccessPermission:I = 0x24

.field static final TRANSACTION_getProfileConnectionState:I = 0x12

.field static final TRANSACTION_getRemoteAlias:I = 0x1b

.field static final TRANSACTION_getRemoteClass:I = 0x1d

.field static final TRANSACTION_getRemoteName:I = 0x19

.field static final TRANSACTION_getRemoteType:I = 0x1a

.field static final TRANSACTION_getRemoteUuids:I = 0x1e

.field static final TRANSACTION_getScanMode:I = 0xa

.field static final TRANSACTION_getSimAccessPermission:I = 0x28

.field static final TRANSACTION_getState:I = 0x2

.field static final TRANSACTION_getUuids:I = 0x7

.field static final TRANSACTION_isActivityAndEnergyReportingSupported:I = 0x35

.field static final TRANSACTION_isDiscovering:I = 0x10

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isMultiAdvertisementSupported:I = 0x31

.field static final TRANSACTION_isOffloadedFilteringSupported:I = 0x33

.field static final TRANSACTION_isOffloadedScanBatchingSupported:I = 0x34

.field static final TRANSACTION_isPeripheralModeSupported:I = 0x32

.field static final TRANSACTION_onBrEdrDown:I = 0x3a

.field static final TRANSACTION_onLeServiceUp:I = 0x39

.field static final TRANSACTION_registerCallback:I = 0x2b

.field static final TRANSACTION_removeBond:I = 0x16

.field static final TRANSACTION_reportActivityInfo:I = 0x37

.field static final TRANSACTION_sdpSearch:I = 0x20

.field static final TRANSACTION_sendConnectionStateChange:I = 0x2a

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xd

.field static final TRANSACTION_setMessageAccessPermission:I = 0x27

.field static final TRANSACTION_setName:I = 0x8

.field static final TRANSACTION_setPairingConfirmation:I = 0x23

.field static final TRANSACTION_setPasskey:I = 0x22

.field static final TRANSACTION_setPhonebookAccessPermission:I = 0x25

.field static final TRANSACTION_setPin:I = 0x21

.field static final TRANSACTION_setRemoteAlias:I = 0x1c

.field static final TRANSACTION_setScanMode:I = 0xb

.field static final TRANSACTION_setSimAccessPermission:I = 0x29

.field static final TRANSACTION_startDiscovery:I = 0xe

.field static final TRANSACTION_unregisterCallback:I = 0x2c


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetooth"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
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
    const-string/jumbo v1, "android.bluetooth.IBluetooth"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/bluetooth/IBluetooth;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 31
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
    .line 782
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

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
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isEnabled()Z

    #@1d
    move-result v28

    #@1e
    .line 54
    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 55
    if-eqz v28, :cond_0

    #@23
    const/4 v4, 0x1

    #@24
    :goto_0
    move-object/from16 v0, p3

    #@26
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 56
    const/4 v4, 0x1

    #@2a
    return v4

    #@2b
    .line 55
    :cond_0
    const/4 v4, 0x0

    #@2c
    goto :goto_0

    #@2d
    .line 60
    .end local v28    # "_result":Z
    :sswitch_2
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@30
    move-object/from16 v0, p2

    #@32
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getState()I

    #@38
    move-result v24

    #@39
    .line 62
    .local v24, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c
    .line 63
    move-object/from16 v0, p3

    #@3e
    move/from16 v1, v24

    #@40
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 64
    const/4 v4, 0x1

    #@44
    return v4

    #@45
    .line 68
    .end local v24    # "_result":I
    :sswitch_3
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@48
    move-object/from16 v0, p2

    #@4a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d
    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enable()Z

    #@50
    move-result v28

    #@51
    .line 70
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54
    .line 71
    if-eqz v28, :cond_1

    #@56
    const/4 v4, 0x1

    #@57
    :goto_1
    move-object/from16 v0, p3

    #@59
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    .line 72
    const/4 v4, 0x1

    #@5d
    return v4

    #@5e
    .line 71
    :cond_1
    const/4 v4, 0x0

    #@5f
    goto :goto_1

    #@60
    .line 76
    .end local v28    # "_result":Z
    :sswitch_4
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@63
    move-object/from16 v0, p2

    #@65
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68
    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enableNoAutoConnect()Z

    #@6b
    move-result v28

    #@6c
    .line 78
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6f
    .line 79
    if-eqz v28, :cond_2

    #@71
    const/4 v4, 0x1

    #@72
    :goto_2
    move-object/from16 v0, p3

    #@74
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@77
    .line 80
    const/4 v4, 0x1

    #@78
    return v4

    #@79
    .line 79
    :cond_2
    const/4 v4, 0x0

    #@7a
    goto :goto_2

    #@7b
    .line 84
    .end local v28    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@7e
    move-object/from16 v0, p2

    #@80
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83
    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->disable()Z

    #@86
    move-result v28

    #@87
    .line 86
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a
    .line 87
    if-eqz v28, :cond_3

    #@8c
    const/4 v4, 0x1

    #@8d
    :goto_3
    move-object/from16 v0, p3

    #@8f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@92
    .line 88
    const/4 v4, 0x1

    #@93
    return v4

    #@94
    .line 87
    :cond_3
    const/4 v4, 0x0

    #@95
    goto :goto_3

    #@96
    .line 92
    .end local v28    # "_result":Z
    :sswitch_6
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@99
    move-object/from16 v0, p2

    #@9b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9e
    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    #@a1
    move-result-object v27

    #@a2
    .line 94
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a5
    .line 95
    move-object/from16 v0, p3

    #@a7
    move-object/from16 v1, v27

    #@a9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@ac
    .line 96
    const/4 v4, 0x1

    #@ad
    return v4

    #@ae
    .line 100
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@b1
    move-object/from16 v0, p2

    #@b3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b6
    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getUuids()[Landroid/os/ParcelUuid;

    #@b9
    move-result-object v30

    #@ba
    .line 102
    .local v30, "_result":[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bd
    .line 103
    const/4 v4, 0x1

    #@be
    move-object/from16 v0, p3

    #@c0
    move-object/from16 v1, v30

    #@c2
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@c5
    .line 104
    const/4 v4, 0x1

    #@c6
    return v4

    #@c7
    .line 108
    .end local v30    # "_result":[Landroid/os/ParcelUuid;
    :sswitch_8
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@ca
    move-object/from16 v0, p2

    #@cc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cf
    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d2
    move-result-object v18

    #@d3
    .line 111
    .local v18, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d5
    move-object/from16 v1, v18

    #@d7
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;)Z

    #@da
    move-result v28

    #@db
    .line 112
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@de
    .line 113
    if-eqz v28, :cond_4

    #@e0
    const/4 v4, 0x1

    #@e1
    :goto_4
    move-object/from16 v0, p3

    #@e3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@e6
    .line 114
    const/4 v4, 0x1

    #@e7
    return v4

    #@e8
    .line 113
    :cond_4
    const/4 v4, 0x0

    #@e9
    goto :goto_4

    #@ea
    .line 118
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v28    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@ed
    move-object/from16 v0, p2

    #@ef
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f2
    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getName()Ljava/lang/String;

    #@f5
    move-result-object v27

    #@f6
    .line 120
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f9
    .line 121
    move-object/from16 v0, p3

    #@fb
    move-object/from16 v1, v27

    #@fd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@100
    .line 122
    const/4 v4, 0x1

    #@101
    return v4

    #@102
    .line 126
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@105
    move-object/from16 v0, p2

    #@107
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10a
    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode()I

    #@10d
    move-result v24

    #@10e
    .line 128
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@111
    .line 129
    move-object/from16 v0, p3

    #@113
    move/from16 v1, v24

    #@115
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@118
    .line 130
    const/4 v4, 0x1

    #@119
    return v4

    #@11a
    .line 134
    .end local v24    # "_result":I
    :sswitch_b
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@11d
    move-object/from16 v0, p2

    #@11f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@122
    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@125
    move-result v11

    #@126
    .line 138
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@129
    move-result v6

    #@12a
    .line 139
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    #@12c
    invoke-virtual {v0, v11, v6}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(II)Z

    #@12f
    move-result v28

    #@130
    .line 140
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@133
    .line 141
    if-eqz v28, :cond_5

    #@135
    const/4 v4, 0x1

    #@136
    :goto_5
    move-object/from16 v0, p3

    #@138
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@13b
    .line 142
    const/4 v4, 0x1

    #@13c
    return v4

    #@13d
    .line 141
    :cond_5
    const/4 v4, 0x0

    #@13e
    goto :goto_5

    #@13f
    .line 146
    .end local v6    # "_arg1":I
    .end local v11    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@142
    move-object/from16 v0, p2

    #@144
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@147
    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout()I

    #@14a
    move-result v24

    #@14b
    .line 148
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14e
    .line 149
    move-object/from16 v0, p3

    #@150
    move/from16 v1, v24

    #@152
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@155
    .line 150
    const/4 v4, 0x1

    #@156
    return v4

    #@157
    .line 154
    .end local v24    # "_result":I
    :sswitch_d
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@15a
    move-object/from16 v0, p2

    #@15c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15f
    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@162
    move-result v11

    #@163
    .line 157
    .restart local v11    # "_arg0":I
    move-object/from16 v0, p0

    #@165
    invoke-virtual {v0, v11}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(I)Z

    #@168
    move-result v28

    #@169
    .line 158
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16c
    .line 159
    if-eqz v28, :cond_6

    #@16e
    const/4 v4, 0x1

    #@16f
    :goto_6
    move-object/from16 v0, p3

    #@171
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@174
    .line 160
    const/4 v4, 0x1

    #@175
    return v4

    #@176
    .line 159
    :cond_6
    const/4 v4, 0x0

    #@177
    goto :goto_6

    #@178
    .line 164
    .end local v11    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_e
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@17b
    move-object/from16 v0, p2

    #@17d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@180
    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery()Z

    #@183
    move-result v28

    #@184
    .line 166
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@187
    .line 167
    if-eqz v28, :cond_7

    #@189
    const/4 v4, 0x1

    #@18a
    :goto_7
    move-object/from16 v0, p3

    #@18c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@18f
    .line 168
    const/4 v4, 0x1

    #@190
    return v4

    #@191
    .line 167
    :cond_7
    const/4 v4, 0x0

    #@192
    goto :goto_7

    #@193
    .line 172
    .end local v28    # "_result":Z
    :sswitch_f
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@196
    move-object/from16 v0, p2

    #@198
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19b
    .line 173
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery()Z

    #@19e
    move-result v28

    #@19f
    .line 174
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a2
    .line 175
    if-eqz v28, :cond_8

    #@1a4
    const/4 v4, 0x1

    #@1a5
    :goto_8
    move-object/from16 v0, p3

    #@1a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1aa
    .line 176
    const/4 v4, 0x1

    #@1ab
    return v4

    #@1ac
    .line 175
    :cond_8
    const/4 v4, 0x0

    #@1ad
    goto :goto_8

    #@1ae
    .line 180
    .end local v28    # "_result":Z
    :sswitch_10
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@1b1
    move-object/from16 v0, p2

    #@1b3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b6
    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering()Z

    #@1b9
    move-result v28

    #@1ba
    .line 182
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bd
    .line 183
    if-eqz v28, :cond_9

    #@1bf
    const/4 v4, 0x1

    #@1c0
    :goto_9
    move-object/from16 v0, p3

    #@1c2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c5
    .line 184
    const/4 v4, 0x1

    #@1c6
    return v4

    #@1c7
    .line 183
    :cond_9
    const/4 v4, 0x0

    #@1c8
    goto :goto_9

    #@1c9
    .line 188
    .end local v28    # "_result":Z
    :sswitch_11
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@1cc
    move-object/from16 v0, p2

    #@1ce
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d1
    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAdapterConnectionState()I

    #@1d4
    move-result v24

    #@1d5
    .line 190
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d8
    .line 191
    move-object/from16 v0, p3

    #@1da
    move/from16 v1, v24

    #@1dc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1df
    .line 192
    const/4 v4, 0x1

    #@1e0
    return v4

    #@1e1
    .line 196
    .end local v24    # "_result":I
    :sswitch_12
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@1e4
    move-object/from16 v0, p2

    #@1e6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e9
    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ec
    move-result v11

    #@1ed
    .line 199
    .restart local v11    # "_arg0":I
    move-object/from16 v0, p0

    #@1ef
    invoke-virtual {v0, v11}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectionState(I)I

    #@1f2
    move-result v24

    #@1f3
    .line 200
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f6
    .line 201
    move-object/from16 v0, p3

    #@1f8
    move/from16 v1, v24

    #@1fa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1fd
    .line 202
    const/4 v4, 0x1

    #@1fe
    return v4

    #@1ff
    .line 206
    .end local v11    # "_arg0":I
    .end local v24    # "_result":I
    :sswitch_13
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@202
    move-object/from16 v0, p2

    #@204
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@207
    .line 207
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    #@20a
    move-result-object v29

    #@20b
    .line 208
    .local v29, "_result":[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20e
    .line 209
    const/4 v4, 0x1

    #@20f
    move-object/from16 v0, p3

    #@211
    move-object/from16 v1, v29

    #@213
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@216
    .line 210
    const/4 v4, 0x1

    #@217
    return v4

    #@218
    .line 214
    .end local v29    # "_result":[Landroid/bluetooth/BluetoothDevice;
    :sswitch_14
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@21b
    move-object/from16 v0, p2

    #@21d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@220
    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@223
    move-result v4

    #@224
    if-eqz v4, :cond_a

    #@226
    .line 217
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@228
    move-object/from16 v0, p2

    #@22a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22d
    move-result-object v5

    #@22e
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@230
    .line 223
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@233
    move-result v6

    #@234
    .line 224
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@236
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z

    #@239
    move-result v28

    #@23a
    .line 225
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23d
    .line 226
    if-eqz v28, :cond_b

    #@23f
    const/4 v4, 0x1

    #@240
    :goto_b
    move-object/from16 v0, p3

    #@242
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@245
    .line 227
    const/4 v4, 0x1

    #@246
    return v4

    #@247
    .line 220
    .end local v6    # "_arg1":I
    .end local v28    # "_result":Z
    :cond_a
    const/4 v5, 0x0

    #@248
    .local v5, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    #@249
    .line 226
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v28    # "_result":Z
    :cond_b
    const/4 v4, 0x0

    #@24a
    goto :goto_b

    #@24b
    .line 231
    .end local v6    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_15
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@24e
    move-object/from16 v0, p2

    #@250
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@253
    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@256
    move-result v4

    #@257
    if-eqz v4, :cond_c

    #@259
    .line 234
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@25b
    move-object/from16 v0, p2

    #@25d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@260
    move-result-object v5

    #@261
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@263
    .line 239
    :goto_c
    move-object/from16 v0, p0

    #@265
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    #@268
    move-result v28

    #@269
    .line 240
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26c
    .line 241
    if-eqz v28, :cond_d

    #@26e
    const/4 v4, 0x1

    #@26f
    :goto_d
    move-object/from16 v0, p3

    #@271
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@274
    .line 242
    const/4 v4, 0x1

    #@275
    return v4

    #@276
    .line 237
    .end local v28    # "_result":Z
    :cond_c
    const/4 v5, 0x0

    #@277
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    #@278
    .line 241
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v28    # "_result":Z
    :cond_d
    const/4 v4, 0x0

    #@279
    goto :goto_d

    #@27a
    .line 246
    .end local v28    # "_result":Z
    :sswitch_16
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@27d
    move-object/from16 v0, p2

    #@27f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@282
    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@285
    move-result v4

    #@286
    if-eqz v4, :cond_e

    #@288
    .line 249
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@28a
    move-object/from16 v0, p2

    #@28c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28f
    move-result-object v5

    #@290
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@292
    .line 254
    :goto_e
    move-object/from16 v0, p0

    #@294
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    #@297
    move-result v28

    #@298
    .line 255
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29b
    .line 256
    if-eqz v28, :cond_f

    #@29d
    const/4 v4, 0x1

    #@29e
    :goto_f
    move-object/from16 v0, p3

    #@2a0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2a3
    .line 257
    const/4 v4, 0x1

    #@2a4
    return v4

    #@2a5
    .line 252
    .end local v28    # "_result":Z
    :cond_e
    const/4 v5, 0x0

    #@2a6
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    #@2a7
    .line 256
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v28    # "_result":Z
    :cond_f
    const/4 v4, 0x0

    #@2a8
    goto :goto_f

    #@2a9
    .line 261
    .end local v28    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@2ac
    move-object/from16 v0, p2

    #@2ae
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b1
    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b4
    move-result v4

    #@2b5
    if-eqz v4, :cond_10

    #@2b7
    .line 264
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b9
    move-object/from16 v0, p2

    #@2bb
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2be
    move-result-object v5

    #@2bf
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@2c1
    .line 269
    :goto_10
    move-object/from16 v0, p0

    #@2c3
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    #@2c6
    move-result v24

    #@2c7
    .line 270
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ca
    .line 271
    move-object/from16 v0, p3

    #@2cc
    move/from16 v1, v24

    #@2ce
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d1
    .line 272
    const/4 v4, 0x1

    #@2d2
    return v4

    #@2d3
    .line 267
    .end local v24    # "_result":I
    :cond_10
    const/4 v5, 0x0

    #@2d4
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    #@2d5
    .line 276
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_18
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@2d8
    move-object/from16 v0, p2

    #@2da
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2dd
    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e0
    move-result v4

    #@2e1
    if-eqz v4, :cond_11

    #@2e3
    .line 279
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e5
    move-object/from16 v0, p2

    #@2e7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2ea
    move-result-object v5

    #@2eb
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@2ed
    .line 284
    :goto_11
    move-object/from16 v0, p0

    #@2ef
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    #@2f2
    move-result v24

    #@2f3
    .line 285
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f6
    .line 286
    move-object/from16 v0, p3

    #@2f8
    move/from16 v1, v24

    #@2fa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2fd
    .line 287
    const/4 v4, 0x1

    #@2fe
    return v4

    #@2ff
    .line 282
    .end local v24    # "_result":I
    :cond_11
    const/4 v5, 0x0

    #@300
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_11

    #@301
    .line 291
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_19
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@304
    move-object/from16 v0, p2

    #@306
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@309
    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@30c
    move-result v4

    #@30d
    if-eqz v4, :cond_12

    #@30f
    .line 294
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@311
    move-object/from16 v0, p2

    #@313
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@316
    move-result-object v5

    #@317
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@319
    .line 299
    :goto_12
    move-object/from16 v0, p0

    #@31b
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    #@31e
    move-result-object v27

    #@31f
    .line 300
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@322
    .line 301
    move-object/from16 v0, p3

    #@324
    move-object/from16 v1, v27

    #@326
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@329
    .line 302
    const/4 v4, 0x1

    #@32a
    return v4

    #@32b
    .line 297
    .end local v27    # "_result":Ljava/lang/String;
    :cond_12
    const/4 v5, 0x0

    #@32c
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_12

    #@32d
    .line 306
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1a
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@330
    move-object/from16 v0, p2

    #@332
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@335
    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@338
    move-result v4

    #@339
    if-eqz v4, :cond_13

    #@33b
    .line 309
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@33d
    move-object/from16 v0, p2

    #@33f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@342
    move-result-object v5

    #@343
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@345
    .line 314
    :goto_13
    move-object/from16 v0, p0

    #@347
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I

    #@34a
    move-result v24

    #@34b
    .line 315
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@34e
    .line 316
    move-object/from16 v0, p3

    #@350
    move/from16 v1, v24

    #@352
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@355
    .line 317
    const/4 v4, 0x1

    #@356
    return v4

    #@357
    .line 312
    .end local v24    # "_result":I
    :cond_13
    const/4 v5, 0x0

    #@358
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_13

    #@359
    .line 321
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1b
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@35c
    move-object/from16 v0, p2

    #@35e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@361
    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@364
    move-result v4

    #@365
    if-eqz v4, :cond_14

    #@367
    .line 324
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@369
    move-object/from16 v0, p2

    #@36b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@36e
    move-result-object v5

    #@36f
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@371
    .line 329
    :goto_14
    move-object/from16 v0, p0

    #@373
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    #@376
    move-result-object v27

    #@377
    .line 330
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@37a
    .line 331
    move-object/from16 v0, p3

    #@37c
    move-object/from16 v1, v27

    #@37e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@381
    .line 332
    const/4 v4, 0x1

    #@382
    return v4

    #@383
    .line 327
    .end local v27    # "_result":Ljava/lang/String;
    :cond_14
    const/4 v5, 0x0

    #@384
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_14

    #@385
    .line 336
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1c
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@388
    move-object/from16 v0, p2

    #@38a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38d
    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@390
    move-result v4

    #@391
    if-eqz v4, :cond_15

    #@393
    .line 339
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@395
    move-object/from16 v0, p2

    #@397
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@39a
    move-result-object v5

    #@39b
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@39d
    .line 345
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a0
    move-result-object v12

    #@3a1
    .line 346
    .local v12, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3a3
    invoke-virtual {v0, v5, v12}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    #@3a6
    move-result v28

    #@3a7
    .line 347
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3aa
    .line 348
    if-eqz v28, :cond_16

    #@3ac
    const/4 v4, 0x1

    #@3ad
    :goto_16
    move-object/from16 v0, p3

    #@3af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3b2
    .line 349
    const/4 v4, 0x1

    #@3b3
    return v4

    #@3b4
    .line 342
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v28    # "_result":Z
    :cond_15
    const/4 v5, 0x0

    #@3b5
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_15

    #@3b6
    .line 348
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v12    # "_arg1":Ljava/lang/String;
    .restart local v28    # "_result":Z
    :cond_16
    const/4 v4, 0x0

    #@3b7
    goto :goto_16

    #@3b8
    .line 353
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v28    # "_result":Z
    :sswitch_1d
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@3bb
    move-object/from16 v0, p2

    #@3bd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c0
    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c3
    move-result v4

    #@3c4
    if-eqz v4, :cond_17

    #@3c6
    .line 356
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3c8
    move-object/from16 v0, p2

    #@3ca
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3cd
    move-result-object v5

    #@3ce
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@3d0
    .line 361
    :goto_17
    move-object/from16 v0, p0

    #@3d2
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    #@3d5
    move-result v24

    #@3d6
    .line 362
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d9
    .line 363
    move-object/from16 v0, p3

    #@3db
    move/from16 v1, v24

    #@3dd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3e0
    .line 364
    const/4 v4, 0x1

    #@3e1
    return v4

    #@3e2
    .line 359
    .end local v24    # "_result":I
    :cond_17
    const/4 v5, 0x0

    #@3e3
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_17

    #@3e4
    .line 368
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1e
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@3e7
    move-object/from16 v0, p2

    #@3e9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ec
    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ef
    move-result v4

    #@3f0
    if-eqz v4, :cond_18

    #@3f2
    .line 371
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3f4
    move-object/from16 v0, p2

    #@3f6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f9
    move-result-object v5

    #@3fa
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@3fc
    .line 376
    :goto_18
    move-object/from16 v0, p0

    #@3fe
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    #@401
    move-result-object v30

    #@402
    .line 377
    .restart local v30    # "_result":[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@405
    .line 378
    const/4 v4, 0x1

    #@406
    move-object/from16 v0, p3

    #@408
    move-object/from16 v1, v30

    #@40a
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@40d
    .line 379
    const/4 v4, 0x1

    #@40e
    return v4

    #@40f
    .line 374
    .end local v30    # "_result":[Landroid/os/ParcelUuid;
    :cond_18
    const/4 v5, 0x0

    #@410
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_18

    #@411
    .line 383
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1f
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@414
    move-object/from16 v0, p2

    #@416
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@419
    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41c
    move-result v4

    #@41d
    if-eqz v4, :cond_19

    #@41f
    .line 386
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@421
    move-object/from16 v0, p2

    #@423
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@426
    move-result-object v5

    #@427
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@429
    .line 391
    :goto_19
    move-object/from16 v0, p0

    #@42b
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z

    #@42e
    move-result v28

    #@42f
    .line 392
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@432
    .line 393
    if-eqz v28, :cond_1a

    #@434
    const/4 v4, 0x1

    #@435
    :goto_1a
    move-object/from16 v0, p3

    #@437
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@43a
    .line 394
    const/4 v4, 0x1

    #@43b
    return v4

    #@43c
    .line 389
    .end local v28    # "_result":Z
    :cond_19
    const/4 v5, 0x0

    #@43d
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_19

    #@43e
    .line 393
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v28    # "_result":Z
    :cond_1a
    const/4 v4, 0x0

    #@43f
    goto :goto_1a

    #@440
    .line 398
    .end local v28    # "_result":Z
    :sswitch_20
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@443
    move-object/from16 v0, p2

    #@445
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@448
    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@44b
    move-result v4

    #@44c
    if-eqz v4, :cond_1b

    #@44e
    .line 401
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@450
    move-object/from16 v0, p2

    #@452
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@455
    move-result-object v5

    #@456
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@458
    .line 407
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@45b
    move-result v4

    #@45c
    if-eqz v4, :cond_1c

    #@45e
    .line 408
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@460
    move-object/from16 v0, p2

    #@462
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@465
    move-result-object v20

    #@466
    check-cast v20, Landroid/os/ParcelUuid;

    #@468
    .line 413
    :goto_1c
    move-object/from16 v0, p0

    #@46a
    move-object/from16 v1, v20

    #@46c
    invoke-virtual {v0, v5, v1}, Landroid/bluetooth/IBluetooth$Stub;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z

    #@46f
    move-result v28

    #@470
    .line 414
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@473
    .line 415
    if-eqz v28, :cond_1d

    #@475
    const/4 v4, 0x1

    #@476
    :goto_1d
    move-object/from16 v0, p3

    #@478
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@47b
    .line 416
    const/4 v4, 0x1

    #@47c
    return v4

    #@47d
    .line 404
    .end local v28    # "_result":Z
    :cond_1b
    const/4 v5, 0x0

    #@47e
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1b

    #@47f
    .line 411
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_1c
    const/16 v20, 0x0

    #@481
    .local v20, "_arg1":Landroid/os/ParcelUuid;
    goto :goto_1c

    #@482
    .line 415
    .end local v20    # "_arg1":Landroid/os/ParcelUuid;
    .restart local v28    # "_result":Z
    :cond_1d
    const/4 v4, 0x0

    #@483
    goto :goto_1d

    #@484
    .line 420
    .end local v28    # "_result":Z
    :sswitch_21
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@487
    move-object/from16 v0, p2

    #@489
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48c
    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@48f
    move-result v4

    #@490
    if-eqz v4, :cond_1e

    #@492
    .line 423
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@494
    move-object/from16 v0, p2

    #@496
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@499
    move-result-object v5

    #@49a
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@49c
    .line 429
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49f
    move-result v4

    #@4a0
    if-eqz v4, :cond_1f

    #@4a2
    const/16 v21, 0x1

    #@4a4
    .line 431
    .local v21, "_arg1":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a7
    move-result v22

    #@4a8
    .line 433
    .local v22, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@4ab
    move-result-object v23

    #@4ac
    .line 434
    .local v23, "_arg3":[B
    move-object/from16 v0, p0

    #@4ae
    move/from16 v1, v21

    #@4b0
    move/from16 v2, v22

    #@4b2
    move-object/from16 v3, v23

    #@4b4
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    #@4b7
    move-result v28

    #@4b8
    .line 435
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4bb
    .line 436
    if-eqz v28, :cond_20

    #@4bd
    const/4 v4, 0x1

    #@4be
    :goto_20
    move-object/from16 v0, p3

    #@4c0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4c3
    .line 437
    const/4 v4, 0x1

    #@4c4
    return v4

    #@4c5
    .line 426
    .end local v21    # "_arg1":Z
    .end local v22    # "_arg2":I
    .end local v23    # "_arg3":[B
    .end local v28    # "_result":Z
    :cond_1e
    const/4 v5, 0x0

    #@4c6
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1e

    #@4c7
    .line 429
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_1f
    const/16 v21, 0x0

    #@4c9
    .restart local v21    # "_arg1":Z
    goto :goto_1f

    #@4ca
    .line 436
    .restart local v22    # "_arg2":I
    .restart local v23    # "_arg3":[B
    .restart local v28    # "_result":Z
    :cond_20
    const/4 v4, 0x0

    #@4cb
    goto :goto_20

    #@4cc
    .line 441
    .end local v21    # "_arg1":Z
    .end local v22    # "_arg2":I
    .end local v23    # "_arg3":[B
    .end local v28    # "_result":Z
    :sswitch_22
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@4cf
    move-object/from16 v0, p2

    #@4d1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d4
    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d7
    move-result v4

    #@4d8
    if-eqz v4, :cond_21

    #@4da
    .line 444
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4dc
    move-object/from16 v0, p2

    #@4de
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4e1
    move-result-object v5

    #@4e2
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@4e4
    .line 450
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4e7
    move-result v4

    #@4e8
    if-eqz v4, :cond_22

    #@4ea
    const/16 v21, 0x1

    #@4ec
    .line 452
    .restart local v21    # "_arg1":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4ef
    move-result v22

    #@4f0
    .line 454
    .restart local v22    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@4f3
    move-result-object v23

    #@4f4
    .line 455
    .restart local v23    # "_arg3":[B
    move-object/from16 v0, p0

    #@4f6
    move/from16 v1, v21

    #@4f8
    move/from16 v2, v22

    #@4fa
    move-object/from16 v3, v23

    #@4fc
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    #@4ff
    move-result v28

    #@500
    .line 456
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@503
    .line 457
    if-eqz v28, :cond_23

    #@505
    const/4 v4, 0x1

    #@506
    :goto_23
    move-object/from16 v0, p3

    #@508
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@50b
    .line 458
    const/4 v4, 0x1

    #@50c
    return v4

    #@50d
    .line 447
    .end local v21    # "_arg1":Z
    .end local v22    # "_arg2":I
    .end local v23    # "_arg3":[B
    .end local v28    # "_result":Z
    :cond_21
    const/4 v5, 0x0

    #@50e
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_21

    #@50f
    .line 450
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_22
    const/16 v21, 0x0

    #@511
    .restart local v21    # "_arg1":Z
    goto :goto_22

    #@512
    .line 457
    .restart local v22    # "_arg2":I
    .restart local v23    # "_arg3":[B
    .restart local v28    # "_result":Z
    :cond_23
    const/4 v4, 0x0

    #@513
    goto :goto_23

    #@514
    .line 462
    .end local v21    # "_arg1":Z
    .end local v22    # "_arg2":I
    .end local v23    # "_arg3":[B
    .end local v28    # "_result":Z
    :sswitch_23
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@517
    move-object/from16 v0, p2

    #@519
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@51c
    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51f
    move-result v4

    #@520
    if-eqz v4, :cond_24

    #@522
    .line 465
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@524
    move-object/from16 v0, p2

    #@526
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@529
    move-result-object v5

    #@52a
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@52c
    .line 471
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@52f
    move-result v4

    #@530
    if-eqz v4, :cond_25

    #@532
    const/16 v21, 0x1

    #@534
    .line 472
    .restart local v21    # "_arg1":Z
    :goto_25
    move-object/from16 v0, p0

    #@536
    move/from16 v1, v21

    #@538
    invoke-virtual {v0, v5, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z

    #@53b
    move-result v28

    #@53c
    .line 473
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@53f
    .line 474
    if-eqz v28, :cond_26

    #@541
    const/4 v4, 0x1

    #@542
    :goto_26
    move-object/from16 v0, p3

    #@544
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@547
    .line 475
    const/4 v4, 0x1

    #@548
    return v4

    #@549
    .line 468
    .end local v21    # "_arg1":Z
    .end local v28    # "_result":Z
    :cond_24
    const/4 v5, 0x0

    #@54a
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_24

    #@54b
    .line 471
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_25
    const/16 v21, 0x0

    #@54d
    .restart local v21    # "_arg1":Z
    goto :goto_25

    #@54e
    .line 474
    .restart local v28    # "_result":Z
    :cond_26
    const/4 v4, 0x0

    #@54f
    goto :goto_26

    #@550
    .line 479
    .end local v21    # "_arg1":Z
    .end local v28    # "_result":Z
    :sswitch_24
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@553
    move-object/from16 v0, p2

    #@555
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@558
    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@55b
    move-result v4

    #@55c
    if-eqz v4, :cond_27

    #@55e
    .line 482
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@560
    move-object/from16 v0, p2

    #@562
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@565
    move-result-object v5

    #@566
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@568
    .line 487
    :goto_27
    move-object/from16 v0, p0

    #@56a
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    #@56d
    move-result v24

    #@56e
    .line 488
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@571
    .line 489
    move-object/from16 v0, p3

    #@573
    move/from16 v1, v24

    #@575
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@578
    .line 490
    const/4 v4, 0x1

    #@579
    return v4

    #@57a
    .line 485
    .end local v24    # "_result":I
    :cond_27
    const/4 v5, 0x0

    #@57b
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_27

    #@57c
    .line 494
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_25
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@57f
    move-object/from16 v0, p2

    #@581
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@584
    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@587
    move-result v4

    #@588
    if-eqz v4, :cond_28

    #@58a
    .line 497
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@58c
    move-object/from16 v0, p2

    #@58e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@591
    move-result-object v5

    #@592
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@594
    .line 503
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@597
    move-result v6

    #@598
    .line 504
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@59a
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    #@59d
    move-result v28

    #@59e
    .line 505
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5a1
    .line 506
    if-eqz v28, :cond_29

    #@5a3
    const/4 v4, 0x1

    #@5a4
    :goto_29
    move-object/from16 v0, p3

    #@5a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5a9
    .line 507
    const/4 v4, 0x1

    #@5aa
    return v4

    #@5ab
    .line 500
    .end local v6    # "_arg1":I
    .end local v28    # "_result":Z
    :cond_28
    const/4 v5, 0x0

    #@5ac
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_28

    #@5ad
    .line 506
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v28    # "_result":Z
    :cond_29
    const/4 v4, 0x0

    #@5ae
    goto :goto_29

    #@5af
    .line 511
    .end local v6    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_26
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@5b2
    move-object/from16 v0, p2

    #@5b4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b7
    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ba
    move-result v4

    #@5bb
    if-eqz v4, :cond_2a

    #@5bd
    .line 514
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5bf
    move-object/from16 v0, p2

    #@5c1
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5c4
    move-result-object v5

    #@5c5
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@5c7
    .line 519
    :goto_2a
    move-object/from16 v0, p0

    #@5c9
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    #@5cc
    move-result v24

    #@5cd
    .line 520
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d0
    .line 521
    move-object/from16 v0, p3

    #@5d2
    move/from16 v1, v24

    #@5d4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5d7
    .line 522
    const/4 v4, 0x1

    #@5d8
    return v4

    #@5d9
    .line 517
    .end local v24    # "_result":I
    :cond_2a
    const/4 v5, 0x0

    #@5da
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2a

    #@5db
    .line 526
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_27
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@5de
    move-object/from16 v0, p2

    #@5e0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e3
    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5e6
    move-result v4

    #@5e7
    if-eqz v4, :cond_2b

    #@5e9
    .line 529
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5eb
    move-object/from16 v0, p2

    #@5ed
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5f0
    move-result-object v5

    #@5f1
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@5f3
    .line 535
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f6
    move-result v6

    #@5f7
    .line 536
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@5f9
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    #@5fc
    move-result v28

    #@5fd
    .line 537
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@600
    .line 538
    if-eqz v28, :cond_2c

    #@602
    const/4 v4, 0x1

    #@603
    :goto_2c
    move-object/from16 v0, p3

    #@605
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@608
    .line 539
    const/4 v4, 0x1

    #@609
    return v4

    #@60a
    .line 532
    .end local v6    # "_arg1":I
    .end local v28    # "_result":Z
    :cond_2b
    const/4 v5, 0x0

    #@60b
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2b

    #@60c
    .line 538
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v28    # "_result":Z
    :cond_2c
    const/4 v4, 0x0

    #@60d
    goto :goto_2c

    #@60e
    .line 543
    .end local v6    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_28
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@611
    move-object/from16 v0, p2

    #@613
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@616
    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@619
    move-result v4

    #@61a
    if-eqz v4, :cond_2d

    #@61c
    .line 546
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@61e
    move-object/from16 v0, p2

    #@620
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@623
    move-result-object v5

    #@624
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@626
    .line 551
    :goto_2d
    move-object/from16 v0, p0

    #@628
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    #@62b
    move-result v24

    #@62c
    .line 552
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@62f
    .line 553
    move-object/from16 v0, p3

    #@631
    move/from16 v1, v24

    #@633
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@636
    .line 554
    const/4 v4, 0x1

    #@637
    return v4

    #@638
    .line 549
    .end local v24    # "_result":I
    :cond_2d
    const/4 v5, 0x0

    #@639
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2d

    #@63a
    .line 558
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_29
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@63d
    move-object/from16 v0, p2

    #@63f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@642
    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@645
    move-result v4

    #@646
    if-eqz v4, :cond_2e

    #@648
    .line 561
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@64a
    move-object/from16 v0, p2

    #@64c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@64f
    move-result-object v5

    #@650
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@652
    .line 567
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@655
    move-result v6

    #@656
    .line 568
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@658
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    #@65b
    move-result v28

    #@65c
    .line 569
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@65f
    .line 570
    if-eqz v28, :cond_2f

    #@661
    const/4 v4, 0x1

    #@662
    :goto_2f
    move-object/from16 v0, p3

    #@664
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@667
    .line 571
    const/4 v4, 0x1

    #@668
    return v4

    #@669
    .line 564
    .end local v6    # "_arg1":I
    .end local v28    # "_result":Z
    :cond_2e
    const/4 v5, 0x0

    #@66a
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2e

    #@66b
    .line 570
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v28    # "_result":Z
    :cond_2f
    const/4 v4, 0x0

    #@66c
    goto :goto_2f

    #@66d
    .line 575
    .end local v6    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_2a
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@670
    move-object/from16 v0, p2

    #@672
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@675
    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@678
    move-result v4

    #@679
    if-eqz v4, :cond_30

    #@67b
    .line 578
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@67d
    move-object/from16 v0, p2

    #@67f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@682
    move-result-object v5

    #@683
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@685
    .line 584
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@688
    move-result v6

    #@689
    .line 586
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@68c
    move-result v22

    #@68d
    .line 588
    .restart local v22    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@690
    move-result v8

    #@691
    .line 589
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    #@693
    move/from16 v1, v22

    #@695
    invoke-virtual {v0, v5, v6, v1, v8}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    #@698
    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@69b
    .line 591
    const/4 v4, 0x1

    #@69c
    return v4

    #@69d
    .line 581
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v22    # "_arg2":I
    :cond_30
    const/4 v5, 0x0

    #@69e
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_30

    #@69f
    .line 595
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2b
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@6a2
    move-object/from16 v0, p2

    #@6a4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a7
    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6aa
    move-result-object v4

    #@6ab
    invoke-static {v4}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    #@6ae
    move-result-object v16

    #@6af
    .line 598
    .local v16, "_arg0":Landroid/bluetooth/IBluetoothCallback;
    move-object/from16 v0, p0

    #@6b1
    move-object/from16 v1, v16

    #@6b3
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V

    #@6b6
    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6b9
    .line 600
    const/4 v4, 0x1

    #@6ba
    return v4

    #@6bb
    .line 604
    .end local v16    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    :sswitch_2c
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@6be
    move-object/from16 v0, p2

    #@6c0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c3
    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6c6
    move-result-object v4

    #@6c7
    invoke-static {v4}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    #@6ca
    move-result-object v16

    #@6cb
    .line 607
    .restart local v16    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    move-object/from16 v0, p0

    #@6cd
    move-object/from16 v1, v16

    #@6cf
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V

    #@6d2
    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d5
    .line 609
    const/4 v4, 0x1

    #@6d6
    return v4

    #@6d7
    .line 613
    .end local v16    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    :sswitch_2d
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@6da
    move-object/from16 v0, p2

    #@6dc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6df
    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6e2
    move-result v4

    #@6e3
    if-eqz v4, :cond_31

    #@6e5
    .line 616
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6e7
    move-object/from16 v0, p2

    #@6e9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6ec
    move-result-object v5

    #@6ed
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@6ef
    .line 622
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6f2
    move-result v6

    #@6f3
    .line 624
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6f6
    move-result v4

    #@6f7
    if-eqz v4, :cond_32

    #@6f9
    .line 625
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6fb
    move-object/from16 v0, p2

    #@6fd
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@700
    move-result-object v7

    #@701
    check-cast v7, Landroid/os/ParcelUuid;

    #@703
    .line 631
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@706
    move-result v8

    #@707
    .line 633
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@70a
    move-result v9

    #@70b
    .local v9, "_arg4":I
    move-object/from16 v4, p0

    #@70d
    .line 634
    invoke-virtual/range {v4 .. v9}, Landroid/bluetooth/IBluetooth$Stub;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    #@710
    move-result-object v26

    #@711
    .line 635
    .local v26, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@714
    .line 636
    if-eqz v26, :cond_33

    #@716
    .line 637
    const/4 v4, 0x1

    #@717
    move-object/from16 v0, p3

    #@719
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@71c
    .line 638
    const/4 v4, 0x1

    #@71d
    move-object/from16 v0, v26

    #@71f
    move-object/from16 v1, p3

    #@721
    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@724
    .line 643
    :goto_33
    const/4 v4, 0x1

    #@725
    return v4

    #@726
    .line 619
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v26    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_31
    const/4 v5, 0x0

    #@727
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_31

    #@728
    .line 628
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    :cond_32
    const/4 v7, 0x0

    #@729
    .local v7, "_arg2":Landroid/os/ParcelUuid;
    goto :goto_32

    #@72a
    .line 641
    .end local v7    # "_arg2":Landroid/os/ParcelUuid;
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":I
    .restart local v26    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_33
    const/4 v4, 0x0

    #@72b
    move-object/from16 v0, p3

    #@72d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@730
    goto :goto_33

    #@731
    .line 647
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v26    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2e
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@734
    move-object/from16 v0, p2

    #@736
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@739
    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@73c
    move-result v11

    #@73d
    .line 651
    .restart local v11    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@740
    move-result-object v12

    #@741
    .line 653
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@744
    move-result v4

    #@745
    if-eqz v4, :cond_34

    #@747
    .line 654
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@749
    move-object/from16 v0, p2

    #@74b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@74e
    move-result-object v7

    #@74f
    check-cast v7, Landroid/os/ParcelUuid;

    #@751
    .line 660
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@754
    move-result v8

    #@755
    .line 662
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@758
    move-result v9

    #@759
    .restart local v9    # "_arg4":I
    move-object/from16 v10, p0

    #@75b
    move-object v13, v7

    #@75c
    move v14, v8

    #@75d
    move v15, v9

    #@75e
    .line 663
    invoke-virtual/range {v10 .. v15}, Landroid/bluetooth/IBluetooth$Stub;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    #@761
    move-result-object v26

    #@762
    .line 664
    .restart local v26    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@765
    .line 665
    if-eqz v26, :cond_35

    #@767
    .line 666
    const/4 v4, 0x1

    #@768
    move-object/from16 v0, p3

    #@76a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@76d
    .line 667
    const/4 v4, 0x1

    #@76e
    move-object/from16 v0, v26

    #@770
    move-object/from16 v1, p3

    #@772
    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@775
    .line 672
    :goto_35
    const/4 v4, 0x1

    #@776
    return v4

    #@777
    .line 657
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v26    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_34
    const/4 v7, 0x0

    #@778
    .restart local v7    # "_arg2":Landroid/os/ParcelUuid;
    goto :goto_34

    #@779
    .line 670
    .end local v7    # "_arg2":Landroid/os/ParcelUuid;
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":I
    .restart local v26    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_35
    const/4 v4, 0x0

    #@77a
    move-object/from16 v0, p3

    #@77c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@77f
    goto :goto_35

    #@780
    .line 676
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v11    # "_arg0":I
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v26    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2f
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@783
    move-object/from16 v0, p2

    #@785
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@788
    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@78b
    move-result v4

    #@78c
    if-eqz v4, :cond_36

    #@78e
    const/16 v19, 0x1

    #@790
    .line 679
    .local v19, "_arg0":Z
    :goto_36
    move-object/from16 v0, p0

    #@792
    move/from16 v1, v19

    #@794
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->configHciSnoopLog(Z)Z

    #@797
    move-result v28

    #@798
    .line 680
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79b
    .line 681
    if-eqz v28, :cond_37

    #@79d
    const/4 v4, 0x1

    #@79e
    :goto_37
    move-object/from16 v0, p3

    #@7a0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7a3
    .line 682
    const/4 v4, 0x1

    #@7a4
    return v4

    #@7a5
    .line 678
    .end local v19    # "_arg0":Z
    .end local v28    # "_result":Z
    :cond_36
    const/16 v19, 0x0

    #@7a7
    .restart local v19    # "_arg0":Z
    goto :goto_36

    #@7a8
    .line 681
    .restart local v28    # "_result":Z
    :cond_37
    const/4 v4, 0x0

    #@7a9
    goto :goto_37

    #@7aa
    .line 686
    .end local v19    # "_arg0":Z
    .end local v28    # "_result":Z
    :sswitch_30
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@7ad
    move-object/from16 v0, p2

    #@7af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7b2
    .line 687
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->factoryReset()Z

    #@7b5
    move-result v28

    #@7b6
    .line 688
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b9
    .line 689
    if-eqz v28, :cond_38

    #@7bb
    const/4 v4, 0x1

    #@7bc
    :goto_38
    move-object/from16 v0, p3

    #@7be
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7c1
    .line 690
    const/4 v4, 0x1

    #@7c2
    return v4

    #@7c3
    .line 689
    :cond_38
    const/4 v4, 0x0

    #@7c4
    goto :goto_38

    #@7c5
    .line 694
    .end local v28    # "_result":Z
    :sswitch_31
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@7c8
    move-object/from16 v0, p2

    #@7ca
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7cd
    .line 695
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isMultiAdvertisementSupported()Z

    #@7d0
    move-result v28

    #@7d1
    .line 696
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d4
    .line 697
    if-eqz v28, :cond_39

    #@7d6
    const/4 v4, 0x1

    #@7d7
    :goto_39
    move-object/from16 v0, p3

    #@7d9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7dc
    .line 698
    const/4 v4, 0x1

    #@7dd
    return v4

    #@7de
    .line 697
    :cond_39
    const/4 v4, 0x0

    #@7df
    goto :goto_39

    #@7e0
    .line 702
    .end local v28    # "_result":Z
    :sswitch_32
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@7e3
    move-object/from16 v0, p2

    #@7e5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e8
    .line 703
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isPeripheralModeSupported()Z

    #@7eb
    move-result v28

    #@7ec
    .line 704
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7ef
    .line 705
    if-eqz v28, :cond_3a

    #@7f1
    const/4 v4, 0x1

    #@7f2
    :goto_3a
    move-object/from16 v0, p3

    #@7f4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7f7
    .line 706
    const/4 v4, 0x1

    #@7f8
    return v4

    #@7f9
    .line 705
    :cond_3a
    const/4 v4, 0x0

    #@7fa
    goto :goto_3a

    #@7fb
    .line 710
    .end local v28    # "_result":Z
    :sswitch_33
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@7fe
    move-object/from16 v0, p2

    #@800
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@803
    .line 711
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedFilteringSupported()Z

    #@806
    move-result v28

    #@807
    .line 712
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@80a
    .line 713
    if-eqz v28, :cond_3b

    #@80c
    const/4 v4, 0x1

    #@80d
    :goto_3b
    move-object/from16 v0, p3

    #@80f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@812
    .line 714
    const/4 v4, 0x1

    #@813
    return v4

    #@814
    .line 713
    :cond_3b
    const/4 v4, 0x0

    #@815
    goto :goto_3b

    #@816
    .line 718
    .end local v28    # "_result":Z
    :sswitch_34
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@819
    move-object/from16 v0, p2

    #@81b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@81e
    .line 719
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedScanBatchingSupported()Z

    #@821
    move-result v28

    #@822
    .line 720
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@825
    .line 721
    if-eqz v28, :cond_3c

    #@827
    const/4 v4, 0x1

    #@828
    :goto_3c
    move-object/from16 v0, p3

    #@82a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@82d
    .line 722
    const/4 v4, 0x1

    #@82e
    return v4

    #@82f
    .line 721
    :cond_3c
    const/4 v4, 0x0

    #@830
    goto :goto_3c

    #@831
    .line 726
    .end local v28    # "_result":Z
    :sswitch_35
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@834
    move-object/from16 v0, p2

    #@836
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@839
    .line 727
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isActivityAndEnergyReportingSupported()Z

    #@83c
    move-result v28

    #@83d
    .line 728
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@840
    .line 729
    if-eqz v28, :cond_3d

    #@842
    const/4 v4, 0x1

    #@843
    :goto_3d
    move-object/from16 v0, p3

    #@845
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@848
    .line 730
    const/4 v4, 0x1

    #@849
    return v4

    #@84a
    .line 729
    :cond_3d
    const/4 v4, 0x0

    #@84b
    goto :goto_3d

    #@84c
    .line 734
    .end local v28    # "_result":Z
    :sswitch_36
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@84f
    move-object/from16 v0, p2

    #@851
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@854
    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getActivityEnergyInfoFromController()V

    #@857
    .line 736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@85a
    .line 737
    const/4 v4, 0x1

    #@85b
    return v4

    #@85c
    .line 741
    :sswitch_37
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@85f
    move-object/from16 v0, p2

    #@861
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@864
    .line 742
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    #@867
    move-result-object v25

    #@868
    .line 743
    .local v25, "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@86b
    .line 744
    if-eqz v25, :cond_3e

    #@86d
    .line 745
    const/4 v4, 0x1

    #@86e
    move-object/from16 v0, p3

    #@870
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@873
    .line 746
    const/4 v4, 0x1

    #@874
    move-object/from16 v0, v25

    #@876
    move-object/from16 v1, p3

    #@878
    invoke-virtual {v0, v1, v4}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@87b
    .line 751
    :goto_3e
    const/4 v4, 0x1

    #@87c
    return v4

    #@87d
    .line 749
    :cond_3e
    const/4 v4, 0x0

    #@87e
    move-object/from16 v0, p3

    #@880
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@883
    goto :goto_3e

    #@884
    .line 755
    .end local v25    # "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :sswitch_38
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@887
    move-object/from16 v0, p2

    #@889
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@88c
    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@88f
    move-result v4

    #@890
    if-eqz v4, :cond_3f

    #@892
    .line 758
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@894
    move-object/from16 v0, p2

    #@896
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@899
    move-result-object v17

    #@89a
    check-cast v17, Landroid/os/ParcelFileDescriptor;

    #@89c
    .line 763
    :goto_3f
    move-object/from16 v0, p0

    #@89e
    move-object/from16 v1, v17

    #@8a0
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->dump(Landroid/os/ParcelFileDescriptor;)V

    #@8a3
    .line 764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a6
    .line 765
    const/4 v4, 0x1

    #@8a7
    return v4

    #@8a8
    .line 761
    :cond_3f
    const/16 v17, 0x0

    #@8aa
    .local v17, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_3f

    #@8ab
    .line 769
    .end local v17    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_39
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@8ae
    move-object/from16 v0, p2

    #@8b0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b3
    .line 770
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->onLeServiceUp()V

    #@8b6
    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8b9
    .line 772
    const/4 v4, 0x1

    #@8ba
    return v4

    #@8bb
    .line 776
    :sswitch_3a
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@8be
    move-object/from16 v0, p2

    #@8c0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c3
    .line 777
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->onBrEdrDown()V

    #@8c6
    .line 778
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c9
    .line 779
    const/4 v4, 0x1

    #@8ca
    return v4

    #@8cb
    .line 43
    nop

    #@8cc
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
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

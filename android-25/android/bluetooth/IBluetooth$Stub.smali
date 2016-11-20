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

.field static final TRANSACTION_cancelBondProcess:I = 0x16

.field static final TRANSACTION_cancelDiscovery:I = 0xf

.field static final TRANSACTION_configHciSnoopLog:I = 0x30

.field static final TRANSACTION_connectSocket:I = 0x2e

.field static final TRANSACTION_createBond:I = 0x14

.field static final TRANSACTION_createBondOutOfBand:I = 0x15

.field static final TRANSACTION_createSocketChannel:I = 0x2f

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_enableNoAutoConnect:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x31

.field static final TRANSACTION_fetchRemoteUuids:I = 0x20

.field static final TRANSACTION_getAdapterConnectionState:I = 0x11

.field static final TRANSACTION_getAddress:I = 0x6

.field static final TRANSACTION_getBondState:I = 0x18

.field static final TRANSACTION_getBondedDevices:I = 0x13

.field static final TRANSACTION_getConnectionState:I = 0x19

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xc

.field static final TRANSACTION_getMessageAccessPermission:I = 0x27

.field static final TRANSACTION_getName:I = 0x9

.field static final TRANSACTION_getPhonebookAccessPermission:I = 0x25

.field static final TRANSACTION_getProfileConnectionState:I = 0x12

.field static final TRANSACTION_getRemoteAlias:I = 0x1c

.field static final TRANSACTION_getRemoteClass:I = 0x1e

.field static final TRANSACTION_getRemoteName:I = 0x1a

.field static final TRANSACTION_getRemoteType:I = 0x1b

.field static final TRANSACTION_getRemoteUuids:I = 0x1f

.field static final TRANSACTION_getScanMode:I = 0xa

.field static final TRANSACTION_getSimAccessPermission:I = 0x29

.field static final TRANSACTION_getState:I = 0x2

.field static final TRANSACTION_getUuids:I = 0x7

.field static final TRANSACTION_isActivityAndEnergyReportingSupported:I = 0x36

.field static final TRANSACTION_isDiscovering:I = 0x10

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isMultiAdvertisementSupported:I = 0x32

.field static final TRANSACTION_isOffloadedFilteringSupported:I = 0x34

.field static final TRANSACTION_isOffloadedScanBatchingSupported:I = 0x35

.field static final TRANSACTION_isPeripheralModeSupported:I = 0x33

.field static final TRANSACTION_onBrEdrDown:I = 0x3a

.field static final TRANSACTION_onLeServiceUp:I = 0x39

.field static final TRANSACTION_registerCallback:I = 0x2c

.field static final TRANSACTION_removeBond:I = 0x17

.field static final TRANSACTION_reportActivityInfo:I = 0x37

.field static final TRANSACTION_requestActivityInfo:I = 0x38

.field static final TRANSACTION_sdpSearch:I = 0x21

.field static final TRANSACTION_sendConnectionStateChange:I = 0x2b

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xd

.field static final TRANSACTION_setMessageAccessPermission:I = 0x28

.field static final TRANSACTION_setName:I = 0x8

.field static final TRANSACTION_setPairingConfirmation:I = 0x24

.field static final TRANSACTION_setPasskey:I = 0x23

.field static final TRANSACTION_setPhonebookAccessPermission:I = 0x26

.field static final TRANSACTION_setPin:I = 0x22

.field static final TRANSACTION_setRemoteAlias:I = 0x1d

.field static final TRANSACTION_setScanMode:I = 0xb

.field static final TRANSACTION_setSimAccessPermission:I = 0x2a

.field static final TRANSACTION_startDiscovery:I = 0xe

.field static final TRANSACTION_unregisterCallback:I = 0x2d


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
    .locals 32
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
    .line 798
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
    move-result v29

    #@1e
    .line 54
    .local v29, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 55
    if-eqz v29, :cond_0

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
    .end local v29    # "_result":Z
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
    move-result v25

    #@39
    .line 62
    .local v25, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c
    .line 63
    move-object/from16 v0, p3

    #@3e
    move/from16 v1, v25

    #@40
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 64
    const/4 v4, 0x1

    #@44
    return v4

    #@45
    .line 68
    .end local v25    # "_result":I
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
    move-result v29

    #@51
    .line 70
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54
    .line 71
    if-eqz v29, :cond_1

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
    .end local v29    # "_result":Z
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
    move-result v29

    #@6c
    .line 78
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6f
    .line 79
    if-eqz v29, :cond_2

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
    .end local v29    # "_result":Z
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
    move-result v29

    #@87
    .line 86
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a
    .line 87
    if-eqz v29, :cond_3

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
    .end local v29    # "_result":Z
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
    move-result-object v28

    #@a2
    .line 94
    .local v28, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a5
    .line 95
    move-object/from16 v0, p3

    #@a7
    move-object/from16 v1, v28

    #@a9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@ac
    .line 96
    const/4 v4, 0x1

    #@ad
    return v4

    #@ae
    .line 100
    .end local v28    # "_result":Ljava/lang/String;
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
    move-result-object v31

    #@ba
    .line 102
    .local v31, "_result":[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bd
    .line 103
    const/4 v4, 0x1

    #@be
    move-object/from16 v0, p3

    #@c0
    move-object/from16 v1, v31

    #@c2
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@c5
    .line 104
    const/4 v4, 0x1

    #@c6
    return v4

    #@c7
    .line 108
    .end local v31    # "_result":[Landroid/os/ParcelUuid;
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
    move-result v29

    #@db
    .line 112
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@de
    .line 113
    if-eqz v29, :cond_4

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
    .end local v29    # "_result":Z
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
    move-result-object v28

    #@f6
    .line 120
    .restart local v28    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f9
    .line 121
    move-object/from16 v0, p3

    #@fb
    move-object/from16 v1, v28

    #@fd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@100
    .line 122
    const/4 v4, 0x1

    #@101
    return v4

    #@102
    .line 126
    .end local v28    # "_result":Ljava/lang/String;
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
    move-result v25

    #@10e
    .line 128
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@111
    .line 129
    move-object/from16 v0, p3

    #@113
    move/from16 v1, v25

    #@115
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@118
    .line 130
    const/4 v4, 0x1

    #@119
    return v4

    #@11a
    .line 134
    .end local v25    # "_result":I
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
    move-result v29

    #@130
    .line 140
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@133
    .line 141
    if-eqz v29, :cond_5

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
    .end local v29    # "_result":Z
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
    move-result v25

    #@14b
    .line 148
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14e
    .line 149
    move-object/from16 v0, p3

    #@150
    move/from16 v1, v25

    #@152
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@155
    .line 150
    const/4 v4, 0x1

    #@156
    return v4

    #@157
    .line 154
    .end local v25    # "_result":I
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
    move-result v29

    #@169
    .line 158
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16c
    .line 159
    if-eqz v29, :cond_6

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
    .end local v29    # "_result":Z
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
    move-result v29

    #@184
    .line 166
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@187
    .line 167
    if-eqz v29, :cond_7

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
    .end local v29    # "_result":Z
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
    move-result v29

    #@19f
    .line 174
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a2
    .line 175
    if-eqz v29, :cond_8

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
    .end local v29    # "_result":Z
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
    move-result v29

    #@1ba
    .line 182
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bd
    .line 183
    if-eqz v29, :cond_9

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
    .end local v29    # "_result":Z
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
    move-result v25

    #@1d5
    .line 190
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d8
    .line 191
    move-object/from16 v0, p3

    #@1da
    move/from16 v1, v25

    #@1dc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1df
    .line 192
    const/4 v4, 0x1

    #@1e0
    return v4

    #@1e1
    .line 196
    .end local v25    # "_result":I
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
    move-result v25

    #@1f3
    .line 200
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f6
    .line 201
    move-object/from16 v0, p3

    #@1f8
    move/from16 v1, v25

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
    .end local v25    # "_result":I
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
    move-result-object v30

    #@20b
    .line 208
    .local v30, "_result":[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20e
    .line 209
    const/4 v4, 0x1

    #@20f
    move-object/from16 v0, p3

    #@211
    move-object/from16 v1, v30

    #@213
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@216
    .line 210
    const/4 v4, 0x1

    #@217
    return v4

    #@218
    .line 214
    .end local v30    # "_result":[Landroid/bluetooth/BluetoothDevice;
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
    move-result v29

    #@23a
    .line 225
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23d
    .line 226
    if-eqz v29, :cond_b

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
    .end local v29    # "_result":Z
    :cond_a
    const/4 v5, 0x0

    #@248
    .local v5, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    #@249
    .line 226
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v29    # "_result":Z
    :cond_b
    const/4 v4, 0x0

    #@24a
    goto :goto_b

    #@24b
    .line 231
    .end local v6    # "_arg1":I
    .end local v29    # "_result":Z
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
    .line 240
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@266
    move-result v6

    #@267
    .line 242
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26a
    move-result v4

    #@26b
    if-eqz v4, :cond_d

    #@26d
    .line 243
    sget-object v4, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26f
    move-object/from16 v0, p2

    #@271
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@274
    move-result-object v23

    #@275
    check-cast v23, Landroid/bluetooth/OobData;

    #@277
    .line 248
    :goto_d
    move-object/from16 v0, p0

    #@279
    move-object/from16 v1, v23

    #@27b
    invoke-virtual {v0, v5, v6, v1}, Landroid/bluetooth/IBluetooth$Stub;->createBondOutOfBand(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;)Z

    #@27e
    move-result v29

    #@27f
    .line 249
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@282
    .line 250
    if-eqz v29, :cond_e

    #@284
    const/4 v4, 0x1

    #@285
    :goto_e
    move-object/from16 v0, p3

    #@287
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@28a
    .line 251
    const/4 v4, 0x1

    #@28b
    return v4

    #@28c
    .line 237
    .end local v6    # "_arg1":I
    .end local v29    # "_result":Z
    :cond_c
    const/4 v5, 0x0

    #@28d
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    #@28e
    .line 246
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    :cond_d
    const/16 v23, 0x0

    #@290
    .local v23, "_arg2":Landroid/bluetooth/OobData;
    goto :goto_d

    #@291
    .line 250
    .end local v23    # "_arg2":Landroid/bluetooth/OobData;
    .restart local v29    # "_result":Z
    :cond_e
    const/4 v4, 0x0

    #@292
    goto :goto_e

    #@293
    .line 255
    .end local v6    # "_arg1":I
    .end local v29    # "_result":Z
    :sswitch_16
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@296
    move-object/from16 v0, p2

    #@298
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29b
    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29e
    move-result v4

    #@29f
    if-eqz v4, :cond_f

    #@2a1
    .line 258
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a3
    move-object/from16 v0, p2

    #@2a5
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a8
    move-result-object v5

    #@2a9
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@2ab
    .line 263
    :goto_f
    move-object/from16 v0, p0

    #@2ad
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    #@2b0
    move-result v29

    #@2b1
    .line 264
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b4
    .line 265
    if-eqz v29, :cond_10

    #@2b6
    const/4 v4, 0x1

    #@2b7
    :goto_10
    move-object/from16 v0, p3

    #@2b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2bc
    .line 266
    const/4 v4, 0x1

    #@2bd
    return v4

    #@2be
    .line 261
    .end local v29    # "_result":Z
    :cond_f
    const/4 v5, 0x0

    #@2bf
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_f

    #@2c0
    .line 265
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v29    # "_result":Z
    :cond_10
    const/4 v4, 0x0

    #@2c1
    goto :goto_10

    #@2c2
    .line 270
    .end local v29    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@2c5
    move-object/from16 v0, p2

    #@2c7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ca
    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2cd
    move-result v4

    #@2ce
    if-eqz v4, :cond_11

    #@2d0
    .line 273
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d2
    move-object/from16 v0, p2

    #@2d4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d7
    move-result-object v5

    #@2d8
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@2da
    .line 278
    :goto_11
    move-object/from16 v0, p0

    #@2dc
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    #@2df
    move-result v29

    #@2e0
    .line 279
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e3
    .line 280
    if-eqz v29, :cond_12

    #@2e5
    const/4 v4, 0x1

    #@2e6
    :goto_12
    move-object/from16 v0, p3

    #@2e8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2eb
    .line 281
    const/4 v4, 0x1

    #@2ec
    return v4

    #@2ed
    .line 276
    .end local v29    # "_result":Z
    :cond_11
    const/4 v5, 0x0

    #@2ee
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_11

    #@2ef
    .line 280
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v29    # "_result":Z
    :cond_12
    const/4 v4, 0x0

    #@2f0
    goto :goto_12

    #@2f1
    .line 285
    .end local v29    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@2f4
    move-object/from16 v0, p2

    #@2f6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f9
    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2fc
    move-result v4

    #@2fd
    if-eqz v4, :cond_13

    #@2ff
    .line 288
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@301
    move-object/from16 v0, p2

    #@303
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@306
    move-result-object v5

    #@307
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@309
    .line 293
    :goto_13
    move-object/from16 v0, p0

    #@30b
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    #@30e
    move-result v25

    #@30f
    .line 294
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@312
    .line 295
    move-object/from16 v0, p3

    #@314
    move/from16 v1, v25

    #@316
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@319
    .line 296
    const/4 v4, 0x1

    #@31a
    return v4

    #@31b
    .line 291
    .end local v25    # "_result":I
    :cond_13
    const/4 v5, 0x0

    #@31c
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_13

    #@31d
    .line 300
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_19
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@320
    move-object/from16 v0, p2

    #@322
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@325
    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@328
    move-result v4

    #@329
    if-eqz v4, :cond_14

    #@32b
    .line 303
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32d
    move-object/from16 v0, p2

    #@32f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@332
    move-result-object v5

    #@333
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@335
    .line 308
    :goto_14
    move-object/from16 v0, p0

    #@337
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    #@33a
    move-result v25

    #@33b
    .line 309
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@33e
    .line 310
    move-object/from16 v0, p3

    #@340
    move/from16 v1, v25

    #@342
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@345
    .line 311
    const/4 v4, 0x1

    #@346
    return v4

    #@347
    .line 306
    .end local v25    # "_result":I
    :cond_14
    const/4 v5, 0x0

    #@348
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_14

    #@349
    .line 315
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1a
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@34c
    move-object/from16 v0, p2

    #@34e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@351
    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@354
    move-result v4

    #@355
    if-eqz v4, :cond_15

    #@357
    .line 318
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@359
    move-object/from16 v0, p2

    #@35b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@35e
    move-result-object v5

    #@35f
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@361
    .line 323
    :goto_15
    move-object/from16 v0, p0

    #@363
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    #@366
    move-result-object v28

    #@367
    .line 324
    .restart local v28    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@36a
    .line 325
    move-object/from16 v0, p3

    #@36c
    move-object/from16 v1, v28

    #@36e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@371
    .line 326
    const/4 v4, 0x1

    #@372
    return v4

    #@373
    .line 321
    .end local v28    # "_result":Ljava/lang/String;
    :cond_15
    const/4 v5, 0x0

    #@374
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_15

    #@375
    .line 330
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1b
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@378
    move-object/from16 v0, p2

    #@37a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37d
    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@380
    move-result v4

    #@381
    if-eqz v4, :cond_16

    #@383
    .line 333
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@385
    move-object/from16 v0, p2

    #@387
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@38a
    move-result-object v5

    #@38b
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@38d
    .line 338
    :goto_16
    move-object/from16 v0, p0

    #@38f
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I

    #@392
    move-result v25

    #@393
    .line 339
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@396
    .line 340
    move-object/from16 v0, p3

    #@398
    move/from16 v1, v25

    #@39a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@39d
    .line 341
    const/4 v4, 0x1

    #@39e
    return v4

    #@39f
    .line 336
    .end local v25    # "_result":I
    :cond_16
    const/4 v5, 0x0

    #@3a0
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_16

    #@3a1
    .line 345
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1c
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@3a4
    move-object/from16 v0, p2

    #@3a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a9
    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ac
    move-result v4

    #@3ad
    if-eqz v4, :cond_17

    #@3af
    .line 348
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b1
    move-object/from16 v0, p2

    #@3b3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b6
    move-result-object v5

    #@3b7
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@3b9
    .line 353
    :goto_17
    move-object/from16 v0, p0

    #@3bb
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    #@3be
    move-result-object v28

    #@3bf
    .line 354
    .restart local v28    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c2
    .line 355
    move-object/from16 v0, p3

    #@3c4
    move-object/from16 v1, v28

    #@3c6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c9
    .line 356
    const/4 v4, 0x1

    #@3ca
    return v4

    #@3cb
    .line 351
    .end local v28    # "_result":Ljava/lang/String;
    :cond_17
    const/4 v5, 0x0

    #@3cc
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_17

    #@3cd
    .line 360
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1d
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@3d0
    move-object/from16 v0, p2

    #@3d2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d5
    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d8
    move-result v4

    #@3d9
    if-eqz v4, :cond_18

    #@3db
    .line 363
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3dd
    move-object/from16 v0, p2

    #@3df
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e2
    move-result-object v5

    #@3e3
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@3e5
    .line 369
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3e8
    move-result-object v12

    #@3e9
    .line 370
    .local v12, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3eb
    invoke-virtual {v0, v5, v12}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    #@3ee
    move-result v29

    #@3ef
    .line 371
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f2
    .line 372
    if-eqz v29, :cond_19

    #@3f4
    const/4 v4, 0x1

    #@3f5
    :goto_19
    move-object/from16 v0, p3

    #@3f7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3fa
    .line 373
    const/4 v4, 0x1

    #@3fb
    return v4

    #@3fc
    .line 366
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v29    # "_result":Z
    :cond_18
    const/4 v5, 0x0

    #@3fd
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_18

    #@3fe
    .line 372
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v12    # "_arg1":Ljava/lang/String;
    .restart local v29    # "_result":Z
    :cond_19
    const/4 v4, 0x0

    #@3ff
    goto :goto_19

    #@400
    .line 377
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v29    # "_result":Z
    :sswitch_1e
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@403
    move-object/from16 v0, p2

    #@405
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@408
    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40b
    move-result v4

    #@40c
    if-eqz v4, :cond_1a

    #@40e
    .line 380
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@410
    move-object/from16 v0, p2

    #@412
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@415
    move-result-object v5

    #@416
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@418
    .line 385
    :goto_1a
    move-object/from16 v0, p0

    #@41a
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    #@41d
    move-result v25

    #@41e
    .line 386
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@421
    .line 387
    move-object/from16 v0, p3

    #@423
    move/from16 v1, v25

    #@425
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@428
    .line 388
    const/4 v4, 0x1

    #@429
    return v4

    #@42a
    .line 383
    .end local v25    # "_result":I
    :cond_1a
    const/4 v5, 0x0

    #@42b
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1a

    #@42c
    .line 392
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1f
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@42f
    move-object/from16 v0, p2

    #@431
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@434
    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@437
    move-result v4

    #@438
    if-eqz v4, :cond_1b

    #@43a
    .line 395
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@43c
    move-object/from16 v0, p2

    #@43e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@441
    move-result-object v5

    #@442
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@444
    .line 400
    :goto_1b
    move-object/from16 v0, p0

    #@446
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    #@449
    move-result-object v31

    #@44a
    .line 401
    .restart local v31    # "_result":[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@44d
    .line 402
    const/4 v4, 0x1

    #@44e
    move-object/from16 v0, p3

    #@450
    move-object/from16 v1, v31

    #@452
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@455
    .line 403
    const/4 v4, 0x1

    #@456
    return v4

    #@457
    .line 398
    .end local v31    # "_result":[Landroid/os/ParcelUuid;
    :cond_1b
    const/4 v5, 0x0

    #@458
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1b

    #@459
    .line 407
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_20
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@45c
    move-object/from16 v0, p2

    #@45e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@461
    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@464
    move-result v4

    #@465
    if-eqz v4, :cond_1c

    #@467
    .line 410
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@469
    move-object/from16 v0, p2

    #@46b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@46e
    move-result-object v5

    #@46f
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@471
    .line 415
    :goto_1c
    move-object/from16 v0, p0

    #@473
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z

    #@476
    move-result v29

    #@477
    .line 416
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@47a
    .line 417
    if-eqz v29, :cond_1d

    #@47c
    const/4 v4, 0x1

    #@47d
    :goto_1d
    move-object/from16 v0, p3

    #@47f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@482
    .line 418
    const/4 v4, 0x1

    #@483
    return v4

    #@484
    .line 413
    .end local v29    # "_result":Z
    :cond_1c
    const/4 v5, 0x0

    #@485
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1c

    #@486
    .line 417
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v29    # "_result":Z
    :cond_1d
    const/4 v4, 0x0

    #@487
    goto :goto_1d

    #@488
    .line 422
    .end local v29    # "_result":Z
    :sswitch_21
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@48b
    move-object/from16 v0, p2

    #@48d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@490
    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@493
    move-result v4

    #@494
    if-eqz v4, :cond_1e

    #@496
    .line 425
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@498
    move-object/from16 v0, p2

    #@49a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@49d
    move-result-object v5

    #@49e
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@4a0
    .line 431
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a3
    move-result v4

    #@4a4
    if-eqz v4, :cond_1f

    #@4a6
    .line 432
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4a8
    move-object/from16 v0, p2

    #@4aa
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4ad
    move-result-object v20

    #@4ae
    check-cast v20, Landroid/os/ParcelUuid;

    #@4b0
    .line 437
    :goto_1f
    move-object/from16 v0, p0

    #@4b2
    move-object/from16 v1, v20

    #@4b4
    invoke-virtual {v0, v5, v1}, Landroid/bluetooth/IBluetooth$Stub;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z

    #@4b7
    move-result v29

    #@4b8
    .line 438
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4bb
    .line 439
    if-eqz v29, :cond_20

    #@4bd
    const/4 v4, 0x1

    #@4be
    :goto_20
    move-object/from16 v0, p3

    #@4c0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4c3
    .line 440
    const/4 v4, 0x1

    #@4c4
    return v4

    #@4c5
    .line 428
    .end local v29    # "_result":Z
    :cond_1e
    const/4 v5, 0x0

    #@4c6
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1e

    #@4c7
    .line 435
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_1f
    const/16 v20, 0x0

    #@4c9
    .local v20, "_arg1":Landroid/os/ParcelUuid;
    goto :goto_1f

    #@4ca
    .line 439
    .end local v20    # "_arg1":Landroid/os/ParcelUuid;
    .restart local v29    # "_result":Z
    :cond_20
    const/4 v4, 0x0

    #@4cb
    goto :goto_20

    #@4cc
    .line 444
    .end local v29    # "_result":Z
    :sswitch_22
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@4cf
    move-object/from16 v0, p2

    #@4d1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d4
    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d7
    move-result v4

    #@4d8
    if-eqz v4, :cond_21

    #@4da
    .line 447
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
    .line 453
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4e7
    move-result v4

    #@4e8
    if-eqz v4, :cond_22

    #@4ea
    const/16 v21, 0x1

    #@4ec
    .line 455
    .local v21, "_arg1":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4ef
    move-result v22

    #@4f0
    .line 457
    .local v22, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@4f3
    move-result-object v24

    #@4f4
    .line 458
    .local v24, "_arg3":[B
    move-object/from16 v0, p0

    #@4f6
    move/from16 v1, v21

    #@4f8
    move/from16 v2, v22

    #@4fa
    move-object/from16 v3, v24

    #@4fc
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    #@4ff
    move-result v29

    #@500
    .line 459
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@503
    .line 460
    if-eqz v29, :cond_23

    #@505
    const/4 v4, 0x1

    #@506
    :goto_23
    move-object/from16 v0, p3

    #@508
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@50b
    .line 461
    const/4 v4, 0x1

    #@50c
    return v4

    #@50d
    .line 450
    .end local v21    # "_arg1":Z
    .end local v22    # "_arg2":I
    .end local v24    # "_arg3":[B
    .end local v29    # "_result":Z
    :cond_21
    const/4 v5, 0x0

    #@50e
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_21

    #@50f
    .line 453
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_22
    const/16 v21, 0x0

    #@511
    .restart local v21    # "_arg1":Z
    goto :goto_22

    #@512
    .line 460
    .restart local v22    # "_arg2":I
    .restart local v24    # "_arg3":[B
    .restart local v29    # "_result":Z
    :cond_23
    const/4 v4, 0x0

    #@513
    goto :goto_23

    #@514
    .line 465
    .end local v21    # "_arg1":Z
    .end local v22    # "_arg2":I
    .end local v24    # "_arg3":[B
    .end local v29    # "_result":Z
    :sswitch_23
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@517
    move-object/from16 v0, p2

    #@519
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@51c
    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51f
    move-result v4

    #@520
    if-eqz v4, :cond_24

    #@522
    .line 468
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
    .line 474
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@52f
    move-result v4

    #@530
    if-eqz v4, :cond_25

    #@532
    const/16 v21, 0x1

    #@534
    .line 476
    .restart local v21    # "_arg1":Z
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@537
    move-result v22

    #@538
    .line 478
    .restart local v22    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@53b
    move-result-object v24

    #@53c
    .line 479
    .restart local v24    # "_arg3":[B
    move-object/from16 v0, p0

    #@53e
    move/from16 v1, v21

    #@540
    move/from16 v2, v22

    #@542
    move-object/from16 v3, v24

    #@544
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    #@547
    move-result v29

    #@548
    .line 480
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54b
    .line 481
    if-eqz v29, :cond_26

    #@54d
    const/4 v4, 0x1

    #@54e
    :goto_26
    move-object/from16 v0, p3

    #@550
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@553
    .line 482
    const/4 v4, 0x1

    #@554
    return v4

    #@555
    .line 471
    .end local v21    # "_arg1":Z
    .end local v22    # "_arg2":I
    .end local v24    # "_arg3":[B
    .end local v29    # "_result":Z
    :cond_24
    const/4 v5, 0x0

    #@556
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_24

    #@557
    .line 474
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_25
    const/16 v21, 0x0

    #@559
    .restart local v21    # "_arg1":Z
    goto :goto_25

    #@55a
    .line 481
    .restart local v22    # "_arg2":I
    .restart local v24    # "_arg3":[B
    .restart local v29    # "_result":Z
    :cond_26
    const/4 v4, 0x0

    #@55b
    goto :goto_26

    #@55c
    .line 486
    .end local v21    # "_arg1":Z
    .end local v22    # "_arg2":I
    .end local v24    # "_arg3":[B
    .end local v29    # "_result":Z
    :sswitch_24
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@55f
    move-object/from16 v0, p2

    #@561
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@564
    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@567
    move-result v4

    #@568
    if-eqz v4, :cond_27

    #@56a
    .line 489
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@56c
    move-object/from16 v0, p2

    #@56e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@571
    move-result-object v5

    #@572
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@574
    .line 495
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@577
    move-result v4

    #@578
    if-eqz v4, :cond_28

    #@57a
    const/16 v21, 0x1

    #@57c
    .line 496
    .local v21, "_arg1":Z
    :goto_28
    move-object/from16 v0, p0

    #@57e
    move/from16 v1, v21

    #@580
    invoke-virtual {v0, v5, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z

    #@583
    move-result v29

    #@584
    .line 497
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@587
    .line 498
    if-eqz v29, :cond_29

    #@589
    const/4 v4, 0x1

    #@58a
    :goto_29
    move-object/from16 v0, p3

    #@58c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@58f
    .line 499
    const/4 v4, 0x1

    #@590
    return v4

    #@591
    .line 492
    .end local v21    # "_arg1":Z
    .end local v29    # "_result":Z
    :cond_27
    const/4 v5, 0x0

    #@592
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_27

    #@593
    .line 495
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_28
    const/16 v21, 0x0

    #@595
    goto :goto_28

    #@596
    .line 498
    .restart local v21    # "_arg1":Z
    .restart local v29    # "_result":Z
    :cond_29
    const/4 v4, 0x0

    #@597
    goto :goto_29

    #@598
    .line 503
    .end local v21    # "_arg1":Z
    .end local v29    # "_result":Z
    :sswitch_25
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@59b
    move-object/from16 v0, p2

    #@59d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a0
    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a3
    move-result v4

    #@5a4
    if-eqz v4, :cond_2a

    #@5a6
    .line 506
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5a8
    move-object/from16 v0, p2

    #@5aa
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5ad
    move-result-object v5

    #@5ae
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@5b0
    .line 511
    :goto_2a
    move-object/from16 v0, p0

    #@5b2
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    #@5b5
    move-result v25

    #@5b6
    .line 512
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b9
    .line 513
    move-object/from16 v0, p3

    #@5bb
    move/from16 v1, v25

    #@5bd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5c0
    .line 514
    const/4 v4, 0x1

    #@5c1
    return v4

    #@5c2
    .line 509
    .end local v25    # "_result":I
    :cond_2a
    const/4 v5, 0x0

    #@5c3
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2a

    #@5c4
    .line 518
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_26
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@5c7
    move-object/from16 v0, p2

    #@5c9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5cc
    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5cf
    move-result v4

    #@5d0
    if-eqz v4, :cond_2b

    #@5d2
    .line 521
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5d4
    move-object/from16 v0, p2

    #@5d6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5d9
    move-result-object v5

    #@5da
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@5dc
    .line 527
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5df
    move-result v6

    #@5e0
    .line 528
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@5e2
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    #@5e5
    move-result v29

    #@5e6
    .line 529
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e9
    .line 530
    if-eqz v29, :cond_2c

    #@5eb
    const/4 v4, 0x1

    #@5ec
    :goto_2c
    move-object/from16 v0, p3

    #@5ee
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5f1
    .line 531
    const/4 v4, 0x1

    #@5f2
    return v4

    #@5f3
    .line 524
    .end local v6    # "_arg1":I
    .end local v29    # "_result":Z
    :cond_2b
    const/4 v5, 0x0

    #@5f4
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2b

    #@5f5
    .line 530
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v29    # "_result":Z
    :cond_2c
    const/4 v4, 0x0

    #@5f6
    goto :goto_2c

    #@5f7
    .line 535
    .end local v6    # "_arg1":I
    .end local v29    # "_result":Z
    :sswitch_27
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@5fa
    move-object/from16 v0, p2

    #@5fc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5ff
    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@602
    move-result v4

    #@603
    if-eqz v4, :cond_2d

    #@605
    .line 538
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@607
    move-object/from16 v0, p2

    #@609
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@60c
    move-result-object v5

    #@60d
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@60f
    .line 543
    :goto_2d
    move-object/from16 v0, p0

    #@611
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    #@614
    move-result v25

    #@615
    .line 544
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@618
    .line 545
    move-object/from16 v0, p3

    #@61a
    move/from16 v1, v25

    #@61c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@61f
    .line 546
    const/4 v4, 0x1

    #@620
    return v4

    #@621
    .line 541
    .end local v25    # "_result":I
    :cond_2d
    const/4 v5, 0x0

    #@622
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2d

    #@623
    .line 550
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_28
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@626
    move-object/from16 v0, p2

    #@628
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62b
    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@62e
    move-result v4

    #@62f
    if-eqz v4, :cond_2e

    #@631
    .line 553
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@633
    move-object/from16 v0, p2

    #@635
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@638
    move-result-object v5

    #@639
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@63b
    .line 559
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63e
    move-result v6

    #@63f
    .line 560
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@641
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    #@644
    move-result v29

    #@645
    .line 561
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@648
    .line 562
    if-eqz v29, :cond_2f

    #@64a
    const/4 v4, 0x1

    #@64b
    :goto_2f
    move-object/from16 v0, p3

    #@64d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@650
    .line 563
    const/4 v4, 0x1

    #@651
    return v4

    #@652
    .line 556
    .end local v6    # "_arg1":I
    .end local v29    # "_result":Z
    :cond_2e
    const/4 v5, 0x0

    #@653
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2e

    #@654
    .line 562
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v29    # "_result":Z
    :cond_2f
    const/4 v4, 0x0

    #@655
    goto :goto_2f

    #@656
    .line 567
    .end local v6    # "_arg1":I
    .end local v29    # "_result":Z
    :sswitch_29
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@659
    move-object/from16 v0, p2

    #@65b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@65e
    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@661
    move-result v4

    #@662
    if-eqz v4, :cond_30

    #@664
    .line 570
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@666
    move-object/from16 v0, p2

    #@668
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@66b
    move-result-object v5

    #@66c
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@66e
    .line 575
    :goto_30
    move-object/from16 v0, p0

    #@670
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    #@673
    move-result v25

    #@674
    .line 576
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@677
    .line 577
    move-object/from16 v0, p3

    #@679
    move/from16 v1, v25

    #@67b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@67e
    .line 578
    const/4 v4, 0x1

    #@67f
    return v4

    #@680
    .line 573
    .end local v25    # "_result":I
    :cond_30
    const/4 v5, 0x0

    #@681
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_30

    #@682
    .line 582
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2a
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@685
    move-object/from16 v0, p2

    #@687
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68a
    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@68d
    move-result v4

    #@68e
    if-eqz v4, :cond_31

    #@690
    .line 585
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@692
    move-object/from16 v0, p2

    #@694
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@697
    move-result-object v5

    #@698
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@69a
    .line 591
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@69d
    move-result v6

    #@69e
    .line 592
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@6a0
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    #@6a3
    move-result v29

    #@6a4
    .line 593
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a7
    .line 594
    if-eqz v29, :cond_32

    #@6a9
    const/4 v4, 0x1

    #@6aa
    :goto_32
    move-object/from16 v0, p3

    #@6ac
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6af
    .line 595
    const/4 v4, 0x1

    #@6b0
    return v4

    #@6b1
    .line 588
    .end local v6    # "_arg1":I
    .end local v29    # "_result":Z
    :cond_31
    const/4 v5, 0x0

    #@6b2
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_31

    #@6b3
    .line 594
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v29    # "_result":Z
    :cond_32
    const/4 v4, 0x0

    #@6b4
    goto :goto_32

    #@6b5
    .line 599
    .end local v6    # "_arg1":I
    .end local v29    # "_result":Z
    :sswitch_2b
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@6b8
    move-object/from16 v0, p2

    #@6ba
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6bd
    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6c0
    move-result v4

    #@6c1
    if-eqz v4, :cond_33

    #@6c3
    .line 602
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6c5
    move-object/from16 v0, p2

    #@6c7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6ca
    move-result-object v5

    #@6cb
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@6cd
    .line 608
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d0
    move-result v6

    #@6d1
    .line 610
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d4
    move-result v22

    #@6d5
    .line 612
    .restart local v22    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d8
    move-result v8

    #@6d9
    .line 613
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    #@6db
    move/from16 v1, v22

    #@6dd
    invoke-virtual {v0, v5, v6, v1, v8}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    #@6e0
    .line 614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e3
    .line 615
    const/4 v4, 0x1

    #@6e4
    return v4

    #@6e5
    .line 605
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v22    # "_arg2":I
    :cond_33
    const/4 v5, 0x0

    #@6e6
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_33

    #@6e7
    .line 619
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2c
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@6ea
    move-object/from16 v0, p2

    #@6ec
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ef
    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6f2
    move-result-object v4

    #@6f3
    invoke-static {v4}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    #@6f6
    move-result-object v16

    #@6f7
    .line 622
    .local v16, "_arg0":Landroid/bluetooth/IBluetoothCallback;
    move-object/from16 v0, p0

    #@6f9
    move-object/from16 v1, v16

    #@6fb
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V

    #@6fe
    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@701
    .line 624
    const/4 v4, 0x1

    #@702
    return v4

    #@703
    .line 628
    .end local v16    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    :sswitch_2d
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@706
    move-object/from16 v0, p2

    #@708
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70b
    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@70e
    move-result-object v4

    #@70f
    invoke-static {v4}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    #@712
    move-result-object v16

    #@713
    .line 631
    .restart local v16    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    move-object/from16 v0, p0

    #@715
    move-object/from16 v1, v16

    #@717
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V

    #@71a
    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@71d
    .line 633
    const/4 v4, 0x1

    #@71e
    return v4

    #@71f
    .line 637
    .end local v16    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    :sswitch_2e
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@722
    move-object/from16 v0, p2

    #@724
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@727
    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@72a
    move-result v4

    #@72b
    if-eqz v4, :cond_34

    #@72d
    .line 640
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@72f
    move-object/from16 v0, p2

    #@731
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@734
    move-result-object v5

    #@735
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    #@737
    .line 646
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@73a
    move-result v6

    #@73b
    .line 648
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@73e
    move-result v4

    #@73f
    if-eqz v4, :cond_35

    #@741
    .line 649
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@743
    move-object/from16 v0, p2

    #@745
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@748
    move-result-object v7

    #@749
    check-cast v7, Landroid/os/ParcelUuid;

    #@74b
    .line 655
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@74e
    move-result v8

    #@74f
    .line 657
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@752
    move-result v9

    #@753
    .local v9, "_arg4":I
    move-object/from16 v4, p0

    #@755
    .line 658
    invoke-virtual/range {v4 .. v9}, Landroid/bluetooth/IBluetooth$Stub;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    #@758
    move-result-object v27

    #@759
    .line 659
    .local v27, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@75c
    .line 660
    if-eqz v27, :cond_36

    #@75e
    .line 661
    const/4 v4, 0x1

    #@75f
    move-object/from16 v0, p3

    #@761
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@764
    .line 662
    const/4 v4, 0x1

    #@765
    move-object/from16 v0, v27

    #@767
    move-object/from16 v1, p3

    #@769
    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@76c
    .line 667
    :goto_36
    const/4 v4, 0x1

    #@76d
    return v4

    #@76e
    .line 643
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v27    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_34
    const/4 v5, 0x0

    #@76f
    .restart local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_34

    #@770
    .line 652
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    :cond_35
    const/4 v7, 0x0

    #@771
    .local v7, "_arg2":Landroid/os/ParcelUuid;
    goto :goto_35

    #@772
    .line 665
    .end local v7    # "_arg2":Landroid/os/ParcelUuid;
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":I
    .restart local v27    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_36
    const/4 v4, 0x0

    #@773
    move-object/from16 v0, p3

    #@775
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@778
    goto :goto_36

    #@779
    .line 671
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v27    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2f
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@77c
    move-object/from16 v0, p2

    #@77e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@781
    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@784
    move-result v11

    #@785
    .line 675
    .restart local v11    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@788
    move-result-object v12

    #@789
    .line 677
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@78c
    move-result v4

    #@78d
    if-eqz v4, :cond_37

    #@78f
    .line 678
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@791
    move-object/from16 v0, p2

    #@793
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@796
    move-result-object v7

    #@797
    check-cast v7, Landroid/os/ParcelUuid;

    #@799
    .line 684
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@79c
    move-result v8

    #@79d
    .line 686
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7a0
    move-result v9

    #@7a1
    .restart local v9    # "_arg4":I
    move-object/from16 v10, p0

    #@7a3
    move-object v13, v7

    #@7a4
    move v14, v8

    #@7a5
    move v15, v9

    #@7a6
    .line 687
    invoke-virtual/range {v10 .. v15}, Landroid/bluetooth/IBluetooth$Stub;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    #@7a9
    move-result-object v27

    #@7aa
    .line 688
    .restart local v27    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7ad
    .line 689
    if-eqz v27, :cond_38

    #@7af
    .line 690
    const/4 v4, 0x1

    #@7b0
    move-object/from16 v0, p3

    #@7b2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7b5
    .line 691
    const/4 v4, 0x1

    #@7b6
    move-object/from16 v0, v27

    #@7b8
    move-object/from16 v1, p3

    #@7ba
    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@7bd
    .line 696
    :goto_38
    const/4 v4, 0x1

    #@7be
    return v4

    #@7bf
    .line 681
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v27    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_37
    const/4 v7, 0x0

    #@7c0
    .restart local v7    # "_arg2":Landroid/os/ParcelUuid;
    goto :goto_37

    #@7c1
    .line 694
    .end local v7    # "_arg2":Landroid/os/ParcelUuid;
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":I
    .restart local v27    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_38
    const/4 v4, 0x0

    #@7c2
    move-object/from16 v0, p3

    #@7c4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7c7
    goto :goto_38

    #@7c8
    .line 700
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v11    # "_arg0":I
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_30
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@7cb
    move-object/from16 v0, p2

    #@7cd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7d0
    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7d3
    move-result v4

    #@7d4
    if-eqz v4, :cond_39

    #@7d6
    const/16 v19, 0x1

    #@7d8
    .line 703
    .local v19, "_arg0":Z
    :goto_39
    move-object/from16 v0, p0

    #@7da
    move/from16 v1, v19

    #@7dc
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->configHciSnoopLog(Z)Z

    #@7df
    move-result v29

    #@7e0
    .line 704
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e3
    .line 705
    if-eqz v29, :cond_3a

    #@7e5
    const/4 v4, 0x1

    #@7e6
    :goto_3a
    move-object/from16 v0, p3

    #@7e8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7eb
    .line 706
    const/4 v4, 0x1

    #@7ec
    return v4

    #@7ed
    .line 702
    .end local v19    # "_arg0":Z
    .end local v29    # "_result":Z
    :cond_39
    const/16 v19, 0x0

    #@7ef
    goto :goto_39

    #@7f0
    .line 705
    .restart local v19    # "_arg0":Z
    .restart local v29    # "_result":Z
    :cond_3a
    const/4 v4, 0x0

    #@7f1
    goto :goto_3a

    #@7f2
    .line 710
    .end local v19    # "_arg0":Z
    .end local v29    # "_result":Z
    :sswitch_31
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@7f5
    move-object/from16 v0, p2

    #@7f7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7fa
    .line 711
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->factoryReset()Z

    #@7fd
    move-result v29

    #@7fe
    .line 712
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@801
    .line 713
    if-eqz v29, :cond_3b

    #@803
    const/4 v4, 0x1

    #@804
    :goto_3b
    move-object/from16 v0, p3

    #@806
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@809
    .line 714
    const/4 v4, 0x1

    #@80a
    return v4

    #@80b
    .line 713
    :cond_3b
    const/4 v4, 0x0

    #@80c
    goto :goto_3b

    #@80d
    .line 718
    .end local v29    # "_result":Z
    :sswitch_32
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@810
    move-object/from16 v0, p2

    #@812
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@815
    .line 719
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isMultiAdvertisementSupported()Z

    #@818
    move-result v29

    #@819
    .line 720
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@81c
    .line 721
    if-eqz v29, :cond_3c

    #@81e
    const/4 v4, 0x1

    #@81f
    :goto_3c
    move-object/from16 v0, p3

    #@821
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@824
    .line 722
    const/4 v4, 0x1

    #@825
    return v4

    #@826
    .line 721
    :cond_3c
    const/4 v4, 0x0

    #@827
    goto :goto_3c

    #@828
    .line 726
    .end local v29    # "_result":Z
    :sswitch_33
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@82b
    move-object/from16 v0, p2

    #@82d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@830
    .line 727
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isPeripheralModeSupported()Z

    #@833
    move-result v29

    #@834
    .line 728
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@837
    .line 729
    if-eqz v29, :cond_3d

    #@839
    const/4 v4, 0x1

    #@83a
    :goto_3d
    move-object/from16 v0, p3

    #@83c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@83f
    .line 730
    const/4 v4, 0x1

    #@840
    return v4

    #@841
    .line 729
    :cond_3d
    const/4 v4, 0x0

    #@842
    goto :goto_3d

    #@843
    .line 734
    .end local v29    # "_result":Z
    :sswitch_34
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@846
    move-object/from16 v0, p2

    #@848
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@84b
    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedFilteringSupported()Z

    #@84e
    move-result v29

    #@84f
    .line 736
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@852
    .line 737
    if-eqz v29, :cond_3e

    #@854
    const/4 v4, 0x1

    #@855
    :goto_3e
    move-object/from16 v0, p3

    #@857
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@85a
    .line 738
    const/4 v4, 0x1

    #@85b
    return v4

    #@85c
    .line 737
    :cond_3e
    const/4 v4, 0x0

    #@85d
    goto :goto_3e

    #@85e
    .line 742
    .end local v29    # "_result":Z
    :sswitch_35
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@861
    move-object/from16 v0, p2

    #@863
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@866
    .line 743
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedScanBatchingSupported()Z

    #@869
    move-result v29

    #@86a
    .line 744
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@86d
    .line 745
    if-eqz v29, :cond_3f

    #@86f
    const/4 v4, 0x1

    #@870
    :goto_3f
    move-object/from16 v0, p3

    #@872
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@875
    .line 746
    const/4 v4, 0x1

    #@876
    return v4

    #@877
    .line 745
    :cond_3f
    const/4 v4, 0x0

    #@878
    goto :goto_3f

    #@879
    .line 750
    .end local v29    # "_result":Z
    :sswitch_36
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@87c
    move-object/from16 v0, p2

    #@87e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@881
    .line 751
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isActivityAndEnergyReportingSupported()Z

    #@884
    move-result v29

    #@885
    .line 752
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@888
    .line 753
    if-eqz v29, :cond_40

    #@88a
    const/4 v4, 0x1

    #@88b
    :goto_40
    move-object/from16 v0, p3

    #@88d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@890
    .line 754
    const/4 v4, 0x1

    #@891
    return v4

    #@892
    .line 753
    :cond_40
    const/4 v4, 0x0

    #@893
    goto :goto_40

    #@894
    .line 758
    .end local v29    # "_result":Z
    :sswitch_37
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@897
    move-object/from16 v0, p2

    #@899
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@89c
    .line 759
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    #@89f
    move-result-object v26

    #@8a0
    .line 760
    .local v26, "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a3
    .line 761
    if-eqz v26, :cond_41

    #@8a5
    .line 762
    const/4 v4, 0x1

    #@8a6
    move-object/from16 v0, p3

    #@8a8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8ab
    .line 763
    const/4 v4, 0x1

    #@8ac
    move-object/from16 v0, v26

    #@8ae
    move-object/from16 v1, p3

    #@8b0
    invoke-virtual {v0, v1, v4}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@8b3
    .line 768
    :goto_41
    const/4 v4, 0x1

    #@8b4
    return v4

    #@8b5
    .line 766
    :cond_41
    const/4 v4, 0x0

    #@8b6
    move-object/from16 v0, p3

    #@8b8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8bb
    goto :goto_41

    #@8bc
    .line 772
    .end local v26    # "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :sswitch_38
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@8bf
    move-object/from16 v0, p2

    #@8c1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c4
    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8c7
    move-result v4

    #@8c8
    if-eqz v4, :cond_42

    #@8ca
    .line 775
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8cc
    move-object/from16 v0, p2

    #@8ce
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8d1
    move-result-object v17

    #@8d2
    check-cast v17, Landroid/os/ResultReceiver;

    #@8d4
    .line 780
    :goto_42
    move-object/from16 v0, p0

    #@8d6
    move-object/from16 v1, v17

    #@8d8
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    #@8db
    .line 781
    const/4 v4, 0x1

    #@8dc
    return v4

    #@8dd
    .line 778
    :cond_42
    const/16 v17, 0x0

    #@8df
    .local v17, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_42

    #@8e0
    .line 785
    .end local v17    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_39
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@8e3
    move-object/from16 v0, p2

    #@8e5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e8
    .line 786
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->onLeServiceUp()V

    #@8eb
    .line 787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8ee
    .line 788
    const/4 v4, 0x1

    #@8ef
    return v4

    #@8f0
    .line 792
    :sswitch_3a
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    #@8f3
    move-object/from16 v0, p2

    #@8f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8f8
    .line 793
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->onBrEdrDown()V

    #@8fb
    .line 794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8fe
    .line 795
    const/4 v4, 0x1

    #@8ff
    return v4

    #@900
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

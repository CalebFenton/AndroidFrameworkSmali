.class public abstract Landroid/bluetooth/IBluetoothManager$Stub;
.super Landroid/os/Binder;
.source "IBluetoothManager.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothManager"

.field static final TRANSACTION_bindBluetoothProfileService:I = 0xa

.field static final TRANSACTION_disable:I = 0x8

.field static final TRANSACTION_enable:I = 0x6

.field static final TRANSACTION_enableNoAutoConnect:I = 0x7

.field static final TRANSACTION_getAddress:I = 0xc

.field static final TRANSACTION_getBluetoothGatt:I = 0x9

.field static final TRANSACTION_getName:I = 0xd

.field static final TRANSACTION_isBleAppPresent:I = 0x10

.field static final TRANSACTION_isBleScanAlwaysAvailable:I = 0xe

.field static final TRANSACTION_isEnabled:I = 0x5

.field static final TRANSACTION_registerAdapter:I = 0x1

.field static final TRANSACTION_registerStateChangeCallback:I = 0x3

.field static final TRANSACTION_unbindBluetoothProfileService:I = 0xb

.field static final TRANSACTION_unregisterAdapter:I = 0x2

.field static final TRANSACTION_unregisterStateChangeCallback:I = 0x4

.field static final TRANSACTION_updateBleAppCount:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 14
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
    .line 197
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v13

    #@7
    return v13

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v13, 0x1

    #@11
    return v13

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v13

    #@1e
    invoke-static {v13}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManagerCallback;

    #@21
    move-result-object v2

    #@22
    .line 55
    .local v2, "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    #@25
    move-result-object v9

    #@26
    .line 56
    .local v9, "_result":Landroid/bluetooth/IBluetooth;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29
    .line 57
    if-eqz v9, :cond_0

    #@2b
    invoke-interface {v9}, Landroid/bluetooth/IBluetooth;->asBinder()Landroid/os/IBinder;

    #@2e
    move-result-object v13

    #@2f
    :goto_0
    move-object/from16 v0, p3

    #@31
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@34
    .line 58
    const/4 v13, 0x1

    #@35
    return v13

    #@36
    .line 57
    :cond_0
    const/4 v13, 0x0

    #@37
    goto :goto_0

    #@38
    .line 62
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v9    # "_result":Landroid/bluetooth/IBluetooth;
    :sswitch_2
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@3b
    move-object/from16 v0, p2

    #@3d
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40
    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@43
    move-result-object v13

    #@44
    invoke-static {v13}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManagerCallback;

    #@47
    move-result-object v2

    #@48
    .line 65
    .restart local v2    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V

    #@4b
    .line 66
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e
    .line 67
    const/4 v13, 0x1

    #@4f
    return v13

    #@50
    .line 71
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    :sswitch_3
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@53
    move-object/from16 v0, p2

    #@55
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@58
    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5b
    move-result-object v13

    #@5c
    invoke-static {v13}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@5f
    move-result-object v3

    #@60
    .line 74
    .local v3, "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    invoke-virtual {p0, v3}, Landroid/bluetooth/IBluetoothManager$Stub;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    #@63
    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@66
    .line 76
    const/4 v13, 0x1

    #@67
    return v13

    #@68
    .line 80
    .end local v3    # "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_4
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@6b
    move-object/from16 v0, p2

    #@6d
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70
    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@73
    move-result-object v13

    #@74
    invoke-static {v13}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@77
    move-result-object v3

    #@78
    .line 83
    .restart local v3    # "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    invoke-virtual {p0, v3}, Landroid/bluetooth/IBluetoothManager$Stub;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    #@7b
    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e
    .line 85
    const/4 v13, 0x1

    #@7f
    return v13

    #@80
    .line 89
    .end local v3    # "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_5
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@83
    move-object/from16 v0, p2

    #@85
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@88
    .line 90
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isEnabled()Z

    #@8b
    move-result v12

    #@8c
    .line 91
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8f
    .line 92
    if-eqz v12, :cond_1

    #@91
    const/4 v13, 0x1

    #@92
    :goto_1
    move-object/from16 v0, p3

    #@94
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@97
    .line 93
    const/4 v13, 0x1

    #@98
    return v13

    #@99
    .line 92
    :cond_1
    const/4 v13, 0x0

    #@9a
    goto :goto_1

    #@9b
    .line 97
    .end local v12    # "_result":Z
    :sswitch_6
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@9e
    move-object/from16 v0, p2

    #@a0
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a3
    .line 98
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->enable()Z

    #@a6
    move-result v12

    #@a7
    .line 99
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@aa
    .line 100
    if-eqz v12, :cond_2

    #@ac
    const/4 v13, 0x1

    #@ad
    :goto_2
    move-object/from16 v0, p3

    #@af
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@b2
    .line 101
    const/4 v13, 0x1

    #@b3
    return v13

    #@b4
    .line 100
    :cond_2
    const/4 v13, 0x0

    #@b5
    goto :goto_2

    #@b6
    .line 105
    .end local v12    # "_result":Z
    :sswitch_7
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@b9
    move-object/from16 v0, p2

    #@bb
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@be
    .line 106
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->enableNoAutoConnect()Z

    #@c1
    move-result v12

    #@c2
    .line 107
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c5
    .line 108
    if-eqz v12, :cond_3

    #@c7
    const/4 v13, 0x1

    #@c8
    :goto_3
    move-object/from16 v0, p3

    #@ca
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@cd
    .line 109
    const/4 v13, 0x1

    #@ce
    return v13

    #@cf
    .line 108
    :cond_3
    const/4 v13, 0x0

    #@d0
    goto :goto_3

    #@d1
    .line 113
    .end local v12    # "_result":Z
    :sswitch_8
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@d4
    move-object/from16 v0, p2

    #@d6
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d9
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dc
    move-result v13

    #@dd
    if-eqz v13, :cond_4

    #@df
    const/4 v5, 0x1

    #@e0
    .line 116
    .local v5, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v5}, Landroid/bluetooth/IBluetoothManager$Stub;->disable(Z)Z

    #@e3
    move-result v12

    #@e4
    .line 117
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e7
    .line 118
    if-eqz v12, :cond_5

    #@e9
    const/4 v13, 0x1

    #@ea
    :goto_5
    move-object/from16 v0, p3

    #@ec
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@ef
    .line 119
    const/4 v13, 0x1

    #@f0
    return v13

    #@f1
    .line 115
    .end local v5    # "_arg0":Z
    .end local v12    # "_result":Z
    :cond_4
    const/4 v5, 0x0

    #@f2
    .restart local v5    # "_arg0":Z
    goto :goto_4

    #@f3
    .line 118
    .restart local v12    # "_result":Z
    :cond_5
    const/4 v13, 0x0

    #@f4
    goto :goto_5

    #@f5
    .line 123
    .end local v5    # "_arg0":Z
    .end local v12    # "_result":Z
    :sswitch_9
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@f8
    move-object/from16 v0, p2

    #@fa
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fd
    .line 124
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    #@100
    move-result-object v10

    #@101
    .line 125
    .local v10, "_result":Landroid/bluetooth/IBluetoothGatt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@104
    .line 126
    if-eqz v10, :cond_6

    #@106
    invoke-interface {v10}, Landroid/bluetooth/IBluetoothGatt;->asBinder()Landroid/os/IBinder;

    #@109
    move-result-object v13

    #@10a
    :goto_6
    move-object/from16 v0, p3

    #@10c
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@10f
    .line 127
    const/4 v13, 0x1

    #@110
    return v13

    #@111
    .line 126
    :cond_6
    const/4 v13, 0x0

    #@112
    goto :goto_6

    #@113
    .line 131
    .end local v10    # "_result":Landroid/bluetooth/IBluetoothGatt;
    :sswitch_a
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@116
    move-object/from16 v0, p2

    #@118
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11b
    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11e
    move-result v1

    #@11f
    .line 135
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@122
    move-result-object v13

    #@123
    invoke-static {v13}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@126
    move-result-object v6

    #@127
    .line 136
    .local v6, "_arg1":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    invoke-virtual {p0, v1, v6}, Landroid/bluetooth/IBluetoothManager$Stub;->bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z

    #@12a
    move-result v12

    #@12b
    .line 137
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12e
    .line 138
    if-eqz v12, :cond_7

    #@130
    const/4 v13, 0x1

    #@131
    :goto_7
    move-object/from16 v0, p3

    #@133
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@136
    .line 139
    const/4 v13, 0x1

    #@137
    return v13

    #@138
    .line 138
    :cond_7
    const/4 v13, 0x0

    #@139
    goto :goto_7

    #@13a
    .line 143
    .end local v1    # "_arg0":I
    .end local v6    # "_arg1":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    .end local v12    # "_result":Z
    :sswitch_b
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@13d
    move-object/from16 v0, p2

    #@13f
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@142
    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@145
    move-result v1

    #@146
    .line 147
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@149
    move-result-object v13

    #@14a
    invoke-static {v13}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@14d
    move-result-object v6

    #@14e
    .line 148
    .restart local v6    # "_arg1":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    invoke-virtual {p0, v1, v6}, Landroid/bluetooth/IBluetoothManager$Stub;->unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V

    #@151
    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@154
    .line 150
    const/4 v13, 0x1

    #@155
    return v13

    #@156
    .line 154
    .end local v1    # "_arg0":I
    .end local v6    # "_arg1":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    :sswitch_c
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@159
    move-object/from16 v0, p2

    #@15b
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15e
    .line 155
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getAddress()Ljava/lang/String;

    #@161
    move-result-object v11

    #@162
    .line 156
    .local v11, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@165
    .line 157
    move-object/from16 v0, p3

    #@167
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16a
    .line 158
    const/4 v13, 0x1

    #@16b
    return v13

    #@16c
    .line 162
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@16f
    move-object/from16 v0, p2

    #@171
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@174
    .line 163
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getName()Ljava/lang/String;

    #@177
    move-result-object v11

    #@178
    .line 164
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17b
    .line 165
    move-object/from16 v0, p3

    #@17d
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@180
    .line 166
    const/4 v13, 0x1

    #@181
    return v13

    #@182
    .line 170
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@185
    move-object/from16 v0, p2

    #@187
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18a
    .line 171
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isBleScanAlwaysAvailable()Z

    #@18d
    move-result v12

    #@18e
    .line 172
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@191
    .line 173
    if-eqz v12, :cond_8

    #@193
    const/4 v13, 0x1

    #@194
    :goto_8
    move-object/from16 v0, p3

    #@196
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@199
    .line 174
    const/4 v13, 0x1

    #@19a
    return v13

    #@19b
    .line 173
    :cond_8
    const/4 v13, 0x0

    #@19c
    goto :goto_8

    #@19d
    .line 178
    .end local v12    # "_result":Z
    :sswitch_f
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@1a0
    move-object/from16 v0, p2

    #@1a2
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a5
    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a8
    move-result-object v4

    #@1a9
    .line 182
    .local v4, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ac
    move-result v13

    #@1ad
    if-eqz v13, :cond_9

    #@1af
    const/4 v7, 0x1

    #@1b0
    .line 183
    .local v7, "_arg1":Z
    :goto_9
    invoke-virtual {p0, v4, v7}, Landroid/bluetooth/IBluetoothManager$Stub;->updateBleAppCount(Landroid/os/IBinder;Z)I

    #@1b3
    move-result v8

    #@1b4
    .line 184
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b7
    .line 185
    move-object/from16 v0, p3

    #@1b9
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@1bc
    .line 186
    const/4 v13, 0x1

    #@1bd
    return v13

    #@1be
    .line 182
    .end local v7    # "_arg1":Z
    .end local v8    # "_result":I
    :cond_9
    const/4 v7, 0x0

    #@1bf
    .restart local v7    # "_arg1":Z
    goto :goto_9

    #@1c0
    .line 190
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Z
    :sswitch_10
    const-string/jumbo v13, "android.bluetooth.IBluetoothManager"

    #@1c3
    move-object/from16 v0, p2

    #@1c5
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c8
    .line 191
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isBleAppPresent()Z

    #@1cb
    move-result v12

    #@1cc
    .line 192
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cf
    .line 193
    if-eqz v12, :cond_a

    #@1d1
    const/4 v13, 0x1

    #@1d2
    :goto_a
    move-object/from16 v0, p3

    #@1d4
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@1d7
    .line 194
    const/4 v13, 0x1

    #@1d8
    return v13

    #@1d9
    .line 193
    :cond_a
    const/4 v13, 0x0

    #@1da
    goto :goto_a

    #@1db
    .line 43
    nop

    #@1dc
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

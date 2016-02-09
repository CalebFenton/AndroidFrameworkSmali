.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_addVpnAddress:I = 0x3c

.field static final TRANSACTION_checkMobileProvisioning:I = 0x2c

.field static final TRANSACTION_establishVpn:I = 0x26

.field static final TRANSACTION_factoryReset:I = 0x3f

.field static final TRANSACTION_getActiveLinkProperties:I = 0xb

.field static final TRANSACTION_getActiveNetwork:I = 0x1

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x2

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x3

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0x10

.field static final TRANSACTION_getAllNetworkInfo:I = 0x6

.field static final TRANSACTION_getAllNetworkState:I = 0xf

.field static final TRANSACTION_getAllNetworks:I = 0x8

.field static final TRANSACTION_getAllVpnInfo:I = 0x2a

.field static final TRANSACTION_getDefaultNetworkCapabilitiesForUser:I = 0x9

.field static final TRANSACTION_getGlobalProxy:I = 0x21

.field static final TRANSACTION_getLastTetherError:I = 0x15

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x29

.field static final TRANSACTION_getLinkProperties:I = 0xd

.field static final TRANSACTION_getLinkPropertiesForType:I = 0xc

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x2d

.field static final TRANSACTION_getNetworkCapabilities:I = 0xe

.field static final TRANSACTION_getNetworkForType:I = 0x7

.field static final TRANSACTION_getNetworkInfo:I = 0x4

.field static final TRANSACTION_getNetworkInfoForNetwork:I = 0x5

.field static final TRANSACTION_getProxyForNetwork:I = 0x23

.field static final TRANSACTION_getRestoreDefaultNetworkDelay:I = 0x3b

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x1d

.field static final TRANSACTION_getTetherableIfaces:I = 0x17

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x1b

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x1c

.field static final TRANSACTION_getTetheredDhcpRanges:I = 0x1a

.field static final TRANSACTION_getTetheredIfaces:I = 0x18

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x19

.field static final TRANSACTION_getVpnConfig:I = 0x27

.field static final TRANSACTION_isActiveNetworkMetered:I = 0x11

.field static final TRANSACTION_isNetworkSupported:I = 0xa

.field static final TRANSACTION_isTetheringSupported:I = 0x16

.field static final TRANSACTION_listenForNetwork:I = 0x37

.field static final TRANSACTION_pendingListenForNetwork:I = 0x38

.field static final TRANSACTION_pendingRequestForNetwork:I = 0x35

.field static final TRANSACTION_prepareVpn:I = 0x24

.field static final TRANSACTION_registerNetworkAgent:I = 0x33

.field static final TRANSACTION_registerNetworkFactory:I = 0x30

.field static final TRANSACTION_releaseNetworkRequest:I = 0x39

.field static final TRANSACTION_releasePendingNetworkRequest:I = 0x36

.field static final TRANSACTION_removeVpnAddress:I = 0x3d

.field static final TRANSACTION_reportInetCondition:I = 0x1f

.field static final TRANSACTION_reportNetworkConnectivity:I = 0x20

.field static final TRANSACTION_requestBandwidthUpdate:I = 0x31

.field static final TRANSACTION_requestNetwork:I = 0x34

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x12

.field static final TRANSACTION_setAcceptUnvalidated:I = 0x3a

.field static final TRANSACTION_setAirplaneMode:I = 0x2f

.field static final TRANSACTION_setGlobalProxy:I = 0x22

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x2e

.field static final TRANSACTION_setUnderlyingNetworksForVpn:I = 0x3e

.field static final TRANSACTION_setUsbTethering:I = 0x1e

.field static final TRANSACTION_setVpnPackageAuthorization:I = 0x25

.field static final TRANSACTION_startLegacyVpn:I = 0x28

.field static final TRANSACTION_tether:I = 0x13

.field static final TRANSACTION_unregisterNetworkFactory:I = 0x32

.field static final TRANSACTION_untether:I = 0x14

.field static final TRANSACTION_updateLockdownVpn:I = 0x2b


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.net.IConnectivityManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    if-nez p0, :cond_0

    #@3
    .line 28
    return-object v1

    #@4
    .line 30
    :cond_0
    const-string/jumbo v1, "android.net.IConnectivityManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/IConnectivityManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/net/IConnectivityManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/IConnectivityManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 54
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 927
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 51
    :sswitch_1
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetwork()Landroid/net/Network;

    #@1d
    move-result-object v37

    #@1e
    .line 53
    .local v37, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 54
    if-eqz v37, :cond_0

    #@23
    .line 55
    const/4 v4, 0x1

    #@24
    move-object/from16 v0, p3

    #@26
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 56
    const/4 v4, 0x1

    #@2a
    move-object/from16 v0, v37

    #@2c
    move-object/from16 v1, p3

    #@2e
    invoke-virtual {v0, v1, v4}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    #@31
    .line 61
    :goto_0
    const/4 v4, 0x1

    #@32
    return v4

    #@33
    .line 59
    :cond_0
    const/4 v4, 0x0

    #@34
    move-object/from16 v0, p3

    #@36
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    goto :goto_0

    #@3a
    .line 65
    .end local v37    # "_result":Landroid/net/Network;
    :sswitch_2
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@3d
    move-object/from16 v0, p2

    #@3f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@45
    move-result-object v39

    #@46
    .line 67
    .local v39, "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@49
    .line 68
    if-eqz v39, :cond_1

    #@4b
    .line 69
    const/4 v4, 0x1

    #@4c
    move-object/from16 v0, p3

    #@4e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    .line 70
    const/4 v4, 0x1

    #@52
    move-object/from16 v0, v39

    #@54
    move-object/from16 v1, p3

    #@56
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@59
    .line 75
    :goto_1
    const/4 v4, 0x1

    #@5a
    return v4

    #@5b
    .line 73
    :cond_1
    const/4 v4, 0x0

    #@5c
    move-object/from16 v0, p3

    #@5e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    goto :goto_1

    #@62
    .line 79
    .end local v39    # "_result":Landroid/net/NetworkInfo;
    :sswitch_3
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@65
    move-object/from16 v0, p2

    #@67
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a
    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v17

    #@6e
    .line 82
    .local v17, "_arg0":I
    move-object/from16 v0, p0

    #@70
    move/from16 v1, v17

    #@72
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    #@75
    move-result-object v39

    #@76
    .line 83
    .restart local v39    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79
    .line 84
    if-eqz v39, :cond_2

    #@7b
    .line 85
    const/4 v4, 0x1

    #@7c
    move-object/from16 v0, p3

    #@7e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@81
    .line 86
    const/4 v4, 0x1

    #@82
    move-object/from16 v0, v39

    #@84
    move-object/from16 v1, p3

    #@86
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@89
    .line 91
    :goto_2
    const/4 v4, 0x1

    #@8a
    return v4

    #@8b
    .line 89
    :cond_2
    const/4 v4, 0x0

    #@8c
    move-object/from16 v0, p3

    #@8e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@91
    goto :goto_2

    #@92
    .line 95
    .end local v17    # "_arg0":I
    .end local v39    # "_result":Landroid/net/NetworkInfo;
    :sswitch_4
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@95
    move-object/from16 v0, p2

    #@97
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9a
    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9d
    move-result v17

    #@9e
    .line 98
    .restart local v17    # "_arg0":I
    move-object/from16 v0, p0

    #@a0
    move/from16 v1, v17

    #@a2
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    #@a5
    move-result-object v39

    #@a6
    .line 99
    .restart local v39    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a9
    .line 100
    if-eqz v39, :cond_3

    #@ab
    .line 101
    const/4 v4, 0x1

    #@ac
    move-object/from16 v0, p3

    #@ae
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@b1
    .line 102
    const/4 v4, 0x1

    #@b2
    move-object/from16 v0, v39

    #@b4
    move-object/from16 v1, p3

    #@b6
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@b9
    .line 107
    :goto_3
    const/4 v4, 0x1

    #@ba
    return v4

    #@bb
    .line 105
    :cond_3
    const/4 v4, 0x0

    #@bc
    move-object/from16 v0, p3

    #@be
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@c1
    goto :goto_3

    #@c2
    .line 111
    .end local v17    # "_arg0":I
    .end local v39    # "_result":Landroid/net/NetworkInfo;
    :sswitch_5
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@c5
    move-object/from16 v0, p2

    #@c7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ca
    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cd
    move-result v4

    #@ce
    if-eqz v4, :cond_4

    #@d0
    .line 114
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d2
    move-object/from16 v0, p2

    #@d4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d7
    move-result-object v19

    #@d8
    check-cast v19, Landroid/net/Network;

    #@da
    .line 119
    :goto_4
    move-object/from16 v0, p0

    #@dc
    move-object/from16 v1, v19

    #@de
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfoForNetwork(Landroid/net/Network;)Landroid/net/NetworkInfo;

    #@e1
    move-result-object v39

    #@e2
    .line 120
    .restart local v39    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e5
    .line 121
    if-eqz v39, :cond_5

    #@e7
    .line 122
    const/4 v4, 0x1

    #@e8
    move-object/from16 v0, p3

    #@ea
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@ed
    .line 123
    const/4 v4, 0x1

    #@ee
    move-object/from16 v0, v39

    #@f0
    move-object/from16 v1, p3

    #@f2
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@f5
    .line 128
    :goto_5
    const/4 v4, 0x1

    #@f6
    return v4

    #@f7
    .line 117
    .end local v39    # "_result":Landroid/net/NetworkInfo;
    :cond_4
    const/16 v19, 0x0

    #@f9
    .local v19, "_arg0":Landroid/net/Network;
    goto :goto_4

    #@fa
    .line 126
    .end local v19    # "_arg0":Landroid/net/Network;
    .restart local v39    # "_result":Landroid/net/NetworkInfo;
    :cond_5
    const/4 v4, 0x0

    #@fb
    move-object/from16 v0, p3

    #@fd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@100
    goto :goto_5

    #@101
    .line 132
    .end local v39    # "_result":Landroid/net/NetworkInfo;
    :sswitch_6
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@104
    move-object/from16 v0, p2

    #@106
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@109
    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    #@10c
    move-result-object v50

    #@10d
    .line 134
    .local v50, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@110
    .line 135
    const/4 v4, 0x1

    #@111
    move-object/from16 v0, p3

    #@113
    move-object/from16 v1, v50

    #@115
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@118
    .line 136
    const/4 v4, 0x1

    #@119
    return v4

    #@11a
    .line 140
    .end local v50    # "_result":[Landroid/net/NetworkInfo;
    :sswitch_7
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@11d
    move-object/from16 v0, p2

    #@11f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@122
    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@125
    move-result v17

    #@126
    .line 143
    .restart local v17    # "_arg0":I
    move-object/from16 v0, p0

    #@128
    move/from16 v1, v17

    #@12a
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkForType(I)Landroid/net/Network;

    #@12d
    move-result-object v37

    #@12e
    .line 144
    .restart local v37    # "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@131
    .line 145
    if-eqz v37, :cond_6

    #@133
    .line 146
    const/4 v4, 0x1

    #@134
    move-object/from16 v0, p3

    #@136
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@139
    .line 147
    const/4 v4, 0x1

    #@13a
    move-object/from16 v0, v37

    #@13c
    move-object/from16 v1, p3

    #@13e
    invoke-virtual {v0, v1, v4}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    #@141
    .line 152
    :goto_6
    const/4 v4, 0x1

    #@142
    return v4

    #@143
    .line 150
    :cond_6
    const/4 v4, 0x0

    #@144
    move-object/from16 v0, p3

    #@146
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@149
    goto :goto_6

    #@14a
    .line 156
    .end local v17    # "_arg0":I
    .end local v37    # "_result":Landroid/net/Network;
    :sswitch_8
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@14d
    move-object/from16 v0, p2

    #@14f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@152
    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworks()[Landroid/net/Network;

    #@155
    move-result-object v48

    #@156
    .line 158
    .local v48, "_result":[Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@159
    .line 159
    const/4 v4, 0x1

    #@15a
    move-object/from16 v0, p3

    #@15c
    move-object/from16 v1, v48

    #@15e
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@161
    .line 160
    const/4 v4, 0x1

    #@162
    return v4

    #@163
    .line 164
    .end local v48    # "_result":[Landroid/net/Network;
    :sswitch_9
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@166
    move-object/from16 v0, p2

    #@168
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16b
    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16e
    move-result v17

    #@16f
    .line 167
    .restart local v17    # "_arg0":I
    move-object/from16 v0, p0

    #@171
    move/from16 v1, v17

    #@173
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    #@176
    move-result-object v49

    #@177
    .line 168
    .local v49, "_result":[Landroid/net/NetworkCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17a
    .line 169
    const/4 v4, 0x1

    #@17b
    move-object/from16 v0, p3

    #@17d
    move-object/from16 v1, v49

    #@17f
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@182
    .line 170
    const/4 v4, 0x1

    #@183
    return v4

    #@184
    .line 174
    .end local v17    # "_arg0":I
    .end local v49    # "_result":[Landroid/net/NetworkCapabilities;
    :sswitch_a
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@187
    move-object/from16 v0, p2

    #@189
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18c
    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18f
    move-result v17

    #@190
    .line 177
    .restart local v17    # "_arg0":I
    move-object/from16 v0, p0

    #@192
    move/from16 v1, v17

    #@194
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    #@197
    move-result v47

    #@198
    .line 178
    .local v47, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19b
    .line 179
    if-eqz v47, :cond_7

    #@19d
    const/4 v4, 0x1

    #@19e
    :goto_7
    move-object/from16 v0, p3

    #@1a0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a3
    .line 180
    const/4 v4, 0x1

    #@1a4
    return v4

    #@1a5
    .line 179
    :cond_7
    const/4 v4, 0x0

    #@1a6
    goto :goto_7

    #@1a7
    .line 184
    .end local v17    # "_arg0":I
    .end local v47    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@1aa
    move-object/from16 v0, p2

    #@1ac
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1af
    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    #@1b2
    move-result-object v36

    #@1b3
    .line 186
    .local v36, "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b6
    .line 187
    if-eqz v36, :cond_8

    #@1b8
    .line 188
    const/4 v4, 0x1

    #@1b9
    move-object/from16 v0, p3

    #@1bb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1be
    .line 189
    const/4 v4, 0x1

    #@1bf
    move-object/from16 v0, v36

    #@1c1
    move-object/from16 v1, p3

    #@1c3
    invoke-virtual {v0, v1, v4}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    #@1c6
    .line 194
    :goto_8
    const/4 v4, 0x1

    #@1c7
    return v4

    #@1c8
    .line 192
    :cond_8
    const/4 v4, 0x0

    #@1c9
    move-object/from16 v0, p3

    #@1cb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1ce
    goto :goto_8

    #@1cf
    .line 198
    .end local v36    # "_result":Landroid/net/LinkProperties;
    :sswitch_c
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@1d2
    move-object/from16 v0, p2

    #@1d4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d7
    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1da
    move-result v17

    #@1db
    .line 201
    .restart local v17    # "_arg0":I
    move-object/from16 v0, p0

    #@1dd
    move/from16 v1, v17

    #@1df
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    #@1e2
    move-result-object v36

    #@1e3
    .line 202
    .restart local v36    # "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e6
    .line 203
    if-eqz v36, :cond_9

    #@1e8
    .line 204
    const/4 v4, 0x1

    #@1e9
    move-object/from16 v0, p3

    #@1eb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1ee
    .line 205
    const/4 v4, 0x1

    #@1ef
    move-object/from16 v0, v36

    #@1f1
    move-object/from16 v1, p3

    #@1f3
    invoke-virtual {v0, v1, v4}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f6
    .line 210
    :goto_9
    const/4 v4, 0x1

    #@1f7
    return v4

    #@1f8
    .line 208
    :cond_9
    const/4 v4, 0x0

    #@1f9
    move-object/from16 v0, p3

    #@1fb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1fe
    goto :goto_9

    #@1ff
    .line 214
    .end local v17    # "_arg0":I
    .end local v36    # "_result":Landroid/net/LinkProperties;
    :sswitch_d
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@202
    move-object/from16 v0, p2

    #@204
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@207
    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20a
    move-result v4

    #@20b
    if-eqz v4, :cond_a

    #@20d
    .line 217
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20f
    move-object/from16 v0, p2

    #@211
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@214
    move-result-object v19

    #@215
    check-cast v19, Landroid/net/Network;

    #@217
    .line 222
    :goto_a
    move-object/from16 v0, p0

    #@219
    move-object/from16 v1, v19

    #@21b
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    #@21e
    move-result-object v36

    #@21f
    .line 223
    .restart local v36    # "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@222
    .line 224
    if-eqz v36, :cond_b

    #@224
    .line 225
    const/4 v4, 0x1

    #@225
    move-object/from16 v0, p3

    #@227
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@22a
    .line 226
    const/4 v4, 0x1

    #@22b
    move-object/from16 v0, v36

    #@22d
    move-object/from16 v1, p3

    #@22f
    invoke-virtual {v0, v1, v4}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    #@232
    .line 231
    :goto_b
    const/4 v4, 0x1

    #@233
    return v4

    #@234
    .line 220
    .end local v36    # "_result":Landroid/net/LinkProperties;
    :cond_a
    const/16 v19, 0x0

    #@236
    .restart local v19    # "_arg0":Landroid/net/Network;
    goto :goto_a

    #@237
    .line 229
    .end local v19    # "_arg0":Landroid/net/Network;
    .restart local v36    # "_result":Landroid/net/LinkProperties;
    :cond_b
    const/4 v4, 0x0

    #@238
    move-object/from16 v0, p3

    #@23a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@23d
    goto :goto_b

    #@23e
    .line 235
    .end local v36    # "_result":Landroid/net/LinkProperties;
    :sswitch_e
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@241
    move-object/from16 v0, p2

    #@243
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@246
    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@249
    move-result v4

    #@24a
    if-eqz v4, :cond_c

    #@24c
    .line 238
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24e
    move-object/from16 v0, p2

    #@250
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@253
    move-result-object v19

    #@254
    check-cast v19, Landroid/net/Network;

    #@256
    .line 243
    :goto_c
    move-object/from16 v0, p0

    #@258
    move-object/from16 v1, v19

    #@25a
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    #@25d
    move-result-object v38

    #@25e
    .line 244
    .local v38, "_result":Landroid/net/NetworkCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@261
    .line 245
    if-eqz v38, :cond_d

    #@263
    .line 246
    const/4 v4, 0x1

    #@264
    move-object/from16 v0, p3

    #@266
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@269
    .line 247
    const/4 v4, 0x1

    #@26a
    move-object/from16 v0, v38

    #@26c
    move-object/from16 v1, p3

    #@26e
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    #@271
    .line 252
    :goto_d
    const/4 v4, 0x1

    #@272
    return v4

    #@273
    .line 241
    .end local v38    # "_result":Landroid/net/NetworkCapabilities;
    :cond_c
    const/16 v19, 0x0

    #@275
    .restart local v19    # "_arg0":Landroid/net/Network;
    goto :goto_c

    #@276
    .line 250
    .end local v19    # "_arg0":Landroid/net/Network;
    .restart local v38    # "_result":Landroid/net/NetworkCapabilities;
    :cond_d
    const/4 v4, 0x0

    #@277
    move-object/from16 v0, p3

    #@279
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@27c
    goto :goto_d

    #@27d
    .line 256
    .end local v38    # "_result":Landroid/net/NetworkCapabilities;
    :sswitch_f
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@280
    move-object/from16 v0, p2

    #@282
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@285
    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    #@288
    move-result-object v51

    #@289
    .line 258
    .local v51, "_result":[Landroid/net/NetworkState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28c
    .line 259
    const/4 v4, 0x1

    #@28d
    move-object/from16 v0, p3

    #@28f
    move-object/from16 v1, v51

    #@291
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@294
    .line 260
    const/4 v4, 0x1

    #@295
    return v4

    #@296
    .line 264
    .end local v51    # "_result":[Landroid/net/NetworkState;
    :sswitch_10
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@299
    move-object/from16 v0, p2

    #@29b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29e
    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    #@2a1
    move-result-object v40

    #@2a2
    .line 266
    .local v40, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a5
    .line 267
    if-eqz v40, :cond_e

    #@2a7
    .line 268
    const/4 v4, 0x1

    #@2a8
    move-object/from16 v0, p3

    #@2aa
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2ad
    .line 269
    const/4 v4, 0x1

    #@2ae
    move-object/from16 v0, v40

    #@2b0
    move-object/from16 v1, p3

    #@2b2
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b5
    .line 274
    :goto_e
    const/4 v4, 0x1

    #@2b6
    return v4

    #@2b7
    .line 272
    :cond_e
    const/4 v4, 0x0

    #@2b8
    move-object/from16 v0, p3

    #@2ba
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2bd
    goto :goto_e

    #@2be
    .line 278
    .end local v40    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_11
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@2c1
    move-object/from16 v0, p2

    #@2c3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c6
    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    #@2c9
    move-result v47

    #@2ca
    .line 280
    .restart local v47    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2cd
    .line 281
    if-eqz v47, :cond_f

    #@2cf
    const/4 v4, 0x1

    #@2d0
    :goto_f
    move-object/from16 v0, p3

    #@2d2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2d5
    .line 282
    const/4 v4, 0x1

    #@2d6
    return v4

    #@2d7
    .line 281
    :cond_f
    const/4 v4, 0x0

    #@2d8
    goto :goto_f

    #@2d9
    .line 286
    .end local v47    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@2dc
    move-object/from16 v0, p2

    #@2de
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e1
    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e4
    move-result v17

    #@2e5
    .line 290
    .restart local v17    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@2e8
    move-result-object v31

    #@2e9
    .line 291
    .local v31, "_arg1":[B
    move-object/from16 v0, p0

    #@2eb
    move/from16 v1, v17

    #@2ed
    move-object/from16 v2, v31

    #@2ef
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[B)Z

    #@2f2
    move-result v47

    #@2f3
    .line 292
    .restart local v47    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f6
    .line 293
    if-eqz v47, :cond_10

    #@2f8
    const/4 v4, 0x1

    #@2f9
    :goto_10
    move-object/from16 v0, p3

    #@2fb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2fe
    .line 294
    const/4 v4, 0x1

    #@2ff
    return v4

    #@300
    .line 293
    :cond_10
    const/4 v4, 0x0

    #@301
    goto :goto_10

    #@302
    .line 298
    .end local v17    # "_arg0":I
    .end local v31    # "_arg1":[B
    .end local v47    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@305
    move-object/from16 v0, p2

    #@307
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30a
    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30d
    move-result-object v24

    #@30e
    .line 301
    .local v24, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@310
    move-object/from16 v1, v24

    #@312
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    #@315
    move-result v35

    #@316
    .line 302
    .local v35, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@319
    .line 303
    move-object/from16 v0, p3

    #@31b
    move/from16 v1, v35

    #@31d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@320
    .line 304
    const/4 v4, 0x1

    #@321
    return v4

    #@322
    .line 308
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_14
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@325
    move-object/from16 v0, p2

    #@327
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32a
    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32d
    move-result-object v24

    #@32e
    .line 311
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@330
    move-object/from16 v1, v24

    #@332
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    #@335
    move-result v35

    #@336
    .line 312
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@339
    .line 313
    move-object/from16 v0, p3

    #@33b
    move/from16 v1, v35

    #@33d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@340
    .line 314
    const/4 v4, 0x1

    #@341
    return v4

    #@342
    .line 318
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_15
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@345
    move-object/from16 v0, p2

    #@347
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34a
    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@34d
    move-result-object v24

    #@34e
    .line 321
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@350
    move-object/from16 v1, v24

    #@352
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    #@355
    move-result v35

    #@356
    .line 322
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@359
    .line 323
    move-object/from16 v0, p3

    #@35b
    move/from16 v1, v35

    #@35d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@360
    .line 324
    const/4 v4, 0x1

    #@361
    return v4

    #@362
    .line 328
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":I
    :sswitch_16
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@365
    move-object/from16 v0, p2

    #@367
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36a
    .line 329
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    #@36d
    move-result v47

    #@36e
    .line 330
    .restart local v47    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@371
    .line 331
    if-eqz v47, :cond_11

    #@373
    const/4 v4, 0x1

    #@374
    :goto_11
    move-object/from16 v0, p3

    #@376
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@379
    .line 332
    const/4 v4, 0x1

    #@37a
    return v4

    #@37b
    .line 331
    :cond_11
    const/4 v4, 0x0

    #@37c
    goto :goto_11

    #@37d
    .line 336
    .end local v47    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@380
    move-object/from16 v0, p2

    #@382
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@385
    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    #@388
    move-result-object v53

    #@389
    .line 338
    .local v53, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38c
    .line 339
    move-object/from16 v0, p3

    #@38e
    move-object/from16 v1, v53

    #@390
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@393
    .line 340
    const/4 v4, 0x1

    #@394
    return v4

    #@395
    .line 344
    .end local v53    # "_result":[Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@398
    move-object/from16 v0, p2

    #@39a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39d
    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    #@3a0
    move-result-object v53

    #@3a1
    .line 346
    .restart local v53    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a4
    .line 347
    move-object/from16 v0, p3

    #@3a6
    move-object/from16 v1, v53

    #@3a8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@3ab
    .line 348
    const/4 v4, 0x1

    #@3ac
    return v4

    #@3ad
    .line 352
    .end local v53    # "_result":[Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@3b0
    move-object/from16 v0, p2

    #@3b2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b5
    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    #@3b8
    move-result-object v53

    #@3b9
    .line 354
    .restart local v53    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3bc
    .line 355
    move-object/from16 v0, p3

    #@3be
    move-object/from16 v1, v53

    #@3c0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@3c3
    .line 356
    const/4 v4, 0x1

    #@3c4
    return v4

    #@3c5
    .line 360
    .end local v53    # "_result":[Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@3c8
    move-object/from16 v0, p2

    #@3ca
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3cd
    .line 361
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredDhcpRanges()[Ljava/lang/String;

    #@3d0
    move-result-object v53

    #@3d1
    .line 362
    .restart local v53    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d4
    .line 363
    move-object/from16 v0, p3

    #@3d6
    move-object/from16 v1, v53

    #@3d8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@3db
    .line 364
    const/4 v4, 0x1

    #@3dc
    return v4

    #@3dd
    .line 368
    .end local v53    # "_result":[Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@3e0
    move-object/from16 v0, p2

    #@3e2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e5
    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    #@3e8
    move-result-object v53

    #@3e9
    .line 370
    .restart local v53    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ec
    .line 371
    move-object/from16 v0, p3

    #@3ee
    move-object/from16 v1, v53

    #@3f0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@3f3
    .line 372
    const/4 v4, 0x1

    #@3f4
    return v4

    #@3f5
    .line 376
    .end local v53    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@3f8
    move-object/from16 v0, p2

    #@3fa
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3fd
    .line 377
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    #@400
    move-result-object v53

    #@401
    .line 378
    .restart local v53    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@404
    .line 379
    move-object/from16 v0, p3

    #@406
    move-object/from16 v1, v53

    #@408
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@40b
    .line 380
    const/4 v4, 0x1

    #@40c
    return v4

    #@40d
    .line 384
    .end local v53    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@410
    move-object/from16 v0, p2

    #@412
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@415
    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    #@418
    move-result-object v53

    #@419
    .line 386
    .restart local v53    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41c
    .line 387
    move-object/from16 v0, p3

    #@41e
    move-object/from16 v1, v53

    #@420
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@423
    .line 388
    const/4 v4, 0x1

    #@424
    return v4

    #@425
    .line 392
    .end local v53    # "_result":[Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@428
    move-object/from16 v0, p2

    #@42a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42d
    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@430
    move-result v4

    #@431
    if-eqz v4, :cond_12

    #@433
    const/16 v25, 0x1

    #@435
    .line 395
    .local v25, "_arg0":Z
    :goto_12
    move-object/from16 v0, p0

    #@437
    move/from16 v1, v25

    #@439
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    #@43c
    move-result v35

    #@43d
    .line 396
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@440
    .line 397
    move-object/from16 v0, p3

    #@442
    move/from16 v1, v35

    #@444
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@447
    .line 398
    const/4 v4, 0x1

    #@448
    return v4

    #@449
    .line 394
    .end local v25    # "_arg0":Z
    .end local v35    # "_result":I
    :cond_12
    const/16 v25, 0x0

    #@44b
    .restart local v25    # "_arg0":Z
    goto :goto_12

    #@44c
    .line 402
    .end local v25    # "_arg0":Z
    :sswitch_1f
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@44f
    move-object/from16 v0, p2

    #@451
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@454
    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@457
    move-result v17

    #@458
    .line 406
    .restart local v17    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@45b
    move-result v27

    #@45c
    .line 407
    .local v27, "_arg1":I
    move-object/from16 v0, p0

    #@45e
    move/from16 v1, v17

    #@460
    move/from16 v2, v27

    #@462
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    #@465
    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@468
    .line 409
    const/4 v4, 0x1

    #@469
    return v4

    #@46a
    .line 413
    .end local v17    # "_arg0":I
    .end local v27    # "_arg1":I
    :sswitch_20
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@46d
    move-object/from16 v0, p2

    #@46f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@472
    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@475
    move-result v4

    #@476
    if-eqz v4, :cond_13

    #@478
    .line 416
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@47a
    move-object/from16 v0, p2

    #@47c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@47f
    move-result-object v19

    #@480
    check-cast v19, Landroid/net/Network;

    #@482
    .line 422
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@485
    move-result v4

    #@486
    if-eqz v4, :cond_14

    #@488
    const/16 v30, 0x1

    #@48a
    .line 423
    .local v30, "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    #@48c
    move-object/from16 v1, v19

    #@48e
    move/from16 v2, v30

    #@490
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    #@493
    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@496
    .line 425
    const/4 v4, 0x1

    #@497
    return v4

    #@498
    .line 419
    .end local v30    # "_arg1":Z
    :cond_13
    const/16 v19, 0x0

    #@49a
    .restart local v19    # "_arg0":Landroid/net/Network;
    goto :goto_13

    #@49b
    .line 422
    .end local v19    # "_arg0":Landroid/net/Network;
    :cond_14
    const/16 v30, 0x0

    #@49d
    .restart local v30    # "_arg1":Z
    goto :goto_14

    #@49e
    .line 429
    .end local v30    # "_arg1":Z
    :sswitch_21
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@4a1
    move-object/from16 v0, p2

    #@4a3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a6
    .line 430
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyInfo;

    #@4a9
    move-result-object v42

    #@4aa
    .line 431
    .local v42, "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ad
    .line 432
    if-eqz v42, :cond_15

    #@4af
    .line 433
    const/4 v4, 0x1

    #@4b0
    move-object/from16 v0, p3

    #@4b2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4b5
    .line 434
    const/4 v4, 0x1

    #@4b6
    move-object/from16 v0, v42

    #@4b8
    move-object/from16 v1, p3

    #@4ba
    invoke-virtual {v0, v1, v4}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@4bd
    .line 439
    :goto_15
    const/4 v4, 0x1

    #@4be
    return v4

    #@4bf
    .line 437
    :cond_15
    const/4 v4, 0x0

    #@4c0
    move-object/from16 v0, p3

    #@4c2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4c5
    goto :goto_15

    #@4c6
    .line 443
    .end local v42    # "_result":Landroid/net/ProxyInfo;
    :sswitch_22
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@4c9
    move-object/from16 v0, p2

    #@4cb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ce
    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d1
    move-result v4

    #@4d2
    if-eqz v4, :cond_16

    #@4d4
    .line 446
    sget-object v4, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4d6
    move-object/from16 v0, p2

    #@4d8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4db
    move-result-object v21

    #@4dc
    check-cast v21, Landroid/net/ProxyInfo;

    #@4de
    .line 451
    :goto_16
    move-object/from16 v0, p0

    #@4e0
    move-object/from16 v1, v21

    #@4e2
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    #@4e5
    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e8
    .line 453
    const/4 v4, 0x1

    #@4e9
    return v4

    #@4ea
    .line 449
    :cond_16
    const/16 v21, 0x0

    #@4ec
    .local v21, "_arg0":Landroid/net/ProxyInfo;
    goto :goto_16

    #@4ed
    .line 457
    .end local v21    # "_arg0":Landroid/net/ProxyInfo;
    :sswitch_23
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@4f0
    move-object/from16 v0, p2

    #@4f2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f5
    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f8
    move-result v4

    #@4f9
    if-eqz v4, :cond_17

    #@4fb
    .line 460
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4fd
    move-object/from16 v0, p2

    #@4ff
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@502
    move-result-object v19

    #@503
    check-cast v19, Landroid/net/Network;

    #@505
    .line 465
    :goto_17
    move-object/from16 v0, p0

    #@507
    move-object/from16 v1, v19

    #@509
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    #@50c
    move-result-object v42

    #@50d
    .line 466
    .restart local v42    # "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@510
    .line 467
    if-eqz v42, :cond_18

    #@512
    .line 468
    const/4 v4, 0x1

    #@513
    move-object/from16 v0, p3

    #@515
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@518
    .line 469
    const/4 v4, 0x1

    #@519
    move-object/from16 v0, v42

    #@51b
    move-object/from16 v1, p3

    #@51d
    invoke-virtual {v0, v1, v4}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@520
    .line 474
    :goto_18
    const/4 v4, 0x1

    #@521
    return v4

    #@522
    .line 463
    .end local v42    # "_result":Landroid/net/ProxyInfo;
    :cond_17
    const/16 v19, 0x0

    #@524
    .restart local v19    # "_arg0":Landroid/net/Network;
    goto :goto_17

    #@525
    .line 472
    .end local v19    # "_arg0":Landroid/net/Network;
    .restart local v42    # "_result":Landroid/net/ProxyInfo;
    :cond_18
    const/4 v4, 0x0

    #@526
    move-object/from16 v0, p3

    #@528
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@52b
    goto :goto_18

    #@52c
    .line 478
    .end local v42    # "_result":Landroid/net/ProxyInfo;
    :sswitch_24
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@52f
    move-object/from16 v0, p2

    #@531
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@534
    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@537
    move-result-object v24

    #@538
    .line 482
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@53b
    move-result-object v29

    #@53c
    .line 484
    .local v29, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@53f
    move-result v14

    #@540
    .line 485
    .local v14, "_arg2":I
    move-object/from16 v0, p0

    #@542
    move-object/from16 v1, v24

    #@544
    move-object/from16 v2, v29

    #@546
    invoke-virtual {v0, v1, v2, v14}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    #@549
    move-result v47

    #@54a
    .line 486
    .restart local v47    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54d
    .line 487
    if-eqz v47, :cond_19

    #@54f
    const/4 v4, 0x1

    #@550
    :goto_19
    move-object/from16 v0, p3

    #@552
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@555
    .line 488
    const/4 v4, 0x1

    #@556
    return v4

    #@557
    .line 487
    :cond_19
    const/4 v4, 0x0

    #@558
    goto :goto_19

    #@559
    .line 492
    .end local v14    # "_arg2":I
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v29    # "_arg1":Ljava/lang/String;
    .end local v47    # "_result":Z
    :sswitch_25
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@55c
    move-object/from16 v0, p2

    #@55e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@561
    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@564
    move-result-object v24

    #@565
    .line 496
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@568
    move-result v27

    #@569
    .line 498
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@56c
    move-result v4

    #@56d
    if-eqz v4, :cond_1a

    #@56f
    const/16 v34, 0x1

    #@571
    .line 499
    .local v34, "_arg2":Z
    :goto_1a
    move-object/from16 v0, p0

    #@573
    move-object/from16 v1, v24

    #@575
    move/from16 v2, v27

    #@577
    move/from16 v3, v34

    #@579
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    #@57c
    .line 500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@57f
    .line 501
    const/4 v4, 0x1

    #@580
    return v4

    #@581
    .line 498
    .end local v34    # "_arg2":Z
    :cond_1a
    const/16 v34, 0x0

    #@583
    .restart local v34    # "_arg2":Z
    goto :goto_1a

    #@584
    .line 505
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v34    # "_arg2":Z
    :sswitch_26
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@587
    move-object/from16 v0, p2

    #@589
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@58c
    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@58f
    move-result v4

    #@590
    if-eqz v4, :cond_1b

    #@592
    .line 508
    sget-object v4, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@594
    move-object/from16 v0, p2

    #@596
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@599
    move-result-object v22

    #@59a
    check-cast v22, Lcom/android/internal/net/VpnConfig;

    #@59c
    .line 513
    :goto_1b
    move-object/from16 v0, p0

    #@59e
    move-object/from16 v1, v22

    #@5a0
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    #@5a3
    move-result-object v43

    #@5a4
    .line 514
    .local v43, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5a7
    .line 515
    if-eqz v43, :cond_1c

    #@5a9
    .line 516
    const/4 v4, 0x1

    #@5aa
    move-object/from16 v0, p3

    #@5ac
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5af
    .line 517
    const/4 v4, 0x1

    #@5b0
    move-object/from16 v0, v43

    #@5b2
    move-object/from16 v1, p3

    #@5b4
    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@5b7
    .line 522
    :goto_1c
    const/4 v4, 0x1

    #@5b8
    return v4

    #@5b9
    .line 511
    .end local v43    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_1b
    const/16 v22, 0x0

    #@5bb
    .local v22, "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_1b

    #@5bc
    .line 520
    .end local v22    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .restart local v43    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_1c
    const/4 v4, 0x0

    #@5bd
    move-object/from16 v0, p3

    #@5bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5c2
    goto :goto_1c

    #@5c3
    .line 526
    .end local v43    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_27
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@5c6
    move-object/from16 v0, p2

    #@5c8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5cb
    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ce
    move-result v17

    #@5cf
    .line 529
    .restart local v17    # "_arg0":I
    move-object/from16 v0, p0

    #@5d1
    move/from16 v1, v17

    #@5d3
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    #@5d6
    move-result-object v45

    #@5d7
    .line 530
    .local v45, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5da
    .line 531
    if-eqz v45, :cond_1d

    #@5dc
    .line 532
    const/4 v4, 0x1

    #@5dd
    move-object/from16 v0, p3

    #@5df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5e2
    .line 533
    const/4 v4, 0x1

    #@5e3
    move-object/from16 v0, v45

    #@5e5
    move-object/from16 v1, p3

    #@5e7
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    #@5ea
    .line 538
    :goto_1d
    const/4 v4, 0x1

    #@5eb
    return v4

    #@5ec
    .line 536
    :cond_1d
    const/4 v4, 0x0

    #@5ed
    move-object/from16 v0, p3

    #@5ef
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5f2
    goto :goto_1d

    #@5f3
    .line 542
    .end local v17    # "_arg0":I
    .end local v45    # "_result":Lcom/android/internal/net/VpnConfig;
    :sswitch_28
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@5f6
    move-object/from16 v0, p2

    #@5f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5fb
    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5fe
    move-result v4

    #@5ff
    if-eqz v4, :cond_1e

    #@601
    .line 545
    sget-object v4, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@603
    move-object/from16 v0, p2

    #@605
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@608
    move-result-object v23

    #@609
    check-cast v23, Lcom/android/internal/net/VpnProfile;

    #@60b
    .line 550
    :goto_1e
    move-object/from16 v0, p0

    #@60d
    move-object/from16 v1, v23

    #@60f
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    #@612
    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@615
    .line 552
    const/4 v4, 0x1

    #@616
    return v4

    #@617
    .line 548
    :cond_1e
    const/16 v23, 0x0

    #@619
    .local v23, "_arg0":Lcom/android/internal/net/VpnProfile;
    goto :goto_1e

    #@61a
    .line 556
    .end local v23    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :sswitch_29
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@61d
    move-object/from16 v0, p2

    #@61f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@622
    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@625
    move-result v17

    #@626
    .line 559
    .restart local v17    # "_arg0":I
    move-object/from16 v0, p0

    #@628
    move/from16 v1, v17

    #@62a
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    #@62d
    move-result-object v44

    #@62e
    .line 560
    .local v44, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@631
    .line 561
    if-eqz v44, :cond_1f

    #@633
    .line 562
    const/4 v4, 0x1

    #@634
    move-object/from16 v0, p3

    #@636
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@639
    .line 563
    const/4 v4, 0x1

    #@63a
    move-object/from16 v0, v44

    #@63c
    move-object/from16 v1, p3

    #@63e
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@641
    .line 568
    :goto_1f
    const/4 v4, 0x1

    #@642
    return v4

    #@643
    .line 566
    :cond_1f
    const/4 v4, 0x0

    #@644
    move-object/from16 v0, p3

    #@646
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@649
    goto :goto_1f

    #@64a
    .line 572
    .end local v17    # "_arg0":I
    .end local v44    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_2a
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@64d
    move-object/from16 v0, p2

    #@64f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@652
    .line 573
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    #@655
    move-result-object v52

    #@656
    .line 574
    .local v52, "_result":[Lcom/android/internal/net/VpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@659
    .line 575
    const/4 v4, 0x1

    #@65a
    move-object/from16 v0, p3

    #@65c
    move-object/from16 v1, v52

    #@65e
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@661
    .line 576
    const/4 v4, 0x1

    #@662
    return v4

    #@663
    .line 580
    .end local v52    # "_result":[Lcom/android/internal/net/VpnInfo;
    :sswitch_2b
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@666
    move-object/from16 v0, p2

    #@668
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@66b
    .line 581
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->updateLockdownVpn()Z

    #@66e
    move-result v47

    #@66f
    .line 582
    .restart local v47    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@672
    .line 583
    if-eqz v47, :cond_20

    #@674
    const/4 v4, 0x1

    #@675
    :goto_20
    move-object/from16 v0, p3

    #@677
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@67a
    .line 584
    const/4 v4, 0x1

    #@67b
    return v4

    #@67c
    .line 583
    :cond_20
    const/4 v4, 0x0

    #@67d
    goto :goto_20

    #@67e
    .line 588
    .end local v47    # "_result":Z
    :sswitch_2c
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@681
    move-object/from16 v0, p2

    #@683
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@686
    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@689
    move-result v17

    #@68a
    .line 591
    .restart local v17    # "_arg0":I
    move-object/from16 v0, p0

    #@68c
    move/from16 v1, v17

    #@68e
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->checkMobileProvisioning(I)I

    #@691
    move-result v35

    #@692
    .line 592
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@695
    .line 593
    move-object/from16 v0, p3

    #@697
    move/from16 v1, v35

    #@699
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@69c
    .line 594
    const/4 v4, 0x1

    #@69d
    return v4

    #@69e
    .line 598
    .end local v17    # "_arg0":I
    .end local v35    # "_result":I
    :sswitch_2d
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@6a1
    move-object/from16 v0, p2

    #@6a3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a6
    .line 599
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    #@6a9
    move-result-object v46

    #@6aa
    .line 600
    .local v46, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6ad
    .line 601
    move-object/from16 v0, p3

    #@6af
    move-object/from16 v1, v46

    #@6b1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6b4
    .line 602
    const/4 v4, 0x1

    #@6b5
    return v4

    #@6b6
    .line 606
    .end local v46    # "_result":Ljava/lang/String;
    :sswitch_2e
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@6b9
    move-object/from16 v0, p2

    #@6bb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6be
    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6c1
    move-result v4

    #@6c2
    if-eqz v4, :cond_21

    #@6c4
    const/16 v25, 0x1

    #@6c6
    .line 610
    .restart local v25    # "_arg0":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6c9
    move-result v27

    #@6ca
    .line 612
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6cd
    move-result-object v33

    #@6ce
    .line 613
    .local v33, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6d0
    move/from16 v1, v25

    #@6d2
    move/from16 v2, v27

    #@6d4
    move-object/from16 v3, v33

    #@6d6
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    #@6d9
    .line 614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6dc
    .line 615
    const/4 v4, 0x1

    #@6dd
    return v4

    #@6de
    .line 608
    .end local v25    # "_arg0":Z
    .end local v27    # "_arg1":I
    .end local v33    # "_arg2":Ljava/lang/String;
    :cond_21
    const/16 v25, 0x0

    #@6e0
    .restart local v25    # "_arg0":Z
    goto :goto_21

    #@6e1
    .line 619
    .end local v25    # "_arg0":Z
    :sswitch_2f
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@6e4
    move-object/from16 v0, p2

    #@6e6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e9
    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ec
    move-result v4

    #@6ed
    if-eqz v4, :cond_22

    #@6ef
    const/16 v25, 0x1

    #@6f1
    .line 622
    .restart local v25    # "_arg0":Z
    :goto_22
    move-object/from16 v0, p0

    #@6f3
    move/from16 v1, v25

    #@6f5
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    #@6f8
    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6fb
    .line 624
    const/4 v4, 0x1

    #@6fc
    return v4

    #@6fd
    .line 621
    .end local v25    # "_arg0":Z
    :cond_22
    const/16 v25, 0x0

    #@6ff
    .restart local v25    # "_arg0":Z
    goto :goto_22

    #@700
    .line 628
    .end local v25    # "_arg0":Z
    :sswitch_30
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@703
    move-object/from16 v0, p2

    #@705
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@708
    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@70b
    move-result v4

    #@70c
    if-eqz v4, :cond_23

    #@70e
    .line 631
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    #@710
    move-object/from16 v0, p2

    #@712
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@715
    move-result-object v5

    #@716
    check-cast v5, Landroid/os/Messenger;

    #@718
    .line 637
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@71b
    move-result-object v29

    #@71c
    .line 638
    .restart local v29    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@71e
    move-object/from16 v1, v29

    #@720
    invoke-virtual {v0, v5, v1}, Landroid/net/IConnectivityManager$Stub;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    #@723
    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@726
    .line 640
    const/4 v4, 0x1

    #@727
    return v4

    #@728
    .line 634
    .end local v29    # "_arg1":Ljava/lang/String;
    :cond_23
    const/4 v5, 0x0

    #@729
    .local v5, "_arg0":Landroid/os/Messenger;
    goto :goto_23

    #@72a
    .line 644
    .end local v5    # "_arg0":Landroid/os/Messenger;
    :sswitch_31
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@72d
    move-object/from16 v0, p2

    #@72f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@732
    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@735
    move-result v4

    #@736
    if-eqz v4, :cond_24

    #@738
    .line 647
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@73a
    move-object/from16 v0, p2

    #@73c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@73f
    move-result-object v19

    #@740
    check-cast v19, Landroid/net/Network;

    #@742
    .line 652
    :goto_24
    move-object/from16 v0, p0

    #@744
    move-object/from16 v1, v19

    #@746
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestBandwidthUpdate(Landroid/net/Network;)Z

    #@749
    move-result v47

    #@74a
    .line 653
    .restart local v47    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@74d
    .line 654
    if-eqz v47, :cond_25

    #@74f
    const/4 v4, 0x1

    #@750
    :goto_25
    move-object/from16 v0, p3

    #@752
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@755
    .line 655
    const/4 v4, 0x1

    #@756
    return v4

    #@757
    .line 650
    .end local v47    # "_result":Z
    :cond_24
    const/16 v19, 0x0

    #@759
    .restart local v19    # "_arg0":Landroid/net/Network;
    goto :goto_24

    #@75a
    .line 654
    .end local v19    # "_arg0":Landroid/net/Network;
    .restart local v47    # "_result":Z
    :cond_25
    const/4 v4, 0x0

    #@75b
    goto :goto_25

    #@75c
    .line 659
    .end local v47    # "_result":Z
    :sswitch_32
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@75f
    move-object/from16 v0, p2

    #@761
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@764
    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@767
    move-result v4

    #@768
    if-eqz v4, :cond_26

    #@76a
    .line 662
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    #@76c
    move-object/from16 v0, p2

    #@76e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@771
    move-result-object v5

    #@772
    check-cast v5, Landroid/os/Messenger;

    #@774
    .line 667
    :goto_26
    move-object/from16 v0, p0

    #@776
    invoke-virtual {v0, v5}, Landroid/net/IConnectivityManager$Stub;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    #@779
    .line 668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@77c
    .line 669
    const/4 v4, 0x1

    #@77d
    return v4

    #@77e
    .line 665
    :cond_26
    const/4 v5, 0x0

    #@77f
    .restart local v5    # "_arg0":Landroid/os/Messenger;
    goto :goto_26

    #@780
    .line 673
    .end local v5    # "_arg0":Landroid/os/Messenger;
    :sswitch_33
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@783
    move-object/from16 v0, p2

    #@785
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@788
    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@78b
    move-result v4

    #@78c
    if-eqz v4, :cond_27

    #@78e
    .line 676
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    #@790
    move-object/from16 v0, p2

    #@792
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@795
    move-result-object v5

    #@796
    check-cast v5, Landroid/os/Messenger;

    #@798
    .line 682
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@79b
    move-result v4

    #@79c
    if-eqz v4, :cond_28

    #@79e
    .line 683
    sget-object v4, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7a0
    move-object/from16 v0, p2

    #@7a2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7a5
    move-result-object v6

    #@7a6
    check-cast v6, Landroid/net/NetworkInfo;

    #@7a8
    .line 689
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7ab
    move-result v4

    #@7ac
    if-eqz v4, :cond_29

    #@7ae
    .line 690
    sget-object v4, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7b0
    move-object/from16 v0, p2

    #@7b2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7b5
    move-result-object v7

    #@7b6
    check-cast v7, Landroid/net/LinkProperties;

    #@7b8
    .line 696
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7bb
    move-result v4

    #@7bc
    if-eqz v4, :cond_2a

    #@7be
    .line 697
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7c0
    move-object/from16 v0, p2

    #@7c2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7c5
    move-result-object v8

    #@7c6
    check-cast v8, Landroid/net/NetworkCapabilities;

    #@7c8
    .line 703
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7cb
    move-result v9

    #@7cc
    .line 705
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7cf
    move-result v4

    #@7d0
    if-eqz v4, :cond_2b

    #@7d2
    .line 706
    sget-object v4, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7d4
    move-object/from16 v0, p2

    #@7d6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7d9
    move-result-object v10

    #@7da
    check-cast v10, Landroid/net/NetworkMisc;

    #@7dc
    :goto_2b
    move-object/from16 v4, p0

    #@7de
    .line 711
    invoke-virtual/range {v4 .. v10}, Landroid/net/IConnectivityManager$Stub;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    #@7e1
    move-result v35

    #@7e2
    .line 712
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e5
    .line 713
    move-object/from16 v0, p3

    #@7e7
    move/from16 v1, v35

    #@7e9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7ec
    .line 714
    const/4 v4, 0x1

    #@7ed
    return v4

    #@7ee
    .line 679
    .end local v9    # "_arg4":I
    .end local v35    # "_result":I
    :cond_27
    const/4 v5, 0x0

    #@7ef
    .restart local v5    # "_arg0":Landroid/os/Messenger;
    goto :goto_27

    #@7f0
    .line 686
    .end local v5    # "_arg0":Landroid/os/Messenger;
    :cond_28
    const/4 v6, 0x0

    #@7f1
    .local v6, "_arg1":Landroid/net/NetworkInfo;
    goto :goto_28

    #@7f2
    .line 693
    .end local v6    # "_arg1":Landroid/net/NetworkInfo;
    :cond_29
    const/4 v7, 0x0

    #@7f3
    .local v7, "_arg2":Landroid/net/LinkProperties;
    goto :goto_29

    #@7f4
    .line 700
    .end local v7    # "_arg2":Landroid/net/LinkProperties;
    :cond_2a
    const/4 v8, 0x0

    #@7f5
    .local v8, "_arg3":Landroid/net/NetworkCapabilities;
    goto :goto_2a

    #@7f6
    .line 709
    .end local v8    # "_arg3":Landroid/net/NetworkCapabilities;
    .restart local v9    # "_arg4":I
    :cond_2b
    const/4 v10, 0x0

    #@7f7
    .local v10, "_arg5":Landroid/net/NetworkMisc;
    goto :goto_2b

    #@7f8
    .line 718
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Landroid/net/NetworkMisc;
    :sswitch_34
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@7fb
    move-object/from16 v0, p2

    #@7fd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@800
    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@803
    move-result v4

    #@804
    if-eqz v4, :cond_2c

    #@806
    .line 721
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@808
    move-object/from16 v0, p2

    #@80a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@80d
    move-result-object v12

    #@80e
    check-cast v12, Landroid/net/NetworkCapabilities;

    #@810
    .line 727
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@813
    move-result v4

    #@814
    if-eqz v4, :cond_2d

    #@816
    .line 728
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    #@818
    move-object/from16 v0, p2

    #@81a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@81d
    move-result-object v13

    #@81e
    check-cast v13, Landroid/os/Messenger;

    #@820
    .line 734
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@823
    move-result v14

    #@824
    .line 736
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@827
    move-result-object v15

    #@828
    .line 738
    .local v15, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@82b
    move-result v9

    #@82c
    .restart local v9    # "_arg4":I
    move-object/from16 v11, p0

    #@82e
    move/from16 v16, v9

    #@830
    .line 739
    invoke-virtual/range {v11 .. v16}, Landroid/net/IConnectivityManager$Stub;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    #@833
    move-result-object v41

    #@834
    .line 740
    .local v41, "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@837
    .line 741
    if-eqz v41, :cond_2e

    #@839
    .line 742
    const/4 v4, 0x1

    #@83a
    move-object/from16 v0, p3

    #@83c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@83f
    .line 743
    const/4 v4, 0x1

    #@840
    move-object/from16 v0, v41

    #@842
    move-object/from16 v1, p3

    #@844
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@847
    .line 748
    :goto_2e
    const/4 v4, 0x1

    #@848
    return v4

    #@849
    .line 724
    .end local v9    # "_arg4":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/IBinder;
    .end local v41    # "_result":Landroid/net/NetworkRequest;
    :cond_2c
    const/4 v12, 0x0

    #@84a
    .local v12, "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_2c

    #@84b
    .line 731
    .end local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_2d
    const/4 v13, 0x0

    #@84c
    .local v13, "_arg1":Landroid/os/Messenger;
    goto :goto_2d

    #@84d
    .line 746
    .end local v13    # "_arg1":Landroid/os/Messenger;
    .restart local v9    # "_arg4":I
    .restart local v14    # "_arg2":I
    .restart local v15    # "_arg3":Landroid/os/IBinder;
    .restart local v41    # "_result":Landroid/net/NetworkRequest;
    :cond_2e
    const/4 v4, 0x0

    #@84e
    move-object/from16 v0, p3

    #@850
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@853
    goto :goto_2e

    #@854
    .line 752
    .end local v9    # "_arg4":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/IBinder;
    .end local v41    # "_result":Landroid/net/NetworkRequest;
    :sswitch_35
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@857
    move-object/from16 v0, p2

    #@859
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@85c
    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@85f
    move-result v4

    #@860
    if-eqz v4, :cond_2f

    #@862
    .line 755
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@864
    move-object/from16 v0, p2

    #@866
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@869
    move-result-object v12

    #@86a
    check-cast v12, Landroid/net/NetworkCapabilities;

    #@86c
    .line 761
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@86f
    move-result v4

    #@870
    if-eqz v4, :cond_30

    #@872
    .line 762
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@874
    move-object/from16 v0, p2

    #@876
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@879
    move-result-object v28

    #@87a
    check-cast v28, Landroid/app/PendingIntent;

    #@87c
    .line 767
    :goto_30
    move-object/from16 v0, p0

    #@87e
    move-object/from16 v1, v28

    #@880
    invoke-virtual {v0, v12, v1}, Landroid/net/IConnectivityManager$Stub;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;

    #@883
    move-result-object v41

    #@884
    .line 768
    .restart local v41    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@887
    .line 769
    if-eqz v41, :cond_31

    #@889
    .line 770
    const/4 v4, 0x1

    #@88a
    move-object/from16 v0, p3

    #@88c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@88f
    .line 771
    const/4 v4, 0x1

    #@890
    move-object/from16 v0, v41

    #@892
    move-object/from16 v1, p3

    #@894
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@897
    .line 776
    :goto_31
    const/4 v4, 0x1

    #@898
    return v4

    #@899
    .line 758
    .end local v41    # "_result":Landroid/net/NetworkRequest;
    :cond_2f
    const/4 v12, 0x0

    #@89a
    .restart local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_2f

    #@89b
    .line 765
    .end local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_30
    const/16 v28, 0x0

    #@89d
    .local v28, "_arg1":Landroid/app/PendingIntent;
    goto :goto_30

    #@89e
    .line 774
    .end local v28    # "_arg1":Landroid/app/PendingIntent;
    .restart local v41    # "_result":Landroid/net/NetworkRequest;
    :cond_31
    const/4 v4, 0x0

    #@89f
    move-object/from16 v0, p3

    #@8a1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8a4
    goto :goto_31

    #@8a5
    .line 780
    .end local v41    # "_result":Landroid/net/NetworkRequest;
    :sswitch_36
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@8a8
    move-object/from16 v0, p2

    #@8aa
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8ad
    .line 782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b0
    move-result v4

    #@8b1
    if-eqz v4, :cond_32

    #@8b3
    .line 783
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8b5
    move-object/from16 v0, p2

    #@8b7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8ba
    move-result-object v18

    #@8bb
    check-cast v18, Landroid/app/PendingIntent;

    #@8bd
    .line 788
    :goto_32
    move-object/from16 v0, p0

    #@8bf
    move-object/from16 v1, v18

    #@8c1
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    #@8c4
    .line 789
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c7
    .line 790
    const/4 v4, 0x1

    #@8c8
    return v4

    #@8c9
    .line 786
    :cond_32
    const/16 v18, 0x0

    #@8cb
    .local v18, "_arg0":Landroid/app/PendingIntent;
    goto :goto_32

    #@8cc
    .line 794
    .end local v18    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_37
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@8cf
    move-object/from16 v0, p2

    #@8d1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d4
    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d7
    move-result v4

    #@8d8
    if-eqz v4, :cond_33

    #@8da
    .line 797
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8dc
    move-object/from16 v0, p2

    #@8de
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8e1
    move-result-object v12

    #@8e2
    check-cast v12, Landroid/net/NetworkCapabilities;

    #@8e4
    .line 803
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8e7
    move-result v4

    #@8e8
    if-eqz v4, :cond_34

    #@8ea
    .line 804
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8ec
    move-object/from16 v0, p2

    #@8ee
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8f1
    move-result-object v13

    #@8f2
    check-cast v13, Landroid/os/Messenger;

    #@8f4
    .line 810
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8f7
    move-result-object v32

    #@8f8
    .line 811
    .local v32, "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@8fa
    move-object/from16 v1, v32

    #@8fc
    invoke-virtual {v0, v12, v13, v1}, Landroid/net/IConnectivityManager$Stub;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    #@8ff
    move-result-object v41

    #@900
    .line 812
    .restart local v41    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@903
    .line 813
    if-eqz v41, :cond_35

    #@905
    .line 814
    const/4 v4, 0x1

    #@906
    move-object/from16 v0, p3

    #@908
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@90b
    .line 815
    const/4 v4, 0x1

    #@90c
    move-object/from16 v0, v41

    #@90e
    move-object/from16 v1, p3

    #@910
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@913
    .line 820
    :goto_35
    const/4 v4, 0x1

    #@914
    return v4

    #@915
    .line 800
    .end local v32    # "_arg2":Landroid/os/IBinder;
    .end local v41    # "_result":Landroid/net/NetworkRequest;
    :cond_33
    const/4 v12, 0x0

    #@916
    .restart local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_33

    #@917
    .line 807
    .end local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_34
    const/4 v13, 0x0

    #@918
    .restart local v13    # "_arg1":Landroid/os/Messenger;
    goto :goto_34

    #@919
    .line 818
    .end local v13    # "_arg1":Landroid/os/Messenger;
    .restart local v32    # "_arg2":Landroid/os/IBinder;
    .restart local v41    # "_result":Landroid/net/NetworkRequest;
    :cond_35
    const/4 v4, 0x0

    #@91a
    move-object/from16 v0, p3

    #@91c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@91f
    goto :goto_35

    #@920
    .line 824
    .end local v32    # "_arg2":Landroid/os/IBinder;
    .end local v41    # "_result":Landroid/net/NetworkRequest;
    :sswitch_38
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@923
    move-object/from16 v0, p2

    #@925
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@928
    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@92b
    move-result v4

    #@92c
    if-eqz v4, :cond_36

    #@92e
    .line 827
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@930
    move-object/from16 v0, p2

    #@932
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@935
    move-result-object v12

    #@936
    check-cast v12, Landroid/net/NetworkCapabilities;

    #@938
    .line 833
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@93b
    move-result v4

    #@93c
    if-eqz v4, :cond_37

    #@93e
    .line 834
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@940
    move-object/from16 v0, p2

    #@942
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@945
    move-result-object v28

    #@946
    check-cast v28, Landroid/app/PendingIntent;

    #@948
    .line 839
    :goto_37
    move-object/from16 v0, p0

    #@94a
    move-object/from16 v1, v28

    #@94c
    invoke-virtual {v0, v12, v1}, Landroid/net/IConnectivityManager$Stub;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V

    #@94f
    .line 840
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@952
    .line 841
    const/4 v4, 0x1

    #@953
    return v4

    #@954
    .line 830
    :cond_36
    const/4 v12, 0x0

    #@955
    .restart local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_36

    #@956
    .line 837
    .end local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_37
    const/16 v28, 0x0

    #@958
    .restart local v28    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_37

    #@959
    .line 845
    .end local v28    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_39
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@95c
    move-object/from16 v0, p2

    #@95e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@961
    .line 847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@964
    move-result v4

    #@965
    if-eqz v4, :cond_38

    #@967
    .line 848
    sget-object v4, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@969
    move-object/from16 v0, p2

    #@96b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@96e
    move-result-object v20

    #@96f
    check-cast v20, Landroid/net/NetworkRequest;

    #@971
    .line 853
    :goto_38
    move-object/from16 v0, p0

    #@973
    move-object/from16 v1, v20

    #@975
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    #@978
    .line 854
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@97b
    .line 855
    const/4 v4, 0x1

    #@97c
    return v4

    #@97d
    .line 851
    :cond_38
    const/16 v20, 0x0

    #@97f
    .local v20, "_arg0":Landroid/net/NetworkRequest;
    goto :goto_38

    #@980
    .line 859
    .end local v20    # "_arg0":Landroid/net/NetworkRequest;
    :sswitch_3a
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@983
    move-object/from16 v0, p2

    #@985
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@988
    .line 861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@98b
    move-result v4

    #@98c
    if-eqz v4, :cond_39

    #@98e
    .line 862
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@990
    move-object/from16 v0, p2

    #@992
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@995
    move-result-object v19

    #@996
    check-cast v19, Landroid/net/Network;

    #@998
    .line 868
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@99b
    move-result v4

    #@99c
    if-eqz v4, :cond_3a

    #@99e
    const/16 v30, 0x1

    #@9a0
    .line 870
    .restart local v30    # "_arg1":Z
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9a3
    move-result v4

    #@9a4
    if-eqz v4, :cond_3b

    #@9a6
    const/16 v34, 0x1

    #@9a8
    .line 871
    .restart local v34    # "_arg2":Z
    :goto_3b
    move-object/from16 v0, p0

    #@9aa
    move-object/from16 v1, v19

    #@9ac
    move/from16 v2, v30

    #@9ae
    move/from16 v3, v34

    #@9b0
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    #@9b3
    .line 872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9b6
    .line 873
    const/4 v4, 0x1

    #@9b7
    return v4

    #@9b8
    .line 865
    .end local v30    # "_arg1":Z
    .end local v34    # "_arg2":Z
    :cond_39
    const/16 v19, 0x0

    #@9ba
    .restart local v19    # "_arg0":Landroid/net/Network;
    goto :goto_39

    #@9bb
    .line 868
    .end local v19    # "_arg0":Landroid/net/Network;
    :cond_3a
    const/16 v30, 0x0

    #@9bd
    .restart local v30    # "_arg1":Z
    goto :goto_3a

    #@9be
    .line 870
    :cond_3b
    const/16 v34, 0x0

    #@9c0
    .restart local v34    # "_arg2":Z
    goto :goto_3b

    #@9c1
    .line 877
    .end local v30    # "_arg1":Z
    .end local v34    # "_arg2":Z
    :sswitch_3b
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@9c4
    move-object/from16 v0, p2

    #@9c6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c9
    .line 879
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9cc
    move-result v17

    #@9cd
    .line 880
    .restart local v17    # "_arg0":I
    move-object/from16 v0, p0

    #@9cf
    move/from16 v1, v17

    #@9d1
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getRestoreDefaultNetworkDelay(I)I

    #@9d4
    move-result v35

    #@9d5
    .line 881
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9d8
    .line 882
    move-object/from16 v0, p3

    #@9da
    move/from16 v1, v35

    #@9dc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9df
    .line 883
    const/4 v4, 0x1

    #@9e0
    return v4

    #@9e1
    .line 887
    .end local v17    # "_arg0":I
    .end local v35    # "_result":I
    :sswitch_3c
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@9e4
    move-object/from16 v0, p2

    #@9e6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9e9
    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9ec
    move-result-object v24

    #@9ed
    .line 891
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9f0
    move-result v27

    #@9f1
    .line 892
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    #@9f3
    move-object/from16 v1, v24

    #@9f5
    move/from16 v2, v27

    #@9f7
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->addVpnAddress(Ljava/lang/String;I)Z

    #@9fa
    move-result v47

    #@9fb
    .line 893
    .restart local v47    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9fe
    .line 894
    if-eqz v47, :cond_3c

    #@a00
    const/4 v4, 0x1

    #@a01
    :goto_3c
    move-object/from16 v0, p3

    #@a03
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a06
    .line 895
    const/4 v4, 0x1

    #@a07
    return v4

    #@a08
    .line 894
    :cond_3c
    const/4 v4, 0x0

    #@a09
    goto :goto_3c

    #@a0a
    .line 899
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v47    # "_result":Z
    :sswitch_3d
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@a0d
    move-object/from16 v0, p2

    #@a0f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a12
    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a15
    move-result-object v24

    #@a16
    .line 903
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a19
    move-result v27

    #@a1a
    .line 904
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    #@a1c
    move-object/from16 v1, v24

    #@a1e
    move/from16 v2, v27

    #@a20
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->removeVpnAddress(Ljava/lang/String;I)Z

    #@a23
    move-result v47

    #@a24
    .line 905
    .restart local v47    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a27
    .line 906
    if-eqz v47, :cond_3d

    #@a29
    const/4 v4, 0x1

    #@a2a
    :goto_3d
    move-object/from16 v0, p3

    #@a2c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a2f
    .line 907
    const/4 v4, 0x1

    #@a30
    return v4

    #@a31
    .line 906
    :cond_3d
    const/4 v4, 0x0

    #@a32
    goto :goto_3d

    #@a33
    .line 911
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v47    # "_result":Z
    :sswitch_3e
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@a36
    move-object/from16 v0, p2

    #@a38
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a3b
    .line 913
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a3d
    move-object/from16 v0, p2

    #@a3f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@a42
    move-result-object v26

    #@a43
    check-cast v26, [Landroid/net/Network;

    #@a45
    .line 914
    .local v26, "_arg0":[Landroid/net/Network;
    move-object/from16 v0, p0

    #@a47
    move-object/from16 v1, v26

    #@a49
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    #@a4c
    move-result v47

    #@a4d
    .line 915
    .restart local v47    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a50
    .line 916
    if-eqz v47, :cond_3e

    #@a52
    const/4 v4, 0x1

    #@a53
    :goto_3e
    move-object/from16 v0, p3

    #@a55
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a58
    .line 917
    const/4 v4, 0x1

    #@a59
    return v4

    #@a5a
    .line 916
    :cond_3e
    const/4 v4, 0x0

    #@a5b
    goto :goto_3e

    #@a5c
    .line 921
    .end local v26    # "_arg0":[Landroid/net/Network;
    .end local v47    # "_result":Z
    :sswitch_3f
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@a5f
    move-object/from16 v0, p2

    #@a61
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a64
    .line 922
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->factoryReset()V

    #@a67
    .line 923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a6a
    .line 924
    const/4 v4, 0x1

    #@a6b
    return v4

    #@a6c
    .line 42
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
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

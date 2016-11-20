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

.field static final TRANSACTION_addVpnAddress:I = 0x44

.field static final TRANSACTION_checkMobileProvisioning:I = 0x31

.field static final TRANSACTION_establishVpn:I = 0x29

.field static final TRANSACTION_factoryReset:I = 0x47

.field static final TRANSACTION_getActiveLinkProperties:I = 0xc

.field static final TRANSACTION_getActiveNetwork:I = 0x1

.field static final TRANSACTION_getActiveNetworkForUid:I = 0x2

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x3

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x4

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0x11

.field static final TRANSACTION_getAllNetworkInfo:I = 0x7

.field static final TRANSACTION_getAllNetworkState:I = 0x10

.field static final TRANSACTION_getAllNetworks:I = 0x9

.field static final TRANSACTION_getAllVpnInfo:I = 0x2d

.field static final TRANSACTION_getAlwaysOnVpnPackage:I = 0x30

.field static final TRANSACTION_getCaptivePortalServerUrl:I = 0x4a

.field static final TRANSACTION_getDefaultNetworkCapabilitiesForUser:I = 0xa

.field static final TRANSACTION_getGlobalProxy:I = 0x24

.field static final TRANSACTION_getLastTetherError:I = 0x16

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x2c

.field static final TRANSACTION_getLinkProperties:I = 0xe

.field static final TRANSACTION_getLinkPropertiesForType:I = 0xd

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x32

.field static final TRANSACTION_getNetworkCapabilities:I = 0xf

.field static final TRANSACTION_getNetworkForType:I = 0x8

.field static final TRANSACTION_getNetworkInfo:I = 0x5

.field static final TRANSACTION_getNetworkInfoForUid:I = 0x6

.field static final TRANSACTION_getProxyForNetwork:I = 0x26

.field static final TRANSACTION_getRestoreDefaultNetworkDelay:I = 0x43

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x20

.field static final TRANSACTION_getTetherableIfaces:I = 0x1a

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x1e

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x1f

.field static final TRANSACTION_getTetheredDhcpRanges:I = 0x1d

.field static final TRANSACTION_getTetheredIfaces:I = 0x1b

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x1c

.field static final TRANSACTION_getVpnConfig:I = 0x2a

.field static final TRANSACTION_isActiveNetworkMetered:I = 0x12

.field static final TRANSACTION_isNetworkSupported:I = 0xb

.field static final TRANSACTION_isTetheringSupported:I = 0x17

.field static final TRANSACTION_listenForNetwork:I = 0x3c

.field static final TRANSACTION_pendingListenForNetwork:I = 0x3d

.field static final TRANSACTION_pendingRequestForNetwork:I = 0x3a

.field static final TRANSACTION_prepareVpn:I = 0x27

.field static final TRANSACTION_registerNetworkAgent:I = 0x38

.field static final TRANSACTION_registerNetworkFactory:I = 0x35

.field static final TRANSACTION_releaseNetworkRequest:I = 0x40

.field static final TRANSACTION_releasePendingNetworkRequest:I = 0x3b

.field static final TRANSACTION_removeVpnAddress:I = 0x45

.field static final TRANSACTION_reportInetCondition:I = 0x22

.field static final TRANSACTION_reportNetworkConnectivity:I = 0x23

.field static final TRANSACTION_requestBandwidthUpdate:I = 0x36

.field static final TRANSACTION_requestLinkProperties:I = 0x3e

.field static final TRANSACTION_requestNetwork:I = 0x39

.field static final TRANSACTION_requestNetworkCapabilities:I = 0x3f

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x13

.field static final TRANSACTION_setAcceptUnvalidated:I = 0x41

.field static final TRANSACTION_setAirplaneMode:I = 0x34

.field static final TRANSACTION_setAlwaysOnVpnPackage:I = 0x2f

.field static final TRANSACTION_setAvoidUnvalidated:I = 0x42

.field static final TRANSACTION_setGlobalProxy:I = 0x25

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x33

.field static final TRANSACTION_setUnderlyingNetworksForVpn:I = 0x46

.field static final TRANSACTION_setUsbTethering:I = 0x21

.field static final TRANSACTION_setVpnPackageAuthorization:I = 0x28

.field static final TRANSACTION_startLegacyVpn:I = 0x2b

.field static final TRANSACTION_startNattKeepalive:I = 0x48

.field static final TRANSACTION_startTethering:I = 0x18

.field static final TRANSACTION_stopKeepalive:I = 0x49

.field static final TRANSACTION_stopTethering:I = 0x19

.field static final TRANSACTION_tether:I = 0x14

.field static final TRANSACTION_unregisterNetworkFactory:I = 0x37

.field static final TRANSACTION_untether:I = 0x15

.field static final TRANSACTION_updateLockdownVpn:I = 0x2e


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
    .locals 60
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
    .line 1099
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
    move-result-object v43

    #@1e
    .line 53
    .local v43, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 54
    if-eqz v43, :cond_0

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
    move-object/from16 v0, v43

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
    .end local v43    # "_result":Landroid/net/Network;
    :sswitch_2
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@3d
    move-object/from16 v0, p2

    #@3f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v24

    #@46
    .line 69
    .local v24, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_1

    #@4c
    const/16 v36, 0x1

    #@4e
    .line 70
    .local v36, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    #@50
    move/from16 v1, v24

    #@52
    move/from16 v2, v36

    #@54
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkForUid(IZ)Landroid/net/Network;

    #@57
    move-result-object v43

    #@58
    .line 71
    .restart local v43    # "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b
    .line 72
    if-eqz v43, :cond_2

    #@5d
    .line 73
    const/4 v4, 0x1

    #@5e
    move-object/from16 v0, p3

    #@60
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@63
    .line 74
    const/4 v4, 0x1

    #@64
    move-object/from16 v0, v43

    #@66
    move-object/from16 v1, p3

    #@68
    invoke-virtual {v0, v1, v4}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    #@6b
    .line 79
    :goto_2
    const/4 v4, 0x1

    #@6c
    return v4

    #@6d
    .line 69
    .end local v36    # "_arg1":Z
    .end local v43    # "_result":Landroid/net/Network;
    :cond_1
    const/16 v36, 0x0

    #@6f
    goto :goto_1

    #@70
    .line 77
    .restart local v36    # "_arg1":Z
    .restart local v43    # "_result":Landroid/net/Network;
    :cond_2
    const/4 v4, 0x0

    #@71
    move-object/from16 v0, p3

    #@73
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@76
    goto :goto_2

    #@77
    .line 83
    .end local v24    # "_arg0":I
    .end local v36    # "_arg1":Z
    .end local v43    # "_result":Landroid/net/Network;
    :sswitch_3
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@7a
    move-object/from16 v0, p2

    #@7c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f
    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@82
    move-result-object v45

    #@83
    .line 85
    .local v45, "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@86
    .line 86
    if-eqz v45, :cond_3

    #@88
    .line 87
    const/4 v4, 0x1

    #@89
    move-object/from16 v0, p3

    #@8b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8e
    .line 88
    const/4 v4, 0x1

    #@8f
    move-object/from16 v0, v45

    #@91
    move-object/from16 v1, p3

    #@93
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@96
    .line 93
    :goto_3
    const/4 v4, 0x1

    #@97
    return v4

    #@98
    .line 91
    :cond_3
    const/4 v4, 0x0

    #@99
    move-object/from16 v0, p3

    #@9b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9e
    goto :goto_3

    #@9f
    .line 97
    .end local v45    # "_result":Landroid/net/NetworkInfo;
    :sswitch_4
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@a2
    move-object/from16 v0, p2

    #@a4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a7
    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@aa
    move-result v24

    #@ab
    .line 101
    .restart local v24    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ae
    move-result v4

    #@af
    if-eqz v4, :cond_4

    #@b1
    const/16 v36, 0x1

    #@b3
    .line 102
    .restart local v36    # "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    #@b5
    move/from16 v1, v24

    #@b7
    move/from16 v2, v36

    #@b9
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    #@bc
    move-result-object v45

    #@bd
    .line 103
    .restart local v45    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c0
    .line 104
    if-eqz v45, :cond_5

    #@c2
    .line 105
    const/4 v4, 0x1

    #@c3
    move-object/from16 v0, p3

    #@c5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@c8
    .line 106
    const/4 v4, 0x1

    #@c9
    move-object/from16 v0, v45

    #@cb
    move-object/from16 v1, p3

    #@cd
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@d0
    .line 111
    :goto_5
    const/4 v4, 0x1

    #@d1
    return v4

    #@d2
    .line 101
    .end local v36    # "_arg1":Z
    .end local v45    # "_result":Landroid/net/NetworkInfo;
    :cond_4
    const/16 v36, 0x0

    #@d4
    goto :goto_4

    #@d5
    .line 109
    .restart local v36    # "_arg1":Z
    .restart local v45    # "_result":Landroid/net/NetworkInfo;
    :cond_5
    const/4 v4, 0x0

    #@d6
    move-object/from16 v0, p3

    #@d8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@db
    goto :goto_5

    #@dc
    .line 115
    .end local v24    # "_arg0":I
    .end local v36    # "_arg1":Z
    .end local v45    # "_result":Landroid/net/NetworkInfo;
    :sswitch_5
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@df
    move-object/from16 v0, p2

    #@e1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e4
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e7
    move-result v24

    #@e8
    .line 118
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    #@ea
    move/from16 v1, v24

    #@ec
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    #@ef
    move-result-object v45

    #@f0
    .line 119
    .restart local v45    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f3
    .line 120
    if-eqz v45, :cond_6

    #@f5
    .line 121
    const/4 v4, 0x1

    #@f6
    move-object/from16 v0, p3

    #@f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@fb
    .line 122
    const/4 v4, 0x1

    #@fc
    move-object/from16 v0, v45

    #@fe
    move-object/from16 v1, p3

    #@100
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@103
    .line 127
    :goto_6
    const/4 v4, 0x1

    #@104
    return v4

    #@105
    .line 125
    :cond_6
    const/4 v4, 0x0

    #@106
    move-object/from16 v0, p3

    #@108
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@10b
    goto :goto_6

    #@10c
    .line 131
    .end local v24    # "_arg0":I
    .end local v45    # "_result":Landroid/net/NetworkInfo;
    :sswitch_6
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@10f
    move-object/from16 v0, p2

    #@111
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@114
    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@117
    move-result v4

    #@118
    if-eqz v4, :cond_7

    #@11a
    .line 134
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11c
    move-object/from16 v0, p2

    #@11e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@121
    move-result-object v17

    #@122
    check-cast v17, Landroid/net/Network;

    #@124
    .line 140
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@127
    move-result v18

    #@128
    .line 142
    .local v18, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12b
    move-result v4

    #@12c
    if-eqz v4, :cond_8

    #@12e
    const/16 v40, 0x1

    #@130
    .line 143
    .local v40, "_arg2":Z
    :goto_8
    move-object/from16 v0, p0

    #@132
    move-object/from16 v1, v17

    #@134
    move/from16 v2, v18

    #@136
    move/from16 v3, v40

    #@138
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    #@13b
    move-result-object v45

    #@13c
    .line 144
    .restart local v45    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13f
    .line 145
    if-eqz v45, :cond_9

    #@141
    .line 146
    const/4 v4, 0x1

    #@142
    move-object/from16 v0, p3

    #@144
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@147
    .line 147
    const/4 v4, 0x1

    #@148
    move-object/from16 v0, v45

    #@14a
    move-object/from16 v1, p3

    #@14c
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@14f
    .line 152
    :goto_9
    const/4 v4, 0x1

    #@150
    return v4

    #@151
    .line 137
    .end local v18    # "_arg1":I
    .end local v40    # "_arg2":Z
    .end local v45    # "_result":Landroid/net/NetworkInfo;
    :cond_7
    const/16 v17, 0x0

    #@153
    .local v17, "_arg0":Landroid/net/Network;
    goto :goto_7

    #@154
    .line 142
    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v18    # "_arg1":I
    :cond_8
    const/16 v40, 0x0

    #@156
    goto :goto_8

    #@157
    .line 150
    .restart local v40    # "_arg2":Z
    .restart local v45    # "_result":Landroid/net/NetworkInfo;
    :cond_9
    const/4 v4, 0x0

    #@158
    move-object/from16 v0, p3

    #@15a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@15d
    goto :goto_9

    #@15e
    .line 156
    .end local v18    # "_arg1":I
    .end local v40    # "_arg2":Z
    .end local v45    # "_result":Landroid/net/NetworkInfo;
    :sswitch_7
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@161
    move-object/from16 v0, p2

    #@163
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@166
    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    #@169
    move-result-object v56

    #@16a
    .line 158
    .local v56, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16d
    .line 159
    const/4 v4, 0x1

    #@16e
    move-object/from16 v0, p3

    #@170
    move-object/from16 v1, v56

    #@172
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@175
    .line 160
    const/4 v4, 0x1

    #@176
    return v4

    #@177
    .line 164
    .end local v56    # "_result":[Landroid/net/NetworkInfo;
    :sswitch_8
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@17a
    move-object/from16 v0, p2

    #@17c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17f
    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@182
    move-result v24

    #@183
    .line 167
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    #@185
    move/from16 v1, v24

    #@187
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkForType(I)Landroid/net/Network;

    #@18a
    move-result-object v43

    #@18b
    .line 168
    .restart local v43    # "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18e
    .line 169
    if-eqz v43, :cond_a

    #@190
    .line 170
    const/4 v4, 0x1

    #@191
    move-object/from16 v0, p3

    #@193
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@196
    .line 171
    const/4 v4, 0x1

    #@197
    move-object/from16 v0, v43

    #@199
    move-object/from16 v1, p3

    #@19b
    invoke-virtual {v0, v1, v4}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    #@19e
    .line 176
    :goto_a
    const/4 v4, 0x1

    #@19f
    return v4

    #@1a0
    .line 174
    :cond_a
    const/4 v4, 0x0

    #@1a1
    move-object/from16 v0, p3

    #@1a3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a6
    goto :goto_a

    #@1a7
    .line 180
    .end local v24    # "_arg0":I
    .end local v43    # "_result":Landroid/net/Network;
    :sswitch_9
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@1aa
    move-object/from16 v0, p2

    #@1ac
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1af
    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworks()[Landroid/net/Network;

    #@1b2
    move-result-object v54

    #@1b3
    .line 182
    .local v54, "_result":[Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b6
    .line 183
    const/4 v4, 0x1

    #@1b7
    move-object/from16 v0, p3

    #@1b9
    move-object/from16 v1, v54

    #@1bb
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@1be
    .line 184
    const/4 v4, 0x1

    #@1bf
    return v4

    #@1c0
    .line 188
    .end local v54    # "_result":[Landroid/net/Network;
    :sswitch_a
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@1c3
    move-object/from16 v0, p2

    #@1c5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c8
    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cb
    move-result v24

    #@1cc
    .line 191
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    #@1ce
    move/from16 v1, v24

    #@1d0
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    #@1d3
    move-result-object v55

    #@1d4
    .line 192
    .local v55, "_result":[Landroid/net/NetworkCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d7
    .line 193
    const/4 v4, 0x1

    #@1d8
    move-object/from16 v0, p3

    #@1da
    move-object/from16 v1, v55

    #@1dc
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@1df
    .line 194
    const/4 v4, 0x1

    #@1e0
    return v4

    #@1e1
    .line 198
    .end local v24    # "_arg0":I
    .end local v55    # "_result":[Landroid/net/NetworkCapabilities;
    :sswitch_b
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@1e4
    move-object/from16 v0, p2

    #@1e6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e9
    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ec
    move-result v24

    #@1ed
    .line 201
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    #@1ef
    move/from16 v1, v24

    #@1f1
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    #@1f4
    move-result v53

    #@1f5
    .line 202
    .local v53, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f8
    .line 203
    if-eqz v53, :cond_b

    #@1fa
    const/4 v4, 0x1

    #@1fb
    :goto_b
    move-object/from16 v0, p3

    #@1fd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@200
    .line 204
    const/4 v4, 0x1

    #@201
    return v4

    #@202
    .line 203
    :cond_b
    const/4 v4, 0x0

    #@203
    goto :goto_b

    #@204
    .line 208
    .end local v24    # "_arg0":I
    .end local v53    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@207
    move-object/from16 v0, p2

    #@209
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20c
    .line 209
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    #@20f
    move-result-object v42

    #@210
    .line 210
    .local v42, "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@213
    .line 211
    if-eqz v42, :cond_c

    #@215
    .line 212
    const/4 v4, 0x1

    #@216
    move-object/from16 v0, p3

    #@218
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@21b
    .line 213
    const/4 v4, 0x1

    #@21c
    move-object/from16 v0, v42

    #@21e
    move-object/from16 v1, p3

    #@220
    invoke-virtual {v0, v1, v4}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    #@223
    .line 218
    :goto_c
    const/4 v4, 0x1

    #@224
    return v4

    #@225
    .line 216
    :cond_c
    const/4 v4, 0x0

    #@226
    move-object/from16 v0, p3

    #@228
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@22b
    goto :goto_c

    #@22c
    .line 222
    .end local v42    # "_result":Landroid/net/LinkProperties;
    :sswitch_d
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@22f
    move-object/from16 v0, p2

    #@231
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@234
    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@237
    move-result v24

    #@238
    .line 225
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    #@23a
    move/from16 v1, v24

    #@23c
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    #@23f
    move-result-object v42

    #@240
    .line 226
    .restart local v42    # "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@243
    .line 227
    if-eqz v42, :cond_d

    #@245
    .line 228
    const/4 v4, 0x1

    #@246
    move-object/from16 v0, p3

    #@248
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@24b
    .line 229
    const/4 v4, 0x1

    #@24c
    move-object/from16 v0, v42

    #@24e
    move-object/from16 v1, p3

    #@250
    invoke-virtual {v0, v1, v4}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    #@253
    .line 234
    :goto_d
    const/4 v4, 0x1

    #@254
    return v4

    #@255
    .line 232
    :cond_d
    const/4 v4, 0x0

    #@256
    move-object/from16 v0, p3

    #@258
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@25b
    goto :goto_d

    #@25c
    .line 238
    .end local v24    # "_arg0":I
    .end local v42    # "_result":Landroid/net/LinkProperties;
    :sswitch_e
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@25f
    move-object/from16 v0, p2

    #@261
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@264
    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@267
    move-result v4

    #@268
    if-eqz v4, :cond_e

    #@26a
    .line 241
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26c
    move-object/from16 v0, p2

    #@26e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@271
    move-result-object v17

    #@272
    check-cast v17, Landroid/net/Network;

    #@274
    .line 246
    :goto_e
    move-object/from16 v0, p0

    #@276
    move-object/from16 v1, v17

    #@278
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    #@27b
    move-result-object v42

    #@27c
    .line 247
    .restart local v42    # "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27f
    .line 248
    if-eqz v42, :cond_f

    #@281
    .line 249
    const/4 v4, 0x1

    #@282
    move-object/from16 v0, p3

    #@284
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@287
    .line 250
    const/4 v4, 0x1

    #@288
    move-object/from16 v0, v42

    #@28a
    move-object/from16 v1, p3

    #@28c
    invoke-virtual {v0, v1, v4}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    #@28f
    .line 255
    :goto_f
    const/4 v4, 0x1

    #@290
    return v4

    #@291
    .line 244
    .end local v42    # "_result":Landroid/net/LinkProperties;
    :cond_e
    const/16 v17, 0x0

    #@293
    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_e

    #@294
    .line 253
    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v42    # "_result":Landroid/net/LinkProperties;
    :cond_f
    const/4 v4, 0x0

    #@295
    move-object/from16 v0, p3

    #@297
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@29a
    goto :goto_f

    #@29b
    .line 259
    .end local v42    # "_result":Landroid/net/LinkProperties;
    :sswitch_f
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@29e
    move-object/from16 v0, p2

    #@2a0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a3
    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a6
    move-result v4

    #@2a7
    if-eqz v4, :cond_10

    #@2a9
    .line 262
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2ab
    move-object/from16 v0, p2

    #@2ad
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b0
    move-result-object v17

    #@2b1
    check-cast v17, Landroid/net/Network;

    #@2b3
    .line 267
    :goto_10
    move-object/from16 v0, p0

    #@2b5
    move-object/from16 v1, v17

    #@2b7
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    #@2ba
    move-result-object v44

    #@2bb
    .line 268
    .local v44, "_result":Landroid/net/NetworkCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2be
    .line 269
    if-eqz v44, :cond_11

    #@2c0
    .line 270
    const/4 v4, 0x1

    #@2c1
    move-object/from16 v0, p3

    #@2c3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2c6
    .line 271
    const/4 v4, 0x1

    #@2c7
    move-object/from16 v0, v44

    #@2c9
    move-object/from16 v1, p3

    #@2cb
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    #@2ce
    .line 276
    :goto_11
    const/4 v4, 0x1

    #@2cf
    return v4

    #@2d0
    .line 265
    .end local v44    # "_result":Landroid/net/NetworkCapabilities;
    :cond_10
    const/16 v17, 0x0

    #@2d2
    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_10

    #@2d3
    .line 274
    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v44    # "_result":Landroid/net/NetworkCapabilities;
    :cond_11
    const/4 v4, 0x0

    #@2d4
    move-object/from16 v0, p3

    #@2d6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2d9
    goto :goto_11

    #@2da
    .line 280
    .end local v44    # "_result":Landroid/net/NetworkCapabilities;
    :sswitch_10
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@2dd
    move-object/from16 v0, p2

    #@2df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e2
    .line 281
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    #@2e5
    move-result-object v57

    #@2e6
    .line 282
    .local v57, "_result":[Landroid/net/NetworkState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e9
    .line 283
    const/4 v4, 0x1

    #@2ea
    move-object/from16 v0, p3

    #@2ec
    move-object/from16 v1, v57

    #@2ee
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@2f1
    .line 284
    const/4 v4, 0x1

    #@2f2
    return v4

    #@2f3
    .line 288
    .end local v57    # "_result":[Landroid/net/NetworkState;
    :sswitch_11
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@2f6
    move-object/from16 v0, p2

    #@2f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fb
    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    #@2fe
    move-result-object v46

    #@2ff
    .line 290
    .local v46, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@302
    .line 291
    if-eqz v46, :cond_12

    #@304
    .line 292
    const/4 v4, 0x1

    #@305
    move-object/from16 v0, p3

    #@307
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@30a
    .line 293
    const/4 v4, 0x1

    #@30b
    move-object/from16 v0, v46

    #@30d
    move-object/from16 v1, p3

    #@30f
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@312
    .line 298
    :goto_12
    const/4 v4, 0x1

    #@313
    return v4

    #@314
    .line 296
    :cond_12
    const/4 v4, 0x0

    #@315
    move-object/from16 v0, p3

    #@317
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@31a
    goto :goto_12

    #@31b
    .line 302
    .end local v46    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_12
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@31e
    move-object/from16 v0, p2

    #@320
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@323
    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    #@326
    move-result v53

    #@327
    .line 304
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@32a
    .line 305
    if-eqz v53, :cond_13

    #@32c
    const/4 v4, 0x1

    #@32d
    :goto_13
    move-object/from16 v0, p3

    #@32f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@332
    .line 306
    const/4 v4, 0x1

    #@333
    return v4

    #@334
    .line 305
    :cond_13
    const/4 v4, 0x0

    #@335
    goto :goto_13

    #@336
    .line 310
    .end local v53    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@339
    move-object/from16 v0, p2

    #@33b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33e
    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@341
    move-result v24

    #@342
    .line 314
    .restart local v24    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@345
    move-result-object v37

    #@346
    .line 315
    .local v37, "_arg1":[B
    move-object/from16 v0, p0

    #@348
    move/from16 v1, v24

    #@34a
    move-object/from16 v2, v37

    #@34c
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[B)Z

    #@34f
    move-result v53

    #@350
    .line 316
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@353
    .line 317
    if-eqz v53, :cond_14

    #@355
    const/4 v4, 0x1

    #@356
    :goto_14
    move-object/from16 v0, p3

    #@358
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@35b
    .line 318
    const/4 v4, 0x1

    #@35c
    return v4

    #@35d
    .line 317
    :cond_14
    const/4 v4, 0x0

    #@35e
    goto :goto_14

    #@35f
    .line 322
    .end local v24    # "_arg0":I
    .end local v37    # "_arg1":[B
    .end local v53    # "_result":Z
    :sswitch_14
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@362
    move-object/from16 v0, p2

    #@364
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@367
    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36a
    move-result-object v30

    #@36b
    .line 325
    .local v30, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@36d
    move-object/from16 v1, v30

    #@36f
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    #@372
    move-result v41

    #@373
    .line 326
    .local v41, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@376
    .line 327
    move-object/from16 v0, p3

    #@378
    move/from16 v1, v41

    #@37a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@37d
    .line 328
    const/4 v4, 0x1

    #@37e
    return v4

    #@37f
    .line 332
    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_15
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@382
    move-object/from16 v0, p2

    #@384
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@387
    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@38a
    move-result-object v30

    #@38b
    .line 335
    .restart local v30    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@38d
    move-object/from16 v1, v30

    #@38f
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    #@392
    move-result v41

    #@393
    .line 336
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@396
    .line 337
    move-object/from16 v0, p3

    #@398
    move/from16 v1, v41

    #@39a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@39d
    .line 338
    const/4 v4, 0x1

    #@39e
    return v4

    #@39f
    .line 342
    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_16
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@3a2
    move-object/from16 v0, p2

    #@3a4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a7
    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3aa
    move-result-object v30

    #@3ab
    .line 345
    .restart local v30    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3ad
    move-object/from16 v1, v30

    #@3af
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    #@3b2
    move-result v41

    #@3b3
    .line 346
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b6
    .line 347
    move-object/from16 v0, p3

    #@3b8
    move/from16 v1, v41

    #@3ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3bd
    .line 348
    const/4 v4, 0x1

    #@3be
    return v4

    #@3bf
    .line 352
    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_17
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@3c2
    move-object/from16 v0, p2

    #@3c4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c7
    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    #@3ca
    move-result v53

    #@3cb
    .line 354
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ce
    .line 355
    if-eqz v53, :cond_15

    #@3d0
    const/4 v4, 0x1

    #@3d1
    :goto_15
    move-object/from16 v0, p3

    #@3d3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3d6
    .line 356
    const/4 v4, 0x1

    #@3d7
    return v4

    #@3d8
    .line 355
    :cond_15
    const/4 v4, 0x0

    #@3d9
    goto :goto_15

    #@3da
    .line 360
    .end local v53    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@3dd
    move-object/from16 v0, p2

    #@3df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e2
    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e5
    move-result v24

    #@3e6
    .line 364
    .restart local v24    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e9
    move-result v4

    #@3ea
    if-eqz v4, :cond_16

    #@3ec
    .line 365
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3ee
    move-object/from16 v0, p2

    #@3f0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f3
    move-result-object v34

    #@3f4
    check-cast v34, Landroid/os/ResultReceiver;

    #@3f6
    .line 371
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f9
    move-result v4

    #@3fa
    if-eqz v4, :cond_17

    #@3fc
    const/16 v40, 0x1

    #@3fe
    .line 372
    .restart local v40    # "_arg2":Z
    :goto_17
    move-object/from16 v0, p0

    #@400
    move/from16 v1, v24

    #@402
    move-object/from16 v2, v34

    #@404
    move/from16 v3, v40

    #@406
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->startTethering(ILandroid/os/ResultReceiver;Z)V

    #@409
    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@40c
    .line 374
    const/4 v4, 0x1

    #@40d
    return v4

    #@40e
    .line 368
    .end local v40    # "_arg2":Z
    :cond_16
    const/16 v34, 0x0

    #@410
    .local v34, "_arg1":Landroid/os/ResultReceiver;
    goto :goto_16

    #@411
    .line 371
    .end local v34    # "_arg1":Landroid/os/ResultReceiver;
    :cond_17
    const/16 v40, 0x0

    #@413
    goto :goto_17

    #@414
    .line 378
    .end local v24    # "_arg0":I
    :sswitch_19
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@417
    move-object/from16 v0, p2

    #@419
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41c
    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41f
    move-result v24

    #@420
    .line 381
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    #@422
    move/from16 v1, v24

    #@424
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->stopTethering(I)V

    #@427
    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@42a
    .line 383
    const/4 v4, 0x1

    #@42b
    return v4

    #@42c
    .line 387
    .end local v24    # "_arg0":I
    :sswitch_1a
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@42f
    move-object/from16 v0, p2

    #@431
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@434
    .line 388
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    #@437
    move-result-object v59

    #@438
    .line 389
    .local v59, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43b
    .line 390
    move-object/from16 v0, p3

    #@43d
    move-object/from16 v1, v59

    #@43f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@442
    .line 391
    const/4 v4, 0x1

    #@443
    return v4

    #@444
    .line 395
    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@447
    move-object/from16 v0, p2

    #@449
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44c
    .line 396
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    #@44f
    move-result-object v59

    #@450
    .line 397
    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@453
    .line 398
    move-object/from16 v0, p3

    #@455
    move-object/from16 v1, v59

    #@457
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@45a
    .line 399
    const/4 v4, 0x1

    #@45b
    return v4

    #@45c
    .line 403
    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@45f
    move-object/from16 v0, p2

    #@461
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@464
    .line 404
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    #@467
    move-result-object v59

    #@468
    .line 405
    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@46b
    .line 406
    move-object/from16 v0, p3

    #@46d
    move-object/from16 v1, v59

    #@46f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@472
    .line 407
    const/4 v4, 0x1

    #@473
    return v4

    #@474
    .line 411
    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@477
    move-object/from16 v0, p2

    #@479
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47c
    .line 412
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredDhcpRanges()[Ljava/lang/String;

    #@47f
    move-result-object v59

    #@480
    .line 413
    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@483
    .line 414
    move-object/from16 v0, p3

    #@485
    move-object/from16 v1, v59

    #@487
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@48a
    .line 415
    const/4 v4, 0x1

    #@48b
    return v4

    #@48c
    .line 419
    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@48f
    move-object/from16 v0, p2

    #@491
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@494
    .line 420
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    #@497
    move-result-object v59

    #@498
    .line 421
    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@49b
    .line 422
    move-object/from16 v0, p3

    #@49d
    move-object/from16 v1, v59

    #@49f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@4a2
    .line 423
    const/4 v4, 0x1

    #@4a3
    return v4

    #@4a4
    .line 427
    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@4a7
    move-object/from16 v0, p2

    #@4a9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ac
    .line 428
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    #@4af
    move-result-object v59

    #@4b0
    .line 429
    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b3
    .line 430
    move-object/from16 v0, p3

    #@4b5
    move-object/from16 v1, v59

    #@4b7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@4ba
    .line 431
    const/4 v4, 0x1

    #@4bb
    return v4

    #@4bc
    .line 435
    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@4bf
    move-object/from16 v0, p2

    #@4c1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c4
    .line 436
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    #@4c7
    move-result-object v59

    #@4c8
    .line 437
    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4cb
    .line 438
    move-object/from16 v0, p3

    #@4cd
    move-object/from16 v1, v59

    #@4cf
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@4d2
    .line 439
    const/4 v4, 0x1

    #@4d3
    return v4

    #@4d4
    .line 443
    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@4d7
    move-object/from16 v0, p2

    #@4d9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4dc
    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4df
    move-result v4

    #@4e0
    if-eqz v4, :cond_18

    #@4e2
    const/16 v31, 0x1

    #@4e4
    .line 446
    .local v31, "_arg0":Z
    :goto_18
    move-object/from16 v0, p0

    #@4e6
    move/from16 v1, v31

    #@4e8
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    #@4eb
    move-result v41

    #@4ec
    .line 447
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ef
    .line 448
    move-object/from16 v0, p3

    #@4f1
    move/from16 v1, v41

    #@4f3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4f6
    .line 449
    const/4 v4, 0x1

    #@4f7
    return v4

    #@4f8
    .line 445
    .end local v31    # "_arg0":Z
    .end local v41    # "_result":I
    :cond_18
    const/16 v31, 0x0

    #@4fa
    goto :goto_18

    #@4fb
    .line 453
    :sswitch_22
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@4fe
    move-object/from16 v0, p2

    #@500
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@503
    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@506
    move-result v24

    #@507
    .line 457
    .restart local v24    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@50a
    move-result v18

    #@50b
    .line 458
    .restart local v18    # "_arg1":I
    move-object/from16 v0, p0

    #@50d
    move/from16 v1, v24

    #@50f
    move/from16 v2, v18

    #@511
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    #@514
    .line 459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@517
    .line 460
    const/4 v4, 0x1

    #@518
    return v4

    #@519
    .line 464
    .end local v18    # "_arg1":I
    .end local v24    # "_arg0":I
    :sswitch_23
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@51c
    move-object/from16 v0, p2

    #@51e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@521
    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@524
    move-result v4

    #@525
    if-eqz v4, :cond_19

    #@527
    .line 467
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@529
    move-object/from16 v0, p2

    #@52b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@52e
    move-result-object v17

    #@52f
    check-cast v17, Landroid/net/Network;

    #@531
    .line 473
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@534
    move-result v4

    #@535
    if-eqz v4, :cond_1a

    #@537
    const/16 v36, 0x1

    #@539
    .line 474
    .restart local v36    # "_arg1":Z
    :goto_1a
    move-object/from16 v0, p0

    #@53b
    move-object/from16 v1, v17

    #@53d
    move/from16 v2, v36

    #@53f
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    #@542
    .line 475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@545
    .line 476
    const/4 v4, 0x1

    #@546
    return v4

    #@547
    .line 470
    .end local v36    # "_arg1":Z
    :cond_19
    const/16 v17, 0x0

    #@549
    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_19

    #@54a
    .line 473
    .end local v17    # "_arg0":Landroid/net/Network;
    :cond_1a
    const/16 v36, 0x0

    #@54c
    goto :goto_1a

    #@54d
    .line 480
    :sswitch_24
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@550
    move-object/from16 v0, p2

    #@552
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@555
    .line 481
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyInfo;

    #@558
    move-result-object v48

    #@559
    .line 482
    .local v48, "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@55c
    .line 483
    if-eqz v48, :cond_1b

    #@55e
    .line 484
    const/4 v4, 0x1

    #@55f
    move-object/from16 v0, p3

    #@561
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@564
    .line 485
    const/4 v4, 0x1

    #@565
    move-object/from16 v0, v48

    #@567
    move-object/from16 v1, p3

    #@569
    invoke-virtual {v0, v1, v4}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@56c
    .line 490
    :goto_1b
    const/4 v4, 0x1

    #@56d
    return v4

    #@56e
    .line 488
    :cond_1b
    const/4 v4, 0x0

    #@56f
    move-object/from16 v0, p3

    #@571
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@574
    goto :goto_1b

    #@575
    .line 494
    .end local v48    # "_result":Landroid/net/ProxyInfo;
    :sswitch_25
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@578
    move-object/from16 v0, p2

    #@57a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57d
    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@580
    move-result v4

    #@581
    if-eqz v4, :cond_1c

    #@583
    .line 497
    sget-object v4, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@585
    move-object/from16 v0, p2

    #@587
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@58a
    move-result-object v27

    #@58b
    check-cast v27, Landroid/net/ProxyInfo;

    #@58d
    .line 502
    :goto_1c
    move-object/from16 v0, p0

    #@58f
    move-object/from16 v1, v27

    #@591
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    #@594
    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@597
    .line 504
    const/4 v4, 0x1

    #@598
    return v4

    #@599
    .line 500
    :cond_1c
    const/16 v27, 0x0

    #@59b
    .local v27, "_arg0":Landroid/net/ProxyInfo;
    goto :goto_1c

    #@59c
    .line 508
    .end local v27    # "_arg0":Landroid/net/ProxyInfo;
    :sswitch_26
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@59f
    move-object/from16 v0, p2

    #@5a1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a4
    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a7
    move-result v4

    #@5a8
    if-eqz v4, :cond_1d

    #@5aa
    .line 511
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5ac
    move-object/from16 v0, p2

    #@5ae
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5b1
    move-result-object v17

    #@5b2
    check-cast v17, Landroid/net/Network;

    #@5b4
    .line 516
    :goto_1d
    move-object/from16 v0, p0

    #@5b6
    move-object/from16 v1, v17

    #@5b8
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    #@5bb
    move-result-object v48

    #@5bc
    .line 517
    .restart local v48    # "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5bf
    .line 518
    if-eqz v48, :cond_1e

    #@5c1
    .line 519
    const/4 v4, 0x1

    #@5c2
    move-object/from16 v0, p3

    #@5c4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5c7
    .line 520
    const/4 v4, 0x1

    #@5c8
    move-object/from16 v0, v48

    #@5ca
    move-object/from16 v1, p3

    #@5cc
    invoke-virtual {v0, v1, v4}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@5cf
    .line 525
    :goto_1e
    const/4 v4, 0x1

    #@5d0
    return v4

    #@5d1
    .line 514
    .end local v48    # "_result":Landroid/net/ProxyInfo;
    :cond_1d
    const/16 v17, 0x0

    #@5d3
    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_1d

    #@5d4
    .line 523
    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v48    # "_result":Landroid/net/ProxyInfo;
    :cond_1e
    const/4 v4, 0x0

    #@5d5
    move-object/from16 v0, p3

    #@5d7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5da
    goto :goto_1e

    #@5db
    .line 529
    .end local v48    # "_result":Landroid/net/ProxyInfo;
    :sswitch_27
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@5de
    move-object/from16 v0, p2

    #@5e0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e3
    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5e6
    move-result-object v30

    #@5e7
    .line 533
    .restart local v30    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5ea
    move-result-object v35

    #@5eb
    .line 535
    .local v35, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ee
    move-result v14

    #@5ef
    .line 536
    .local v14, "_arg2":I
    move-object/from16 v0, p0

    #@5f1
    move-object/from16 v1, v30

    #@5f3
    move-object/from16 v2, v35

    #@5f5
    invoke-virtual {v0, v1, v2, v14}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    #@5f8
    move-result v53

    #@5f9
    .line 537
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5fc
    .line 538
    if-eqz v53, :cond_1f

    #@5fe
    const/4 v4, 0x1

    #@5ff
    :goto_1f
    move-object/from16 v0, p3

    #@601
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@604
    .line 539
    const/4 v4, 0x1

    #@605
    return v4

    #@606
    .line 538
    :cond_1f
    const/4 v4, 0x0

    #@607
    goto :goto_1f

    #@608
    .line 543
    .end local v14    # "_arg2":I
    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v35    # "_arg1":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_28
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@60b
    move-object/from16 v0, p2

    #@60d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@610
    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@613
    move-result-object v30

    #@614
    .line 547
    .restart local v30    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@617
    move-result v18

    #@618
    .line 549
    .restart local v18    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61b
    move-result v4

    #@61c
    if-eqz v4, :cond_20

    #@61e
    const/16 v40, 0x1

    #@620
    .line 550
    .restart local v40    # "_arg2":Z
    :goto_20
    move-object/from16 v0, p0

    #@622
    move-object/from16 v1, v30

    #@624
    move/from16 v2, v18

    #@626
    move/from16 v3, v40

    #@628
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    #@62b
    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@62e
    .line 552
    const/4 v4, 0x1

    #@62f
    return v4

    #@630
    .line 549
    .end local v40    # "_arg2":Z
    :cond_20
    const/16 v40, 0x0

    #@632
    goto :goto_20

    #@633
    .line 556
    .end local v18    # "_arg1":I
    .end local v30    # "_arg0":Ljava/lang/String;
    :sswitch_29
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@636
    move-object/from16 v0, p2

    #@638
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@63b
    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63e
    move-result v4

    #@63f
    if-eqz v4, :cond_21

    #@641
    .line 559
    sget-object v4, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@643
    move-object/from16 v0, p2

    #@645
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@648
    move-result-object v28

    #@649
    check-cast v28, Lcom/android/internal/net/VpnConfig;

    #@64b
    .line 564
    :goto_21
    move-object/from16 v0, p0

    #@64d
    move-object/from16 v1, v28

    #@64f
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    #@652
    move-result-object v49

    #@653
    .line 565
    .local v49, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@656
    .line 566
    if-eqz v49, :cond_22

    #@658
    .line 567
    const/4 v4, 0x1

    #@659
    move-object/from16 v0, p3

    #@65b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@65e
    .line 568
    const/4 v4, 0x1

    #@65f
    move-object/from16 v0, v49

    #@661
    move-object/from16 v1, p3

    #@663
    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@666
    .line 573
    :goto_22
    const/4 v4, 0x1

    #@667
    return v4

    #@668
    .line 562
    .end local v49    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_21
    const/16 v28, 0x0

    #@66a
    .local v28, "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_21

    #@66b
    .line 571
    .end local v28    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .restart local v49    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_22
    const/4 v4, 0x0

    #@66c
    move-object/from16 v0, p3

    #@66e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@671
    goto :goto_22

    #@672
    .line 577
    .end local v49    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2a
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@675
    move-object/from16 v0, p2

    #@677
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67a
    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@67d
    move-result v24

    #@67e
    .line 580
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    #@680
    move/from16 v1, v24

    #@682
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    #@685
    move-result-object v51

    #@686
    .line 581
    .local v51, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@689
    .line 582
    if-eqz v51, :cond_23

    #@68b
    .line 583
    const/4 v4, 0x1

    #@68c
    move-object/from16 v0, p3

    #@68e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@691
    .line 584
    const/4 v4, 0x1

    #@692
    move-object/from16 v0, v51

    #@694
    move-object/from16 v1, p3

    #@696
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    #@699
    .line 589
    :goto_23
    const/4 v4, 0x1

    #@69a
    return v4

    #@69b
    .line 587
    :cond_23
    const/4 v4, 0x0

    #@69c
    move-object/from16 v0, p3

    #@69e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6a1
    goto :goto_23

    #@6a2
    .line 593
    .end local v24    # "_arg0":I
    .end local v51    # "_result":Lcom/android/internal/net/VpnConfig;
    :sswitch_2b
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@6a5
    move-object/from16 v0, p2

    #@6a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6aa
    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ad
    move-result v4

    #@6ae
    if-eqz v4, :cond_24

    #@6b0
    .line 596
    sget-object v4, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6b2
    move-object/from16 v0, p2

    #@6b4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6b7
    move-result-object v29

    #@6b8
    check-cast v29, Lcom/android/internal/net/VpnProfile;

    #@6ba
    .line 601
    :goto_24
    move-object/from16 v0, p0

    #@6bc
    move-object/from16 v1, v29

    #@6be
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    #@6c1
    .line 602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6c4
    .line 603
    const/4 v4, 0x1

    #@6c5
    return v4

    #@6c6
    .line 599
    :cond_24
    const/16 v29, 0x0

    #@6c8
    .local v29, "_arg0":Lcom/android/internal/net/VpnProfile;
    goto :goto_24

    #@6c9
    .line 607
    .end local v29    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :sswitch_2c
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@6cc
    move-object/from16 v0, p2

    #@6ce
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6d1
    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d4
    move-result v24

    #@6d5
    .line 610
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    #@6d7
    move/from16 v1, v24

    #@6d9
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    #@6dc
    move-result-object v50

    #@6dd
    .line 611
    .local v50, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e0
    .line 612
    if-eqz v50, :cond_25

    #@6e2
    .line 613
    const/4 v4, 0x1

    #@6e3
    move-object/from16 v0, p3

    #@6e5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6e8
    .line 614
    const/4 v4, 0x1

    #@6e9
    move-object/from16 v0, v50

    #@6eb
    move-object/from16 v1, p3

    #@6ed
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@6f0
    .line 619
    :goto_25
    const/4 v4, 0x1

    #@6f1
    return v4

    #@6f2
    .line 617
    :cond_25
    const/4 v4, 0x0

    #@6f3
    move-object/from16 v0, p3

    #@6f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6f8
    goto :goto_25

    #@6f9
    .line 623
    .end local v24    # "_arg0":I
    .end local v50    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_2d
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@6fc
    move-object/from16 v0, p2

    #@6fe
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@701
    .line 624
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    #@704
    move-result-object v58

    #@705
    .line 625
    .local v58, "_result":[Lcom/android/internal/net/VpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@708
    .line 626
    const/4 v4, 0x1

    #@709
    move-object/from16 v0, p3

    #@70b
    move-object/from16 v1, v58

    #@70d
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@710
    .line 627
    const/4 v4, 0x1

    #@711
    return v4

    #@712
    .line 631
    .end local v58    # "_result":[Lcom/android/internal/net/VpnInfo;
    :sswitch_2e
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@715
    move-object/from16 v0, p2

    #@717
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@71a
    .line 632
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->updateLockdownVpn()Z

    #@71d
    move-result v53

    #@71e
    .line 633
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@721
    .line 634
    if-eqz v53, :cond_26

    #@723
    const/4 v4, 0x1

    #@724
    :goto_26
    move-object/from16 v0, p3

    #@726
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@729
    .line 635
    const/4 v4, 0x1

    #@72a
    return v4

    #@72b
    .line 634
    :cond_26
    const/4 v4, 0x0

    #@72c
    goto :goto_26

    #@72d
    .line 639
    .end local v53    # "_result":Z
    :sswitch_2f
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@730
    move-object/from16 v0, p2

    #@732
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@735
    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@738
    move-result v24

    #@739
    .line 643
    .restart local v24    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@73c
    move-result-object v35

    #@73d
    .line 645
    .restart local v35    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@740
    move-result v4

    #@741
    if-eqz v4, :cond_27

    #@743
    const/16 v40, 0x1

    #@745
    .line 646
    .restart local v40    # "_arg2":Z
    :goto_27
    move-object/from16 v0, p0

    #@747
    move/from16 v1, v24

    #@749
    move-object/from16 v2, v35

    #@74b
    move/from16 v3, v40

    #@74d
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z

    #@750
    move-result v53

    #@751
    .line 647
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@754
    .line 648
    if-eqz v53, :cond_28

    #@756
    const/4 v4, 0x1

    #@757
    :goto_28
    move-object/from16 v0, p3

    #@759
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@75c
    .line 649
    const/4 v4, 0x1

    #@75d
    return v4

    #@75e
    .line 645
    .end local v40    # "_arg2":Z
    .end local v53    # "_result":Z
    :cond_27
    const/16 v40, 0x0

    #@760
    goto :goto_27

    #@761
    .line 648
    .restart local v40    # "_arg2":Z
    .restart local v53    # "_result":Z
    :cond_28
    const/4 v4, 0x0

    #@762
    goto :goto_28

    #@763
    .line 653
    .end local v24    # "_arg0":I
    .end local v35    # "_arg1":Ljava/lang/String;
    .end local v40    # "_arg2":Z
    .end local v53    # "_result":Z
    :sswitch_30
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@766
    move-object/from16 v0, p2

    #@768
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76b
    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@76e
    move-result v24

    #@76f
    .line 656
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    #@771
    move/from16 v1, v24

    #@773
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    #@776
    move-result-object v52

    #@777
    .line 657
    .local v52, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@77a
    .line 658
    move-object/from16 v0, p3

    #@77c
    move-object/from16 v1, v52

    #@77e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@781
    .line 659
    const/4 v4, 0x1

    #@782
    return v4

    #@783
    .line 663
    .end local v24    # "_arg0":I
    .end local v52    # "_result":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@786
    move-object/from16 v0, p2

    #@788
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78b
    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@78e
    move-result v24

    #@78f
    .line 666
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    #@791
    move/from16 v1, v24

    #@793
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->checkMobileProvisioning(I)I

    #@796
    move-result v41

    #@797
    .line 667
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79a
    .line 668
    move-object/from16 v0, p3

    #@79c
    move/from16 v1, v41

    #@79e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7a1
    .line 669
    const/4 v4, 0x1

    #@7a2
    return v4

    #@7a3
    .line 673
    .end local v24    # "_arg0":I
    .end local v41    # "_result":I
    :sswitch_32
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@7a6
    move-object/from16 v0, p2

    #@7a8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7ab
    .line 674
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    #@7ae
    move-result-object v52

    #@7af
    .line 675
    .restart local v52    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b2
    .line 676
    move-object/from16 v0, p3

    #@7b4
    move-object/from16 v1, v52

    #@7b6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7b9
    .line 677
    const/4 v4, 0x1

    #@7ba
    return v4

    #@7bb
    .line 681
    .end local v52    # "_result":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@7be
    move-object/from16 v0, p2

    #@7c0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c3
    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7c6
    move-result v4

    #@7c7
    if-eqz v4, :cond_29

    #@7c9
    const/16 v31, 0x1

    #@7cb
    .line 685
    .local v31, "_arg0":Z
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7ce
    move-result v18

    #@7cf
    .line 687
    .restart local v18    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7d2
    move-result-object v39

    #@7d3
    .line 688
    .local v39, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7d5
    move/from16 v1, v31

    #@7d7
    move/from16 v2, v18

    #@7d9
    move-object/from16 v3, v39

    #@7db
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    #@7de
    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e1
    .line 690
    const/4 v4, 0x1

    #@7e2
    return v4

    #@7e3
    .line 683
    .end local v18    # "_arg1":I
    .end local v31    # "_arg0":Z
    .end local v39    # "_arg2":Ljava/lang/String;
    :cond_29
    const/16 v31, 0x0

    #@7e5
    .restart local v31    # "_arg0":Z
    goto :goto_29

    #@7e6
    .line 694
    .end local v31    # "_arg0":Z
    :sswitch_34
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@7e9
    move-object/from16 v0, p2

    #@7eb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7ee
    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7f1
    move-result v4

    #@7f2
    if-eqz v4, :cond_2a

    #@7f4
    const/16 v31, 0x1

    #@7f6
    .line 697
    .local v31, "_arg0":Z
    :goto_2a
    move-object/from16 v0, p0

    #@7f8
    move/from16 v1, v31

    #@7fa
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    #@7fd
    .line 698
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@800
    .line 699
    const/4 v4, 0x1

    #@801
    return v4

    #@802
    .line 696
    .end local v31    # "_arg0":Z
    :cond_2a
    const/16 v31, 0x0

    #@804
    goto :goto_2a

    #@805
    .line 703
    :sswitch_35
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@808
    move-object/from16 v0, p2

    #@80a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80d
    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@810
    move-result v4

    #@811
    if-eqz v4, :cond_2b

    #@813
    .line 706
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    #@815
    move-object/from16 v0, p2

    #@817
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@81a
    move-result-object v5

    #@81b
    check-cast v5, Landroid/os/Messenger;

    #@81d
    .line 712
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@820
    move-result-object v35

    #@821
    .line 713
    .restart local v35    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@823
    move-object/from16 v1, v35

    #@825
    invoke-virtual {v0, v5, v1}, Landroid/net/IConnectivityManager$Stub;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    #@828
    .line 714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@82b
    .line 715
    const/4 v4, 0x1

    #@82c
    return v4

    #@82d
    .line 709
    .end local v35    # "_arg1":Ljava/lang/String;
    :cond_2b
    const/4 v5, 0x0

    #@82e
    .local v5, "_arg0":Landroid/os/Messenger;
    goto :goto_2b

    #@82f
    .line 719
    .end local v5    # "_arg0":Landroid/os/Messenger;
    :sswitch_36
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@832
    move-object/from16 v0, p2

    #@834
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@837
    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@83a
    move-result v4

    #@83b
    if-eqz v4, :cond_2c

    #@83d
    .line 722
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@83f
    move-object/from16 v0, p2

    #@841
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@844
    move-result-object v17

    #@845
    check-cast v17, Landroid/net/Network;

    #@847
    .line 727
    :goto_2c
    move-object/from16 v0, p0

    #@849
    move-object/from16 v1, v17

    #@84b
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestBandwidthUpdate(Landroid/net/Network;)Z

    #@84e
    move-result v53

    #@84f
    .line 728
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@852
    .line 729
    if-eqz v53, :cond_2d

    #@854
    const/4 v4, 0x1

    #@855
    :goto_2d
    move-object/from16 v0, p3

    #@857
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@85a
    .line 730
    const/4 v4, 0x1

    #@85b
    return v4

    #@85c
    .line 725
    .end local v53    # "_result":Z
    :cond_2c
    const/16 v17, 0x0

    #@85e
    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_2c

    #@85f
    .line 729
    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v53    # "_result":Z
    :cond_2d
    const/4 v4, 0x0

    #@860
    goto :goto_2d

    #@861
    .line 734
    .end local v53    # "_result":Z
    :sswitch_37
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@864
    move-object/from16 v0, p2

    #@866
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@869
    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@86c
    move-result v4

    #@86d
    if-eqz v4, :cond_2e

    #@86f
    .line 737
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    #@871
    move-object/from16 v0, p2

    #@873
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@876
    move-result-object v5

    #@877
    check-cast v5, Landroid/os/Messenger;

    #@879
    .line 742
    :goto_2e
    move-object/from16 v0, p0

    #@87b
    invoke-virtual {v0, v5}, Landroid/net/IConnectivityManager$Stub;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    #@87e
    .line 743
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@881
    .line 744
    const/4 v4, 0x1

    #@882
    return v4

    #@883
    .line 740
    :cond_2e
    const/4 v5, 0x0

    #@884
    .restart local v5    # "_arg0":Landroid/os/Messenger;
    goto :goto_2e

    #@885
    .line 748
    .end local v5    # "_arg0":Landroid/os/Messenger;
    :sswitch_38
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@888
    move-object/from16 v0, p2

    #@88a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@88d
    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@890
    move-result v4

    #@891
    if-eqz v4, :cond_2f

    #@893
    .line 751
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    #@895
    move-object/from16 v0, p2

    #@897
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@89a
    move-result-object v5

    #@89b
    check-cast v5, Landroid/os/Messenger;

    #@89d
    .line 757
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8a0
    move-result v4

    #@8a1
    if-eqz v4, :cond_30

    #@8a3
    .line 758
    sget-object v4, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8a5
    move-object/from16 v0, p2

    #@8a7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8aa
    move-result-object v6

    #@8ab
    check-cast v6, Landroid/net/NetworkInfo;

    #@8ad
    .line 764
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b0
    move-result v4

    #@8b1
    if-eqz v4, :cond_31

    #@8b3
    .line 765
    sget-object v4, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8b5
    move-object/from16 v0, p2

    #@8b7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8ba
    move-result-object v7

    #@8bb
    check-cast v7, Landroid/net/LinkProperties;

    #@8bd
    .line 771
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8c0
    move-result v4

    #@8c1
    if-eqz v4, :cond_32

    #@8c3
    .line 772
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8c5
    move-object/from16 v0, p2

    #@8c7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8ca
    move-result-object v8

    #@8cb
    check-cast v8, Landroid/net/NetworkCapabilities;

    #@8cd
    .line 778
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d0
    move-result v9

    #@8d1
    .line 780
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d4
    move-result v4

    #@8d5
    if-eqz v4, :cond_33

    #@8d7
    .line 781
    sget-object v4, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8d9
    move-object/from16 v0, p2

    #@8db
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8de
    move-result-object v10

    #@8df
    check-cast v10, Landroid/net/NetworkMisc;

    #@8e1
    :goto_33
    move-object/from16 v4, p0

    #@8e3
    .line 786
    invoke-virtual/range {v4 .. v10}, Landroid/net/IConnectivityManager$Stub;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    #@8e6
    move-result v41

    #@8e7
    .line 787
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8ea
    .line 788
    move-object/from16 v0, p3

    #@8ec
    move/from16 v1, v41

    #@8ee
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8f1
    .line 789
    const/4 v4, 0x1

    #@8f2
    return v4

    #@8f3
    .line 754
    .end local v9    # "_arg4":I
    .end local v41    # "_result":I
    :cond_2f
    const/4 v5, 0x0

    #@8f4
    .restart local v5    # "_arg0":Landroid/os/Messenger;
    goto :goto_2f

    #@8f5
    .line 761
    .end local v5    # "_arg0":Landroid/os/Messenger;
    :cond_30
    const/4 v6, 0x0

    #@8f6
    .local v6, "_arg1":Landroid/net/NetworkInfo;
    goto :goto_30

    #@8f7
    .line 768
    .end local v6    # "_arg1":Landroid/net/NetworkInfo;
    :cond_31
    const/4 v7, 0x0

    #@8f8
    .local v7, "_arg2":Landroid/net/LinkProperties;
    goto :goto_31

    #@8f9
    .line 775
    .end local v7    # "_arg2":Landroid/net/LinkProperties;
    :cond_32
    const/4 v8, 0x0

    #@8fa
    .local v8, "_arg3":Landroid/net/NetworkCapabilities;
    goto :goto_32

    #@8fb
    .line 784
    .end local v8    # "_arg3":Landroid/net/NetworkCapabilities;
    .restart local v9    # "_arg4":I
    :cond_33
    const/4 v10, 0x0

    #@8fc
    .local v10, "_arg5":Landroid/net/NetworkMisc;
    goto :goto_33

    #@8fd
    .line 793
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Landroid/net/NetworkMisc;
    :sswitch_39
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@900
    move-object/from16 v0, p2

    #@902
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@905
    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@908
    move-result v4

    #@909
    if-eqz v4, :cond_34

    #@90b
    .line 796
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@90d
    move-object/from16 v0, p2

    #@90f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@912
    move-result-object v12

    #@913
    check-cast v12, Landroid/net/NetworkCapabilities;

    #@915
    .line 802
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@918
    move-result v4

    #@919
    if-eqz v4, :cond_35

    #@91b
    .line 803
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    #@91d
    move-object/from16 v0, p2

    #@91f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@922
    move-result-object v13

    #@923
    check-cast v13, Landroid/os/Messenger;

    #@925
    .line 809
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@928
    move-result v14

    #@929
    .line 811
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@92c
    move-result-object v15

    #@92d
    .line 813
    .local v15, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@930
    move-result v9

    #@931
    .restart local v9    # "_arg4":I
    move-object/from16 v11, p0

    #@933
    move/from16 v16, v9

    #@935
    .line 814
    invoke-virtual/range {v11 .. v16}, Landroid/net/IConnectivityManager$Stub;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    #@938
    move-result-object v47

    #@939
    .line 815
    .local v47, "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@93c
    .line 816
    if-eqz v47, :cond_36

    #@93e
    .line 817
    const/4 v4, 0x1

    #@93f
    move-object/from16 v0, p3

    #@941
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@944
    .line 818
    const/4 v4, 0x1

    #@945
    move-object/from16 v0, v47

    #@947
    move-object/from16 v1, p3

    #@949
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@94c
    .line 823
    :goto_36
    const/4 v4, 0x1

    #@94d
    return v4

    #@94e
    .line 799
    .end local v9    # "_arg4":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/IBinder;
    .end local v47    # "_result":Landroid/net/NetworkRequest;
    :cond_34
    const/4 v12, 0x0

    #@94f
    .local v12, "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_34

    #@950
    .line 806
    .end local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_35
    const/4 v13, 0x0

    #@951
    .local v13, "_arg1":Landroid/os/Messenger;
    goto :goto_35

    #@952
    .line 821
    .end local v13    # "_arg1":Landroid/os/Messenger;
    .restart local v9    # "_arg4":I
    .restart local v14    # "_arg2":I
    .restart local v15    # "_arg3":Landroid/os/IBinder;
    .restart local v47    # "_result":Landroid/net/NetworkRequest;
    :cond_36
    const/4 v4, 0x0

    #@953
    move-object/from16 v0, p3

    #@955
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@958
    goto :goto_36

    #@959
    .line 827
    .end local v9    # "_arg4":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/IBinder;
    .end local v47    # "_result":Landroid/net/NetworkRequest;
    :sswitch_3a
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@95c
    move-object/from16 v0, p2

    #@95e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@961
    .line 829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@964
    move-result v4

    #@965
    if-eqz v4, :cond_37

    #@967
    .line 830
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@969
    move-object/from16 v0, p2

    #@96b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@96e
    move-result-object v12

    #@96f
    check-cast v12, Landroid/net/NetworkCapabilities;

    #@971
    .line 836
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@974
    move-result v4

    #@975
    if-eqz v4, :cond_38

    #@977
    .line 837
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@979
    move-object/from16 v0, p2

    #@97b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@97e
    move-result-object v33

    #@97f
    check-cast v33, Landroid/app/PendingIntent;

    #@981
    .line 842
    :goto_38
    move-object/from16 v0, p0

    #@983
    move-object/from16 v1, v33

    #@985
    invoke-virtual {v0, v12, v1}, Landroid/net/IConnectivityManager$Stub;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;

    #@988
    move-result-object v47

    #@989
    .line 843
    .restart local v47    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@98c
    .line 844
    if-eqz v47, :cond_39

    #@98e
    .line 845
    const/4 v4, 0x1

    #@98f
    move-object/from16 v0, p3

    #@991
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@994
    .line 846
    const/4 v4, 0x1

    #@995
    move-object/from16 v0, v47

    #@997
    move-object/from16 v1, p3

    #@999
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@99c
    .line 851
    :goto_39
    const/4 v4, 0x1

    #@99d
    return v4

    #@99e
    .line 833
    .end local v47    # "_result":Landroid/net/NetworkRequest;
    :cond_37
    const/4 v12, 0x0

    #@99f
    .restart local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_37

    #@9a0
    .line 840
    .end local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_38
    const/16 v33, 0x0

    #@9a2
    .local v33, "_arg1":Landroid/app/PendingIntent;
    goto :goto_38

    #@9a3
    .line 849
    .end local v33    # "_arg1":Landroid/app/PendingIntent;
    .restart local v47    # "_result":Landroid/net/NetworkRequest;
    :cond_39
    const/4 v4, 0x0

    #@9a4
    move-object/from16 v0, p3

    #@9a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9a9
    goto :goto_39

    #@9aa
    .line 855
    .end local v47    # "_result":Landroid/net/NetworkRequest;
    :sswitch_3b
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@9ad
    move-object/from16 v0, p2

    #@9af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9b2
    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9b5
    move-result v4

    #@9b6
    if-eqz v4, :cond_3a

    #@9b8
    .line 858
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9ba
    move-object/from16 v0, p2

    #@9bc
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9bf
    move-result-object v25

    #@9c0
    check-cast v25, Landroid/app/PendingIntent;

    #@9c2
    .line 863
    :goto_3a
    move-object/from16 v0, p0

    #@9c4
    move-object/from16 v1, v25

    #@9c6
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    #@9c9
    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9cc
    .line 865
    const/4 v4, 0x1

    #@9cd
    return v4

    #@9ce
    .line 861
    :cond_3a
    const/16 v25, 0x0

    #@9d0
    .local v25, "_arg0":Landroid/app/PendingIntent;
    goto :goto_3a

    #@9d1
    .line 869
    .end local v25    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_3c
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@9d4
    move-object/from16 v0, p2

    #@9d6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d9
    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9dc
    move-result v4

    #@9dd
    if-eqz v4, :cond_3b

    #@9df
    .line 872
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9e1
    move-object/from16 v0, p2

    #@9e3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9e6
    move-result-object v12

    #@9e7
    check-cast v12, Landroid/net/NetworkCapabilities;

    #@9e9
    .line 878
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9ec
    move-result v4

    #@9ed
    if-eqz v4, :cond_3c

    #@9ef
    .line 879
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9f1
    move-object/from16 v0, p2

    #@9f3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9f6
    move-result-object v13

    #@9f7
    check-cast v13, Landroid/os/Messenger;

    #@9f9
    .line 885
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9fc
    move-result-object v38

    #@9fd
    .line 886
    .local v38, "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@9ff
    move-object/from16 v1, v38

    #@a01
    invoke-virtual {v0, v12, v13, v1}, Landroid/net/IConnectivityManager$Stub;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    #@a04
    move-result-object v47

    #@a05
    .line 887
    .restart local v47    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a08
    .line 888
    if-eqz v47, :cond_3d

    #@a0a
    .line 889
    const/4 v4, 0x1

    #@a0b
    move-object/from16 v0, p3

    #@a0d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a10
    .line 890
    const/4 v4, 0x1

    #@a11
    move-object/from16 v0, v47

    #@a13
    move-object/from16 v1, p3

    #@a15
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@a18
    .line 895
    :goto_3d
    const/4 v4, 0x1

    #@a19
    return v4

    #@a1a
    .line 875
    .end local v38    # "_arg2":Landroid/os/IBinder;
    .end local v47    # "_result":Landroid/net/NetworkRequest;
    :cond_3b
    const/4 v12, 0x0

    #@a1b
    .restart local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_3b

    #@a1c
    .line 882
    .end local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_3c
    const/4 v13, 0x0

    #@a1d
    .restart local v13    # "_arg1":Landroid/os/Messenger;
    goto :goto_3c

    #@a1e
    .line 893
    .end local v13    # "_arg1":Landroid/os/Messenger;
    .restart local v38    # "_arg2":Landroid/os/IBinder;
    .restart local v47    # "_result":Landroid/net/NetworkRequest;
    :cond_3d
    const/4 v4, 0x0

    #@a1f
    move-object/from16 v0, p3

    #@a21
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a24
    goto :goto_3d

    #@a25
    .line 899
    .end local v38    # "_arg2":Landroid/os/IBinder;
    .end local v47    # "_result":Landroid/net/NetworkRequest;
    :sswitch_3d
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@a28
    move-object/from16 v0, p2

    #@a2a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2d
    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a30
    move-result v4

    #@a31
    if-eqz v4, :cond_3e

    #@a33
    .line 902
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a35
    move-object/from16 v0, p2

    #@a37
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a3a
    move-result-object v12

    #@a3b
    check-cast v12, Landroid/net/NetworkCapabilities;

    #@a3d
    .line 908
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a40
    move-result v4

    #@a41
    if-eqz v4, :cond_3f

    #@a43
    .line 909
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a45
    move-object/from16 v0, p2

    #@a47
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a4a
    move-result-object v33

    #@a4b
    check-cast v33, Landroid/app/PendingIntent;

    #@a4d
    .line 914
    :goto_3f
    move-object/from16 v0, p0

    #@a4f
    move-object/from16 v1, v33

    #@a51
    invoke-virtual {v0, v12, v1}, Landroid/net/IConnectivityManager$Stub;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V

    #@a54
    .line 915
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a57
    .line 916
    const/4 v4, 0x1

    #@a58
    return v4

    #@a59
    .line 905
    :cond_3e
    const/4 v12, 0x0

    #@a5a
    .restart local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_3e

    #@a5b
    .line 912
    .end local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_3f
    const/16 v33, 0x0

    #@a5d
    .restart local v33    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_3f

    #@a5e
    .line 920
    .end local v33    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_3e
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@a61
    move-object/from16 v0, p2

    #@a63
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a66
    .line 922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a69
    move-result v4

    #@a6a
    if-eqz v4, :cond_40

    #@a6c
    .line 923
    sget-object v4, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a6e
    move-object/from16 v0, p2

    #@a70
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a73
    move-result-object v26

    #@a74
    check-cast v26, Landroid/net/NetworkRequest;

    #@a76
    .line 928
    :goto_40
    move-object/from16 v0, p0

    #@a78
    move-object/from16 v1, v26

    #@a7a
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestLinkProperties(Landroid/net/NetworkRequest;)V

    #@a7d
    .line 929
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a80
    .line 930
    const/4 v4, 0x1

    #@a81
    return v4

    #@a82
    .line 926
    :cond_40
    const/16 v26, 0x0

    #@a84
    .local v26, "_arg0":Landroid/net/NetworkRequest;
    goto :goto_40

    #@a85
    .line 934
    .end local v26    # "_arg0":Landroid/net/NetworkRequest;
    :sswitch_3f
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@a88
    move-object/from16 v0, p2

    #@a8a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a8d
    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a90
    move-result v4

    #@a91
    if-eqz v4, :cond_41

    #@a93
    .line 937
    sget-object v4, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a95
    move-object/from16 v0, p2

    #@a97
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a9a
    move-result-object v26

    #@a9b
    check-cast v26, Landroid/net/NetworkRequest;

    #@a9d
    .line 942
    :goto_41
    move-object/from16 v0, p0

    #@a9f
    move-object/from16 v1, v26

    #@aa1
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestNetworkCapabilities(Landroid/net/NetworkRequest;)V

    #@aa4
    .line 943
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@aa7
    .line 944
    const/4 v4, 0x1

    #@aa8
    return v4

    #@aa9
    .line 940
    :cond_41
    const/16 v26, 0x0

    #@aab
    .restart local v26    # "_arg0":Landroid/net/NetworkRequest;
    goto :goto_41

    #@aac
    .line 948
    .end local v26    # "_arg0":Landroid/net/NetworkRequest;
    :sswitch_40
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@aaf
    move-object/from16 v0, p2

    #@ab1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ab4
    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ab7
    move-result v4

    #@ab8
    if-eqz v4, :cond_42

    #@aba
    .line 951
    sget-object v4, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@abc
    move-object/from16 v0, p2

    #@abe
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ac1
    move-result-object v26

    #@ac2
    check-cast v26, Landroid/net/NetworkRequest;

    #@ac4
    .line 956
    :goto_42
    move-object/from16 v0, p0

    #@ac6
    move-object/from16 v1, v26

    #@ac8
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    #@acb
    .line 957
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ace
    .line 958
    const/4 v4, 0x1

    #@acf
    return v4

    #@ad0
    .line 954
    :cond_42
    const/16 v26, 0x0

    #@ad2
    .restart local v26    # "_arg0":Landroid/net/NetworkRequest;
    goto :goto_42

    #@ad3
    .line 962
    .end local v26    # "_arg0":Landroid/net/NetworkRequest;
    :sswitch_41
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@ad6
    move-object/from16 v0, p2

    #@ad8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@adb
    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ade
    move-result v4

    #@adf
    if-eqz v4, :cond_43

    #@ae1
    .line 965
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ae3
    move-object/from16 v0, p2

    #@ae5
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ae8
    move-result-object v17

    #@ae9
    check-cast v17, Landroid/net/Network;

    #@aeb
    .line 971
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@aee
    move-result v4

    #@aef
    if-eqz v4, :cond_44

    #@af1
    const/16 v36, 0x1

    #@af3
    .line 973
    .local v36, "_arg1":Z
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@af6
    move-result v4

    #@af7
    if-eqz v4, :cond_45

    #@af9
    const/16 v40, 0x1

    #@afb
    .line 974
    .restart local v40    # "_arg2":Z
    :goto_45
    move-object/from16 v0, p0

    #@afd
    move-object/from16 v1, v17

    #@aff
    move/from16 v2, v36

    #@b01
    move/from16 v3, v40

    #@b03
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    #@b06
    .line 975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b09
    .line 976
    const/4 v4, 0x1

    #@b0a
    return v4

    #@b0b
    .line 968
    .end local v36    # "_arg1":Z
    .end local v40    # "_arg2":Z
    :cond_43
    const/16 v17, 0x0

    #@b0d
    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_43

    #@b0e
    .line 971
    .end local v17    # "_arg0":Landroid/net/Network;
    :cond_44
    const/16 v36, 0x0

    #@b10
    .restart local v36    # "_arg1":Z
    goto :goto_44

    #@b11
    .line 973
    :cond_45
    const/16 v40, 0x0

    #@b13
    goto :goto_45

    #@b14
    .line 980
    .end local v36    # "_arg1":Z
    :sswitch_42
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@b17
    move-object/from16 v0, p2

    #@b19
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b1c
    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b1f
    move-result v4

    #@b20
    if-eqz v4, :cond_46

    #@b22
    .line 983
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b24
    move-object/from16 v0, p2

    #@b26
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b29
    move-result-object v17

    #@b2a
    check-cast v17, Landroid/net/Network;

    #@b2c
    .line 988
    :goto_46
    move-object/from16 v0, p0

    #@b2e
    move-object/from16 v1, v17

    #@b30
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setAvoidUnvalidated(Landroid/net/Network;)V

    #@b33
    .line 989
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b36
    .line 990
    const/4 v4, 0x1

    #@b37
    return v4

    #@b38
    .line 986
    :cond_46
    const/16 v17, 0x0

    #@b3a
    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_46

    #@b3b
    .line 994
    .end local v17    # "_arg0":Landroid/net/Network;
    :sswitch_43
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@b3e
    move-object/from16 v0, p2

    #@b40
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b43
    .line 996
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b46
    move-result v24

    #@b47
    .line 997
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    #@b49
    move/from16 v1, v24

    #@b4b
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getRestoreDefaultNetworkDelay(I)I

    #@b4e
    move-result v41

    #@b4f
    .line 998
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b52
    .line 999
    move-object/from16 v0, p3

    #@b54
    move/from16 v1, v41

    #@b56
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b59
    .line 1000
    const/4 v4, 0x1

    #@b5a
    return v4

    #@b5b
    .line 1004
    .end local v24    # "_arg0":I
    .end local v41    # "_result":I
    :sswitch_44
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@b5e
    move-object/from16 v0, p2

    #@b60
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b63
    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b66
    move-result-object v30

    #@b67
    .line 1008
    .restart local v30    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b6a
    move-result v18

    #@b6b
    .line 1009
    .restart local v18    # "_arg1":I
    move-object/from16 v0, p0

    #@b6d
    move-object/from16 v1, v30

    #@b6f
    move/from16 v2, v18

    #@b71
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->addVpnAddress(Ljava/lang/String;I)Z

    #@b74
    move-result v53

    #@b75
    .line 1010
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b78
    .line 1011
    if-eqz v53, :cond_47

    #@b7a
    const/4 v4, 0x1

    #@b7b
    :goto_47
    move-object/from16 v0, p3

    #@b7d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@b80
    .line 1012
    const/4 v4, 0x1

    #@b81
    return v4

    #@b82
    .line 1011
    :cond_47
    const/4 v4, 0x0

    #@b83
    goto :goto_47

    #@b84
    .line 1016
    .end local v18    # "_arg1":I
    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_45
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@b87
    move-object/from16 v0, p2

    #@b89
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b8c
    .line 1018
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b8f
    move-result-object v30

    #@b90
    .line 1020
    .restart local v30    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b93
    move-result v18

    #@b94
    .line 1021
    .restart local v18    # "_arg1":I
    move-object/from16 v0, p0

    #@b96
    move-object/from16 v1, v30

    #@b98
    move/from16 v2, v18

    #@b9a
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->removeVpnAddress(Ljava/lang/String;I)Z

    #@b9d
    move-result v53

    #@b9e
    .line 1022
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ba1
    .line 1023
    if-eqz v53, :cond_48

    #@ba3
    const/4 v4, 0x1

    #@ba4
    :goto_48
    move-object/from16 v0, p3

    #@ba6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@ba9
    .line 1024
    const/4 v4, 0x1

    #@baa
    return v4

    #@bab
    .line 1023
    :cond_48
    const/4 v4, 0x0

    #@bac
    goto :goto_48

    #@bad
    .line 1028
    .end local v18    # "_arg1":I
    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_46
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@bb0
    move-object/from16 v0, p2

    #@bb2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bb5
    .line 1030
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bb7
    move-object/from16 v0, p2

    #@bb9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@bbc
    move-result-object v32

    #@bbd
    check-cast v32, [Landroid/net/Network;

    #@bbf
    .line 1031
    .local v32, "_arg0":[Landroid/net/Network;
    move-object/from16 v0, p0

    #@bc1
    move-object/from16 v1, v32

    #@bc3
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    #@bc6
    move-result v53

    #@bc7
    .line 1032
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bca
    .line 1033
    if-eqz v53, :cond_49

    #@bcc
    const/4 v4, 0x1

    #@bcd
    :goto_49
    move-object/from16 v0, p3

    #@bcf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@bd2
    .line 1034
    const/4 v4, 0x1

    #@bd3
    return v4

    #@bd4
    .line 1033
    :cond_49
    const/4 v4, 0x0

    #@bd5
    goto :goto_49

    #@bd6
    .line 1038
    .end local v32    # "_arg0":[Landroid/net/Network;
    .end local v53    # "_result":Z
    :sswitch_47
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@bd9
    move-object/from16 v0, p2

    #@bdb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bde
    .line 1039
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->factoryReset()V

    #@be1
    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@be4
    .line 1041
    const/4 v4, 0x1

    #@be5
    return v4

    #@be6
    .line 1045
    :sswitch_48
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@be9
    move-object/from16 v0, p2

    #@beb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bee
    .line 1047
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bf1
    move-result v4

    #@bf2
    if-eqz v4, :cond_4a

    #@bf4
    .line 1048
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bf6
    move-object/from16 v0, p2

    #@bf8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bfb
    move-result-object v17

    #@bfc
    check-cast v17, Landroid/net/Network;

    #@bfe
    .line 1054
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c01
    move-result v18

    #@c02
    .line 1056
    .restart local v18    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c05
    move-result v4

    #@c06
    if-eqz v4, :cond_4b

    #@c08
    .line 1057
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c0a
    move-object/from16 v0, p2

    #@c0c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c0f
    move-result-object v19

    #@c10
    check-cast v19, Landroid/os/Messenger;

    #@c12
    .line 1063
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c15
    move-result-object v15

    #@c16
    .line 1065
    .restart local v15    # "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c19
    move-result-object v21

    #@c1a
    .line 1067
    .local v21, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c1d
    move-result v22

    #@c1e
    .line 1069
    .local v22, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c21
    move-result-object v23

    #@c22
    .local v23, "_arg6":Ljava/lang/String;
    move-object/from16 v16, p0

    #@c24
    move-object/from16 v20, v15

    #@c26
    .line 1070
    invoke-virtual/range {v16 .. v23}, Landroid/net/IConnectivityManager$Stub;->startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V

    #@c29
    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c2c
    .line 1072
    const/4 v4, 0x1

    #@c2d
    return v4

    #@c2e
    .line 1051
    .end local v15    # "_arg3":Landroid/os/IBinder;
    .end local v18    # "_arg1":I
    .end local v21    # "_arg4":Ljava/lang/String;
    .end local v22    # "_arg5":I
    .end local v23    # "_arg6":Ljava/lang/String;
    :cond_4a
    const/16 v17, 0x0

    #@c30
    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_4a

    #@c31
    .line 1060
    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v18    # "_arg1":I
    :cond_4b
    const/16 v19, 0x0

    #@c33
    .local v19, "_arg2":Landroid/os/Messenger;
    goto :goto_4b

    #@c34
    .line 1076
    .end local v18    # "_arg1":I
    .end local v19    # "_arg2":Landroid/os/Messenger;
    :sswitch_49
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@c37
    move-object/from16 v0, p2

    #@c39
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c3c
    .line 1078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c3f
    move-result v4

    #@c40
    if-eqz v4, :cond_4c

    #@c42
    .line 1079
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c44
    move-object/from16 v0, p2

    #@c46
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c49
    move-result-object v17

    #@c4a
    check-cast v17, Landroid/net/Network;

    #@c4c
    .line 1085
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c4f
    move-result v18

    #@c50
    .line 1086
    .restart local v18    # "_arg1":I
    move-object/from16 v0, p0

    #@c52
    move-object/from16 v1, v17

    #@c54
    move/from16 v2, v18

    #@c56
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->stopKeepalive(Landroid/net/Network;I)V

    #@c59
    .line 1087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c5c
    .line 1088
    const/4 v4, 0x1

    #@c5d
    return v4

    #@c5e
    .line 1082
    .end local v18    # "_arg1":I
    :cond_4c
    const/16 v17, 0x0

    #@c60
    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_4c

    #@c61
    .line 1092
    .end local v17    # "_arg0":Landroid/net/Network;
    :sswitch_4a
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@c64
    move-object/from16 v0, p2

    #@c66
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c69
    .line 1093
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getCaptivePortalServerUrl()Ljava/lang/String;

    #@c6c
    move-result-object v52

    #@c6d
    .line 1094
    .restart local v52    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c70
    .line 1095
    move-object/from16 v0, p3

    #@c72
    move-object/from16 v1, v52

    #@c74
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c77
    .line 1096
    const/4 v4, 0x1

    #@c78
    return v4

    #@c79
    .line 42
    nop

    #@c7a
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
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

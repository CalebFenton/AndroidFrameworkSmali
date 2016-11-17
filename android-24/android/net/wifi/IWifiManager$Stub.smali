.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x26

.field static final TRANSACTION_acquireWifiLock:I = 0x21

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x7

.field static final TRANSACTION_addPasspointManagementObject:I = 0x8

.field static final TRANSACTION_addToBlacklist:I = 0x2d

.field static final TRANSACTION_buildWifiConfig:I = 0x2b

.field static final TRANSACTION_clearBlacklist:I = 0x2e

.field static final TRANSACTION_deauthenticateNetwork:I = 0xc

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x3e

.field static final TRANSACTION_disableNetwork:I = 0xf

.field static final TRANSACTION_disconnect:I = 0x13

.field static final TRANSACTION_enableAggressiveHandover:I = 0x36

.field static final TRANSACTION_enableNetwork:I = 0xe

.field static final TRANSACTION_enableTdls:I = 0x31

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x32

.field static final TRANSACTION_enableVerboseLogging:I = 0x34

.field static final TRANSACTION_enableWifiConnectivityManager:I = 0x3c

.field static final TRANSACTION_factoryReset:I = 0x3f

.field static final TRANSACTION_getAggressiveHandover:I = 0x37

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x39

.field static final TRANSACTION_getConfigFile:I = 0x30

.field static final TRANSACTION_getConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getConnectionInfo:I = 0x16

.field static final TRANSACTION_getConnectionStatistics:I = 0x3d

.field static final TRANSACTION_getCountryCode:I = 0x1a

.field static final TRANSACTION_getCurrentNetwork:I = 0x40

.field static final TRANSACTION_getDhcpInfo:I = 0x1f

.field static final TRANSACTION_getEnableAutoJoinWhenAssociated:I = 0x3b

.field static final TRANSACTION_getFrequencyBand:I = 0x1c

.field static final TRANSACTION_getMatchingWifiConfig:I = 0x6

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x5

.field static final TRANSACTION_getScanResults:I = 0x12

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x35

.field static final TRANSACTION_getWifiApConfiguration:I = 0x2a

.field static final TRANSACTION_getWifiApEnabledState:I = 0x29

.field static final TRANSACTION_getWifiEnabledState:I = 0x18

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x2f

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x33

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x24

.field static final TRANSACTION_isDualBandSupported:I = 0x1d

.field static final TRANSACTION_isMulticastEnabled:I = 0x25

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x20

.field static final TRANSACTION_matchProviderWithCurrentNetwork:I = 0xb

.field static final TRANSACTION_modifyPasspointManagementObject:I = 0x9

.field static final TRANSACTION_pingSupplicant:I = 0x10

.field static final TRANSACTION_queryPasspointIcon:I = 0xa

.field static final TRANSACTION_reassociate:I = 0x15

.field static final TRANSACTION_reconnect:I = 0x14

.field static final TRANSACTION_releaseMulticastLock:I = 0x27

.field static final TRANSACTION_releaseWifiLock:I = 0x23

.field static final TRANSACTION_removeNetwork:I = 0xd

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestActivityInfo:I = 0x3

.field static final TRANSACTION_saveConfiguration:I = 0x1e

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x38

.field static final TRANSACTION_setCountryCode:I = 0x19

.field static final TRANSACTION_setEnableAutoJoinWhenAssociated:I = 0x3a

.field static final TRANSACTION_setFrequencyBand:I = 0x1b

.field static final TRANSACTION_setWifiApConfiguration:I = 0x2c

.field static final TRANSACTION_setWifiApEnabled:I = 0x28

.field static final TRANSACTION_setWifiEnabled:I = 0x17

.field static final TRANSACTION_startScan:I = 0x11

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.net.wifi.IWifiManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
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
    const-string/jumbo v1, "android.net.wifi.IWifiManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 35
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
    .line 736
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v34

    #@7
    return v34

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v34

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 48
    const/16 v34, 0x1

    #@14
    return v34

    #@15
    .line 52
    :sswitch_1
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v34

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    #@22
    move-result v22

    #@23
    .line 54
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26
    .line 55
    move-object/from16 v0, p3

    #@28
    move/from16 v1, v22

    #@2a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 56
    const/16 v34, 0x1

    #@2f
    return v34

    #@30
    .line 60
    .end local v22    # "_result":I
    :sswitch_2
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@33
    move-object/from16 v0, p2

    #@35
    move-object/from16 v1, v34

    #@37
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    #@3d
    move-result-object v25

    #@3e
    .line 62
    .local v25, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41
    .line 63
    if-eqz v25, :cond_0

    #@43
    .line 64
    const/16 v34, 0x1

    #@45
    move-object/from16 v0, p3

    #@47
    move/from16 v1, v34

    #@49
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 65
    const/16 v34, 0x1

    #@4e
    move-object/from16 v0, v25

    #@50
    move-object/from16 v1, p3

    #@52
    move/from16 v2, v34

    #@54
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@57
    .line 70
    :goto_0
    const/16 v34, 0x1

    #@59
    return v34

    #@5a
    .line 68
    :cond_0
    const/16 v34, 0x0

    #@5c
    move-object/from16 v0, p3

    #@5e
    move/from16 v1, v34

    #@60
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@63
    goto :goto_0

    #@64
    .line 74
    .end local v25    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@67
    move-object/from16 v0, p2

    #@69
    move-object/from16 v1, v34

    #@6b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v34

    #@72
    if-eqz v34, :cond_1

    #@74
    .line 77
    sget-object v34, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@76
    move-object/from16 v0, v34

    #@78
    move-object/from16 v1, p2

    #@7a
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7d
    move-result-object v11

    #@7e
    check-cast v11, Landroid/os/ResultReceiver;

    #@80
    .line 82
    :goto_1
    move-object/from16 v0, p0

    #@82
    invoke-virtual {v0, v11}, Landroid/net/wifi/IWifiManager$Stub;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    #@85
    .line 83
    const/16 v34, 0x1

    #@87
    return v34

    #@88
    .line 80
    :cond_1
    const/4 v11, 0x0

    #@89
    .local v11, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_1

    #@8a
    .line 87
    .end local v11    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_4
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@8d
    move-object/from16 v0, p2

    #@8f
    move-object/from16 v1, v34

    #@91
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@94
    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    #@97
    move-result-object v32

    #@98
    .line 89
    .local v32, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9b
    .line 90
    move-object/from16 v0, p3

    #@9d
    move-object/from16 v1, v32

    #@9f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@a2
    .line 91
    const/16 v34, 0x1

    #@a4
    return v34

    #@a5
    .line 95
    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_5
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@a8
    move-object/from16 v0, p2

    #@aa
    move-object/from16 v1, v34

    #@ac
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@af
    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    #@b2
    move-result-object v32

    #@b3
    .line 97
    .restart local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6
    .line 98
    move-object/from16 v0, p3

    #@b8
    move-object/from16 v1, v32

    #@ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@bd
    .line 99
    const/16 v34, 0x1

    #@bf
    return v34

    #@c0
    .line 103
    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_6
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@c3
    move-object/from16 v0, p2

    #@c5
    move-object/from16 v1, v34

    #@c7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ca
    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cd
    move-result v34

    #@ce
    if-eqz v34, :cond_2

    #@d0
    .line 106
    sget-object v34, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d2
    move-object/from16 v0, v34

    #@d4
    move-object/from16 v1, p2

    #@d6
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d9
    move-result-object v5

    #@da
    check-cast v5, Landroid/net/wifi/ScanResult;

    #@dc
    .line 111
    :goto_2
    move-object/from16 v0, p0

    #@de
    invoke-virtual {v0, v5}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    #@e1
    move-result-object v26

    #@e2
    .line 112
    .local v26, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e5
    .line 113
    if-eqz v26, :cond_3

    #@e7
    .line 114
    const/16 v34, 0x1

    #@e9
    move-object/from16 v0, p3

    #@eb
    move/from16 v1, v34

    #@ed
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f0
    .line 115
    const/16 v34, 0x1

    #@f2
    move-object/from16 v0, v26

    #@f4
    move-object/from16 v1, p3

    #@f6
    move/from16 v2, v34

    #@f8
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@fb
    .line 120
    :goto_3
    const/16 v34, 0x1

    #@fd
    return v34

    #@fe
    .line 109
    .end local v26    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v5, 0x0

    #@ff
    .local v5, "_arg0":Landroid/net/wifi/ScanResult;
    goto :goto_2

    #@100
    .line 118
    .end local v5    # "_arg0":Landroid/net/wifi/ScanResult;
    .restart local v26    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const/16 v34, 0x0

    #@102
    move-object/from16 v0, p3

    #@104
    move/from16 v1, v34

    #@106
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@109
    goto :goto_3

    #@10a
    .line 124
    .end local v26    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_7
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@10d
    move-object/from16 v0, p2

    #@10f
    move-object/from16 v1, v34

    #@111
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@114
    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@117
    move-result v34

    #@118
    if-eqz v34, :cond_4

    #@11a
    .line 127
    sget-object v34, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11c
    move-object/from16 v0, v34

    #@11e
    move-object/from16 v1, p2

    #@120
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@123
    move-result-object v9

    #@124
    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    #@126
    .line 132
    :goto_4
    move-object/from16 v0, p0

    #@128
    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    #@12b
    move-result v22

    #@12c
    .line 133
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12f
    .line 134
    move-object/from16 v0, p3

    #@131
    move/from16 v1, v22

    #@133
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@136
    .line 135
    const/16 v34, 0x1

    #@138
    return v34

    #@139
    .line 130
    .end local v22    # "_result":I
    :cond_4
    const/4 v9, 0x0

    #@13a
    .local v9, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4

    #@13b
    .line 139
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_8
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@13e
    move-object/from16 v0, p2

    #@140
    move-object/from16 v1, v34

    #@142
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@145
    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@148
    move-result-object v12

    #@149
    .line 142
    .local v12, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@14b
    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->addPasspointManagementObject(Ljava/lang/String;)I

    #@14e
    move-result v22

    #@14f
    .line 143
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@152
    .line 144
    move-object/from16 v0, p3

    #@154
    move/from16 v1, v22

    #@156
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@159
    .line 145
    const/16 v34, 0x1

    #@15b
    return v34

    #@15c
    .line 149
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v22    # "_result":I
    :sswitch_9
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@15f
    move-object/from16 v0, p2

    #@161
    move-object/from16 v1, v34

    #@163
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@166
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@169
    move-result-object v12

    #@16a
    .line 153
    .restart local v12    # "_arg0":Ljava/lang/String;
    sget-object v34, Landroid/net/wifi/PasspointManagementObjectDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16c
    move-object/from16 v0, p2

    #@16e
    move-object/from16 v1, v34

    #@170
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@173
    move-result-object v17

    #@174
    .line 154
    .local v17, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    move-object/from16 v0, p0

    #@176
    move-object/from16 v1, v17

    #@178
    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->modifyPasspointManagementObject(Ljava/lang/String;Ljava/util/List;)I

    #@17b
    move-result v22

    #@17c
    .line 155
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17f
    .line 156
    move-object/from16 v0, p3

    #@181
    move/from16 v1, v22

    #@183
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@186
    .line 157
    const/16 v34, 0x1

    #@188
    return v34

    #@189
    .line 161
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    .end local v22    # "_result":I
    :sswitch_a
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@18c
    move-object/from16 v0, p2

    #@18e
    move-object/from16 v1, v34

    #@190
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@193
    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@196
    move-result-wide v6

    #@197
    .line 165
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19a
    move-result-object v16

    #@19b
    .line 166
    .local v16, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@19d
    move-object/from16 v1, v16

    #@19f
    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->queryPasspointIcon(JLjava/lang/String;)V

    #@1a2
    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a5
    .line 168
    const/16 v34, 0x1

    #@1a7
    return v34

    #@1a8
    .line 172
    .end local v6    # "_arg0":J
    .end local v16    # "_arg1":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@1ab
    move-object/from16 v0, p2

    #@1ad
    move-object/from16 v1, v34

    #@1af
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b2
    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b5
    move-result-object v12

    #@1b6
    .line 175
    .restart local v12    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1b8
    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    #@1bb
    move-result v22

    #@1bc
    .line 176
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bf
    .line 177
    move-object/from16 v0, p3

    #@1c1
    move/from16 v1, v22

    #@1c3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c6
    .line 178
    const/16 v34, 0x1

    #@1c8
    return v34

    #@1c9
    .line 182
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v22    # "_result":I
    :sswitch_c
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@1cc
    move-object/from16 v0, p2

    #@1ce
    move-object/from16 v1, v34

    #@1d0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d3
    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1d6
    move-result-wide v6

    #@1d7
    .line 186
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1da
    move-result v34

    #@1db
    if-eqz v34, :cond_5

    #@1dd
    const/16 v18, 0x1

    #@1df
    .line 187
    .local v18, "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    #@1e1
    move/from16 v1, v18

    #@1e3
    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->deauthenticateNetwork(JZ)V

    #@1e6
    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e9
    .line 189
    const/16 v34, 0x1

    #@1eb
    return v34

    #@1ec
    .line 186
    .end local v18    # "_arg1":Z
    :cond_5
    const/16 v18, 0x0

    #@1ee
    goto :goto_5

    #@1ef
    .line 193
    .end local v6    # "_arg0":J
    :sswitch_d
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@1f2
    move-object/from16 v0, p2

    #@1f4
    move-object/from16 v1, v34

    #@1f6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f9
    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fc
    move-result v4

    #@1fd
    .line 196
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    #@1ff
    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    #@202
    move-result v33

    #@203
    .line 197
    .local v33, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@206
    .line 198
    if-eqz v33, :cond_6

    #@208
    const/16 v34, 0x1

    #@20a
    :goto_6
    move-object/from16 v0, p3

    #@20c
    move/from16 v1, v34

    #@20e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@211
    .line 199
    const/16 v34, 0x1

    #@213
    return v34

    #@214
    .line 198
    :cond_6
    const/16 v34, 0x0

    #@216
    goto :goto_6

    #@217
    .line 203
    .end local v4    # "_arg0":I
    .end local v33    # "_result":Z
    :sswitch_e
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@21a
    move-object/from16 v0, p2

    #@21c
    move-object/from16 v1, v34

    #@21e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@221
    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@224
    move-result v4

    #@225
    .line 207
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@228
    move-result v34

    #@229
    if-eqz v34, :cond_7

    #@22b
    const/16 v18, 0x1

    #@22d
    .line 208
    .restart local v18    # "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    #@22f
    move/from16 v1, v18

    #@231
    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    #@234
    move-result v33

    #@235
    .line 209
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@238
    .line 210
    if-eqz v33, :cond_8

    #@23a
    const/16 v34, 0x1

    #@23c
    :goto_8
    move-object/from16 v0, p3

    #@23e
    move/from16 v1, v34

    #@240
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@243
    .line 211
    const/16 v34, 0x1

    #@245
    return v34

    #@246
    .line 207
    .end local v18    # "_arg1":Z
    .end local v33    # "_result":Z
    :cond_7
    const/16 v18, 0x0

    #@248
    goto :goto_7

    #@249
    .line 210
    .restart local v18    # "_arg1":Z
    .restart local v33    # "_result":Z
    :cond_8
    const/16 v34, 0x0

    #@24b
    goto :goto_8

    #@24c
    .line 215
    .end local v4    # "_arg0":I
    .end local v18    # "_arg1":Z
    .end local v33    # "_result":Z
    :sswitch_f
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@24f
    move-object/from16 v0, p2

    #@251
    move-object/from16 v1, v34

    #@253
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@256
    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@259
    move-result v4

    #@25a
    .line 218
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@25c
    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    #@25f
    move-result v33

    #@260
    .line 219
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@263
    .line 220
    if-eqz v33, :cond_9

    #@265
    const/16 v34, 0x1

    #@267
    :goto_9
    move-object/from16 v0, p3

    #@269
    move/from16 v1, v34

    #@26b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@26e
    .line 221
    const/16 v34, 0x1

    #@270
    return v34

    #@271
    .line 220
    :cond_9
    const/16 v34, 0x0

    #@273
    goto :goto_9

    #@274
    .line 225
    .end local v4    # "_arg0":I
    .end local v33    # "_result":Z
    :sswitch_10
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@277
    move-object/from16 v0, p2

    #@279
    move-object/from16 v1, v34

    #@27b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27e
    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    #@281
    move-result v33

    #@282
    .line 227
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@285
    .line 228
    if-eqz v33, :cond_a

    #@287
    const/16 v34, 0x1

    #@289
    :goto_a
    move-object/from16 v0, p3

    #@28b
    move/from16 v1, v34

    #@28d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@290
    .line 229
    const/16 v34, 0x1

    #@292
    return v34

    #@293
    .line 228
    :cond_a
    const/16 v34, 0x0

    #@295
    goto :goto_a

    #@296
    .line 233
    .end local v33    # "_result":Z
    :sswitch_11
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@299
    move-object/from16 v0, p2

    #@29b
    move-object/from16 v1, v34

    #@29d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a0
    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a3
    move-result v34

    #@2a4
    if-eqz v34, :cond_b

    #@2a6
    .line 236
    sget-object v34, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a8
    move-object/from16 v0, v34

    #@2aa
    move-object/from16 v1, p2

    #@2ac
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2af
    move-result-object v8

    #@2b0
    check-cast v8, Landroid/net/wifi/ScanSettings;

    #@2b2
    .line 242
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b5
    move-result v34

    #@2b6
    if-eqz v34, :cond_c

    #@2b8
    .line 243
    sget-object v34, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2ba
    move-object/from16 v0, v34

    #@2bc
    move-object/from16 v1, p2

    #@2be
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c1
    move-result-object v15

    #@2c2
    check-cast v15, Landroid/os/WorkSource;

    #@2c4
    .line 248
    :goto_c
    move-object/from16 v0, p0

    #@2c6
    invoke-virtual {v0, v8, v15}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@2c9
    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2cc
    .line 250
    const/16 v34, 0x1

    #@2ce
    return v34

    #@2cf
    .line 239
    :cond_b
    const/4 v8, 0x0

    #@2d0
    .local v8, "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_b

    #@2d1
    .line 246
    .end local v8    # "_arg0":Landroid/net/wifi/ScanSettings;
    :cond_c
    const/4 v15, 0x0

    #@2d2
    .local v15, "_arg1":Landroid/os/WorkSource;
    goto :goto_c

    #@2d3
    .line 254
    .end local v15    # "_arg1":Landroid/os/WorkSource;
    :sswitch_12
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@2d6
    move-object/from16 v0, p2

    #@2d8
    move-object/from16 v1, v34

    #@2da
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2dd
    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e0
    move-result-object v12

    #@2e1
    .line 257
    .restart local v12    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2e3
    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    #@2e6
    move-result-object v31

    #@2e7
    .line 258
    .local v31, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ea
    .line 259
    move-object/from16 v0, p3

    #@2ec
    move-object/from16 v1, v31

    #@2ee
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@2f1
    .line 260
    const/16 v34, 0x1

    #@2f3
    return v34

    #@2f4
    .line 264
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v31    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_13
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@2f7
    move-object/from16 v0, p2

    #@2f9
    move-object/from16 v1, v34

    #@2fb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fe
    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    #@301
    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@304
    .line 267
    const/16 v34, 0x1

    #@306
    return v34

    #@307
    .line 271
    :sswitch_14
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@30a
    move-object/from16 v0, p2

    #@30c
    move-object/from16 v1, v34

    #@30e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@311
    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    #@314
    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@317
    .line 274
    const/16 v34, 0x1

    #@319
    return v34

    #@31a
    .line 278
    :sswitch_15
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@31d
    move-object/from16 v0, p2

    #@31f
    move-object/from16 v1, v34

    #@321
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@324
    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    #@327
    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@32a
    .line 281
    const/16 v34, 0x1

    #@32c
    return v34

    #@32d
    .line 285
    :sswitch_16
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@330
    move-object/from16 v0, p2

    #@332
    move-object/from16 v1, v34

    #@334
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@337
    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    #@33a
    move-result-object v28

    #@33b
    .line 287
    .local v28, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@33e
    .line 288
    if-eqz v28, :cond_d

    #@340
    .line 289
    const/16 v34, 0x1

    #@342
    move-object/from16 v0, p3

    #@344
    move/from16 v1, v34

    #@346
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@349
    .line 290
    const/16 v34, 0x1

    #@34b
    move-object/from16 v0, v28

    #@34d
    move-object/from16 v1, p3

    #@34f
    move/from16 v2, v34

    #@351
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@354
    .line 295
    :goto_d
    const/16 v34, 0x1

    #@356
    return v34

    #@357
    .line 293
    :cond_d
    const/16 v34, 0x0

    #@359
    move-object/from16 v0, p3

    #@35b
    move/from16 v1, v34

    #@35d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@360
    goto :goto_d

    #@361
    .line 299
    .end local v28    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_17
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@364
    move-object/from16 v0, p2

    #@366
    move-object/from16 v1, v34

    #@368
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36b
    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@36e
    move-result v34

    #@36f
    if-eqz v34, :cond_e

    #@371
    const/4 v13, 0x1

    #@372
    .line 302
    .local v13, "_arg0":Z
    :goto_e
    move-object/from16 v0, p0

    #@374
    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    #@377
    move-result v33

    #@378
    .line 303
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@37b
    .line 304
    if-eqz v33, :cond_f

    #@37d
    const/16 v34, 0x1

    #@37f
    :goto_f
    move-object/from16 v0, p3

    #@381
    move/from16 v1, v34

    #@383
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@386
    .line 305
    const/16 v34, 0x1

    #@388
    return v34

    #@389
    .line 301
    .end local v13    # "_arg0":Z
    .end local v33    # "_result":Z
    :cond_e
    const/4 v13, 0x0

    #@38a
    goto :goto_e

    #@38b
    .line 304
    .restart local v13    # "_arg0":Z
    .restart local v33    # "_result":Z
    :cond_f
    const/16 v34, 0x0

    #@38d
    goto :goto_f

    #@38e
    .line 309
    .end local v13    # "_arg0":Z
    .end local v33    # "_result":Z
    :sswitch_18
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@391
    move-object/from16 v0, p2

    #@393
    move-object/from16 v1, v34

    #@395
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@398
    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    #@39b
    move-result v22

    #@39c
    .line 311
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@39f
    .line 312
    move-object/from16 v0, p3

    #@3a1
    move/from16 v1, v22

    #@3a3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3a6
    .line 313
    const/16 v34, 0x1

    #@3a8
    return v34

    #@3a9
    .line 317
    .end local v22    # "_result":I
    :sswitch_19
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@3ac
    move-object/from16 v0, p2

    #@3ae
    move-object/from16 v1, v34

    #@3b0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b3
    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b6
    move-result-object v12

    #@3b7
    .line 321
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ba
    move-result v34

    #@3bb
    if-eqz v34, :cond_10

    #@3bd
    const/16 v18, 0x1

    #@3bf
    .line 322
    .restart local v18    # "_arg1":Z
    :goto_10
    move-object/from16 v0, p0

    #@3c1
    move/from16 v1, v18

    #@3c3
    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    #@3c6
    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c9
    .line 324
    const/16 v34, 0x1

    #@3cb
    return v34

    #@3cc
    .line 321
    .end local v18    # "_arg1":Z
    :cond_10
    const/16 v18, 0x0

    #@3ce
    goto :goto_10

    #@3cf
    .line 328
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@3d2
    move-object/from16 v0, p2

    #@3d4
    move-object/from16 v1, v34

    #@3d6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d9
    .line 329
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    #@3dc
    move-result-object v30

    #@3dd
    .line 330
    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e0
    .line 331
    move-object/from16 v0, p3

    #@3e2
    move-object/from16 v1, v30

    #@3e4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3e7
    .line 332
    const/16 v34, 0x1

    #@3e9
    return v34

    #@3ea
    .line 336
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@3ed
    move-object/from16 v0, p2

    #@3ef
    move-object/from16 v1, v34

    #@3f1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f4
    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f7
    move-result v4

    #@3f8
    .line 340
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3fb
    move-result v34

    #@3fc
    if-eqz v34, :cond_11

    #@3fe
    const/16 v18, 0x1

    #@400
    .line 341
    .restart local v18    # "_arg1":Z
    :goto_11
    move-object/from16 v0, p0

    #@402
    move/from16 v1, v18

    #@404
    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    #@407
    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@40a
    .line 343
    const/16 v34, 0x1

    #@40c
    return v34

    #@40d
    .line 340
    .end local v18    # "_arg1":Z
    :cond_11
    const/16 v18, 0x0

    #@40f
    goto :goto_11

    #@410
    .line 347
    .end local v4    # "_arg0":I
    :sswitch_1c
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@413
    move-object/from16 v0, p2

    #@415
    move-object/from16 v1, v34

    #@417
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41a
    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    #@41d
    move-result v22

    #@41e
    .line 349
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@421
    .line 350
    move-object/from16 v0, p3

    #@423
    move/from16 v1, v22

    #@425
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@428
    .line 351
    const/16 v34, 0x1

    #@42a
    return v34

    #@42b
    .line 355
    .end local v22    # "_result":I
    :sswitch_1d
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@42e
    move-object/from16 v0, p2

    #@430
    move-object/from16 v1, v34

    #@432
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@435
    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    #@438
    move-result v33

    #@439
    .line 357
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43c
    .line 358
    if-eqz v33, :cond_12

    #@43e
    const/16 v34, 0x1

    #@440
    :goto_12
    move-object/from16 v0, p3

    #@442
    move/from16 v1, v34

    #@444
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@447
    .line 359
    const/16 v34, 0x1

    #@449
    return v34

    #@44a
    .line 358
    :cond_12
    const/16 v34, 0x0

    #@44c
    goto :goto_12

    #@44d
    .line 363
    .end local v33    # "_result":Z
    :sswitch_1e
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@450
    move-object/from16 v0, p2

    #@452
    move-object/from16 v1, v34

    #@454
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@457
    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    #@45a
    move-result v33

    #@45b
    .line 365
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@45e
    .line 366
    if-eqz v33, :cond_13

    #@460
    const/16 v34, 0x1

    #@462
    :goto_13
    move-object/from16 v0, p3

    #@464
    move/from16 v1, v34

    #@466
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@469
    .line 367
    const/16 v34, 0x1

    #@46b
    return v34

    #@46c
    .line 366
    :cond_13
    const/16 v34, 0x0

    #@46e
    goto :goto_13

    #@46f
    .line 371
    .end local v33    # "_result":Z
    :sswitch_1f
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@472
    move-object/from16 v0, p2

    #@474
    move-object/from16 v1, v34

    #@476
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@479
    .line 372
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    #@47c
    move-result-object v23

    #@47d
    .line 373
    .local v23, "_result":Landroid/net/DhcpInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@480
    .line 374
    if-eqz v23, :cond_14

    #@482
    .line 375
    const/16 v34, 0x1

    #@484
    move-object/from16 v0, p3

    #@486
    move/from16 v1, v34

    #@488
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@48b
    .line 376
    const/16 v34, 0x1

    #@48d
    move-object/from16 v0, v23

    #@48f
    move-object/from16 v1, p3

    #@491
    move/from16 v2, v34

    #@493
    invoke-virtual {v0, v1, v2}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@496
    .line 381
    :goto_14
    const/16 v34, 0x1

    #@498
    return v34

    #@499
    .line 379
    :cond_14
    const/16 v34, 0x0

    #@49b
    move-object/from16 v0, p3

    #@49d
    move/from16 v1, v34

    #@49f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4a2
    goto :goto_14

    #@4a3
    .line 385
    .end local v23    # "_result":Landroid/net/DhcpInfo;
    :sswitch_20
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@4a6
    move-object/from16 v0, p2

    #@4a8
    move-object/from16 v1, v34

    #@4aa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ad
    .line 386
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    #@4b0
    move-result v33

    #@4b1
    .line 387
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b4
    .line 388
    if-eqz v33, :cond_15

    #@4b6
    const/16 v34, 0x1

    #@4b8
    :goto_15
    move-object/from16 v0, p3

    #@4ba
    move/from16 v1, v34

    #@4bc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4bf
    .line 389
    const/16 v34, 0x1

    #@4c1
    return v34

    #@4c2
    .line 388
    :cond_15
    const/16 v34, 0x0

    #@4c4
    goto :goto_15

    #@4c5
    .line 393
    .end local v33    # "_result":Z
    :sswitch_21
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@4c8
    move-object/from16 v0, p2

    #@4ca
    move-object/from16 v1, v34

    #@4cc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4cf
    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4d2
    move-result-object v10

    #@4d3
    .line 397
    .local v10, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d6
    move-result v14

    #@4d7
    .line 399
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4da
    move-result-object v19

    #@4db
    .line 401
    .local v19, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4de
    move-result v34

    #@4df
    if-eqz v34, :cond_16

    #@4e1
    .line 402
    sget-object v34, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e3
    move-object/from16 v0, v34

    #@4e5
    move-object/from16 v1, p2

    #@4e7
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4ea
    move-result-object v21

    #@4eb
    check-cast v21, Landroid/os/WorkSource;

    #@4ed
    .line 407
    :goto_16
    move-object/from16 v0, p0

    #@4ef
    move-object/from16 v1, v19

    #@4f1
    move-object/from16 v2, v21

    #@4f3
    invoke-virtual {v0, v10, v14, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    #@4f6
    move-result v33

    #@4f7
    .line 408
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4fa
    .line 409
    if-eqz v33, :cond_17

    #@4fc
    const/16 v34, 0x1

    #@4fe
    :goto_17
    move-object/from16 v0, p3

    #@500
    move/from16 v1, v34

    #@502
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@505
    .line 410
    const/16 v34, 0x1

    #@507
    return v34

    #@508
    .line 405
    .end local v33    # "_result":Z
    :cond_16
    const/16 v21, 0x0

    #@50a
    .local v21, "_arg3":Landroid/os/WorkSource;
    goto :goto_16

    #@50b
    .line 409
    .end local v21    # "_arg3":Landroid/os/WorkSource;
    .restart local v33    # "_result":Z
    :cond_17
    const/16 v34, 0x0

    #@50d
    goto :goto_17

    #@50e
    .line 414
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":I
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_22
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@511
    move-object/from16 v0, p2

    #@513
    move-object/from16 v1, v34

    #@515
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@518
    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@51b
    move-result-object v10

    #@51c
    .line 418
    .restart local v10    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51f
    move-result v34

    #@520
    if-eqz v34, :cond_18

    #@522
    .line 419
    sget-object v34, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@524
    move-object/from16 v0, v34

    #@526
    move-object/from16 v1, p2

    #@528
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@52b
    move-result-object v15

    #@52c
    check-cast v15, Landroid/os/WorkSource;

    #@52e
    .line 424
    :goto_18
    move-object/from16 v0, p0

    #@530
    invoke-virtual {v0, v10, v15}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    #@533
    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@536
    .line 426
    const/16 v34, 0x1

    #@538
    return v34

    #@539
    .line 422
    :cond_18
    const/4 v15, 0x0

    #@53a
    .restart local v15    # "_arg1":Landroid/os/WorkSource;
    goto :goto_18

    #@53b
    .line 430
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":Landroid/os/WorkSource;
    :sswitch_23
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@53e
    move-object/from16 v0, p2

    #@540
    move-object/from16 v1, v34

    #@542
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@545
    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@548
    move-result-object v10

    #@549
    .line 433
    .restart local v10    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@54b
    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    #@54e
    move-result v33

    #@54f
    .line 434
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@552
    .line 435
    if-eqz v33, :cond_19

    #@554
    const/16 v34, 0x1

    #@556
    :goto_19
    move-object/from16 v0, p3

    #@558
    move/from16 v1, v34

    #@55a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@55d
    .line 436
    const/16 v34, 0x1

    #@55f
    return v34

    #@560
    .line 435
    :cond_19
    const/16 v34, 0x0

    #@562
    goto :goto_19

    #@563
    .line 440
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v33    # "_result":Z
    :sswitch_24
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@566
    move-object/from16 v0, p2

    #@568
    move-object/from16 v1, v34

    #@56a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56d
    .line 441
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    #@570
    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@573
    .line 443
    const/16 v34, 0x1

    #@575
    return v34

    #@576
    .line 447
    :sswitch_25
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@579
    move-object/from16 v0, p2

    #@57b
    move-object/from16 v1, v34

    #@57d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@580
    .line 448
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    #@583
    move-result v33

    #@584
    .line 449
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@587
    .line 450
    if-eqz v33, :cond_1a

    #@589
    const/16 v34, 0x1

    #@58b
    :goto_1a
    move-object/from16 v0, p3

    #@58d
    move/from16 v1, v34

    #@58f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@592
    .line 451
    const/16 v34, 0x1

    #@594
    return v34

    #@595
    .line 450
    :cond_1a
    const/16 v34, 0x0

    #@597
    goto :goto_1a

    #@598
    .line 455
    .end local v33    # "_result":Z
    :sswitch_26
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@59b
    move-object/from16 v0, p2

    #@59d
    move-object/from16 v1, v34

    #@59f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a2
    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5a5
    move-result-object v10

    #@5a6
    .line 459
    .restart local v10    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5a9
    move-result-object v16

    #@5aa
    .line 460
    .restart local v16    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5ac
    move-object/from16 v1, v16

    #@5ae
    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    #@5b1
    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b4
    .line 462
    const/16 v34, 0x1

    #@5b6
    return v34

    #@5b7
    .line 466
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@5ba
    move-object/from16 v0, p2

    #@5bc
    move-object/from16 v1, v34

    #@5be
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c1
    .line 467
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    #@5c4
    .line 468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5c7
    .line 469
    const/16 v34, 0x1

    #@5c9
    return v34

    #@5ca
    .line 473
    :sswitch_28
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@5cd
    move-object/from16 v0, p2

    #@5cf
    move-object/from16 v1, v34

    #@5d1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d4
    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5d7
    move-result v34

    #@5d8
    if-eqz v34, :cond_1b

    #@5da
    .line 476
    sget-object v34, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5dc
    move-object/from16 v0, v34

    #@5de
    move-object/from16 v1, p2

    #@5e0
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5e3
    move-result-object v9

    #@5e4
    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    #@5e6
    .line 482
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5e9
    move-result v34

    #@5ea
    if-eqz v34, :cond_1c

    #@5ec
    const/16 v18, 0x1

    #@5ee
    .line 483
    .restart local v18    # "_arg1":Z
    :goto_1c
    move-object/from16 v0, p0

    #@5f0
    move/from16 v1, v18

    #@5f2
    invoke-virtual {v0, v9, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    #@5f5
    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5f8
    .line 485
    const/16 v34, 0x1

    #@5fa
    return v34

    #@5fb
    .line 479
    .end local v18    # "_arg1":Z
    :cond_1b
    const/4 v9, 0x0

    #@5fc
    .restart local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1b

    #@5fd
    .line 482
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1c
    const/16 v18, 0x0

    #@5ff
    goto :goto_1c

    #@600
    .line 489
    :sswitch_29
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@603
    move-object/from16 v0, p2

    #@605
    move-object/from16 v1, v34

    #@607
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60a
    .line 490
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    #@60d
    move-result v22

    #@60e
    .line 491
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@611
    .line 492
    move-object/from16 v0, p3

    #@613
    move/from16 v1, v22

    #@615
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@618
    .line 493
    const/16 v34, 0x1

    #@61a
    return v34

    #@61b
    .line 497
    .end local v22    # "_result":I
    :sswitch_2a
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@61e
    move-object/from16 v0, p2

    #@620
    move-object/from16 v1, v34

    #@622
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@625
    .line 498
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@628
    move-result-object v26

    #@629
    .line 499
    .restart local v26    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@62c
    .line 500
    if-eqz v26, :cond_1d

    #@62e
    .line 501
    const/16 v34, 0x1

    #@630
    move-object/from16 v0, p3

    #@632
    move/from16 v1, v34

    #@634
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@637
    .line 502
    const/16 v34, 0x1

    #@639
    move-object/from16 v0, v26

    #@63b
    move-object/from16 v1, p3

    #@63d
    move/from16 v2, v34

    #@63f
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@642
    .line 507
    :goto_1d
    const/16 v34, 0x1

    #@644
    return v34

    #@645
    .line 505
    :cond_1d
    const/16 v34, 0x0

    #@647
    move-object/from16 v0, p3

    #@649
    move/from16 v1, v34

    #@64b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@64e
    goto :goto_1d

    #@64f
    .line 511
    .end local v26    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2b
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@652
    move-object/from16 v0, p2

    #@654
    move-object/from16 v1, v34

    #@656
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@659
    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@65c
    move-result-object v12

    #@65d
    .line 515
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@660
    move-result-object v16

    #@661
    .line 517
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@664
    move-result-object v20

    #@665
    .line 518
    .local v20, "_arg2":[B
    move-object/from16 v0, p0

    #@667
    move-object/from16 v1, v16

    #@669
    move-object/from16 v2, v20

    #@66b
    invoke-virtual {v0, v12, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;

    #@66e
    move-result-object v26

    #@66f
    .line 519
    .restart local v26    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@672
    .line 520
    if-eqz v26, :cond_1e

    #@674
    .line 521
    const/16 v34, 0x1

    #@676
    move-object/from16 v0, p3

    #@678
    move/from16 v1, v34

    #@67a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@67d
    .line 522
    const/16 v34, 0x1

    #@67f
    move-object/from16 v0, v26

    #@681
    move-object/from16 v1, p3

    #@683
    move/from16 v2, v34

    #@685
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@688
    .line 527
    :goto_1e
    const/16 v34, 0x1

    #@68a
    return v34

    #@68b
    .line 525
    :cond_1e
    const/16 v34, 0x0

    #@68d
    move-object/from16 v0, p3

    #@68f
    move/from16 v1, v34

    #@691
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@694
    goto :goto_1e

    #@695
    .line 531
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":[B
    .end local v26    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2c
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@698
    move-object/from16 v0, p2

    #@69a
    move-object/from16 v1, v34

    #@69c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@69f
    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6a2
    move-result v34

    #@6a3
    if-eqz v34, :cond_1f

    #@6a5
    .line 534
    sget-object v34, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6a7
    move-object/from16 v0, v34

    #@6a9
    move-object/from16 v1, p2

    #@6ab
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6ae
    move-result-object v9

    #@6af
    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    #@6b1
    .line 539
    :goto_1f
    move-object/from16 v0, p0

    #@6b3
    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    #@6b6
    .line 540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6b9
    .line 541
    const/16 v34, 0x1

    #@6bb
    return v34

    #@6bc
    .line 537
    :cond_1f
    const/4 v9, 0x0

    #@6bd
    .restart local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1f

    #@6be
    .line 545
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2d
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@6c1
    move-object/from16 v0, p2

    #@6c3
    move-object/from16 v1, v34

    #@6c5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c8
    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6cb
    move-result-object v12

    #@6cc
    .line 548
    .restart local v12    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6ce
    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    #@6d1
    .line 549
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d4
    .line 550
    const/16 v34, 0x1

    #@6d6
    return v34

    #@6d7
    .line 554
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_2e
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@6da
    move-object/from16 v0, p2

    #@6dc
    move-object/from16 v1, v34

    #@6de
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e1
    .line 555
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    #@6e4
    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e7
    .line 557
    const/16 v34, 0x1

    #@6e9
    return v34

    #@6ea
    .line 561
    :sswitch_2f
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@6ed
    move-object/from16 v0, p2

    #@6ef
    move-object/from16 v1, v34

    #@6f1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f4
    .line 562
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    #@6f7
    move-result-object v29

    #@6f8
    .line 563
    .local v29, "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6fb
    .line 564
    if-eqz v29, :cond_20

    #@6fd
    .line 565
    const/16 v34, 0x1

    #@6ff
    move-object/from16 v0, p3

    #@701
    move/from16 v1, v34

    #@703
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@706
    .line 566
    const/16 v34, 0x1

    #@708
    move-object/from16 v0, v29

    #@70a
    move-object/from16 v1, p3

    #@70c
    move/from16 v2, v34

    #@70e
    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    #@711
    .line 571
    :goto_20
    const/16 v34, 0x1

    #@713
    return v34

    #@714
    .line 569
    :cond_20
    const/16 v34, 0x0

    #@716
    move-object/from16 v0, p3

    #@718
    move/from16 v1, v34

    #@71a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@71d
    goto :goto_20

    #@71e
    .line 575
    .end local v29    # "_result":Landroid/os/Messenger;
    :sswitch_30
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@721
    move-object/from16 v0, p2

    #@723
    move-object/from16 v1, v34

    #@725
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@728
    .line 576
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    #@72b
    move-result-object v30

    #@72c
    .line 577
    .restart local v30    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@72f
    .line 578
    move-object/from16 v0, p3

    #@731
    move-object/from16 v1, v30

    #@733
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@736
    .line 579
    const/16 v34, 0x1

    #@738
    return v34

    #@739
    .line 583
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@73c
    move-object/from16 v0, p2

    #@73e
    move-object/from16 v1, v34

    #@740
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@743
    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@746
    move-result-object v12

    #@747
    .line 587
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@74a
    move-result v34

    #@74b
    if-eqz v34, :cond_21

    #@74d
    const/16 v18, 0x1

    #@74f
    .line 588
    .restart local v18    # "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    #@751
    move/from16 v1, v18

    #@753
    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    #@756
    .line 589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@759
    .line 590
    const/16 v34, 0x1

    #@75b
    return v34

    #@75c
    .line 587
    .end local v18    # "_arg1":Z
    :cond_21
    const/16 v18, 0x0

    #@75e
    goto :goto_21

    #@75f
    .line 594
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@762
    move-object/from16 v0, p2

    #@764
    move-object/from16 v1, v34

    #@766
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@769
    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@76c
    move-result-object v12

    #@76d
    .line 598
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@770
    move-result v34

    #@771
    if-eqz v34, :cond_22

    #@773
    const/16 v18, 0x1

    #@775
    .line 599
    .restart local v18    # "_arg1":Z
    :goto_22
    move-object/from16 v0, p0

    #@777
    move/from16 v1, v18

    #@779
    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    #@77c
    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@77f
    .line 601
    const/16 v34, 0x1

    #@781
    return v34

    #@782
    .line 598
    .end local v18    # "_arg1":Z
    :cond_22
    const/16 v18, 0x0

    #@784
    goto :goto_22

    #@785
    .line 605
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@788
    move-object/from16 v0, p2

    #@78a
    move-object/from16 v1, v34

    #@78c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78f
    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@792
    move-result v4

    #@793
    .line 608
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@795
    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    #@798
    move-result-object v30

    #@799
    .line 609
    .restart local v30    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79c
    .line 610
    move-object/from16 v0, p3

    #@79e
    move-object/from16 v1, v30

    #@7a0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7a3
    .line 611
    const/16 v34, 0x1

    #@7a5
    return v34

    #@7a6
    .line 615
    .end local v4    # "_arg0":I
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@7a9
    move-object/from16 v0, p2

    #@7ab
    move-object/from16 v1, v34

    #@7ad
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7b0
    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7b3
    move-result v4

    #@7b4
    .line 618
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@7b6
    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    #@7b9
    .line 619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7bc
    .line 620
    const/16 v34, 0x1

    #@7be
    return v34

    #@7bf
    .line 624
    .end local v4    # "_arg0":I
    :sswitch_35
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@7c2
    move-object/from16 v0, p2

    #@7c4
    move-object/from16 v1, v34

    #@7c6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c9
    .line 625
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    #@7cc
    move-result v22

    #@7cd
    .line 626
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d0
    .line 627
    move-object/from16 v0, p3

    #@7d2
    move/from16 v1, v22

    #@7d4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7d7
    .line 628
    const/16 v34, 0x1

    #@7d9
    return v34

    #@7da
    .line 632
    .end local v22    # "_result":I
    :sswitch_36
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@7dd
    move-object/from16 v0, p2

    #@7df
    move-object/from16 v1, v34

    #@7e1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e4
    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7e7
    move-result v4

    #@7e8
    .line 635
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@7ea
    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    #@7ed
    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f0
    .line 637
    const/16 v34, 0x1

    #@7f2
    return v34

    #@7f3
    .line 641
    .end local v4    # "_arg0":I
    :sswitch_37
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@7f6
    move-object/from16 v0, p2

    #@7f8
    move-object/from16 v1, v34

    #@7fa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7fd
    .line 642
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    #@800
    move-result v22

    #@801
    .line 643
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@804
    .line 644
    move-object/from16 v0, p3

    #@806
    move/from16 v1, v22

    #@808
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@80b
    .line 645
    const/16 v34, 0x1

    #@80d
    return v34

    #@80e
    .line 649
    .end local v22    # "_result":I
    :sswitch_38
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@811
    move-object/from16 v0, p2

    #@813
    move-object/from16 v1, v34

    #@815
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@818
    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@81b
    move-result v4

    #@81c
    .line 652
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@81e
    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    #@821
    .line 653
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@824
    .line 654
    const/16 v34, 0x1

    #@826
    return v34

    #@827
    .line 658
    .end local v4    # "_arg0":I
    :sswitch_39
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@82a
    move-object/from16 v0, p2

    #@82c
    move-object/from16 v1, v34

    #@82e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@831
    .line 659
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    #@834
    move-result v22

    #@835
    .line 660
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@838
    .line 661
    move-object/from16 v0, p3

    #@83a
    move/from16 v1, v22

    #@83c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@83f
    .line 662
    const/16 v34, 0x1

    #@841
    return v34

    #@842
    .line 666
    .end local v22    # "_result":I
    :sswitch_3a
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@845
    move-object/from16 v0, p2

    #@847
    move-object/from16 v1, v34

    #@849
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@84c
    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@84f
    move-result v34

    #@850
    if-eqz v34, :cond_23

    #@852
    const/4 v13, 0x1

    #@853
    .line 669
    .restart local v13    # "_arg0":Z
    :goto_23
    move-object/from16 v0, p0

    #@855
    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->setEnableAutoJoinWhenAssociated(Z)Z

    #@858
    move-result v33

    #@859
    .line 670
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@85c
    .line 671
    if-eqz v33, :cond_24

    #@85e
    const/16 v34, 0x1

    #@860
    :goto_24
    move-object/from16 v0, p3

    #@862
    move/from16 v1, v34

    #@864
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@867
    .line 672
    const/16 v34, 0x1

    #@869
    return v34

    #@86a
    .line 668
    .end local v13    # "_arg0":Z
    .end local v33    # "_result":Z
    :cond_23
    const/4 v13, 0x0

    #@86b
    goto :goto_23

    #@86c
    .line 671
    .restart local v13    # "_arg0":Z
    .restart local v33    # "_result":Z
    :cond_24
    const/16 v34, 0x0

    #@86e
    goto :goto_24

    #@86f
    .line 676
    .end local v13    # "_arg0":Z
    .end local v33    # "_result":Z
    :sswitch_3b
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@872
    move-object/from16 v0, p2

    #@874
    move-object/from16 v1, v34

    #@876
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@879
    .line 677
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getEnableAutoJoinWhenAssociated()Z

    #@87c
    move-result v33

    #@87d
    .line 678
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@880
    .line 679
    if-eqz v33, :cond_25

    #@882
    const/16 v34, 0x1

    #@884
    :goto_25
    move-object/from16 v0, p3

    #@886
    move/from16 v1, v34

    #@888
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@88b
    .line 680
    const/16 v34, 0x1

    #@88d
    return v34

    #@88e
    .line 679
    :cond_25
    const/16 v34, 0x0

    #@890
    goto :goto_25

    #@891
    .line 684
    .end local v33    # "_result":Z
    :sswitch_3c
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@894
    move-object/from16 v0, p2

    #@896
    move-object/from16 v1, v34

    #@898
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@89b
    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@89e
    move-result v34

    #@89f
    if-eqz v34, :cond_26

    #@8a1
    const/4 v13, 0x1

    #@8a2
    .line 687
    .restart local v13    # "_arg0":Z
    :goto_26
    move-object/from16 v0, p0

    #@8a4
    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->enableWifiConnectivityManager(Z)V

    #@8a7
    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8aa
    .line 689
    const/16 v34, 0x1

    #@8ac
    return v34

    #@8ad
    .line 686
    .end local v13    # "_arg0":Z
    :cond_26
    const/4 v13, 0x0

    #@8ae
    goto :goto_26

    #@8af
    .line 693
    :sswitch_3d
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@8b2
    move-object/from16 v0, p2

    #@8b4
    move-object/from16 v1, v34

    #@8b6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b9
    .line 694
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    #@8bc
    move-result-object v27

    #@8bd
    .line 695
    .local v27, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c0
    .line 696
    if-eqz v27, :cond_27

    #@8c2
    .line 697
    const/16 v34, 0x1

    #@8c4
    move-object/from16 v0, p3

    #@8c6
    move/from16 v1, v34

    #@8c8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8cb
    .line 698
    const/16 v34, 0x1

    #@8cd
    move-object/from16 v0, v27

    #@8cf
    move-object/from16 v1, p3

    #@8d1
    move/from16 v2, v34

    #@8d3
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    #@8d6
    .line 703
    :goto_27
    const/16 v34, 0x1

    #@8d8
    return v34

    #@8d9
    .line 701
    :cond_27
    const/16 v34, 0x0

    #@8db
    move-object/from16 v0, p3

    #@8dd
    move/from16 v1, v34

    #@8df
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8e2
    goto :goto_27

    #@8e3
    .line 707
    .end local v27    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_3e
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@8e6
    move-object/from16 v0, p2

    #@8e8
    move-object/from16 v1, v34

    #@8ea
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8ed
    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8f0
    move-result-object v12

    #@8f1
    .line 710
    .restart local v12    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8f3
    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;)V

    #@8f6
    .line 711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8f9
    .line 712
    const/16 v34, 0x1

    #@8fb
    return v34

    #@8fc
    .line 716
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_3f
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@8ff
    move-object/from16 v0, p2

    #@901
    move-object/from16 v1, v34

    #@903
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@906
    .line 717
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->factoryReset()V

    #@909
    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@90c
    .line 719
    const/16 v34, 0x1

    #@90e
    return v34

    #@90f
    .line 723
    :sswitch_40
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    #@912
    move-object/from16 v0, p2

    #@914
    move-object/from16 v1, v34

    #@916
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@919
    .line 724
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    #@91c
    move-result-object v24

    #@91d
    .line 725
    .local v24, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@920
    .line 726
    if-eqz v24, :cond_28

    #@922
    .line 727
    const/16 v34, 0x1

    #@924
    move-object/from16 v0, p3

    #@926
    move/from16 v1, v34

    #@928
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@92b
    .line 728
    const/16 v34, 0x1

    #@92d
    move-object/from16 v0, v24

    #@92f
    move-object/from16 v1, p3

    #@931
    move/from16 v2, v34

    #@933
    invoke-virtual {v0, v1, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    #@936
    .line 733
    :goto_28
    const/16 v34, 0x1

    #@938
    return v34

    #@939
    .line 731
    :cond_28
    const/16 v34, 0x0

    #@93b
    move-object/from16 v0, p3

    #@93d
    move/from16 v1, v34

    #@93f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@942
    goto :goto_28

    #@943
    .line 43
    nop

    #@944
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

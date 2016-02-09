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

.field static final TRANSACTION_acquireMulticastLock:I = 0x22

.field static final TRANSACTION_acquireWifiLock:I = 0x1d

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x6

.field static final TRANSACTION_addToBlacklist:I = 0x2b

.field static final TRANSACTION_buildWifiConfig:I = 0x27

.field static final TRANSACTION_clearBlacklist:I = 0x2c

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x42

.field static final TRANSACTION_disableNetwork:I = 0x9

.field static final TRANSACTION_disconnect:I = 0xf

.field static final TRANSACTION_enableAggressiveHandover:I = 0x39

.field static final TRANSACTION_enableAutoJoinWhenAssociated:I = 0x3f

.field static final TRANSACTION_enableNetwork:I = 0x8

.field static final TRANSACTION_enableTdls:I = 0x2f

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x30

.field static final TRANSACTION_enableVerboseLogging:I = 0x37

.field static final TRANSACTION_factoryReset:I = 0x43

.field static final TRANSACTION_getAggressiveHandover:I = 0x3a

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x3c

.field static final TRANSACTION_getBatchedScanResults:I = 0x33

.field static final TRANSACTION_getChannelList:I = 0xb

.field static final TRANSACTION_getConfigFile:I = 0x2e

.field static final TRANSACTION_getConfiguredNetworks:I = 0x3

.field static final TRANSACTION_getConnectionInfo:I = 0x12

.field static final TRANSACTION_getConnectionStatistics:I = 0x41

.field static final TRANSACTION_getCountryCode:I = 0x16

.field static final TRANSACTION_getCurrentNetwork:I = 0x44

.field static final TRANSACTION_getDhcpInfo:I = 0x1b

.field static final TRANSACTION_getEnableAutoJoinWhenAssociated:I = 0x40

.field static final TRANSACTION_getFrequencyBand:I = 0x18

.field static final TRANSACTION_getHalBasedAutojoinOffload:I = 0x3e

.field static final TRANSACTION_getMatchingWifiConfig:I = 0x5

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getScanResults:I = 0xe

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x38

.field static final TRANSACTION_getWifiApConfiguration:I = 0x26

.field static final TRANSACTION_getWifiApEnabledState:I = 0x25

.field static final TRANSACTION_getWifiEnabledState:I = 0x14

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x2d

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x36

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x20

.field static final TRANSACTION_isBatchedScanSupported:I = 0x34

.field static final TRANSACTION_isDualBandSupported:I = 0x19

.field static final TRANSACTION_isMulticastEnabled:I = 0x21

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x1c

.field static final TRANSACTION_pingSupplicant:I = 0xa

.field static final TRANSACTION_pollBatchedScan:I = 0x35

.field static final TRANSACTION_reassociate:I = 0x11

.field static final TRANSACTION_reconnect:I = 0x10

.field static final TRANSACTION_releaseMulticastLock:I = 0x23

.field static final TRANSACTION_releaseWifiLock:I = 0x1f

.field static final TRANSACTION_removeNetwork:I = 0x7

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestBatchedScan:I = 0x31

.field static final TRANSACTION_saveConfiguration:I = 0x1a

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x3b

.field static final TRANSACTION_setCountryCode:I = 0x15

.field static final TRANSACTION_setFrequencyBand:I = 0x17

.field static final TRANSACTION_setHalBasedAutojoinOffload:I = 0x3d

.field static final TRANSACTION_setWifiApConfiguration:I = 0x28

.field static final TRANSACTION_setWifiApEnabled:I = 0x24

.field static final TRANSACTION_setWifiEnabled:I = 0x13

.field static final TRANSACTION_startLocationRestrictedScan:I = 0xd

.field static final TRANSACTION_startScan:I = 0xc

.field static final TRANSACTION_startWifi:I = 0x29

.field static final TRANSACTION_stopBatchedScan:I = 0x32

.field static final TRANSACTION_stopWifi:I = 0x2a

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x1e


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
    .locals 36
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
    .line 776
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v35

    #@7
    return v35

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v35

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 48
    const/16 v35, 0x1

    #@14
    return v35

    #@15
    .line 52
    :sswitch_1
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v35

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    #@22
    move-result v21

    #@23
    .line 54
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26
    .line 55
    move-object/from16 v0, p3

    #@28
    move/from16 v1, v21

    #@2a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 56
    const/16 v35, 0x1

    #@2f
    return v35

    #@30
    .line 60
    .end local v21    # "_result":I
    :sswitch_2
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@33
    move-object/from16 v0, p2

    #@35
    move-object/from16 v1, v35

    #@37
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    #@3d
    move-result-object v24

    #@3e
    .line 62
    .local v24, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41
    .line 63
    if-eqz v24, :cond_0

    #@43
    .line 64
    const/16 v35, 0x1

    #@45
    move-object/from16 v0, p3

    #@47
    move/from16 v1, v35

    #@49
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 65
    const/16 v35, 0x1

    #@4e
    move-object/from16 v0, v24

    #@50
    move-object/from16 v1, p3

    #@52
    move/from16 v2, v35

    #@54
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@57
    .line 70
    :goto_0
    const/16 v35, 0x1

    #@59
    return v35

    #@5a
    .line 68
    :cond_0
    const/16 v35, 0x0

    #@5c
    move-object/from16 v0, p3

    #@5e
    move/from16 v1, v35

    #@60
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@63
    goto :goto_0

    #@64
    .line 74
    .end local v24    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@67
    move-object/from16 v0, p2

    #@69
    move-object/from16 v1, v35

    #@6b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    #@71
    move-result-object v33

    #@72
    .line 76
    .local v33, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@75
    .line 77
    move-object/from16 v0, p3

    #@77
    move-object/from16 v1, v33

    #@79
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@7c
    .line 78
    const/16 v35, 0x1

    #@7e
    return v35

    #@7f
    .line 82
    .end local v33    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_4
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@82
    move-object/from16 v0, p2

    #@84
    move-object/from16 v1, v35

    #@86
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@89
    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    #@8c
    move-result-object v33

    #@8d
    .line 84
    .restart local v33    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@90
    .line 85
    move-object/from16 v0, p3

    #@92
    move-object/from16 v1, v33

    #@94
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@97
    .line 86
    const/16 v35, 0x1

    #@99
    return v35

    #@9a
    .line 90
    .end local v33    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_5
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@9d
    move-object/from16 v0, p2

    #@9f
    move-object/from16 v1, v35

    #@a1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a4
    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v35

    #@a8
    if-eqz v35, :cond_1

    #@aa
    .line 93
    sget-object v35, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ac
    move-object/from16 v0, v35

    #@ae
    move-object/from16 v1, p2

    #@b0
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b3
    move-result-object v5

    #@b4
    check-cast v5, Landroid/net/wifi/ScanResult;

    #@b6
    .line 98
    :goto_1
    move-object/from16 v0, p0

    #@b8
    invoke-virtual {v0, v5}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    #@bb
    move-result-object v25

    #@bc
    .line 99
    .local v25, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bf
    .line 100
    if-eqz v25, :cond_2

    #@c1
    .line 101
    const/16 v35, 0x1

    #@c3
    move-object/from16 v0, p3

    #@c5
    move/from16 v1, v35

    #@c7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@ca
    .line 102
    const/16 v35, 0x1

    #@cc
    move-object/from16 v0, v25

    #@ce
    move-object/from16 v1, p3

    #@d0
    move/from16 v2, v35

    #@d2
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@d5
    .line 107
    :goto_2
    const/16 v35, 0x1

    #@d7
    return v35

    #@d8
    .line 96
    .end local v25    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v5, 0x0

    #@d9
    .local v5, "_arg0":Landroid/net/wifi/ScanResult;
    goto :goto_1

    #@da
    .line 105
    .end local v5    # "_arg0":Landroid/net/wifi/ScanResult;
    .restart local v25    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/16 v35, 0x0

    #@dc
    move-object/from16 v0, p3

    #@de
    move/from16 v1, v35

    #@e0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e3
    goto :goto_2

    #@e4
    .line 111
    .end local v25    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_6
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@e7
    move-object/from16 v0, p2

    #@e9
    move-object/from16 v1, v35

    #@eb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ee
    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f1
    move-result v35

    #@f2
    if-eqz v35, :cond_3

    #@f4
    .line 114
    sget-object v35, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f6
    move-object/from16 v0, v35

    #@f8
    move-object/from16 v1, p2

    #@fa
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fd
    move-result-object v7

    #@fe
    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    #@100
    .line 119
    :goto_3
    move-object/from16 v0, p0

    #@102
    invoke-virtual {v0, v7}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    #@105
    move-result v21

    #@106
    .line 120
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@109
    .line 121
    move-object/from16 v0, p3

    #@10b
    move/from16 v1, v21

    #@10d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@110
    .line 122
    const/16 v35, 0x1

    #@112
    return v35

    #@113
    .line 117
    .end local v21    # "_result":I
    :cond_3
    const/4 v7, 0x0

    #@114
    .local v7, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_3

    #@115
    .line 126
    .end local v7    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_7
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@118
    move-object/from16 v0, p2

    #@11a
    move-object/from16 v1, v35

    #@11c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11f
    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@122
    move-result v3

    #@123
    .line 129
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    #@125
    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    #@128
    move-result v34

    #@129
    .line 130
    .local v34, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12c
    .line 131
    if-eqz v34, :cond_4

    #@12e
    const/16 v35, 0x1

    #@130
    :goto_4
    move-object/from16 v0, p3

    #@132
    move/from16 v1, v35

    #@134
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@137
    .line 132
    const/16 v35, 0x1

    #@139
    return v35

    #@13a
    .line 131
    :cond_4
    const/16 v35, 0x0

    #@13c
    goto :goto_4

    #@13d
    .line 136
    .end local v3    # "_arg0":I
    .end local v34    # "_result":Z
    :sswitch_8
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@140
    move-object/from16 v0, p2

    #@142
    move-object/from16 v1, v35

    #@144
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@147
    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14a
    move-result v3

    #@14b
    .line 140
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14e
    move-result v35

    #@14f
    if-eqz v35, :cond_5

    #@151
    const/16 v16, 0x1

    #@153
    .line 141
    .local v16, "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    #@155
    move/from16 v1, v16

    #@157
    invoke-virtual {v0, v3, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    #@15a
    move-result v34

    #@15b
    .line 142
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15e
    .line 143
    if-eqz v34, :cond_6

    #@160
    const/16 v35, 0x1

    #@162
    :goto_6
    move-object/from16 v0, p3

    #@164
    move/from16 v1, v35

    #@166
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@169
    .line 144
    const/16 v35, 0x1

    #@16b
    return v35

    #@16c
    .line 140
    .end local v16    # "_arg1":Z
    .end local v34    # "_result":Z
    :cond_5
    const/16 v16, 0x0

    #@16e
    .restart local v16    # "_arg1":Z
    goto :goto_5

    #@16f
    .line 143
    .restart local v34    # "_result":Z
    :cond_6
    const/16 v35, 0x0

    #@171
    goto :goto_6

    #@172
    .line 148
    .end local v3    # "_arg0":I
    .end local v16    # "_arg1":Z
    .end local v34    # "_result":Z
    :sswitch_9
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@175
    move-object/from16 v0, p2

    #@177
    move-object/from16 v1, v35

    #@179
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17c
    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17f
    move-result v3

    #@180
    .line 151
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@182
    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    #@185
    move-result v34

    #@186
    .line 152
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@189
    .line 153
    if-eqz v34, :cond_7

    #@18b
    const/16 v35, 0x1

    #@18d
    :goto_7
    move-object/from16 v0, p3

    #@18f
    move/from16 v1, v35

    #@191
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@194
    .line 154
    const/16 v35, 0x1

    #@196
    return v35

    #@197
    .line 153
    :cond_7
    const/16 v35, 0x0

    #@199
    goto :goto_7

    #@19a
    .line 158
    .end local v3    # "_arg0":I
    .end local v34    # "_result":Z
    :sswitch_a
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@19d
    move-object/from16 v0, p2

    #@19f
    move-object/from16 v1, v35

    #@1a1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a4
    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    #@1a7
    move-result v34

    #@1a8
    .line 160
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ab
    .line 161
    if-eqz v34, :cond_8

    #@1ad
    const/16 v35, 0x1

    #@1af
    :goto_8
    move-object/from16 v0, p3

    #@1b1
    move/from16 v1, v35

    #@1b3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b6
    .line 162
    const/16 v35, 0x1

    #@1b8
    return v35

    #@1b9
    .line 161
    :cond_8
    const/16 v35, 0x0

    #@1bb
    goto :goto_8

    #@1bc
    .line 166
    .end local v34    # "_result":Z
    :sswitch_b
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@1bf
    move-object/from16 v0, p2

    #@1c1
    move-object/from16 v1, v35

    #@1c3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c6
    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getChannelList()Ljava/util/List;

    #@1c9
    move-result-object v32

    #@1ca
    .line 168
    .local v32, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cd
    .line 169
    move-object/from16 v0, p3

    #@1cf
    move-object/from16 v1, v32

    #@1d1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1d4
    .line 170
    const/16 v35, 0x1

    #@1d6
    return v35

    #@1d7
    .line 174
    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :sswitch_c
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@1da
    move-object/from16 v0, p2

    #@1dc
    move-object/from16 v1, v35

    #@1de
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e1
    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e4
    move-result v35

    #@1e5
    if-eqz v35, :cond_9

    #@1e7
    .line 177
    sget-object v35, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e9
    move-object/from16 v0, v35

    #@1eb
    move-object/from16 v1, p2

    #@1ed
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f0
    move-result-object v6

    #@1f1
    check-cast v6, Landroid/net/wifi/ScanSettings;

    #@1f3
    .line 183
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f6
    move-result v35

    #@1f7
    if-eqz v35, :cond_a

    #@1f9
    .line 184
    sget-object v35, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1fb
    move-object/from16 v0, v35

    #@1fd
    move-object/from16 v1, p2

    #@1ff
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@202
    move-result-object v14

    #@203
    check-cast v14, Landroid/os/WorkSource;

    #@205
    .line 189
    :goto_a
    move-object/from16 v0, p0

    #@207
    invoke-virtual {v0, v6, v14}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@20a
    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20d
    .line 191
    const/16 v35, 0x1

    #@20f
    return v35

    #@210
    .line 180
    :cond_9
    const/4 v6, 0x0

    #@211
    .local v6, "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_9

    #@212
    .line 187
    .end local v6    # "_arg0":Landroid/net/wifi/ScanSettings;
    :cond_a
    const/4 v14, 0x0

    #@213
    .local v14, "_arg1":Landroid/os/WorkSource;
    goto :goto_a

    #@214
    .line 195
    .end local v14    # "_arg1":Landroid/os/WorkSource;
    :sswitch_d
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@217
    move-object/from16 v0, p2

    #@219
    move-object/from16 v1, v35

    #@21b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21e
    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@221
    move-result v35

    #@222
    if-eqz v35, :cond_b

    #@224
    .line 198
    sget-object v35, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@226
    move-object/from16 v0, v35

    #@228
    move-object/from16 v1, p2

    #@22a
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22d
    move-result-object v9

    #@22e
    check-cast v9, Landroid/os/WorkSource;

    #@230
    .line 203
    :goto_b
    move-object/from16 v0, p0

    #@232
    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->startLocationRestrictedScan(Landroid/os/WorkSource;)V

    #@235
    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@238
    .line 205
    const/16 v35, 0x1

    #@23a
    return v35

    #@23b
    .line 201
    :cond_b
    const/4 v9, 0x0

    #@23c
    .local v9, "_arg0":Landroid/os/WorkSource;
    goto :goto_b

    #@23d
    .line 209
    .end local v9    # "_arg0":Landroid/os/WorkSource;
    :sswitch_e
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@240
    move-object/from16 v0, p2

    #@242
    move-object/from16 v1, v35

    #@244
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@247
    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24a
    move-result-object v10

    #@24b
    .line 212
    .local v10, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@24d
    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    #@250
    move-result-object v31

    #@251
    .line 213
    .local v31, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@254
    .line 214
    move-object/from16 v0, p3

    #@256
    move-object/from16 v1, v31

    #@258
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@25b
    .line 215
    const/16 v35, 0x1

    #@25d
    return v35

    #@25e
    .line 219
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v31    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_f
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@261
    move-object/from16 v0, p2

    #@263
    move-object/from16 v1, v35

    #@265
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@268
    .line 220
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    #@26b
    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26e
    .line 222
    const/16 v35, 0x1

    #@270
    return v35

    #@271
    .line 226
    :sswitch_10
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@274
    move-object/from16 v0, p2

    #@276
    move-object/from16 v1, v35

    #@278
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27b
    .line 227
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    #@27e
    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@281
    .line 229
    const/16 v35, 0x1

    #@283
    return v35

    #@284
    .line 233
    :sswitch_11
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@287
    move-object/from16 v0, p2

    #@289
    move-object/from16 v1, v35

    #@28b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28e
    .line 234
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    #@291
    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@294
    .line 236
    const/16 v35, 0x1

    #@296
    return v35

    #@297
    .line 240
    :sswitch_12
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@29a
    move-object/from16 v0, p2

    #@29c
    move-object/from16 v1, v35

    #@29e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a1
    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    #@2a4
    move-result-object v27

    #@2a5
    .line 242
    .local v27, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a8
    .line 243
    if-eqz v27, :cond_c

    #@2aa
    .line 244
    const/16 v35, 0x1

    #@2ac
    move-object/from16 v0, p3

    #@2ae
    move/from16 v1, v35

    #@2b0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2b3
    .line 245
    const/16 v35, 0x1

    #@2b5
    move-object/from16 v0, v27

    #@2b7
    move-object/from16 v1, p3

    #@2b9
    move/from16 v2, v35

    #@2bb
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@2be
    .line 250
    :goto_c
    const/16 v35, 0x1

    #@2c0
    return v35

    #@2c1
    .line 248
    :cond_c
    const/16 v35, 0x0

    #@2c3
    move-object/from16 v0, p3

    #@2c5
    move/from16 v1, v35

    #@2c7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2ca
    goto :goto_c

    #@2cb
    .line 254
    .end local v27    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_13
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@2ce
    move-object/from16 v0, p2

    #@2d0
    move-object/from16 v1, v35

    #@2d2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d5
    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d8
    move-result v35

    #@2d9
    if-eqz v35, :cond_d

    #@2db
    const/4 v11, 0x1

    #@2dc
    .line 257
    .local v11, "_arg0":Z
    :goto_d
    move-object/from16 v0, p0

    #@2de
    invoke-virtual {v0, v11}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    #@2e1
    move-result v34

    #@2e2
    .line 258
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e5
    .line 259
    if-eqz v34, :cond_e

    #@2e7
    const/16 v35, 0x1

    #@2e9
    :goto_e
    move-object/from16 v0, p3

    #@2eb
    move/from16 v1, v35

    #@2ed
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2f0
    .line 260
    const/16 v35, 0x1

    #@2f2
    return v35

    #@2f3
    .line 256
    .end local v11    # "_arg0":Z
    .end local v34    # "_result":Z
    :cond_d
    const/4 v11, 0x0

    #@2f4
    .restart local v11    # "_arg0":Z
    goto :goto_d

    #@2f5
    .line 259
    .restart local v34    # "_result":Z
    :cond_e
    const/16 v35, 0x0

    #@2f7
    goto :goto_e

    #@2f8
    .line 264
    .end local v11    # "_arg0":Z
    .end local v34    # "_result":Z
    :sswitch_14
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@2fb
    move-object/from16 v0, p2

    #@2fd
    move-object/from16 v1, v35

    #@2ff
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@302
    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    #@305
    move-result v21

    #@306
    .line 266
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@309
    .line 267
    move-object/from16 v0, p3

    #@30b
    move/from16 v1, v21

    #@30d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@310
    .line 268
    const/16 v35, 0x1

    #@312
    return v35

    #@313
    .line 272
    .end local v21    # "_result":I
    :sswitch_15
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@316
    move-object/from16 v0, p2

    #@318
    move-object/from16 v1, v35

    #@31a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31d
    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@320
    move-result-object v10

    #@321
    .line 276
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@324
    move-result v35

    #@325
    if-eqz v35, :cond_f

    #@327
    const/16 v16, 0x1

    #@329
    .line 277
    .restart local v16    # "_arg1":Z
    :goto_f
    move-object/from16 v0, p0

    #@32b
    move/from16 v1, v16

    #@32d
    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    #@330
    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@333
    .line 279
    const/16 v35, 0x1

    #@335
    return v35

    #@336
    .line 276
    .end local v16    # "_arg1":Z
    :cond_f
    const/16 v16, 0x0

    #@338
    .restart local v16    # "_arg1":Z
    goto :goto_f

    #@339
    .line 283
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Z
    :sswitch_16
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@33c
    move-object/from16 v0, p2

    #@33e
    move-object/from16 v1, v35

    #@340
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@343
    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    #@346
    move-result-object v29

    #@347
    .line 285
    .local v29, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@34a
    .line 286
    move-object/from16 v0, p3

    #@34c
    move-object/from16 v1, v29

    #@34e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@351
    .line 287
    const/16 v35, 0x1

    #@353
    return v35

    #@354
    .line 291
    .end local v29    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@357
    move-object/from16 v0, p2

    #@359
    move-object/from16 v1, v35

    #@35b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35e
    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@361
    move-result v3

    #@362
    .line 295
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@365
    move-result v35

    #@366
    if-eqz v35, :cond_10

    #@368
    const/16 v16, 0x1

    #@36a
    .line 296
    .restart local v16    # "_arg1":Z
    :goto_10
    move-object/from16 v0, p0

    #@36c
    move/from16 v1, v16

    #@36e
    invoke-virtual {v0, v3, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    #@371
    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@374
    .line 298
    const/16 v35, 0x1

    #@376
    return v35

    #@377
    .line 295
    .end local v16    # "_arg1":Z
    :cond_10
    const/16 v16, 0x0

    #@379
    .restart local v16    # "_arg1":Z
    goto :goto_10

    #@37a
    .line 302
    .end local v3    # "_arg0":I
    .end local v16    # "_arg1":Z
    :sswitch_18
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@37d
    move-object/from16 v0, p2

    #@37f
    move-object/from16 v1, v35

    #@381
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@384
    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    #@387
    move-result v21

    #@388
    .line 304
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38b
    .line 305
    move-object/from16 v0, p3

    #@38d
    move/from16 v1, v21

    #@38f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@392
    .line 306
    const/16 v35, 0x1

    #@394
    return v35

    #@395
    .line 310
    .end local v21    # "_result":I
    :sswitch_19
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@398
    move-object/from16 v0, p2

    #@39a
    move-object/from16 v1, v35

    #@39c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39f
    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    #@3a2
    move-result v34

    #@3a3
    .line 312
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a6
    .line 313
    if-eqz v34, :cond_11

    #@3a8
    const/16 v35, 0x1

    #@3aa
    :goto_11
    move-object/from16 v0, p3

    #@3ac
    move/from16 v1, v35

    #@3ae
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3b1
    .line 314
    const/16 v35, 0x1

    #@3b3
    return v35

    #@3b4
    .line 313
    :cond_11
    const/16 v35, 0x0

    #@3b6
    goto :goto_11

    #@3b7
    .line 318
    .end local v34    # "_result":Z
    :sswitch_1a
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@3ba
    move-object/from16 v0, p2

    #@3bc
    move-object/from16 v1, v35

    #@3be
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c1
    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    #@3c4
    move-result v34

    #@3c5
    .line 320
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c8
    .line 321
    if-eqz v34, :cond_12

    #@3ca
    const/16 v35, 0x1

    #@3cc
    :goto_12
    move-object/from16 v0, p3

    #@3ce
    move/from16 v1, v35

    #@3d0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3d3
    .line 322
    const/16 v35, 0x1

    #@3d5
    return v35

    #@3d6
    .line 321
    :cond_12
    const/16 v35, 0x0

    #@3d8
    goto :goto_12

    #@3d9
    .line 326
    .end local v34    # "_result":Z
    :sswitch_1b
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@3dc
    move-object/from16 v0, p2

    #@3de
    move-object/from16 v1, v35

    #@3e0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e3
    .line 327
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    #@3e6
    move-result-object v22

    #@3e7
    .line 328
    .local v22, "_result":Landroid/net/DhcpInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ea
    .line 329
    if-eqz v22, :cond_13

    #@3ec
    .line 330
    const/16 v35, 0x1

    #@3ee
    move-object/from16 v0, p3

    #@3f0
    move/from16 v1, v35

    #@3f2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3f5
    .line 331
    const/16 v35, 0x1

    #@3f7
    move-object/from16 v0, v22

    #@3f9
    move-object/from16 v1, p3

    #@3fb
    move/from16 v2, v35

    #@3fd
    invoke-virtual {v0, v1, v2}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@400
    .line 336
    :goto_13
    const/16 v35, 0x1

    #@402
    return v35

    #@403
    .line 334
    :cond_13
    const/16 v35, 0x0

    #@405
    move-object/from16 v0, p3

    #@407
    move/from16 v1, v35

    #@409
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@40c
    goto :goto_13

    #@40d
    .line 340
    .end local v22    # "_result":Landroid/net/DhcpInfo;
    :sswitch_1c
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@410
    move-object/from16 v0, p2

    #@412
    move-object/from16 v1, v35

    #@414
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@417
    .line 341
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    #@41a
    move-result v34

    #@41b
    .line 342
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41e
    .line 343
    if-eqz v34, :cond_14

    #@420
    const/16 v35, 0x1

    #@422
    :goto_14
    move-object/from16 v0, p3

    #@424
    move/from16 v1, v35

    #@426
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@429
    .line 344
    const/16 v35, 0x1

    #@42b
    return v35

    #@42c
    .line 343
    :cond_14
    const/16 v35, 0x0

    #@42e
    goto :goto_14

    #@42f
    .line 348
    .end local v34    # "_result":Z
    :sswitch_1d
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@432
    move-object/from16 v0, p2

    #@434
    move-object/from16 v1, v35

    #@436
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@439
    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@43c
    move-result-object v8

    #@43d
    .line 352
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@440
    move-result v12

    #@441
    .line 354
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@444
    move-result-object v18

    #@445
    .line 356
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@448
    move-result v35

    #@449
    if-eqz v35, :cond_15

    #@44b
    .line 357
    sget-object v35, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@44d
    move-object/from16 v0, v35

    #@44f
    move-object/from16 v1, p2

    #@451
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@454
    move-result-object v20

    #@455
    check-cast v20, Landroid/os/WorkSource;

    #@457
    .line 362
    :goto_15
    move-object/from16 v0, p0

    #@459
    move-object/from16 v1, v18

    #@45b
    move-object/from16 v2, v20

    #@45d
    invoke-virtual {v0, v8, v12, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    #@460
    move-result v34

    #@461
    .line 363
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@464
    .line 364
    if-eqz v34, :cond_16

    #@466
    const/16 v35, 0x1

    #@468
    :goto_16
    move-object/from16 v0, p3

    #@46a
    move/from16 v1, v35

    #@46c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@46f
    .line 365
    const/16 v35, 0x1

    #@471
    return v35

    #@472
    .line 360
    .end local v34    # "_result":Z
    :cond_15
    const/16 v20, 0x0

    #@474
    .local v20, "_arg3":Landroid/os/WorkSource;
    goto :goto_15

    #@475
    .line 364
    .end local v20    # "_arg3":Landroid/os/WorkSource;
    .restart local v34    # "_result":Z
    :cond_16
    const/16 v35, 0x0

    #@477
    goto :goto_16

    #@478
    .line 369
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":I
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v34    # "_result":Z
    :sswitch_1e
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@47b
    move-object/from16 v0, p2

    #@47d
    move-object/from16 v1, v35

    #@47f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@482
    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@485
    move-result-object v8

    #@486
    .line 373
    .restart local v8    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@489
    move-result v35

    #@48a
    if-eqz v35, :cond_17

    #@48c
    .line 374
    sget-object v35, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@48e
    move-object/from16 v0, v35

    #@490
    move-object/from16 v1, p2

    #@492
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@495
    move-result-object v14

    #@496
    check-cast v14, Landroid/os/WorkSource;

    #@498
    .line 379
    :goto_17
    move-object/from16 v0, p0

    #@49a
    invoke-virtual {v0, v8, v14}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    #@49d
    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a0
    .line 381
    const/16 v35, 0x1

    #@4a2
    return v35

    #@4a3
    .line 377
    :cond_17
    const/4 v14, 0x0

    #@4a4
    .restart local v14    # "_arg1":Landroid/os/WorkSource;
    goto :goto_17

    #@4a5
    .line 385
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":Landroid/os/WorkSource;
    :sswitch_1f
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@4a8
    move-object/from16 v0, p2

    #@4aa
    move-object/from16 v1, v35

    #@4ac
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4af
    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4b2
    move-result-object v8

    #@4b3
    .line 388
    .restart local v8    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@4b5
    invoke-virtual {v0, v8}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    #@4b8
    move-result v34

    #@4b9
    .line 389
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4bc
    .line 390
    if-eqz v34, :cond_18

    #@4be
    const/16 v35, 0x1

    #@4c0
    :goto_18
    move-object/from16 v0, p3

    #@4c2
    move/from16 v1, v35

    #@4c4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4c7
    .line 391
    const/16 v35, 0x1

    #@4c9
    return v35

    #@4ca
    .line 390
    :cond_18
    const/16 v35, 0x0

    #@4cc
    goto :goto_18

    #@4cd
    .line 395
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v34    # "_result":Z
    :sswitch_20
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@4d0
    move-object/from16 v0, p2

    #@4d2
    move-object/from16 v1, v35

    #@4d4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d7
    .line 396
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    #@4da
    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4dd
    .line 398
    const/16 v35, 0x1

    #@4df
    return v35

    #@4e0
    .line 402
    :sswitch_21
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@4e3
    move-object/from16 v0, p2

    #@4e5
    move-object/from16 v1, v35

    #@4e7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ea
    .line 403
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    #@4ed
    move-result v34

    #@4ee
    .line 404
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f1
    .line 405
    if-eqz v34, :cond_19

    #@4f3
    const/16 v35, 0x1

    #@4f5
    :goto_19
    move-object/from16 v0, p3

    #@4f7
    move/from16 v1, v35

    #@4f9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4fc
    .line 406
    const/16 v35, 0x1

    #@4fe
    return v35

    #@4ff
    .line 405
    :cond_19
    const/16 v35, 0x0

    #@501
    goto :goto_19

    #@502
    .line 410
    .end local v34    # "_result":Z
    :sswitch_22
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@505
    move-object/from16 v0, p2

    #@507
    move-object/from16 v1, v35

    #@509
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50c
    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@50f
    move-result-object v8

    #@510
    .line 414
    .restart local v8    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@513
    move-result-object v15

    #@514
    .line 415
    .local v15, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@516
    invoke-virtual {v0, v8, v15}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    #@519
    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@51c
    .line 417
    const/16 v35, 0x1

    #@51e
    return v35

    #@51f
    .line 421
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@522
    move-object/from16 v0, p2

    #@524
    move-object/from16 v1, v35

    #@526
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@529
    .line 422
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    #@52c
    .line 423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@52f
    .line 424
    const/16 v35, 0x1

    #@531
    return v35

    #@532
    .line 428
    :sswitch_24
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@535
    move-object/from16 v0, p2

    #@537
    move-object/from16 v1, v35

    #@539
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53c
    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@53f
    move-result v35

    #@540
    if-eqz v35, :cond_1a

    #@542
    .line 431
    sget-object v35, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@544
    move-object/from16 v0, v35

    #@546
    move-object/from16 v1, p2

    #@548
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@54b
    move-result-object v7

    #@54c
    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    #@54e
    .line 437
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@551
    move-result v35

    #@552
    if-eqz v35, :cond_1b

    #@554
    const/16 v16, 0x1

    #@556
    .line 438
    .restart local v16    # "_arg1":Z
    :goto_1b
    move-object/from16 v0, p0

    #@558
    move/from16 v1, v16

    #@55a
    invoke-virtual {v0, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    #@55d
    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@560
    .line 440
    const/16 v35, 0x1

    #@562
    return v35

    #@563
    .line 434
    .end local v16    # "_arg1":Z
    :cond_1a
    const/4 v7, 0x0

    #@564
    .restart local v7    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1a

    #@565
    .line 437
    .end local v7    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1b
    const/16 v16, 0x0

    #@567
    .restart local v16    # "_arg1":Z
    goto :goto_1b

    #@568
    .line 444
    .end local v16    # "_arg1":Z
    :sswitch_25
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@56b
    move-object/from16 v0, p2

    #@56d
    move-object/from16 v1, v35

    #@56f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@572
    .line 445
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    #@575
    move-result v21

    #@576
    .line 446
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@579
    .line 447
    move-object/from16 v0, p3

    #@57b
    move/from16 v1, v21

    #@57d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@580
    .line 448
    const/16 v35, 0x1

    #@582
    return v35

    #@583
    .line 452
    .end local v21    # "_result":I
    :sswitch_26
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@586
    move-object/from16 v0, p2

    #@588
    move-object/from16 v1, v35

    #@58a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@58d
    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@590
    move-result-object v25

    #@591
    .line 454
    .restart local v25    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@594
    .line 455
    if-eqz v25, :cond_1c

    #@596
    .line 456
    const/16 v35, 0x1

    #@598
    move-object/from16 v0, p3

    #@59a
    move/from16 v1, v35

    #@59c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@59f
    .line 457
    const/16 v35, 0x1

    #@5a1
    move-object/from16 v0, v25

    #@5a3
    move-object/from16 v1, p3

    #@5a5
    move/from16 v2, v35

    #@5a7
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@5aa
    .line 462
    :goto_1c
    const/16 v35, 0x1

    #@5ac
    return v35

    #@5ad
    .line 460
    :cond_1c
    const/16 v35, 0x0

    #@5af
    move-object/from16 v0, p3

    #@5b1
    move/from16 v1, v35

    #@5b3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5b6
    goto :goto_1c

    #@5b7
    .line 466
    .end local v25    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_27
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@5ba
    move-object/from16 v0, p2

    #@5bc
    move-object/from16 v1, v35

    #@5be
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c1
    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5c4
    move-result-object v10

    #@5c5
    .line 470
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5c8
    move-result-object v15

    #@5c9
    .line 472
    .restart local v15    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@5cc
    move-result-object v19

    #@5cd
    .line 473
    .local v19, "_arg2":[B
    move-object/from16 v0, p0

    #@5cf
    move-object/from16 v1, v19

    #@5d1
    invoke-virtual {v0, v10, v15, v1}, Landroid/net/wifi/IWifiManager$Stub;->buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;

    #@5d4
    move-result-object v25

    #@5d5
    .line 474
    .restart local v25    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d8
    .line 475
    if-eqz v25, :cond_1d

    #@5da
    .line 476
    const/16 v35, 0x1

    #@5dc
    move-object/from16 v0, p3

    #@5de
    move/from16 v1, v35

    #@5e0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5e3
    .line 477
    const/16 v35, 0x1

    #@5e5
    move-object/from16 v0, v25

    #@5e7
    move-object/from16 v1, p3

    #@5e9
    move/from16 v2, v35

    #@5eb
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@5ee
    .line 482
    :goto_1d
    const/16 v35, 0x1

    #@5f0
    return v35

    #@5f1
    .line 480
    :cond_1d
    const/16 v35, 0x0

    #@5f3
    move-object/from16 v0, p3

    #@5f5
    move/from16 v1, v35

    #@5f7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5fa
    goto :goto_1d

    #@5fb
    .line 486
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":[B
    .end local v25    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_28
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@5fe
    move-object/from16 v0, p2

    #@600
    move-object/from16 v1, v35

    #@602
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@605
    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@608
    move-result v35

    #@609
    if-eqz v35, :cond_1e

    #@60b
    .line 489
    sget-object v35, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@60d
    move-object/from16 v0, v35

    #@60f
    move-object/from16 v1, p2

    #@611
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@614
    move-result-object v7

    #@615
    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    #@617
    .line 494
    :goto_1e
    move-object/from16 v0, p0

    #@619
    invoke-virtual {v0, v7}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    #@61c
    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@61f
    .line 496
    const/16 v35, 0x1

    #@621
    return v35

    #@622
    .line 492
    :cond_1e
    const/4 v7, 0x0

    #@623
    .restart local v7    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1e

    #@624
    .line 500
    .end local v7    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_29
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@627
    move-object/from16 v0, p2

    #@629
    move-object/from16 v1, v35

    #@62b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62e
    .line 501
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    #@631
    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@634
    .line 503
    const/16 v35, 0x1

    #@636
    return v35

    #@637
    .line 507
    :sswitch_2a
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@63a
    move-object/from16 v0, p2

    #@63c
    move-object/from16 v1, v35

    #@63e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@641
    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    #@644
    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@647
    .line 510
    const/16 v35, 0x1

    #@649
    return v35

    #@64a
    .line 514
    :sswitch_2b
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@64d
    move-object/from16 v0, p2

    #@64f
    move-object/from16 v1, v35

    #@651
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@654
    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@657
    move-result-object v10

    #@658
    .line 517
    .restart local v10    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@65a
    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    #@65d
    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@660
    .line 519
    const/16 v35, 0x1

    #@662
    return v35

    #@663
    .line 523
    .end local v10    # "_arg0":Ljava/lang/String;
    :sswitch_2c
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@666
    move-object/from16 v0, p2

    #@668
    move-object/from16 v1, v35

    #@66a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@66d
    .line 524
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    #@670
    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@673
    .line 526
    const/16 v35, 0x1

    #@675
    return v35

    #@676
    .line 530
    :sswitch_2d
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@679
    move-object/from16 v0, p2

    #@67b
    move-object/from16 v1, v35

    #@67d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@680
    .line 531
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    #@683
    move-result-object v28

    #@684
    .line 532
    .local v28, "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@687
    .line 533
    if-eqz v28, :cond_1f

    #@689
    .line 534
    const/16 v35, 0x1

    #@68b
    move-object/from16 v0, p3

    #@68d
    move/from16 v1, v35

    #@68f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@692
    .line 535
    const/16 v35, 0x1

    #@694
    move-object/from16 v0, v28

    #@696
    move-object/from16 v1, p3

    #@698
    move/from16 v2, v35

    #@69a
    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    #@69d
    .line 540
    :goto_1f
    const/16 v35, 0x1

    #@69f
    return v35

    #@6a0
    .line 538
    :cond_1f
    const/16 v35, 0x0

    #@6a2
    move-object/from16 v0, p3

    #@6a4
    move/from16 v1, v35

    #@6a6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6a9
    goto :goto_1f

    #@6aa
    .line 544
    .end local v28    # "_result":Landroid/os/Messenger;
    :sswitch_2e
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@6ad
    move-object/from16 v0, p2

    #@6af
    move-object/from16 v1, v35

    #@6b1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b4
    .line 545
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    #@6b7
    move-result-object v29

    #@6b8
    .line 546
    .restart local v29    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6bb
    .line 547
    move-object/from16 v0, p3

    #@6bd
    move-object/from16 v1, v29

    #@6bf
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6c2
    .line 548
    const/16 v35, 0x1

    #@6c4
    return v35

    #@6c5
    .line 552
    .end local v29    # "_result":Ljava/lang/String;
    :sswitch_2f
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@6c8
    move-object/from16 v0, p2

    #@6ca
    move-object/from16 v1, v35

    #@6cc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6cf
    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6d2
    move-result-object v10

    #@6d3
    .line 556
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d6
    move-result v35

    #@6d7
    if-eqz v35, :cond_20

    #@6d9
    const/16 v16, 0x1

    #@6db
    .line 557
    .restart local v16    # "_arg1":Z
    :goto_20
    move-object/from16 v0, p0

    #@6dd
    move/from16 v1, v16

    #@6df
    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    #@6e2
    .line 558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e5
    .line 559
    const/16 v35, 0x1

    #@6e7
    return v35

    #@6e8
    .line 556
    .end local v16    # "_arg1":Z
    :cond_20
    const/16 v16, 0x0

    #@6ea
    .restart local v16    # "_arg1":Z
    goto :goto_20

    #@6eb
    .line 563
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Z
    :sswitch_30
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@6ee
    move-object/from16 v0, p2

    #@6f0
    move-object/from16 v1, v35

    #@6f2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f5
    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6f8
    move-result-object v10

    #@6f9
    .line 567
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6fc
    move-result v35

    #@6fd
    if-eqz v35, :cond_21

    #@6ff
    const/16 v16, 0x1

    #@701
    .line 568
    .restart local v16    # "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    #@703
    move/from16 v1, v16

    #@705
    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    #@708
    .line 569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@70b
    .line 570
    const/16 v35, 0x1

    #@70d
    return v35

    #@70e
    .line 567
    .end local v16    # "_arg1":Z
    :cond_21
    const/16 v16, 0x0

    #@710
    .restart local v16    # "_arg1":Z
    goto :goto_21

    #@711
    .line 574
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Z
    :sswitch_31
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@714
    move-object/from16 v0, p2

    #@716
    move-object/from16 v1, v35

    #@718
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@71b
    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71e
    move-result v35

    #@71f
    if-eqz v35, :cond_22

    #@721
    .line 577
    sget-object v35, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@723
    move-object/from16 v0, v35

    #@725
    move-object/from16 v1, p2

    #@727
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@72a
    move-result-object v4

    #@72b
    check-cast v4, Landroid/net/wifi/BatchedScanSettings;

    #@72d
    .line 583
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@730
    move-result-object v13

    #@731
    .line 585
    .local v13, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@734
    move-result v35

    #@735
    if-eqz v35, :cond_23

    #@737
    .line 586
    sget-object v35, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@739
    move-object/from16 v0, v35

    #@73b
    move-object/from16 v1, p2

    #@73d
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@740
    move-result-object v17

    #@741
    check-cast v17, Landroid/os/WorkSource;

    #@743
    .line 591
    :goto_23
    move-object/from16 v0, p0

    #@745
    move-object/from16 v1, v17

    #@747
    invoke-virtual {v0, v4, v13, v1}, Landroid/net/wifi/IWifiManager$Stub;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    #@74a
    move-result v34

    #@74b
    .line 592
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@74e
    .line 593
    if-eqz v34, :cond_24

    #@750
    const/16 v35, 0x1

    #@752
    :goto_24
    move-object/from16 v0, p3

    #@754
    move/from16 v1, v35

    #@756
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@759
    .line 594
    const/16 v35, 0x1

    #@75b
    return v35

    #@75c
    .line 580
    .end local v13    # "_arg1":Landroid/os/IBinder;
    .end local v34    # "_result":Z
    :cond_22
    const/4 v4, 0x0

    #@75d
    .local v4, "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_22

    #@75e
    .line 589
    .end local v4    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .restart local v13    # "_arg1":Landroid/os/IBinder;
    :cond_23
    const/16 v17, 0x0

    #@760
    .local v17, "_arg2":Landroid/os/WorkSource;
    goto :goto_23

    #@761
    .line 593
    .end local v17    # "_arg2":Landroid/os/WorkSource;
    .restart local v34    # "_result":Z
    :cond_24
    const/16 v35, 0x0

    #@763
    goto :goto_24

    #@764
    .line 598
    .end local v13    # "_arg1":Landroid/os/IBinder;
    .end local v34    # "_result":Z
    :sswitch_32
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@767
    move-object/from16 v0, p2

    #@769
    move-object/from16 v1, v35

    #@76b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76e
    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@771
    move-result v35

    #@772
    if-eqz v35, :cond_25

    #@774
    .line 601
    sget-object v35, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@776
    move-object/from16 v0, v35

    #@778
    move-object/from16 v1, p2

    #@77a
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@77d
    move-result-object v4

    #@77e
    check-cast v4, Landroid/net/wifi/BatchedScanSettings;

    #@780
    .line 606
    :goto_25
    move-object/from16 v0, p0

    #@782
    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V

    #@785
    .line 607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@788
    .line 608
    const/16 v35, 0x1

    #@78a
    return v35

    #@78b
    .line 604
    :cond_25
    const/4 v4, 0x0

    #@78c
    .restart local v4    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_25

    #@78d
    .line 612
    .end local v4    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :sswitch_33
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@790
    move-object/from16 v0, p2

    #@792
    move-object/from16 v1, v35

    #@794
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@797
    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@79a
    move-result-object v10

    #@79b
    .line 615
    .restart local v10    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@79d
    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;

    #@7a0
    move-result-object v30

    #@7a1
    .line 616
    .local v30, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7a4
    .line 617
    move-object/from16 v0, p3

    #@7a6
    move-object/from16 v1, v30

    #@7a8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@7ab
    .line 618
    const/16 v35, 0x1

    #@7ad
    return v35

    #@7ae
    .line 622
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    :sswitch_34
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@7b1
    move-object/from16 v0, p2

    #@7b3
    move-object/from16 v1, v35

    #@7b5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7b8
    .line 623
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isBatchedScanSupported()Z

    #@7bb
    move-result v34

    #@7bc
    .line 624
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7bf
    .line 625
    if-eqz v34, :cond_26

    #@7c1
    const/16 v35, 0x1

    #@7c3
    :goto_26
    move-object/from16 v0, p3

    #@7c5
    move/from16 v1, v35

    #@7c7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7ca
    .line 626
    const/16 v35, 0x1

    #@7cc
    return v35

    #@7cd
    .line 625
    :cond_26
    const/16 v35, 0x0

    #@7cf
    goto :goto_26

    #@7d0
    .line 630
    .end local v34    # "_result":Z
    :sswitch_35
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@7d3
    move-object/from16 v0, p2

    #@7d5
    move-object/from16 v1, v35

    #@7d7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7da
    .line 631
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->pollBatchedScan()V

    #@7dd
    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e0
    .line 633
    const/16 v35, 0x1

    #@7e2
    return v35

    #@7e3
    .line 637
    :sswitch_36
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@7e6
    move-object/from16 v0, p2

    #@7e8
    move-object/from16 v1, v35

    #@7ea
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7ed
    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7f0
    move-result v3

    #@7f1
    .line 640
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@7f3
    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    #@7f6
    move-result-object v29

    #@7f7
    .line 641
    .restart local v29    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7fa
    .line 642
    move-object/from16 v0, p3

    #@7fc
    move-object/from16 v1, v29

    #@7fe
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@801
    .line 643
    const/16 v35, 0x1

    #@803
    return v35

    #@804
    .line 647
    .end local v3    # "_arg0":I
    .end local v29    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@807
    move-object/from16 v0, p2

    #@809
    move-object/from16 v1, v35

    #@80b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80e
    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@811
    move-result v3

    #@812
    .line 650
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@814
    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    #@817
    .line 651
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@81a
    .line 652
    const/16 v35, 0x1

    #@81c
    return v35

    #@81d
    .line 656
    .end local v3    # "_arg0":I
    :sswitch_38
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@820
    move-object/from16 v0, p2

    #@822
    move-object/from16 v1, v35

    #@824
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@827
    .line 657
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    #@82a
    move-result v21

    #@82b
    .line 658
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@82e
    .line 659
    move-object/from16 v0, p3

    #@830
    move/from16 v1, v21

    #@832
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@835
    .line 660
    const/16 v35, 0x1

    #@837
    return v35

    #@838
    .line 664
    .end local v21    # "_result":I
    :sswitch_39
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@83b
    move-object/from16 v0, p2

    #@83d
    move-object/from16 v1, v35

    #@83f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@842
    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@845
    move-result v3

    #@846
    .line 667
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@848
    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    #@84b
    .line 668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@84e
    .line 669
    const/16 v35, 0x1

    #@850
    return v35

    #@851
    .line 673
    .end local v3    # "_arg0":I
    :sswitch_3a
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@854
    move-object/from16 v0, p2

    #@856
    move-object/from16 v1, v35

    #@858
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@85b
    .line 674
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    #@85e
    move-result v21

    #@85f
    .line 675
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@862
    .line 676
    move-object/from16 v0, p3

    #@864
    move/from16 v1, v21

    #@866
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@869
    .line 677
    const/16 v35, 0x1

    #@86b
    return v35

    #@86c
    .line 681
    .end local v21    # "_result":I
    :sswitch_3b
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@86f
    move-object/from16 v0, p2

    #@871
    move-object/from16 v1, v35

    #@873
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@876
    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@879
    move-result v3

    #@87a
    .line 684
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@87c
    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    #@87f
    .line 685
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@882
    .line 686
    const/16 v35, 0x1

    #@884
    return v35

    #@885
    .line 690
    .end local v3    # "_arg0":I
    :sswitch_3c
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@888
    move-object/from16 v0, p2

    #@88a
    move-object/from16 v1, v35

    #@88c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@88f
    .line 691
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    #@892
    move-result v21

    #@893
    .line 692
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@896
    .line 693
    move-object/from16 v0, p3

    #@898
    move/from16 v1, v21

    #@89a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@89d
    .line 694
    const/16 v35, 0x1

    #@89f
    return v35

    #@8a0
    .line 698
    .end local v21    # "_result":I
    :sswitch_3d
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@8a3
    move-object/from16 v0, p2

    #@8a5
    move-object/from16 v1, v35

    #@8a7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8aa
    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8ad
    move-result v3

    #@8ae
    .line 701
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@8b0
    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->setHalBasedAutojoinOffload(I)V

    #@8b3
    .line 702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8b6
    .line 703
    const/16 v35, 0x1

    #@8b8
    return v35

    #@8b9
    .line 707
    .end local v3    # "_arg0":I
    :sswitch_3e
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@8bc
    move-object/from16 v0, p2

    #@8be
    move-object/from16 v1, v35

    #@8c0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c3
    .line 708
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getHalBasedAutojoinOffload()I

    #@8c6
    move-result v21

    #@8c7
    .line 709
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8ca
    .line 710
    move-object/from16 v0, p3

    #@8cc
    move/from16 v1, v21

    #@8ce
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8d1
    .line 711
    const/16 v35, 0x1

    #@8d3
    return v35

    #@8d4
    .line 715
    .end local v21    # "_result":I
    :sswitch_3f
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@8d7
    move-object/from16 v0, p2

    #@8d9
    move-object/from16 v1, v35

    #@8db
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8de
    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8e1
    move-result v35

    #@8e2
    if-eqz v35, :cond_27

    #@8e4
    const/4 v11, 0x1

    #@8e5
    .line 718
    .restart local v11    # "_arg0":Z
    :goto_27
    move-object/from16 v0, p0

    #@8e7
    invoke-virtual {v0, v11}, Landroid/net/wifi/IWifiManager$Stub;->enableAutoJoinWhenAssociated(Z)Z

    #@8ea
    move-result v34

    #@8eb
    .line 719
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8ee
    .line 720
    if-eqz v34, :cond_28

    #@8f0
    const/16 v35, 0x1

    #@8f2
    :goto_28
    move-object/from16 v0, p3

    #@8f4
    move/from16 v1, v35

    #@8f6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8f9
    .line 721
    const/16 v35, 0x1

    #@8fb
    return v35

    #@8fc
    .line 717
    .end local v11    # "_arg0":Z
    .end local v34    # "_result":Z
    :cond_27
    const/4 v11, 0x0

    #@8fd
    .restart local v11    # "_arg0":Z
    goto :goto_27

    #@8fe
    .line 720
    .restart local v34    # "_result":Z
    :cond_28
    const/16 v35, 0x0

    #@900
    goto :goto_28

    #@901
    .line 725
    .end local v11    # "_arg0":Z
    .end local v34    # "_result":Z
    :sswitch_40
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@904
    move-object/from16 v0, p2

    #@906
    move-object/from16 v1, v35

    #@908
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@90b
    .line 726
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getEnableAutoJoinWhenAssociated()Z

    #@90e
    move-result v34

    #@90f
    .line 727
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@912
    .line 728
    if-eqz v34, :cond_29

    #@914
    const/16 v35, 0x1

    #@916
    :goto_29
    move-object/from16 v0, p3

    #@918
    move/from16 v1, v35

    #@91a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@91d
    .line 729
    const/16 v35, 0x1

    #@91f
    return v35

    #@920
    .line 728
    :cond_29
    const/16 v35, 0x0

    #@922
    goto :goto_29

    #@923
    .line 733
    .end local v34    # "_result":Z
    :sswitch_41
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@926
    move-object/from16 v0, p2

    #@928
    move-object/from16 v1, v35

    #@92a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@92d
    .line 734
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    #@930
    move-result-object v26

    #@931
    .line 735
    .local v26, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@934
    .line 736
    if-eqz v26, :cond_2a

    #@936
    .line 737
    const/16 v35, 0x1

    #@938
    move-object/from16 v0, p3

    #@93a
    move/from16 v1, v35

    #@93c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@93f
    .line 738
    const/16 v35, 0x1

    #@941
    move-object/from16 v0, v26

    #@943
    move-object/from16 v1, p3

    #@945
    move/from16 v2, v35

    #@947
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    #@94a
    .line 743
    :goto_2a
    const/16 v35, 0x1

    #@94c
    return v35

    #@94d
    .line 741
    :cond_2a
    const/16 v35, 0x0

    #@94f
    move-object/from16 v0, p3

    #@951
    move/from16 v1, v35

    #@953
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@956
    goto :goto_2a

    #@957
    .line 747
    .end local v26    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_42
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@95a
    move-object/from16 v0, p2

    #@95c
    move-object/from16 v1, v35

    #@95e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@961
    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@964
    move-result-object v10

    #@965
    .line 750
    .restart local v10    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@967
    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;)V

    #@96a
    .line 751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@96d
    .line 752
    const/16 v35, 0x1

    #@96f
    return v35

    #@970
    .line 756
    .end local v10    # "_arg0":Ljava/lang/String;
    :sswitch_43
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@973
    move-object/from16 v0, p2

    #@975
    move-object/from16 v1, v35

    #@977
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@97a
    .line 757
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->factoryReset()V

    #@97d
    .line 758
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@980
    .line 759
    const/16 v35, 0x1

    #@982
    return v35

    #@983
    .line 763
    :sswitch_44
    const-string/jumbo v35, "android.net.wifi.IWifiManager"

    #@986
    move-object/from16 v0, p2

    #@988
    move-object/from16 v1, v35

    #@98a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@98d
    .line 764
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    #@990
    move-result-object v23

    #@991
    .line 765
    .local v23, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@994
    .line 766
    if-eqz v23, :cond_2b

    #@996
    .line 767
    const/16 v35, 0x1

    #@998
    move-object/from16 v0, p3

    #@99a
    move/from16 v1, v35

    #@99c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@99f
    .line 768
    const/16 v35, 0x1

    #@9a1
    move-object/from16 v0, v23

    #@9a3
    move-object/from16 v1, p3

    #@9a5
    move/from16 v2, v35

    #@9a7
    invoke-virtual {v0, v1, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    #@9aa
    .line 773
    :goto_2b
    const/16 v35, 0x1

    #@9ac
    return v35

    #@9ad
    .line 771
    :cond_2b
    const/16 v35, 0x0

    #@9af
    move-object/from16 v0, p3

    #@9b1
    move/from16 v1, v35

    #@9b3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9b6
    goto :goto_2b

    #@9b7
    .line 43
    nop

    #@9b8
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

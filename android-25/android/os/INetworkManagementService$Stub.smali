.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final TRANSACTION_addIdleTimer:I = 0x36

.field static final TRANSACTION_addInterfaceToLocalNetwork:I = 0x57

.field static final TRANSACTION_addInterfaceToNetwork:I = 0x4d

.field static final TRANSACTION_addLegacyRouteForNetId:I = 0x4f

.field static final TRANSACTION_addRoute:I = 0xe

.field static final TRANSACTION_addVpnUidRanges:I = 0x42

.field static final TRANSACTION_allowProtect:I = 0x55

.field static final TRANSACTION_attachPppd:I = 0x21

.field static final TRANSACTION_clearDefaultNetId:I = 0x51

.field static final TRANSACTION_clearInterfaceAddresses:I = 0x7

.field static final TRANSACTION_clearPermission:I = 0x54

.field static final TRANSACTION_createPhysicalNetwork:I = 0x4a

.field static final TRANSACTION_createVirtualNetwork:I = 0x4b

.field static final TRANSACTION_denyProtect:I = 0x56

.field static final TRANSACTION_detachPppd:I = 0x22

.field static final TRANSACTION_disableIpv6:I = 0xb

.field static final TRANSACTION_disableNat:I = 0x1f

.field static final TRANSACTION_enableIpv6:I = 0xc

.field static final TRANSACTION_enableNat:I = 0x1e

.field static final TRANSACTION_getDnsForwarders:I = 0x1b

.field static final TRANSACTION_getInterfaceConfig:I = 0x5

.field static final TRANSACTION_getIpForwardingEnabled:I = 0x12

.field static final TRANSACTION_getNetdService:I = 0x3

.field static final TRANSACTION_getNetworkStatsDetail:I = 0x29

.field static final TRANSACTION_getNetworkStatsSummaryDev:I = 0x27

.field static final TRANSACTION_getNetworkStatsSummaryXt:I = 0x28

.field static final TRANSACTION_getNetworkStatsTethering:I = 0x2b

.field static final TRANSACTION_getNetworkStatsUidDetail:I = 0x2a

.field static final TRANSACTION_isBandwidthControlEnabled:I = 0x35

.field static final TRANSACTION_isClatdStarted:I = 0x46

.field static final TRANSACTION_isFirewallEnabled:I = 0x3b

.field static final TRANSACTION_isNetworkActive:I = 0x49

.field static final TRANSACTION_isTetheringStarted:I = 0x16

.field static final TRANSACTION_listInterfaces:I = 0x4

.field static final TRANSACTION_listTetheredInterfaces:I = 0x19

.field static final TRANSACTION_listTtys:I = 0x20

.field static final TRANSACTION_registerNetworkActivityListener:I = 0x47

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_removeIdleTimer:I = 0x37

.field static final TRANSACTION_removeInterfaceAlert:I = 0x2f

.field static final TRANSACTION_removeInterfaceFromLocalNetwork:I = 0x58

.field static final TRANSACTION_removeInterfaceFromNetwork:I = 0x4e

.field static final TRANSACTION_removeInterfaceQuota:I = 0x2d

.field static final TRANSACTION_removeNetwork:I = 0x4c

.field static final TRANSACTION_removeRoute:I = 0xf

.field static final TRANSACTION_removeRoutesFromLocalNetwork:I = 0x59

.field static final TRANSACTION_removeVpnUidRanges:I = 0x43

.field static final TRANSACTION_setAccessPoint:I = 0x26

.field static final TRANSACTION_setAllowOnlyVpnForUids:I = 0x5a

.field static final TRANSACTION_setDataSaverModeEnabled:I = 0x33

.field static final TRANSACTION_setDefaultNetId:I = 0x50

.field static final TRANSACTION_setDnsConfigurationForNetwork:I = 0x38

.field static final TRANSACTION_setDnsForwarders:I = 0x1a

.field static final TRANSACTION_setDnsServersForNetwork:I = 0x39

.field static final TRANSACTION_setFirewallChainEnabled:I = 0x41

.field static final TRANSACTION_setFirewallEgressDestRule:I = 0x3e

.field static final TRANSACTION_setFirewallEgressSourceRule:I = 0x3d

.field static final TRANSACTION_setFirewallEnabled:I = 0x3a

.field static final TRANSACTION_setFirewallInterfaceRule:I = 0x3c

.field static final TRANSACTION_setFirewallUidRule:I = 0x3f

.field static final TRANSACTION_setFirewallUidRules:I = 0x40

.field static final TRANSACTION_setGlobalAlert:I = 0x30

.field static final TRANSACTION_setInterfaceAlert:I = 0x2e

.field static final TRANSACTION_setInterfaceConfig:I = 0x6

.field static final TRANSACTION_setInterfaceDown:I = 0x8

.field static final TRANSACTION_setInterfaceIpv6NdOffload:I = 0xd

.field static final TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0xa

.field static final TRANSACTION_setInterfaceQuota:I = 0x2c

.field static final TRANSACTION_setInterfaceUp:I = 0x9

.field static final TRANSACTION_setIpForwardingEnabled:I = 0x13

.field static final TRANSACTION_setMtu:I = 0x10

.field static final TRANSACTION_setNetworkPermission:I = 0x52

.field static final TRANSACTION_setPermission:I = 0x53

.field static final TRANSACTION_setUidCleartextNetworkPolicy:I = 0x34

.field static final TRANSACTION_setUidMeteredNetworkBlacklist:I = 0x31

.field static final TRANSACTION_setUidMeteredNetworkWhitelist:I = 0x32

.field static final TRANSACTION_shutdown:I = 0x11

.field static final TRANSACTION_startAccessPoint:I = 0x24

.field static final TRANSACTION_startClatd:I = 0x44

.field static final TRANSACTION_startInterfaceForwarding:I = 0x1c

.field static final TRANSACTION_startTethering:I = 0x14

.field static final TRANSACTION_stopAccessPoint:I = 0x25

.field static final TRANSACTION_stopClatd:I = 0x45

.field static final TRANSACTION_stopInterfaceForwarding:I = 0x1d

.field static final TRANSACTION_stopTethering:I = 0x15

.field static final TRANSACTION_tetherInterface:I = 0x17

.field static final TRANSACTION_unregisterNetworkActivityListener:I = 0x48

.field static final TRANSACTION_unregisterObserver:I = 0x2

.field static final TRANSACTION_untetherInterface:I = 0x18

.field static final TRANSACTION_wifiFirmwareReload:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.os.INetworkManagementService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "android.os.INetworkManagementService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/os/INetworkManagementService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/os/INetworkManagementService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/INetworkManagementService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 40
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1017
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v4}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    #@21
    move-result-object v11

    #@22
    .line 53
    .local v11, "_arg0":Landroid/net/INetworkManagementEventObserver;
    move-object/from16 v0, p0

    #@24
    invoke-virtual {v0, v11}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    #@27
    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a
    .line 55
    const/4 v4, 0x1

    #@2b
    return v4

    #@2c
    .line 59
    .end local v11    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :sswitch_2
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@2f
    move-object/from16 v0, p2

    #@31
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@37
    move-result-object v4

    #@38
    invoke-static {v4}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    #@3b
    move-result-object v11

    #@3c
    .line 62
    .restart local v11    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    move-object/from16 v0, p0

    #@3e
    invoke-virtual {v0, v11}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    #@41
    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@44
    .line 64
    const/4 v4, 0x1

    #@45
    return v4

    #@46
    .line 68
    .end local v11    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :sswitch_3
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@49
    move-object/from16 v0, p2

    #@4b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e
    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetdService()Landroid/net/INetd;

    #@51
    move-result-object v35

    #@52
    .line 70
    .local v35, "_result":Landroid/net/INetd;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@55
    .line 71
    if-eqz v35, :cond_0

    #@57
    invoke-interface/range {v35 .. v35}, Landroid/net/INetd;->asBinder()Landroid/os/IBinder;

    #@5a
    move-result-object v4

    #@5b
    :goto_0
    move-object/from16 v0, p3

    #@5d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@60
    .line 72
    const/4 v4, 0x1

    #@61
    return v4

    #@62
    .line 71
    :cond_0
    const/4 v4, 0x0

    #@63
    goto :goto_0

    #@64
    .line 76
    .end local v35    # "_result":Landroid/net/INetd;
    :sswitch_4
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@67
    move-object/from16 v0, p2

    #@69
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c
    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    #@6f
    move-result-object v39

    #@70
    .line 78
    .local v39, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@73
    .line 79
    move-object/from16 v0, p3

    #@75
    move-object/from16 v1, v39

    #@77
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@7a
    .line 80
    const/4 v4, 0x1

    #@7b
    return v4

    #@7c
    .line 84
    .end local v39    # "_result":[Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@7f
    move-object/from16 v0, p2

    #@81
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@84
    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@87
    move-result-object v5

    #@88
    .line 87
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8a
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@8d
    move-result-object v36

    #@8e
    .line 88
    .local v36, "_result":Landroid/net/InterfaceConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@91
    .line 89
    if-eqz v36, :cond_1

    #@93
    .line 90
    const/4 v4, 0x1

    #@94
    move-object/from16 v0, p3

    #@96
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@99
    .line 91
    const/4 v4, 0x1

    #@9a
    move-object/from16 v0, v36

    #@9c
    move-object/from16 v1, p3

    #@9e
    invoke-virtual {v0, v1, v4}, Landroid/net/InterfaceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@a1
    .line 96
    :goto_1
    const/4 v4, 0x1

    #@a2
    return v4

    #@a3
    .line 94
    :cond_1
    const/4 v4, 0x0

    #@a4
    move-object/from16 v0, p3

    #@a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a9
    goto :goto_1

    #@aa
    .line 100
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":Landroid/net/InterfaceConfiguration;
    :sswitch_6
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@ad
    move-object/from16 v0, p2

    #@af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b2
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b5
    move-result-object v5

    #@b6
    .line 104
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b9
    move-result v4

    #@ba
    if-eqz v4, :cond_2

    #@bc
    .line 105
    sget-object v4, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@be
    move-object/from16 v0, p2

    #@c0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c3
    move-result-object v24

    #@c4
    check-cast v24, Landroid/net/InterfaceConfiguration;

    #@c6
    .line 110
    :goto_2
    move-object/from16 v0, p0

    #@c8
    move-object/from16 v1, v24

    #@ca
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    #@cd
    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d0
    .line 112
    const/4 v4, 0x1

    #@d1
    return v4

    #@d2
    .line 108
    :cond_2
    const/16 v24, 0x0

    #@d4
    .local v24, "_arg1":Landroid/net/InterfaceConfiguration;
    goto :goto_2

    #@d5
    .line 116
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v24    # "_arg1":Landroid/net/InterfaceConfiguration;
    :sswitch_7
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@d8
    move-object/from16 v0, p2

    #@da
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dd
    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e0
    move-result-object v5

    #@e1
    .line 119
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e3
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    #@e6
    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e9
    .line 121
    const/4 v4, 0x1

    #@ea
    return v4

    #@eb
    .line 125
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@ee
    move-object/from16 v0, p2

    #@f0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f3
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f6
    move-result-object v5

    #@f7
    .line 128
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f9
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    #@fc
    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ff
    .line 130
    const/4 v4, 0x1

    #@100
    return v4

    #@101
    .line 134
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@104
    move-object/from16 v0, p2

    #@106
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@109
    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10c
    move-result-object v5

    #@10d
    .line 137
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@10f
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    #@112
    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@115
    .line 139
    const/4 v4, 0x1

    #@116
    return v4

    #@117
    .line 143
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@11a
    move-object/from16 v0, p2

    #@11c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11f
    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@122
    move-result-object v5

    #@123
    .line 147
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@126
    move-result v4

    #@127
    if-eqz v4, :cond_3

    #@129
    const/16 v27, 0x1

    #@12b
    .line 148
    .local v27, "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    #@12d
    move/from16 v1, v27

    #@12f
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    #@132
    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@135
    .line 150
    const/4 v4, 0x1

    #@136
    return v4

    #@137
    .line 147
    .end local v27    # "_arg1":Z
    :cond_3
    const/16 v27, 0x0

    #@139
    goto :goto_3

    #@13a
    .line 154
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@13d
    move-object/from16 v0, p2

    #@13f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@142
    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@145
    move-result-object v5

    #@146
    .line 157
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@148
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    #@14b
    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14e
    .line 159
    const/4 v4, 0x1

    #@14f
    return v4

    #@150
    .line 163
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@153
    move-object/from16 v0, p2

    #@155
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@158
    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15b
    move-result-object v5

    #@15c
    .line 166
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@15e
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    #@161
    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@164
    .line 168
    const/4 v4, 0x1

    #@165
    return v4

    #@166
    .line 172
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@169
    move-object/from16 v0, p2

    #@16b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16e
    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@171
    move-result-object v5

    #@172
    .line 176
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@175
    move-result v4

    #@176
    if-eqz v4, :cond_4

    #@178
    const/16 v27, 0x1

    #@17a
    .line 177
    .restart local v27    # "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    #@17c
    move/from16 v1, v27

    #@17e
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V

    #@181
    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@184
    .line 179
    const/4 v4, 0x1

    #@185
    return v4

    #@186
    .line 176
    .end local v27    # "_arg1":Z
    :cond_4
    const/16 v27, 0x0

    #@188
    goto :goto_4

    #@189
    .line 183
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@18c
    move-object/from16 v0, p2

    #@18e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@191
    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@194
    move-result v10

    #@195
    .line 187
    .local v10, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@198
    move-result v4

    #@199
    if-eqz v4, :cond_5

    #@19b
    .line 188
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19d
    move-object/from16 v0, p2

    #@19f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a2
    move-result-object v25

    #@1a3
    check-cast v25, Landroid/net/RouteInfo;

    #@1a5
    .line 193
    :goto_5
    move-object/from16 v0, p0

    #@1a7
    move-object/from16 v1, v25

    #@1a9
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->addRoute(ILandroid/net/RouteInfo;)V

    #@1ac
    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1af
    .line 195
    const/4 v4, 0x1

    #@1b0
    return v4

    #@1b1
    .line 191
    :cond_5
    const/16 v25, 0x0

    #@1b3
    .local v25, "_arg1":Landroid/net/RouteInfo;
    goto :goto_5

    #@1b4
    .line 199
    .end local v10    # "_arg0":I
    .end local v25    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@1b7
    move-object/from16 v0, p2

    #@1b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bc
    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bf
    move-result v10

    #@1c0
    .line 203
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c3
    move-result v4

    #@1c4
    if-eqz v4, :cond_6

    #@1c6
    .line 204
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c8
    move-object/from16 v0, p2

    #@1ca
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1cd
    move-result-object v25

    #@1ce
    check-cast v25, Landroid/net/RouteInfo;

    #@1d0
    .line 209
    :goto_6
    move-object/from16 v0, p0

    #@1d2
    move-object/from16 v1, v25

    #@1d4
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->removeRoute(ILandroid/net/RouteInfo;)V

    #@1d7
    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1da
    .line 211
    const/4 v4, 0x1

    #@1db
    return v4

    #@1dc
    .line 207
    :cond_6
    const/16 v25, 0x0

    #@1de
    .restart local v25    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_6

    #@1df
    .line 215
    .end local v10    # "_arg0":I
    .end local v25    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_10
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@1e2
    move-object/from16 v0, p2

    #@1e4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e7
    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ea
    move-result-object v5

    #@1eb
    .line 219
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ee
    move-result v21

    #@1ef
    .line 220
    .local v21, "_arg1":I
    move-object/from16 v0, p0

    #@1f1
    move/from16 v1, v21

    #@1f3
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setMtu(Ljava/lang/String;I)V

    #@1f6
    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f9
    .line 222
    const/4 v4, 0x1

    #@1fa
    return v4

    #@1fb
    .line 226
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":I
    :sswitch_11
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@1fe
    move-object/from16 v0, p2

    #@200
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@203
    .line 227
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    #@206
    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@209
    .line 229
    const/4 v4, 0x1

    #@20a
    return v4

    #@20b
    .line 233
    :sswitch_12
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@20e
    move-object/from16 v0, p2

    #@210
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@213
    .line 234
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    #@216
    move-result v38

    #@217
    .line 235
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21a
    .line 236
    if-eqz v38, :cond_7

    #@21c
    const/4 v4, 0x1

    #@21d
    :goto_7
    move-object/from16 v0, p3

    #@21f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@222
    .line 237
    const/4 v4, 0x1

    #@223
    return v4

    #@224
    .line 236
    :cond_7
    const/4 v4, 0x0

    #@225
    goto :goto_7

    #@226
    .line 241
    .end local v38    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@229
    move-object/from16 v0, p2

    #@22b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22e
    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@231
    move-result v4

    #@232
    if-eqz v4, :cond_8

    #@234
    const/16 v18, 0x1

    #@236
    .line 244
    .local v18, "_arg0":Z
    :goto_8
    move-object/from16 v0, p0

    #@238
    move/from16 v1, v18

    #@23a
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    #@23d
    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@240
    .line 246
    const/4 v4, 0x1

    #@241
    return v4

    #@242
    .line 243
    .end local v18    # "_arg0":Z
    :cond_8
    const/16 v18, 0x0

    #@244
    goto :goto_8

    #@245
    .line 250
    :sswitch_14
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@248
    move-object/from16 v0, p2

    #@24a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24d
    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@250
    move-result-object v20

    #@251
    .line 253
    .local v20, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@253
    move-object/from16 v1, v20

    #@255
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    #@258
    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25b
    .line 255
    const/4 v4, 0x1

    #@25c
    return v4

    #@25d
    .line 259
    .end local v20    # "_arg0":[Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@260
    move-object/from16 v0, p2

    #@262
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@265
    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    #@268
    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26b
    .line 262
    const/4 v4, 0x1

    #@26c
    return v4

    #@26d
    .line 266
    :sswitch_16
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@270
    move-object/from16 v0, p2

    #@272
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@275
    .line 267
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    #@278
    move-result v38

    #@279
    .line 268
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27c
    .line 269
    if-eqz v38, :cond_9

    #@27e
    const/4 v4, 0x1

    #@27f
    :goto_9
    move-object/from16 v0, p3

    #@281
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@284
    .line 270
    const/4 v4, 0x1

    #@285
    return v4

    #@286
    .line 269
    :cond_9
    const/4 v4, 0x0

    #@287
    goto :goto_9

    #@288
    .line 274
    .end local v38    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@28b
    move-object/from16 v0, p2

    #@28d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@290
    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@293
    move-result-object v5

    #@294
    .line 277
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@296
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    #@299
    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29c
    .line 279
    const/4 v4, 0x1

    #@29d
    return v4

    #@29e
    .line 283
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@2a1
    move-object/from16 v0, p2

    #@2a3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a6
    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a9
    move-result-object v5

    #@2aa
    .line 286
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2ac
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    #@2af
    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b2
    .line 288
    const/4 v4, 0x1

    #@2b3
    return v4

    #@2b4
    .line 292
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@2b7
    move-object/from16 v0, p2

    #@2b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2bc
    .line 293
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    #@2bf
    move-result-object v39

    #@2c0
    .line 294
    .restart local v39    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c3
    .line 295
    move-object/from16 v0, p3

    #@2c5
    move-object/from16 v1, v39

    #@2c7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@2ca
    .line 296
    const/4 v4, 0x1

    #@2cb
    return v4

    #@2cc
    .line 300
    .end local v39    # "_result":[Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@2cf
    move-object/from16 v0, p2

    #@2d1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d4
    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d7
    move-result v4

    #@2d8
    if-eqz v4, :cond_a

    #@2da
    .line 303
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2dc
    move-object/from16 v0, p2

    #@2de
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e1
    move-result-object v14

    #@2e2
    check-cast v14, Landroid/net/Network;

    #@2e4
    .line 309
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@2e7
    move-result-object v30

    #@2e8
    .line 310
    .local v30, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@2ea
    move-object/from16 v1, v30

    #@2ec
    invoke-virtual {v0, v14, v1}, Landroid/os/INetworkManagementService$Stub;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V

    #@2ef
    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f2
    .line 312
    const/4 v4, 0x1

    #@2f3
    return v4

    #@2f4
    .line 306
    .end local v30    # "_arg1":[Ljava/lang/String;
    :cond_a
    const/4 v14, 0x0

    #@2f5
    .local v14, "_arg0":Landroid/net/Network;
    goto :goto_a

    #@2f6
    .line 316
    .end local v14    # "_arg0":Landroid/net/Network;
    :sswitch_1b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@2f9
    move-object/from16 v0, p2

    #@2fb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fe
    .line 317
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    #@301
    move-result-object v39

    #@302
    .line 318
    .restart local v39    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@305
    .line 319
    move-object/from16 v0, p3

    #@307
    move-object/from16 v1, v39

    #@309
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@30c
    .line 320
    const/4 v4, 0x1

    #@30d
    return v4

    #@30e
    .line 324
    .end local v39    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@311
    move-object/from16 v0, p2

    #@313
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@316
    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@319
    move-result-object v5

    #@31a
    .line 328
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31d
    move-result-object v6

    #@31e
    .line 329
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@320
    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    #@323
    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@326
    .line 331
    const/4 v4, 0x1

    #@327
    return v4

    #@328
    .line 335
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@32b
    move-object/from16 v0, p2

    #@32d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@330
    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@333
    move-result-object v5

    #@334
    .line 339
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@337
    move-result-object v6

    #@338
    .line 340
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@33a
    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    #@33d
    .line 341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@340
    .line 342
    const/4 v4, 0x1

    #@341
    return v4

    #@342
    .line 346
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@345
    move-object/from16 v0, p2

    #@347
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34a
    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@34d
    move-result-object v5

    #@34e
    .line 350
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@351
    move-result-object v6

    #@352
    .line 351
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@354
    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    #@357
    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@35a
    .line 353
    const/4 v4, 0x1

    #@35b
    return v4

    #@35c
    .line 357
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@35f
    move-object/from16 v0, p2

    #@361
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@364
    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@367
    move-result-object v5

    #@368
    .line 361
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36b
    move-result-object v6

    #@36c
    .line 362
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@36e
    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    #@371
    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@374
    .line 364
    const/4 v4, 0x1

    #@375
    return v4

    #@376
    .line 368
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@379
    move-object/from16 v0, p2

    #@37b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37e
    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listTtys()[Ljava/lang/String;

    #@381
    move-result-object v39

    #@382
    .line 370
    .restart local v39    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@385
    .line 371
    move-object/from16 v0, p3

    #@387
    move-object/from16 v1, v39

    #@389
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@38c
    .line 372
    const/4 v4, 0x1

    #@38d
    return v4

    #@38e
    .line 376
    .end local v39    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@391
    move-object/from16 v0, p2

    #@393
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@396
    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@399
    move-result-object v5

    #@39a
    .line 380
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39d
    move-result-object v6

    #@39e
    .line 382
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a1
    move-result-object v7

    #@3a2
    .line 384
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a5
    move-result-object v8

    #@3a6
    .line 386
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a9
    move-result-object v9

    #@3aa
    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    #@3ac
    .line 387
    invoke-virtual/range {v4 .. v9}, Landroid/os/INetworkManagementService$Stub;->attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3af
    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b2
    .line 389
    const/4 v4, 0x1

    #@3b3
    return v4

    #@3b4
    .line 393
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@3b7
    move-object/from16 v0, p2

    #@3b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3bc
    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3bf
    move-result-object v5

    #@3c0
    .line 396
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3c2
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->detachPppd(Ljava/lang/String;)V

    #@3c5
    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c8
    .line 398
    const/4 v4, 0x1

    #@3c9
    return v4

    #@3ca
    .line 402
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@3cd
    move-object/from16 v0, p2

    #@3cf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d2
    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d5
    move-result-object v5

    #@3d6
    .line 406
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d9
    move-result-object v6

    #@3da
    .line 407
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3dc
    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    #@3df
    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e2
    .line 409
    const/4 v4, 0x1

    #@3e3
    return v4

    #@3e4
    .line 413
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_24
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@3e7
    move-object/from16 v0, p2

    #@3e9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ec
    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ef
    move-result v4

    #@3f0
    if-eqz v4, :cond_b

    #@3f2
    .line 416
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3f4
    move-object/from16 v0, p2

    #@3f6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f9
    move-result-object v15

    #@3fa
    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    #@3fc
    .line 422
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3ff
    move-result-object v6

    #@400
    .line 423
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@402
    invoke-virtual {v0, v15, v6}, Landroid/os/INetworkManagementService$Stub;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    #@405
    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@408
    .line 425
    const/4 v4, 0x1

    #@409
    return v4

    #@40a
    .line 419
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_b
    const/4 v15, 0x0

    #@40b
    .local v15, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_b

    #@40c
    .line 429
    .end local v15    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_25
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@40f
    move-object/from16 v0, p2

    #@411
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@414
    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@417
    move-result-object v5

    #@418
    .line 432
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@41a
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->stopAccessPoint(Ljava/lang/String;)V

    #@41d
    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@420
    .line 434
    const/4 v4, 0x1

    #@421
    return v4

    #@422
    .line 438
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@425
    move-object/from16 v0, p2

    #@427
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42a
    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@42d
    move-result v4

    #@42e
    if-eqz v4, :cond_c

    #@430
    .line 441
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@432
    move-object/from16 v0, p2

    #@434
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@437
    move-result-object v15

    #@438
    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    #@43a
    .line 447
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@43d
    move-result-object v6

    #@43e
    .line 448
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@440
    invoke-virtual {v0, v15, v6}, Landroid/os/INetworkManagementService$Stub;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    #@443
    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@446
    .line 450
    const/4 v4, 0x1

    #@447
    return v4

    #@448
    .line 444
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_c
    const/4 v15, 0x0

    #@449
    .restart local v15    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_c

    #@44a
    .line 454
    .end local v15    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_27
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@44d
    move-object/from16 v0, p2

    #@44f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@452
    .line 455
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    #@455
    move-result-object v37

    #@456
    .line 456
    .local v37, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@459
    .line 457
    if-eqz v37, :cond_d

    #@45b
    .line 458
    const/4 v4, 0x1

    #@45c
    move-object/from16 v0, p3

    #@45e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@461
    .line 459
    const/4 v4, 0x1

    #@462
    move-object/from16 v0, v37

    #@464
    move-object/from16 v1, p3

    #@466
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@469
    .line 464
    :goto_d
    const/4 v4, 0x1

    #@46a
    return v4

    #@46b
    .line 462
    :cond_d
    const/4 v4, 0x0

    #@46c
    move-object/from16 v0, p3

    #@46e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@471
    goto :goto_d

    #@472
    .line 468
    .end local v37    # "_result":Landroid/net/NetworkStats;
    :sswitch_28
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@475
    move-object/from16 v0, p2

    #@477
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47a
    .line 469
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    #@47d
    move-result-object v37

    #@47e
    .line 470
    .restart local v37    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@481
    .line 471
    if-eqz v37, :cond_e

    #@483
    .line 472
    const/4 v4, 0x1

    #@484
    move-object/from16 v0, p3

    #@486
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@489
    .line 473
    const/4 v4, 0x1

    #@48a
    move-object/from16 v0, v37

    #@48c
    move-object/from16 v1, p3

    #@48e
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@491
    .line 478
    :goto_e
    const/4 v4, 0x1

    #@492
    return v4

    #@493
    .line 476
    :cond_e
    const/4 v4, 0x0

    #@494
    move-object/from16 v0, p3

    #@496
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@499
    goto :goto_e

    #@49a
    .line 482
    .end local v37    # "_result":Landroid/net/NetworkStats;
    :sswitch_29
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@49d
    move-object/from16 v0, p2

    #@49f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a2
    .line 483
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    #@4a5
    move-result-object v37

    #@4a6
    .line 484
    .restart local v37    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a9
    .line 485
    if-eqz v37, :cond_f

    #@4ab
    .line 486
    const/4 v4, 0x1

    #@4ac
    move-object/from16 v0, p3

    #@4ae
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4b1
    .line 487
    const/4 v4, 0x1

    #@4b2
    move-object/from16 v0, v37

    #@4b4
    move-object/from16 v1, p3

    #@4b6
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@4b9
    .line 492
    :goto_f
    const/4 v4, 0x1

    #@4ba
    return v4

    #@4bb
    .line 490
    :cond_f
    const/4 v4, 0x0

    #@4bc
    move-object/from16 v0, p3

    #@4be
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4c1
    goto :goto_f

    #@4c2
    .line 496
    .end local v37    # "_result":Landroid/net/NetworkStats;
    :sswitch_2a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@4c5
    move-object/from16 v0, p2

    #@4c7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ca
    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4cd
    move-result v10

    #@4ce
    .line 499
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@4d0
    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    #@4d3
    move-result-object v37

    #@4d4
    .line 500
    .restart local v37    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4d7
    .line 501
    if-eqz v37, :cond_10

    #@4d9
    .line 502
    const/4 v4, 0x1

    #@4da
    move-object/from16 v0, p3

    #@4dc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4df
    .line 503
    const/4 v4, 0x1

    #@4e0
    move-object/from16 v0, v37

    #@4e2
    move-object/from16 v1, p3

    #@4e4
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@4e7
    .line 508
    :goto_10
    const/4 v4, 0x1

    #@4e8
    return v4

    #@4e9
    .line 506
    :cond_10
    const/4 v4, 0x0

    #@4ea
    move-object/from16 v0, p3

    #@4ec
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4ef
    goto :goto_10

    #@4f0
    .line 512
    .end local v10    # "_arg0":I
    .end local v37    # "_result":Landroid/net/NetworkStats;
    :sswitch_2b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@4f3
    move-object/from16 v0, p2

    #@4f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f8
    .line 513
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    #@4fb
    move-result-object v37

    #@4fc
    .line 514
    .restart local v37    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ff
    .line 515
    if-eqz v37, :cond_11

    #@501
    .line 516
    const/4 v4, 0x1

    #@502
    move-object/from16 v0, p3

    #@504
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@507
    .line 517
    const/4 v4, 0x1

    #@508
    move-object/from16 v0, v37

    #@50a
    move-object/from16 v1, p3

    #@50c
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@50f
    .line 522
    :goto_11
    const/4 v4, 0x1

    #@510
    return v4

    #@511
    .line 520
    :cond_11
    const/4 v4, 0x0

    #@512
    move-object/from16 v0, p3

    #@514
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@517
    goto :goto_11

    #@518
    .line 526
    .end local v37    # "_result":Landroid/net/NetworkStats;
    :sswitch_2c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@51b
    move-object/from16 v0, p2

    #@51d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@520
    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@523
    move-result-object v5

    #@524
    .line 530
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@527
    move-result-wide v22

    #@528
    .line 531
    .local v22, "_arg1":J
    move-object/from16 v0, p0

    #@52a
    move-wide/from16 v1, v22

    #@52c
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    #@52f
    .line 532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@532
    .line 533
    const/4 v4, 0x1

    #@533
    return v4

    #@534
    .line 537
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":J
    :sswitch_2d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@537
    move-object/from16 v0, p2

    #@539
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53c
    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@53f
    move-result-object v5

    #@540
    .line 540
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@542
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    #@545
    .line 541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@548
    .line 542
    const/4 v4, 0x1

    #@549
    return v4

    #@54a
    .line 546
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_2e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@54d
    move-object/from16 v0, p2

    #@54f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@552
    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@555
    move-result-object v5

    #@556
    .line 550
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@559
    move-result-wide v22

    #@55a
    .line 551
    .restart local v22    # "_arg1":J
    move-object/from16 v0, p0

    #@55c
    move-wide/from16 v1, v22

    #@55e
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    #@561
    .line 552
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@564
    .line 553
    const/4 v4, 0x1

    #@565
    return v4

    #@566
    .line 557
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":J
    :sswitch_2f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@569
    move-object/from16 v0, p2

    #@56b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56e
    .line 559
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@571
    move-result-object v5

    #@572
    .line 560
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@574
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    #@577
    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@57a
    .line 562
    const/4 v4, 0x1

    #@57b
    return v4

    #@57c
    .line 566
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_30
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@57f
    move-object/from16 v0, p2

    #@581
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@584
    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@587
    move-result-wide v12

    #@588
    .line 569
    .local v12, "_arg0":J
    move-object/from16 v0, p0

    #@58a
    invoke-virtual {v0, v12, v13}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    #@58d
    .line 570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@590
    .line 571
    const/4 v4, 0x1

    #@591
    return v4

    #@592
    .line 575
    .end local v12    # "_arg0":J
    :sswitch_31
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@595
    move-object/from16 v0, p2

    #@597
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59a
    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@59d
    move-result v10

    #@59e
    .line 579
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a1
    move-result v4

    #@5a2
    if-eqz v4, :cond_12

    #@5a4
    const/16 v27, 0x1

    #@5a6
    .line 580
    .restart local v27    # "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    #@5a8
    move/from16 v1, v27

    #@5aa
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->setUidMeteredNetworkBlacklist(IZ)V

    #@5ad
    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b0
    .line 582
    const/4 v4, 0x1

    #@5b1
    return v4

    #@5b2
    .line 579
    .end local v27    # "_arg1":Z
    :cond_12
    const/16 v27, 0x0

    #@5b4
    goto :goto_12

    #@5b5
    .line 586
    .end local v10    # "_arg0":I
    :sswitch_32
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@5b8
    move-object/from16 v0, p2

    #@5ba
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5bd
    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c0
    move-result v10

    #@5c1
    .line 590
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c4
    move-result v4

    #@5c5
    if-eqz v4, :cond_13

    #@5c7
    const/16 v27, 0x1

    #@5c9
    .line 591
    .restart local v27    # "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    #@5cb
    move/from16 v1, v27

    #@5cd
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->setUidMeteredNetworkWhitelist(IZ)V

    #@5d0
    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d3
    .line 593
    const/4 v4, 0x1

    #@5d4
    return v4

    #@5d5
    .line 590
    .end local v27    # "_arg1":Z
    :cond_13
    const/16 v27, 0x0

    #@5d7
    goto :goto_13

    #@5d8
    .line 597
    .end local v10    # "_arg0":I
    :sswitch_33
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@5db
    move-object/from16 v0, p2

    #@5dd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e0
    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5e3
    move-result v4

    #@5e4
    if-eqz v4, :cond_14

    #@5e6
    const/16 v18, 0x1

    #@5e8
    .line 600
    .restart local v18    # "_arg0":Z
    :goto_14
    move-object/from16 v0, p0

    #@5ea
    move/from16 v1, v18

    #@5ec
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setDataSaverModeEnabled(Z)Z

    #@5ef
    move-result v38

    #@5f0
    .line 601
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5f3
    .line 602
    if-eqz v38, :cond_15

    #@5f5
    const/4 v4, 0x1

    #@5f6
    :goto_15
    move-object/from16 v0, p3

    #@5f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5fb
    .line 603
    const/4 v4, 0x1

    #@5fc
    return v4

    #@5fd
    .line 599
    .end local v18    # "_arg0":Z
    .end local v38    # "_result":Z
    :cond_14
    const/16 v18, 0x0

    #@5ff
    goto :goto_14

    #@600
    .line 602
    .restart local v18    # "_arg0":Z
    .restart local v38    # "_result":Z
    :cond_15
    const/4 v4, 0x0

    #@601
    goto :goto_15

    #@602
    .line 607
    .end local v18    # "_arg0":Z
    .end local v38    # "_result":Z
    :sswitch_34
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@605
    move-object/from16 v0, p2

    #@607
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60a
    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@60d
    move-result v10

    #@60e
    .line 611
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@611
    move-result v21

    #@612
    .line 612
    .restart local v21    # "_arg1":I
    move-object/from16 v0, p0

    #@614
    move/from16 v1, v21

    #@616
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->setUidCleartextNetworkPolicy(II)V

    #@619
    .line 613
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@61c
    .line 614
    const/4 v4, 0x1

    #@61d
    return v4

    #@61e
    .line 618
    .end local v10    # "_arg0":I
    .end local v21    # "_arg1":I
    :sswitch_35
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@621
    move-object/from16 v0, p2

    #@623
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@626
    .line 619
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    #@629
    move-result v38

    #@62a
    .line 620
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@62d
    .line 621
    if-eqz v38, :cond_16

    #@62f
    const/4 v4, 0x1

    #@630
    :goto_16
    move-object/from16 v0, p3

    #@632
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@635
    .line 622
    const/4 v4, 0x1

    #@636
    return v4

    #@637
    .line 621
    :cond_16
    const/4 v4, 0x0

    #@638
    goto :goto_16

    #@639
    .line 626
    .end local v38    # "_result":Z
    :sswitch_36
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@63c
    move-object/from16 v0, p2

    #@63e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@641
    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@644
    move-result-object v5

    #@645
    .line 630
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@648
    move-result v21

    #@649
    .line 632
    .restart local v21    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@64c
    move-result v31

    #@64d
    .line 633
    .local v31, "_arg2":I
    move-object/from16 v0, p0

    #@64f
    move/from16 v1, v21

    #@651
    move/from16 v2, v31

    #@653
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addIdleTimer(Ljava/lang/String;II)V

    #@656
    .line 634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@659
    .line 635
    const/4 v4, 0x1

    #@65a
    return v4

    #@65b
    .line 639
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":I
    .end local v31    # "_arg2":I
    :sswitch_37
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@65e
    move-object/from16 v0, p2

    #@660
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@663
    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@666
    move-result-object v5

    #@667
    .line 642
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@669
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeIdleTimer(Ljava/lang/String;)V

    #@66c
    .line 643
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@66f
    .line 644
    const/4 v4, 0x1

    #@670
    return v4

    #@671
    .line 648
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_38
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@674
    move-object/from16 v0, p2

    #@676
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@679
    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@67c
    move-result v10

    #@67d
    .line 652
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@680
    move-result-object v30

    #@681
    .line 654
    .restart local v30    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@684
    move-result-object v7

    #@685
    .line 655
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@687
    move-object/from16 v1, v30

    #@689
    invoke-virtual {v0, v10, v1, v7}, Landroid/os/INetworkManagementService$Stub;->setDnsConfigurationForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    #@68c
    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@68f
    .line 657
    const/4 v4, 0x1

    #@690
    return v4

    #@691
    .line 661
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg0":I
    .end local v30    # "_arg1":[Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@694
    move-object/from16 v0, p2

    #@696
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@699
    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@69c
    move-result v10

    #@69d
    .line 665
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@6a0
    move-result-object v30

    #@6a1
    .line 667
    .restart local v30    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6a4
    move-result-object v7

    #@6a5
    .line 668
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6a7
    move-object/from16 v1, v30

    #@6a9
    invoke-virtual {v0, v10, v1, v7}, Landroid/os/INetworkManagementService$Stub;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    #@6ac
    .line 669
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6af
    .line 670
    const/4 v4, 0x1

    #@6b0
    return v4

    #@6b1
    .line 674
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg0":I
    .end local v30    # "_arg1":[Ljava/lang/String;
    :sswitch_3a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@6b4
    move-object/from16 v0, p2

    #@6b6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b9
    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6bc
    move-result v4

    #@6bd
    if-eqz v4, :cond_17

    #@6bf
    const/16 v18, 0x1

    #@6c1
    .line 677
    .restart local v18    # "_arg0":Z
    :goto_17
    move-object/from16 v0, p0

    #@6c3
    move/from16 v1, v18

    #@6c5
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    #@6c8
    .line 678
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6cb
    .line 679
    const/4 v4, 0x1

    #@6cc
    return v4

    #@6cd
    .line 676
    .end local v18    # "_arg0":Z
    :cond_17
    const/16 v18, 0x0

    #@6cf
    goto :goto_17

    #@6d0
    .line 683
    :sswitch_3b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@6d3
    move-object/from16 v0, p2

    #@6d5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6d8
    .line 684
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    #@6db
    move-result v38

    #@6dc
    .line 685
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6df
    .line 686
    if-eqz v38, :cond_18

    #@6e1
    const/4 v4, 0x1

    #@6e2
    :goto_18
    move-object/from16 v0, p3

    #@6e4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6e7
    .line 687
    const/4 v4, 0x1

    #@6e8
    return v4

    #@6e9
    .line 686
    :cond_18
    const/4 v4, 0x0

    #@6ea
    goto :goto_18

    #@6eb
    .line 691
    .end local v38    # "_result":Z
    :sswitch_3c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@6ee
    move-object/from16 v0, p2

    #@6f0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f3
    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6f6
    move-result-object v5

    #@6f7
    .line 695
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6fa
    move-result v4

    #@6fb
    if-eqz v4, :cond_19

    #@6fd
    const/16 v27, 0x1

    #@6ff
    .line 696
    .restart local v27    # "_arg1":Z
    :goto_19
    move-object/from16 v0, p0

    #@701
    move/from16 v1, v27

    #@703
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    #@706
    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@709
    .line 698
    const/4 v4, 0x1

    #@70a
    return v4

    #@70b
    .line 695
    .end local v27    # "_arg1":Z
    :cond_19
    const/16 v27, 0x0

    #@70d
    goto :goto_19

    #@70e
    .line 702
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_3d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@711
    move-object/from16 v0, p2

    #@713
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@716
    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@719
    move-result-object v5

    #@71a
    .line 706
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71d
    move-result v4

    #@71e
    if-eqz v4, :cond_1a

    #@720
    const/16 v27, 0x1

    #@722
    .line 707
    .restart local v27    # "_arg1":Z
    :goto_1a
    move-object/from16 v0, p0

    #@724
    move/from16 v1, v27

    #@726
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    #@729
    .line 708
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@72c
    .line 709
    const/4 v4, 0x1

    #@72d
    return v4

    #@72e
    .line 706
    .end local v27    # "_arg1":Z
    :cond_1a
    const/16 v27, 0x0

    #@730
    goto :goto_1a

    #@731
    .line 713
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_3e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@734
    move-object/from16 v0, p2

    #@736
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@739
    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@73c
    move-result-object v5

    #@73d
    .line 717
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@740
    move-result v21

    #@741
    .line 719
    .restart local v21    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@744
    move-result v4

    #@745
    if-eqz v4, :cond_1b

    #@747
    const/16 v32, 0x1

    #@749
    .line 720
    .local v32, "_arg2":Z
    :goto_1b
    move-object/from16 v0, p0

    #@74b
    move/from16 v1, v21

    #@74d
    move/from16 v2, v32

    #@74f
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    #@752
    .line 721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@755
    .line 722
    const/4 v4, 0x1

    #@756
    return v4

    #@757
    .line 719
    .end local v32    # "_arg2":Z
    :cond_1b
    const/16 v32, 0x0

    #@759
    goto :goto_1b

    #@75a
    .line 726
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":I
    :sswitch_3f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@75d
    move-object/from16 v0, p2

    #@75f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@762
    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@765
    move-result v10

    #@766
    .line 730
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@769
    move-result v21

    #@76a
    .line 732
    .restart local v21    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@76d
    move-result v31

    #@76e
    .line 733
    .restart local v31    # "_arg2":I
    move-object/from16 v0, p0

    #@770
    move/from16 v1, v21

    #@772
    move/from16 v2, v31

    #@774
    invoke-virtual {v0, v10, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(III)V

    #@777
    .line 734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@77a
    .line 735
    const/4 v4, 0x1

    #@77b
    return v4

    #@77c
    .line 739
    .end local v10    # "_arg0":I
    .end local v21    # "_arg1":I
    .end local v31    # "_arg2":I
    :sswitch_40
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@77f
    move-object/from16 v0, p2

    #@781
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@784
    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@787
    move-result v10

    #@788
    .line 743
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@78b
    move-result-object v28

    #@78c
    .line 745
    .local v28, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@78f
    move-result-object v33

    #@790
    .line 746
    .local v33, "_arg2":[I
    move-object/from16 v0, p0

    #@792
    move-object/from16 v1, v28

    #@794
    move-object/from16 v2, v33

    #@796
    invoke-virtual {v0, v10, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRules(I[I[I)V

    #@799
    .line 747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79c
    .line 748
    const/4 v4, 0x1

    #@79d
    return v4

    #@79e
    .line 752
    .end local v10    # "_arg0":I
    .end local v28    # "_arg1":[I
    .end local v33    # "_arg2":[I
    :sswitch_41
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@7a1
    move-object/from16 v0, p2

    #@7a3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a6
    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7a9
    move-result v10

    #@7aa
    .line 756
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7ad
    move-result v4

    #@7ae
    if-eqz v4, :cond_1c

    #@7b0
    const/16 v27, 0x1

    #@7b2
    .line 757
    .restart local v27    # "_arg1":Z
    :goto_1c
    move-object/from16 v0, p0

    #@7b4
    move/from16 v1, v27

    #@7b6
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallChainEnabled(IZ)V

    #@7b9
    .line 758
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7bc
    .line 759
    const/4 v4, 0x1

    #@7bd
    return v4

    #@7be
    .line 756
    .end local v27    # "_arg1":Z
    :cond_1c
    const/16 v27, 0x0

    #@7c0
    goto :goto_1c

    #@7c1
    .line 763
    .end local v10    # "_arg0":I
    :sswitch_42
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@7c4
    move-object/from16 v0, p2

    #@7c6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c9
    .line 765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7cc
    move-result v10

    #@7cd
    .line 767
    .restart local v10    # "_arg0":I
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7cf
    move-object/from16 v0, p2

    #@7d1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@7d4
    move-result-object v29

    #@7d5
    check-cast v29, [Landroid/net/UidRange;

    #@7d7
    .line 768
    .local v29, "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    #@7d9
    move-object/from16 v1, v29

    #@7db
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->addVpnUidRanges(I[Landroid/net/UidRange;)V

    #@7de
    .line 769
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e1
    .line 770
    const/4 v4, 0x1

    #@7e2
    return v4

    #@7e3
    .line 774
    .end local v10    # "_arg0":I
    .end local v29    # "_arg1":[Landroid/net/UidRange;
    :sswitch_43
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@7e6
    move-object/from16 v0, p2

    #@7e8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7eb
    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7ee
    move-result v10

    #@7ef
    .line 778
    .restart local v10    # "_arg0":I
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7f1
    move-object/from16 v0, p2

    #@7f3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@7f6
    move-result-object v29

    #@7f7
    check-cast v29, [Landroid/net/UidRange;

    #@7f9
    .line 779
    .restart local v29    # "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    #@7fb
    move-object/from16 v1, v29

    #@7fd
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->removeVpnUidRanges(I[Landroid/net/UidRange;)V

    #@800
    .line 780
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@803
    .line 781
    const/4 v4, 0x1

    #@804
    return v4

    #@805
    .line 785
    .end local v10    # "_arg0":I
    .end local v29    # "_arg1":[Landroid/net/UidRange;
    :sswitch_44
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@808
    move-object/from16 v0, p2

    #@80a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80d
    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@810
    move-result-object v5

    #@811
    .line 788
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@813
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->startClatd(Ljava/lang/String;)V

    #@816
    .line 789
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@819
    .line 790
    const/4 v4, 0x1

    #@81a
    return v4

    #@81b
    .line 794
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_45
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@81e
    move-object/from16 v0, p2

    #@820
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@823
    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@826
    move-result-object v5

    #@827
    .line 797
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@829
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->stopClatd(Ljava/lang/String;)V

    #@82c
    .line 798
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@82f
    .line 799
    const/4 v4, 0x1

    #@830
    return v4

    #@831
    .line 803
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_46
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@834
    move-object/from16 v0, p2

    #@836
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@839
    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@83c
    move-result-object v5

    #@83d
    .line 806
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@83f
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->isClatdStarted(Ljava/lang/String;)Z

    #@842
    move-result v38

    #@843
    .line 807
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@846
    .line 808
    if-eqz v38, :cond_1d

    #@848
    const/4 v4, 0x1

    #@849
    :goto_1d
    move-object/from16 v0, p3

    #@84b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@84e
    .line 809
    const/4 v4, 0x1

    #@84f
    return v4

    #@850
    .line 808
    :cond_1d
    const/4 v4, 0x0

    #@851
    goto :goto_1d

    #@852
    .line 813
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_47
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@855
    move-object/from16 v0, p2

    #@857
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@85a
    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@85d
    move-result-object v4

    #@85e
    invoke-static {v4}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    #@861
    move-result-object v16

    #@862
    .line 816
    .local v16, "_arg0":Landroid/os/INetworkActivityListener;
    move-object/from16 v0, p0

    #@864
    move-object/from16 v1, v16

    #@866
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    #@869
    .line 817
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@86c
    .line 818
    const/4 v4, 0x1

    #@86d
    return v4

    #@86e
    .line 822
    .end local v16    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_48
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@871
    move-object/from16 v0, p2

    #@873
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@876
    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@879
    move-result-object v4

    #@87a
    invoke-static {v4}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    #@87d
    move-result-object v16

    #@87e
    .line 825
    .restart local v16    # "_arg0":Landroid/os/INetworkActivityListener;
    move-object/from16 v0, p0

    #@880
    move-object/from16 v1, v16

    #@882
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    #@885
    .line 826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@888
    .line 827
    const/4 v4, 0x1

    #@889
    return v4

    #@88a
    .line 831
    .end local v16    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_49
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@88d
    move-object/from16 v0, p2

    #@88f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@892
    .line 832
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isNetworkActive()Z

    #@895
    move-result v38

    #@896
    .line 833
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@899
    .line 834
    if-eqz v38, :cond_1e

    #@89b
    const/4 v4, 0x1

    #@89c
    :goto_1e
    move-object/from16 v0, p3

    #@89e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8a1
    .line 835
    const/4 v4, 0x1

    #@8a2
    return v4

    #@8a3
    .line 834
    :cond_1e
    const/4 v4, 0x0

    #@8a4
    goto :goto_1e

    #@8a5
    .line 839
    .end local v38    # "_result":Z
    :sswitch_4a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@8a8
    move-object/from16 v0, p2

    #@8aa
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8ad
    .line 841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b0
    move-result v10

    #@8b1
    .line 843
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8b4
    move-result-object v6

    #@8b5
    .line 844
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8b7
    invoke-virtual {v0, v10, v6}, Landroid/os/INetworkManagementService$Stub;->createPhysicalNetwork(ILjava/lang/String;)V

    #@8ba
    .line 845
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8bd
    .line 846
    const/4 v4, 0x1

    #@8be
    return v4

    #@8bf
    .line 850
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg0":I
    :sswitch_4b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@8c2
    move-object/from16 v0, p2

    #@8c4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c7
    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8ca
    move-result v10

    #@8cb
    .line 854
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8ce
    move-result v4

    #@8cf
    if-eqz v4, :cond_1f

    #@8d1
    const/16 v27, 0x1

    #@8d3
    .line 856
    .local v27, "_arg1":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d6
    move-result v4

    #@8d7
    if-eqz v4, :cond_20

    #@8d9
    const/16 v32, 0x1

    #@8db
    .line 857
    .restart local v32    # "_arg2":Z
    :goto_20
    move-object/from16 v0, p0

    #@8dd
    move/from16 v1, v27

    #@8df
    move/from16 v2, v32

    #@8e1
    invoke-virtual {v0, v10, v1, v2}, Landroid/os/INetworkManagementService$Stub;->createVirtualNetwork(IZZ)V

    #@8e4
    .line 858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8e7
    .line 859
    const/4 v4, 0x1

    #@8e8
    return v4

    #@8e9
    .line 854
    .end local v27    # "_arg1":Z
    .end local v32    # "_arg2":Z
    :cond_1f
    const/16 v27, 0x0

    #@8eb
    .restart local v27    # "_arg1":Z
    goto :goto_1f

    #@8ec
    .line 856
    :cond_20
    const/16 v32, 0x0

    #@8ee
    goto :goto_20

    #@8ef
    .line 863
    .end local v10    # "_arg0":I
    .end local v27    # "_arg1":Z
    :sswitch_4c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@8f2
    move-object/from16 v0, p2

    #@8f4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8f7
    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8fa
    move-result v10

    #@8fb
    .line 866
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@8fd
    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->removeNetwork(I)V

    #@900
    .line 867
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@903
    .line 868
    const/4 v4, 0x1

    #@904
    return v4

    #@905
    .line 872
    .end local v10    # "_arg0":I
    :sswitch_4d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@908
    move-object/from16 v0, p2

    #@90a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@90d
    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@910
    move-result-object v5

    #@911
    .line 876
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@914
    move-result v21

    #@915
    .line 877
    .restart local v21    # "_arg1":I
    move-object/from16 v0, p0

    #@917
    move/from16 v1, v21

    #@919
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToNetwork(Ljava/lang/String;I)V

    #@91c
    .line 878
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@91f
    .line 879
    const/4 v4, 0x1

    #@920
    return v4

    #@921
    .line 883
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":I
    :sswitch_4e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@924
    move-object/from16 v0, p2

    #@926
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@929
    .line 885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@92c
    move-result-object v5

    #@92d
    .line 887
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@930
    move-result v21

    #@931
    .line 888
    .restart local v21    # "_arg1":I
    move-object/from16 v0, p0

    #@933
    move/from16 v1, v21

    #@935
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromNetwork(Ljava/lang/String;I)V

    #@938
    .line 889
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@93b
    .line 890
    const/4 v4, 0x1

    #@93c
    return v4

    #@93d
    .line 894
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":I
    :sswitch_4f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@940
    move-object/from16 v0, p2

    #@942
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@945
    .line 896
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@948
    move-result v10

    #@949
    .line 898
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@94c
    move-result v4

    #@94d
    if-eqz v4, :cond_21

    #@94f
    .line 899
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@951
    move-object/from16 v0, p2

    #@953
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@956
    move-result-object v25

    #@957
    check-cast v25, Landroid/net/RouteInfo;

    #@959
    .line 905
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@95c
    move-result v31

    #@95d
    .line 906
    .restart local v31    # "_arg2":I
    move-object/from16 v0, p0

    #@95f
    move-object/from16 v1, v25

    #@961
    move/from16 v2, v31

    #@963
    invoke-virtual {v0, v10, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V

    #@966
    .line 907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@969
    .line 908
    const/4 v4, 0x1

    #@96a
    return v4

    #@96b
    .line 902
    .end local v31    # "_arg2":I
    :cond_21
    const/16 v25, 0x0

    #@96d
    .restart local v25    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_21

    #@96e
    .line 912
    .end local v10    # "_arg0":I
    .end local v25    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_50
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@971
    move-object/from16 v0, p2

    #@973
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@976
    .line 914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@979
    move-result v10

    #@97a
    .line 915
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@97c
    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->setDefaultNetId(I)V

    #@97f
    .line 916
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@982
    .line 917
    const/4 v4, 0x1

    #@983
    return v4

    #@984
    .line 921
    .end local v10    # "_arg0":I
    :sswitch_51
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@987
    move-object/from16 v0, p2

    #@989
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@98c
    .line 922
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->clearDefaultNetId()V

    #@98f
    .line 923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@992
    .line 924
    const/4 v4, 0x1

    #@993
    return v4

    #@994
    .line 928
    :sswitch_52
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@997
    move-object/from16 v0, p2

    #@999
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@99c
    .line 930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@99f
    move-result v10

    #@9a0
    .line 932
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9a3
    move-result-object v6

    #@9a4
    .line 933
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9a6
    invoke-virtual {v0, v10, v6}, Landroid/os/INetworkManagementService$Stub;->setNetworkPermission(ILjava/lang/String;)V

    #@9a9
    .line 934
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9ac
    .line 935
    const/4 v4, 0x1

    #@9ad
    return v4

    #@9ae
    .line 939
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg0":I
    :sswitch_53
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@9b1
    move-object/from16 v0, p2

    #@9b3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9b6
    .line 941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9b9
    move-result-object v5

    #@9ba
    .line 943
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@9bd
    move-result-object v28

    #@9be
    .line 944
    .restart local v28    # "_arg1":[I
    move-object/from16 v0, p0

    #@9c0
    move-object/from16 v1, v28

    #@9c2
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setPermission(Ljava/lang/String;[I)V

    #@9c5
    .line 945
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9c8
    .line 946
    const/4 v4, 0x1

    #@9c9
    return v4

    #@9ca
    .line 950
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":[I
    :sswitch_54
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@9cd
    move-object/from16 v0, p2

    #@9cf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d2
    .line 952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@9d5
    move-result-object v19

    #@9d6
    .line 953
    .local v19, "_arg0":[I
    move-object/from16 v0, p0

    #@9d8
    move-object/from16 v1, v19

    #@9da
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->clearPermission([I)V

    #@9dd
    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9e0
    .line 955
    const/4 v4, 0x1

    #@9e1
    return v4

    #@9e2
    .line 959
    .end local v19    # "_arg0":[I
    :sswitch_55
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@9e5
    move-object/from16 v0, p2

    #@9e7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9ea
    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9ed
    move-result v10

    #@9ee
    .line 962
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@9f0
    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->allowProtect(I)V

    #@9f3
    .line 963
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9f6
    .line 964
    const/4 v4, 0x1

    #@9f7
    return v4

    #@9f8
    .line 968
    .end local v10    # "_arg0":I
    :sswitch_56
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@9fb
    move-object/from16 v0, p2

    #@9fd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a00
    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a03
    move-result v10

    #@a04
    .line 971
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@a06
    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->denyProtect(I)V

    #@a09
    .line 972
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a0c
    .line 973
    const/4 v4, 0x1

    #@a0d
    return v4

    #@a0e
    .line 977
    .end local v10    # "_arg0":I
    :sswitch_57
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@a11
    move-object/from16 v0, p2

    #@a13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a16
    .line 979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a19
    move-result-object v5

    #@a1a
    .line 981
    .restart local v5    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a1c
    move-object/from16 v0, p2

    #@a1e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@a21
    move-result-object v26

    #@a22
    .line 982
    .local v26, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, p0

    #@a24
    move-object/from16 v1, v26

    #@a26
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    #@a29
    .line 983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a2c
    .line 984
    const/4 v4, 0x1

    #@a2d
    return v4

    #@a2e
    .line 988
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :sswitch_58
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@a31
    move-object/from16 v0, p2

    #@a33
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a36
    .line 990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a39
    move-result-object v5

    #@a3a
    .line 991
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a3c
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    #@a3f
    .line 992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a42
    .line 993
    const/4 v4, 0x1

    #@a43
    return v4

    #@a44
    .line 997
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_59
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@a47
    move-object/from16 v0, p2

    #@a49
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a4c
    .line 999
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a4e
    move-object/from16 v0, p2

    #@a50
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@a53
    move-result-object v17

    #@a54
    .line 1000
    .local v17, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, p0

    #@a56
    move-object/from16 v1, v17

    #@a58
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    #@a5b
    move-result v34

    #@a5c
    .line 1001
    .local v34, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a5f
    .line 1002
    move-object/from16 v0, p3

    #@a61
    move/from16 v1, v34

    #@a63
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a66
    .line 1003
    const/4 v4, 0x1

    #@a67
    return v4

    #@a68
    .line 1007
    .end local v17    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    .end local v34    # "_result":I
    :sswitch_5a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@a6b
    move-object/from16 v0, p2

    #@a6d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a70
    .line 1009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a73
    move-result v4

    #@a74
    if-eqz v4, :cond_22

    #@a76
    const/16 v18, 0x1

    #@a78
    .line 1011
    .local v18, "_arg0":Z
    :goto_22
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a7a
    move-object/from16 v0, p2

    #@a7c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@a7f
    move-result-object v29

    #@a80
    check-cast v29, [Landroid/net/UidRange;

    #@a82
    .line 1012
    .restart local v29    # "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    #@a84
    move/from16 v1, v18

    #@a86
    move-object/from16 v2, v29

    #@a88
    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V

    #@a8b
    .line 1013
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8e
    .line 1014
    const/4 v4, 0x1

    #@a8f
    return v4

    #@a90
    .line 1009
    .end local v18    # "_arg0":Z
    .end local v29    # "_arg1":[Landroid/net/UidRange;
    :cond_22
    const/16 v18, 0x0

    #@a92
    .restart local v18    # "_arg0":Z
    goto :goto_22

    #@a93
    .line 41
    nop

    #@a94
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
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

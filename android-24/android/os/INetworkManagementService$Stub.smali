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

.field static final TRANSACTION_addIdleTimer:I = 0x35

.field static final TRANSACTION_addInterfaceToLocalNetwork:I = 0x56

.field static final TRANSACTION_addInterfaceToNetwork:I = 0x4c

.field static final TRANSACTION_addLegacyRouteForNetId:I = 0x4e

.field static final TRANSACTION_addRoute:I = 0xd

.field static final TRANSACTION_addVpnUidRanges:I = 0x41

.field static final TRANSACTION_allowProtect:I = 0x54

.field static final TRANSACTION_attachPppd:I = 0x20

.field static final TRANSACTION_clearDefaultNetId:I = 0x50

.field static final TRANSACTION_clearInterfaceAddresses:I = 0x6

.field static final TRANSACTION_clearPermission:I = 0x53

.field static final TRANSACTION_createPhysicalNetwork:I = 0x49

.field static final TRANSACTION_createVirtualNetwork:I = 0x4a

.field static final TRANSACTION_denyProtect:I = 0x55

.field static final TRANSACTION_detachPppd:I = 0x21

.field static final TRANSACTION_disableIpv6:I = 0xa

.field static final TRANSACTION_disableNat:I = 0x1e

.field static final TRANSACTION_enableIpv6:I = 0xb

.field static final TRANSACTION_enableNat:I = 0x1d

.field static final TRANSACTION_getDnsForwarders:I = 0x1a

.field static final TRANSACTION_getInterfaceConfig:I = 0x4

.field static final TRANSACTION_getIpForwardingEnabled:I = 0x11

.field static final TRANSACTION_getNetworkStatsDetail:I = 0x28

.field static final TRANSACTION_getNetworkStatsSummaryDev:I = 0x26

.field static final TRANSACTION_getNetworkStatsSummaryXt:I = 0x27

.field static final TRANSACTION_getNetworkStatsTethering:I = 0x2a

.field static final TRANSACTION_getNetworkStatsUidDetail:I = 0x29

.field static final TRANSACTION_isBandwidthControlEnabled:I = 0x34

.field static final TRANSACTION_isClatdStarted:I = 0x45

.field static final TRANSACTION_isFirewallEnabled:I = 0x3a

.field static final TRANSACTION_isNetworkActive:I = 0x48

.field static final TRANSACTION_isTetheringStarted:I = 0x15

.field static final TRANSACTION_listInterfaces:I = 0x3

.field static final TRANSACTION_listTetheredInterfaces:I = 0x18

.field static final TRANSACTION_listTtys:I = 0x1f

.field static final TRANSACTION_registerNetworkActivityListener:I = 0x46

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_removeIdleTimer:I = 0x36

.field static final TRANSACTION_removeInterfaceAlert:I = 0x2e

.field static final TRANSACTION_removeInterfaceFromLocalNetwork:I = 0x57

.field static final TRANSACTION_removeInterfaceFromNetwork:I = 0x4d

.field static final TRANSACTION_removeInterfaceQuota:I = 0x2c

.field static final TRANSACTION_removeNetwork:I = 0x4b

.field static final TRANSACTION_removeRoute:I = 0xe

.field static final TRANSACTION_removeVpnUidRanges:I = 0x42

.field static final TRANSACTION_setAccessPoint:I = 0x25

.field static final TRANSACTION_setAllowOnlyVpnForUids:I = 0x58

.field static final TRANSACTION_setDataSaverModeEnabled:I = 0x32

.field static final TRANSACTION_setDefaultNetId:I = 0x4f

.field static final TRANSACTION_setDnsConfigurationForNetwork:I = 0x37

.field static final TRANSACTION_setDnsForwarders:I = 0x19

.field static final TRANSACTION_setDnsServersForNetwork:I = 0x38

.field static final TRANSACTION_setFirewallChainEnabled:I = 0x40

.field static final TRANSACTION_setFirewallEgressDestRule:I = 0x3d

.field static final TRANSACTION_setFirewallEgressSourceRule:I = 0x3c

.field static final TRANSACTION_setFirewallEnabled:I = 0x39

.field static final TRANSACTION_setFirewallInterfaceRule:I = 0x3b

.field static final TRANSACTION_setFirewallUidRule:I = 0x3e

.field static final TRANSACTION_setFirewallUidRules:I = 0x3f

.field static final TRANSACTION_setGlobalAlert:I = 0x2f

.field static final TRANSACTION_setInterfaceAlert:I = 0x2d

.field static final TRANSACTION_setInterfaceConfig:I = 0x5

.field static final TRANSACTION_setInterfaceDown:I = 0x7

.field static final TRANSACTION_setInterfaceIpv6NdOffload:I = 0xc

.field static final TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0x9

.field static final TRANSACTION_setInterfaceQuota:I = 0x2b

.field static final TRANSACTION_setInterfaceUp:I = 0x8

.field static final TRANSACTION_setIpForwardingEnabled:I = 0x12

.field static final TRANSACTION_setMtu:I = 0xf

.field static final TRANSACTION_setNetworkPermission:I = 0x51

.field static final TRANSACTION_setPermission:I = 0x52

.field static final TRANSACTION_setUidCleartextNetworkPolicy:I = 0x33

.field static final TRANSACTION_setUidMeteredNetworkBlacklist:I = 0x30

.field static final TRANSACTION_setUidMeteredNetworkWhitelist:I = 0x31

.field static final TRANSACTION_shutdown:I = 0x10

.field static final TRANSACTION_startAccessPoint:I = 0x23

.field static final TRANSACTION_startClatd:I = 0x43

.field static final TRANSACTION_startInterfaceForwarding:I = 0x1b

.field static final TRANSACTION_startTethering:I = 0x13

.field static final TRANSACTION_stopAccessPoint:I = 0x24

.field static final TRANSACTION_stopClatd:I = 0x44

.field static final TRANSACTION_stopInterfaceForwarding:I = 0x1c

.field static final TRANSACTION_stopTethering:I = 0x14

.field static final TRANSACTION_tetherInterface:I = 0x16

.field static final TRANSACTION_unregisterNetworkActivityListener:I = 0x47

.field static final TRANSACTION_unregisterObserver:I = 0x2

.field static final TRANSACTION_untetherInterface:I = 0x17

.field static final TRANSACTION_wifiFirmwareReload:I = 0x22


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
    .locals 37
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
    .line 999
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
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    #@51
    move-result-object v36

    #@52
    .line 70
    .local v36, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@55
    .line 71
    move-object/from16 v0, p3

    #@57
    move-object/from16 v1, v36

    #@59
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@5c
    .line 72
    const/4 v4, 0x1

    #@5d
    return v4

    #@5e
    .line 76
    .end local v36    # "_result":[Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@61
    move-object/from16 v0, p2

    #@63
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@66
    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@69
    move-result-object v5

    #@6a
    .line 79
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6c
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@6f
    move-result-object v33

    #@70
    .line 80
    .local v33, "_result":Landroid/net/InterfaceConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@73
    .line 81
    if-eqz v33, :cond_0

    #@75
    .line 82
    const/4 v4, 0x1

    #@76
    move-object/from16 v0, p3

    #@78
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7b
    .line 83
    const/4 v4, 0x1

    #@7c
    move-object/from16 v0, v33

    #@7e
    move-object/from16 v1, p3

    #@80
    invoke-virtual {v0, v1, v4}, Landroid/net/InterfaceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@83
    .line 88
    :goto_0
    const/4 v4, 0x1

    #@84
    return v4

    #@85
    .line 86
    :cond_0
    const/4 v4, 0x0

    #@86
    move-object/from16 v0, p3

    #@88
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8b
    goto :goto_0

    #@8c
    .line 92
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v33    # "_result":Landroid/net/InterfaceConfiguration;
    :sswitch_5
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@8f
    move-object/from16 v0, p2

    #@91
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@94
    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@97
    move-result-object v5

    #@98
    .line 96
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9b
    move-result v4

    #@9c
    if-eqz v4, :cond_1

    #@9e
    .line 97
    sget-object v4, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a0
    move-object/from16 v0, p2

    #@a2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a5
    move-result-object v21

    #@a6
    check-cast v21, Landroid/net/InterfaceConfiguration;

    #@a8
    .line 102
    :goto_1
    move-object/from16 v0, p0

    #@aa
    move-object/from16 v1, v21

    #@ac
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    #@af
    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b2
    .line 104
    const/4 v4, 0x1

    #@b3
    return v4

    #@b4
    .line 100
    :cond_1
    const/16 v21, 0x0

    #@b6
    .local v21, "_arg1":Landroid/net/InterfaceConfiguration;
    goto :goto_1

    #@b7
    .line 108
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Landroid/net/InterfaceConfiguration;
    :sswitch_6
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@ba
    move-object/from16 v0, p2

    #@bc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bf
    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c2
    move-result-object v5

    #@c3
    .line 111
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c5
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    #@c8
    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cb
    .line 113
    const/4 v4, 0x1

    #@cc
    return v4

    #@cd
    .line 117
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@d0
    move-object/from16 v0, p2

    #@d2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d5
    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d8
    move-result-object v5

    #@d9
    .line 120
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@db
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    #@de
    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e1
    .line 122
    const/4 v4, 0x1

    #@e2
    return v4

    #@e3
    .line 126
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@e6
    move-object/from16 v0, p2

    #@e8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@eb
    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ee
    move-result-object v5

    #@ef
    .line 129
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f1
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    #@f4
    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f7
    .line 131
    const/4 v4, 0x1

    #@f8
    return v4

    #@f9
    .line 135
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@fc
    move-object/from16 v0, p2

    #@fe
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@101
    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@104
    move-result-object v5

    #@105
    .line 139
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@108
    move-result v4

    #@109
    if-eqz v4, :cond_2

    #@10b
    const/16 v26, 0x1

    #@10d
    .line 140
    .local v26, "_arg1":Z
    :goto_2
    move-object/from16 v0, p0

    #@10f
    move/from16 v1, v26

    #@111
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    #@114
    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@117
    .line 142
    const/4 v4, 0x1

    #@118
    return v4

    #@119
    .line 139
    .end local v26    # "_arg1":Z
    :cond_2
    const/16 v26, 0x0

    #@11b
    goto :goto_2

    #@11c
    .line 146
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@11f
    move-object/from16 v0, p2

    #@121
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@124
    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@127
    move-result-object v5

    #@128
    .line 149
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@12a
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    #@12d
    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@130
    .line 151
    const/4 v4, 0x1

    #@131
    return v4

    #@132
    .line 155
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@135
    move-object/from16 v0, p2

    #@137
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13a
    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13d
    move-result-object v5

    #@13e
    .line 158
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@140
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    #@143
    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@146
    .line 160
    const/4 v4, 0x1

    #@147
    return v4

    #@148
    .line 164
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@14b
    move-object/from16 v0, p2

    #@14d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@150
    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@153
    move-result-object v5

    #@154
    .line 168
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@157
    move-result v4

    #@158
    if-eqz v4, :cond_3

    #@15a
    const/16 v26, 0x1

    #@15c
    .line 169
    .restart local v26    # "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    #@15e
    move/from16 v1, v26

    #@160
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V

    #@163
    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@166
    .line 171
    const/4 v4, 0x1

    #@167
    return v4

    #@168
    .line 168
    .end local v26    # "_arg1":Z
    :cond_3
    const/16 v26, 0x0

    #@16a
    goto :goto_3

    #@16b
    .line 175
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@16e
    move-object/from16 v0, p2

    #@170
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@173
    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@176
    move-result v10

    #@177
    .line 179
    .local v10, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17a
    move-result v4

    #@17b
    if-eqz v4, :cond_4

    #@17d
    .line 180
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17f
    move-object/from16 v0, p2

    #@181
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@184
    move-result-object v24

    #@185
    check-cast v24, Landroid/net/RouteInfo;

    #@187
    .line 185
    :goto_4
    move-object/from16 v0, p0

    #@189
    move-object/from16 v1, v24

    #@18b
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->addRoute(ILandroid/net/RouteInfo;)V

    #@18e
    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@191
    .line 187
    const/4 v4, 0x1

    #@192
    return v4

    #@193
    .line 183
    :cond_4
    const/16 v24, 0x0

    #@195
    .local v24, "_arg1":Landroid/net/RouteInfo;
    goto :goto_4

    #@196
    .line 191
    .end local v10    # "_arg0":I
    .end local v24    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@199
    move-object/from16 v0, p2

    #@19b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19e
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a1
    move-result v10

    #@1a2
    .line 195
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a5
    move-result v4

    #@1a6
    if-eqz v4, :cond_5

    #@1a8
    .line 196
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1aa
    move-object/from16 v0, p2

    #@1ac
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1af
    move-result-object v24

    #@1b0
    check-cast v24, Landroid/net/RouteInfo;

    #@1b2
    .line 201
    :goto_5
    move-object/from16 v0, p0

    #@1b4
    move-object/from16 v1, v24

    #@1b6
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->removeRoute(ILandroid/net/RouteInfo;)V

    #@1b9
    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bc
    .line 203
    const/4 v4, 0x1

    #@1bd
    return v4

    #@1be
    .line 199
    :cond_5
    const/16 v24, 0x0

    #@1c0
    .restart local v24    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_5

    #@1c1
    .line 207
    .end local v10    # "_arg0":I
    .end local v24    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@1c4
    move-object/from16 v0, p2

    #@1c6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c9
    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1cc
    move-result-object v5

    #@1cd
    .line 211
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d0
    move-result v20

    #@1d1
    .line 212
    .local v20, "_arg1":I
    move-object/from16 v0, p0

    #@1d3
    move/from16 v1, v20

    #@1d5
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setMtu(Ljava/lang/String;I)V

    #@1d8
    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1db
    .line 214
    const/4 v4, 0x1

    #@1dc
    return v4

    #@1dd
    .line 218
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":I
    :sswitch_10
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@1e0
    move-object/from16 v0, p2

    #@1e2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e5
    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    #@1e8
    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1eb
    .line 221
    const/4 v4, 0x1

    #@1ec
    return v4

    #@1ed
    .line 225
    :sswitch_11
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@1f0
    move-object/from16 v0, p2

    #@1f2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f5
    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    #@1f8
    move-result v35

    #@1f9
    .line 227
    .local v35, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fc
    .line 228
    if-eqz v35, :cond_6

    #@1fe
    const/4 v4, 0x1

    #@1ff
    :goto_6
    move-object/from16 v0, p3

    #@201
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@204
    .line 229
    const/4 v4, 0x1

    #@205
    return v4

    #@206
    .line 228
    :cond_6
    const/4 v4, 0x0

    #@207
    goto :goto_6

    #@208
    .line 233
    .end local v35    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@20b
    move-object/from16 v0, p2

    #@20d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@210
    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@213
    move-result v4

    #@214
    if-eqz v4, :cond_7

    #@216
    const/16 v17, 0x1

    #@218
    .line 236
    .local v17, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    #@21a
    move/from16 v1, v17

    #@21c
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    #@21f
    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@222
    .line 238
    const/4 v4, 0x1

    #@223
    return v4

    #@224
    .line 235
    .end local v17    # "_arg0":Z
    :cond_7
    const/16 v17, 0x0

    #@226
    goto :goto_7

    #@227
    .line 242
    :sswitch_13
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@22a
    move-object/from16 v0, p2

    #@22c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22f
    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@232
    move-result-object v19

    #@233
    .line 245
    .local v19, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@235
    move-object/from16 v1, v19

    #@237
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    #@23a
    .line 246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23d
    .line 247
    const/4 v4, 0x1

    #@23e
    return v4

    #@23f
    .line 251
    .end local v19    # "_arg0":[Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@242
    move-object/from16 v0, p2

    #@244
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@247
    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    #@24a
    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24d
    .line 254
    const/4 v4, 0x1

    #@24e
    return v4

    #@24f
    .line 258
    :sswitch_15
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@252
    move-object/from16 v0, p2

    #@254
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@257
    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    #@25a
    move-result v35

    #@25b
    .line 260
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25e
    .line 261
    if-eqz v35, :cond_8

    #@260
    const/4 v4, 0x1

    #@261
    :goto_8
    move-object/from16 v0, p3

    #@263
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@266
    .line 262
    const/4 v4, 0x1

    #@267
    return v4

    #@268
    .line 261
    :cond_8
    const/4 v4, 0x0

    #@269
    goto :goto_8

    #@26a
    .line 266
    .end local v35    # "_result":Z
    :sswitch_16
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@26d
    move-object/from16 v0, p2

    #@26f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@272
    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@275
    move-result-object v5

    #@276
    .line 269
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@278
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    #@27b
    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27e
    .line 271
    const/4 v4, 0x1

    #@27f
    return v4

    #@280
    .line 275
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@283
    move-object/from16 v0, p2

    #@285
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@288
    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28b
    move-result-object v5

    #@28c
    .line 278
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@28e
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    #@291
    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@294
    .line 280
    const/4 v4, 0x1

    #@295
    return v4

    #@296
    .line 284
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@299
    move-object/from16 v0, p2

    #@29b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29e
    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    #@2a1
    move-result-object v36

    #@2a2
    .line 286
    .restart local v36    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a5
    .line 287
    move-object/from16 v0, p3

    #@2a7
    move-object/from16 v1, v36

    #@2a9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@2ac
    .line 288
    const/4 v4, 0x1

    #@2ad
    return v4

    #@2ae
    .line 292
    .end local v36    # "_result":[Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@2b1
    move-object/from16 v0, p2

    #@2b3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b6
    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b9
    move-result v4

    #@2ba
    if-eqz v4, :cond_9

    #@2bc
    .line 295
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2be
    move-object/from16 v0, p2

    #@2c0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c3
    move-result-object v14

    #@2c4
    check-cast v14, Landroid/net/Network;

    #@2c6
    .line 301
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@2c9
    move-result-object v29

    #@2ca
    .line 302
    .local v29, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@2cc
    move-object/from16 v1, v29

    #@2ce
    invoke-virtual {v0, v14, v1}, Landroid/os/INetworkManagementService$Stub;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V

    #@2d1
    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d4
    .line 304
    const/4 v4, 0x1

    #@2d5
    return v4

    #@2d6
    .line 298
    .end local v29    # "_arg1":[Ljava/lang/String;
    :cond_9
    const/4 v14, 0x0

    #@2d7
    .local v14, "_arg0":Landroid/net/Network;
    goto :goto_9

    #@2d8
    .line 308
    .end local v14    # "_arg0":Landroid/net/Network;
    :sswitch_1a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@2db
    move-object/from16 v0, p2

    #@2dd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e0
    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    #@2e3
    move-result-object v36

    #@2e4
    .line 310
    .restart local v36    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e7
    .line 311
    move-object/from16 v0, p3

    #@2e9
    move-object/from16 v1, v36

    #@2eb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@2ee
    .line 312
    const/4 v4, 0x1

    #@2ef
    return v4

    #@2f0
    .line 316
    .end local v36    # "_result":[Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@2f3
    move-object/from16 v0, p2

    #@2f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f8
    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2fb
    move-result-object v5

    #@2fc
    .line 320
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ff
    move-result-object v6

    #@300
    .line 321
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@302
    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    #@305
    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@308
    .line 323
    const/4 v4, 0x1

    #@309
    return v4

    #@30a
    .line 327
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@30d
    move-object/from16 v0, p2

    #@30f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@312
    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@315
    move-result-object v5

    #@316
    .line 331
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@319
    move-result-object v6

    #@31a
    .line 332
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@31c
    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    #@31f
    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@322
    .line 334
    const/4 v4, 0x1

    #@323
    return v4

    #@324
    .line 338
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@327
    move-object/from16 v0, p2

    #@329
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32c
    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32f
    move-result-object v5

    #@330
    .line 342
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@333
    move-result-object v6

    #@334
    .line 343
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@336
    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    #@339
    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@33c
    .line 345
    const/4 v4, 0x1

    #@33d
    return v4

    #@33e
    .line 349
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@341
    move-object/from16 v0, p2

    #@343
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@346
    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@349
    move-result-object v5

    #@34a
    .line 353
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@34d
    move-result-object v6

    #@34e
    .line 354
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@350
    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    #@353
    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@356
    .line 356
    const/4 v4, 0x1

    #@357
    return v4

    #@358
    .line 360
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@35b
    move-object/from16 v0, p2

    #@35d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@360
    .line 361
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listTtys()[Ljava/lang/String;

    #@363
    move-result-object v36

    #@364
    .line 362
    .restart local v36    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@367
    .line 363
    move-object/from16 v0, p3

    #@369
    move-object/from16 v1, v36

    #@36b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@36e
    .line 364
    const/4 v4, 0x1

    #@36f
    return v4

    #@370
    .line 368
    .end local v36    # "_result":[Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@373
    move-object/from16 v0, p2

    #@375
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@378
    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@37b
    move-result-object v5

    #@37c
    .line 372
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@37f
    move-result-object v6

    #@380
    .line 374
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@383
    move-result-object v7

    #@384
    .line 376
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@387
    move-result-object v8

    #@388
    .line 378
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@38b
    move-result-object v9

    #@38c
    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    #@38e
    .line 379
    invoke-virtual/range {v4 .. v9}, Landroid/os/INetworkManagementService$Stub;->attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@391
    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@394
    .line 381
    const/4 v4, 0x1

    #@395
    return v4

    #@396
    .line 385
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@399
    move-object/from16 v0, p2

    #@39b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39e
    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a1
    move-result-object v5

    #@3a2
    .line 388
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3a4
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->detachPppd(Ljava/lang/String;)V

    #@3a7
    .line 389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3aa
    .line 390
    const/4 v4, 0x1

    #@3ab
    return v4

    #@3ac
    .line 394
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@3af
    move-object/from16 v0, p2

    #@3b1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b4
    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b7
    move-result-object v5

    #@3b8
    .line 398
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3bb
    move-result-object v6

    #@3bc
    .line 399
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3be
    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    #@3c1
    .line 400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c4
    .line 401
    const/4 v4, 0x1

    #@3c5
    return v4

    #@3c6
    .line 405
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@3c9
    move-object/from16 v0, p2

    #@3cb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ce
    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d1
    move-result v4

    #@3d2
    if-eqz v4, :cond_a

    #@3d4
    .line 408
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d6
    move-object/from16 v0, p2

    #@3d8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3db
    move-result-object v15

    #@3dc
    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    #@3de
    .line 414
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3e1
    move-result-object v6

    #@3e2
    .line 415
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3e4
    invoke-virtual {v0, v15, v6}, Landroid/os/INetworkManagementService$Stub;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    #@3e7
    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ea
    .line 417
    const/4 v4, 0x1

    #@3eb
    return v4

    #@3ec
    .line 411
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_a
    const/4 v15, 0x0

    #@3ed
    .local v15, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_a

    #@3ee
    .line 421
    .end local v15    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_24
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@3f1
    move-object/from16 v0, p2

    #@3f3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f6
    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3f9
    move-result-object v5

    #@3fa
    .line 424
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3fc
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->stopAccessPoint(Ljava/lang/String;)V

    #@3ff
    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@402
    .line 426
    const/4 v4, 0x1

    #@403
    return v4

    #@404
    .line 430
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@407
    move-object/from16 v0, p2

    #@409
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40c
    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40f
    move-result v4

    #@410
    if-eqz v4, :cond_b

    #@412
    .line 433
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@414
    move-object/from16 v0, p2

    #@416
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@419
    move-result-object v15

    #@41a
    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    #@41c
    .line 439
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@41f
    move-result-object v6

    #@420
    .line 440
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@422
    invoke-virtual {v0, v15, v6}, Landroid/os/INetworkManagementService$Stub;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    #@425
    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@428
    .line 442
    const/4 v4, 0x1

    #@429
    return v4

    #@42a
    .line 436
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_b
    const/4 v15, 0x0

    #@42b
    .restart local v15    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_b

    #@42c
    .line 446
    .end local v15    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_26
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@42f
    move-object/from16 v0, p2

    #@431
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@434
    .line 447
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    #@437
    move-result-object v34

    #@438
    .line 448
    .local v34, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43b
    .line 449
    if-eqz v34, :cond_c

    #@43d
    .line 450
    const/4 v4, 0x1

    #@43e
    move-object/from16 v0, p3

    #@440
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@443
    .line 451
    const/4 v4, 0x1

    #@444
    move-object/from16 v0, v34

    #@446
    move-object/from16 v1, p3

    #@448
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@44b
    .line 456
    :goto_c
    const/4 v4, 0x1

    #@44c
    return v4

    #@44d
    .line 454
    :cond_c
    const/4 v4, 0x0

    #@44e
    move-object/from16 v0, p3

    #@450
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@453
    goto :goto_c

    #@454
    .line 460
    .end local v34    # "_result":Landroid/net/NetworkStats;
    :sswitch_27
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@457
    move-object/from16 v0, p2

    #@459
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@45c
    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    #@45f
    move-result-object v34

    #@460
    .line 462
    .restart local v34    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@463
    .line 463
    if-eqz v34, :cond_d

    #@465
    .line 464
    const/4 v4, 0x1

    #@466
    move-object/from16 v0, p3

    #@468
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@46b
    .line 465
    const/4 v4, 0x1

    #@46c
    move-object/from16 v0, v34

    #@46e
    move-object/from16 v1, p3

    #@470
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@473
    .line 470
    :goto_d
    const/4 v4, 0x1

    #@474
    return v4

    #@475
    .line 468
    :cond_d
    const/4 v4, 0x0

    #@476
    move-object/from16 v0, p3

    #@478
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@47b
    goto :goto_d

    #@47c
    .line 474
    .end local v34    # "_result":Landroid/net/NetworkStats;
    :sswitch_28
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@47f
    move-object/from16 v0, p2

    #@481
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@484
    .line 475
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    #@487
    move-result-object v34

    #@488
    .line 476
    .restart local v34    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@48b
    .line 477
    if-eqz v34, :cond_e

    #@48d
    .line 478
    const/4 v4, 0x1

    #@48e
    move-object/from16 v0, p3

    #@490
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@493
    .line 479
    const/4 v4, 0x1

    #@494
    move-object/from16 v0, v34

    #@496
    move-object/from16 v1, p3

    #@498
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@49b
    .line 484
    :goto_e
    const/4 v4, 0x1

    #@49c
    return v4

    #@49d
    .line 482
    :cond_e
    const/4 v4, 0x0

    #@49e
    move-object/from16 v0, p3

    #@4a0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4a3
    goto :goto_e

    #@4a4
    .line 488
    .end local v34    # "_result":Landroid/net/NetworkStats;
    :sswitch_29
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@4a7
    move-object/from16 v0, p2

    #@4a9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ac
    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4af
    move-result v10

    #@4b0
    .line 491
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@4b2
    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    #@4b5
    move-result-object v34

    #@4b6
    .line 492
    .restart local v34    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b9
    .line 493
    if-eqz v34, :cond_f

    #@4bb
    .line 494
    const/4 v4, 0x1

    #@4bc
    move-object/from16 v0, p3

    #@4be
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4c1
    .line 495
    const/4 v4, 0x1

    #@4c2
    move-object/from16 v0, v34

    #@4c4
    move-object/from16 v1, p3

    #@4c6
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@4c9
    .line 500
    :goto_f
    const/4 v4, 0x1

    #@4ca
    return v4

    #@4cb
    .line 498
    :cond_f
    const/4 v4, 0x0

    #@4cc
    move-object/from16 v0, p3

    #@4ce
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4d1
    goto :goto_f

    #@4d2
    .line 504
    .end local v10    # "_arg0":I
    .end local v34    # "_result":Landroid/net/NetworkStats;
    :sswitch_2a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@4d5
    move-object/from16 v0, p2

    #@4d7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4da
    .line 505
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    #@4dd
    move-result-object v34

    #@4de
    .line 506
    .restart local v34    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e1
    .line 507
    if-eqz v34, :cond_10

    #@4e3
    .line 508
    const/4 v4, 0x1

    #@4e4
    move-object/from16 v0, p3

    #@4e6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4e9
    .line 509
    const/4 v4, 0x1

    #@4ea
    move-object/from16 v0, v34

    #@4ec
    move-object/from16 v1, p3

    #@4ee
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@4f1
    .line 514
    :goto_10
    const/4 v4, 0x1

    #@4f2
    return v4

    #@4f3
    .line 512
    :cond_10
    const/4 v4, 0x0

    #@4f4
    move-object/from16 v0, p3

    #@4f6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4f9
    goto :goto_10

    #@4fa
    .line 518
    .end local v34    # "_result":Landroid/net/NetworkStats;
    :sswitch_2b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@4fd
    move-object/from16 v0, p2

    #@4ff
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@502
    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@505
    move-result-object v5

    #@506
    .line 522
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@509
    move-result-wide v22

    #@50a
    .line 523
    .local v22, "_arg1":J
    move-object/from16 v0, p0

    #@50c
    move-wide/from16 v1, v22

    #@50e
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    #@511
    .line 524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@514
    .line 525
    const/4 v4, 0x1

    #@515
    return v4

    #@516
    .line 529
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":J
    :sswitch_2c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@519
    move-object/from16 v0, p2

    #@51b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@51e
    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@521
    move-result-object v5

    #@522
    .line 532
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@524
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    #@527
    .line 533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@52a
    .line 534
    const/4 v4, 0x1

    #@52b
    return v4

    #@52c
    .line 538
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_2d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@52f
    move-object/from16 v0, p2

    #@531
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@534
    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@537
    move-result-object v5

    #@538
    .line 542
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@53b
    move-result-wide v22

    #@53c
    .line 543
    .restart local v22    # "_arg1":J
    move-object/from16 v0, p0

    #@53e
    move-wide/from16 v1, v22

    #@540
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    #@543
    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@546
    .line 545
    const/4 v4, 0x1

    #@547
    return v4

    #@548
    .line 549
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":J
    :sswitch_2e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@54b
    move-object/from16 v0, p2

    #@54d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@550
    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@553
    move-result-object v5

    #@554
    .line 552
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@556
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    #@559
    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@55c
    .line 554
    const/4 v4, 0x1

    #@55d
    return v4

    #@55e
    .line 558
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_2f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@561
    move-object/from16 v0, p2

    #@563
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@566
    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@569
    move-result-wide v12

    #@56a
    .line 561
    .local v12, "_arg0":J
    move-object/from16 v0, p0

    #@56c
    invoke-virtual {v0, v12, v13}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    #@56f
    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@572
    .line 563
    const/4 v4, 0x1

    #@573
    return v4

    #@574
    .line 567
    .end local v12    # "_arg0":J
    :sswitch_30
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@577
    move-object/from16 v0, p2

    #@579
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57c
    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@57f
    move-result v10

    #@580
    .line 571
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@583
    move-result v4

    #@584
    if-eqz v4, :cond_11

    #@586
    const/16 v26, 0x1

    #@588
    .line 572
    .restart local v26    # "_arg1":Z
    :goto_11
    move-object/from16 v0, p0

    #@58a
    move/from16 v1, v26

    #@58c
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->setUidMeteredNetworkBlacklist(IZ)V

    #@58f
    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@592
    .line 574
    const/4 v4, 0x1

    #@593
    return v4

    #@594
    .line 571
    .end local v26    # "_arg1":Z
    :cond_11
    const/16 v26, 0x0

    #@596
    goto :goto_11

    #@597
    .line 578
    .end local v10    # "_arg0":I
    :sswitch_31
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@59a
    move-object/from16 v0, p2

    #@59c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59f
    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a2
    move-result v10

    #@5a3
    .line 582
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a6
    move-result v4

    #@5a7
    if-eqz v4, :cond_12

    #@5a9
    const/16 v26, 0x1

    #@5ab
    .line 583
    .restart local v26    # "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    #@5ad
    move/from16 v1, v26

    #@5af
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->setUidMeteredNetworkWhitelist(IZ)V

    #@5b2
    .line 584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b5
    .line 585
    const/4 v4, 0x1

    #@5b6
    return v4

    #@5b7
    .line 582
    .end local v26    # "_arg1":Z
    :cond_12
    const/16 v26, 0x0

    #@5b9
    goto :goto_12

    #@5ba
    .line 589
    .end local v10    # "_arg0":I
    :sswitch_32
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@5bd
    move-object/from16 v0, p2

    #@5bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c2
    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c5
    move-result v4

    #@5c6
    if-eqz v4, :cond_13

    #@5c8
    const/16 v17, 0x1

    #@5ca
    .line 592
    .restart local v17    # "_arg0":Z
    :goto_13
    move-object/from16 v0, p0

    #@5cc
    move/from16 v1, v17

    #@5ce
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setDataSaverModeEnabled(Z)Z

    #@5d1
    move-result v35

    #@5d2
    .line 593
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d5
    .line 594
    if-eqz v35, :cond_14

    #@5d7
    const/4 v4, 0x1

    #@5d8
    :goto_14
    move-object/from16 v0, p3

    #@5da
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5dd
    .line 595
    const/4 v4, 0x1

    #@5de
    return v4

    #@5df
    .line 591
    .end local v17    # "_arg0":Z
    .end local v35    # "_result":Z
    :cond_13
    const/16 v17, 0x0

    #@5e1
    goto :goto_13

    #@5e2
    .line 594
    .restart local v17    # "_arg0":Z
    .restart local v35    # "_result":Z
    :cond_14
    const/4 v4, 0x0

    #@5e3
    goto :goto_14

    #@5e4
    .line 599
    .end local v17    # "_arg0":Z
    .end local v35    # "_result":Z
    :sswitch_33
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@5e7
    move-object/from16 v0, p2

    #@5e9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5ec
    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ef
    move-result v10

    #@5f0
    .line 603
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f3
    move-result v20

    #@5f4
    .line 604
    .restart local v20    # "_arg1":I
    move-object/from16 v0, p0

    #@5f6
    move/from16 v1, v20

    #@5f8
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->setUidCleartextNetworkPolicy(II)V

    #@5fb
    .line 605
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5fe
    .line 606
    const/4 v4, 0x1

    #@5ff
    return v4

    #@600
    .line 610
    .end local v10    # "_arg0":I
    .end local v20    # "_arg1":I
    :sswitch_34
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@603
    move-object/from16 v0, p2

    #@605
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@608
    .line 611
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    #@60b
    move-result v35

    #@60c
    .line 612
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@60f
    .line 613
    if-eqz v35, :cond_15

    #@611
    const/4 v4, 0x1

    #@612
    :goto_15
    move-object/from16 v0, p3

    #@614
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@617
    .line 614
    const/4 v4, 0x1

    #@618
    return v4

    #@619
    .line 613
    :cond_15
    const/4 v4, 0x0

    #@61a
    goto :goto_15

    #@61b
    .line 618
    .end local v35    # "_result":Z
    :sswitch_35
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@61e
    move-object/from16 v0, p2

    #@620
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@623
    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@626
    move-result-object v5

    #@627
    .line 622
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@62a
    move-result v20

    #@62b
    .line 624
    .restart local v20    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@62e
    move-result v30

    #@62f
    .line 625
    .local v30, "_arg2":I
    move-object/from16 v0, p0

    #@631
    move/from16 v1, v20

    #@633
    move/from16 v2, v30

    #@635
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addIdleTimer(Ljava/lang/String;II)V

    #@638
    .line 626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@63b
    .line 627
    const/4 v4, 0x1

    #@63c
    return v4

    #@63d
    .line 631
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":I
    .end local v30    # "_arg2":I
    :sswitch_36
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@640
    move-object/from16 v0, p2

    #@642
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@645
    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@648
    move-result-object v5

    #@649
    .line 634
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@64b
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeIdleTimer(Ljava/lang/String;)V

    #@64e
    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@651
    .line 636
    const/4 v4, 0x1

    #@652
    return v4

    #@653
    .line 640
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@656
    move-object/from16 v0, p2

    #@658
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@65b
    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@65e
    move-result v10

    #@65f
    .line 644
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@662
    move-result-object v29

    #@663
    .line 646
    .restart local v29    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@666
    move-result-object v7

    #@667
    .line 647
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@669
    move-object/from16 v1, v29

    #@66b
    invoke-virtual {v0, v10, v1, v7}, Landroid/os/INetworkManagementService$Stub;->setDnsConfigurationForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    #@66e
    .line 648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@671
    .line 649
    const/4 v4, 0x1

    #@672
    return v4

    #@673
    .line 653
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg0":I
    .end local v29    # "_arg1":[Ljava/lang/String;
    :sswitch_38
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@676
    move-object/from16 v0, p2

    #@678
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67b
    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@67e
    move-result v10

    #@67f
    .line 657
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@682
    move-result-object v29

    #@683
    .line 659
    .restart local v29    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@686
    move-result-object v7

    #@687
    .line 660
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@689
    move-object/from16 v1, v29

    #@68b
    invoke-virtual {v0, v10, v1, v7}, Landroid/os/INetworkManagementService$Stub;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    #@68e
    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@691
    .line 662
    const/4 v4, 0x1

    #@692
    return v4

    #@693
    .line 666
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg0":I
    .end local v29    # "_arg1":[Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@696
    move-object/from16 v0, p2

    #@698
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@69b
    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@69e
    move-result v4

    #@69f
    if-eqz v4, :cond_16

    #@6a1
    const/16 v17, 0x1

    #@6a3
    .line 669
    .restart local v17    # "_arg0":Z
    :goto_16
    move-object/from16 v0, p0

    #@6a5
    move/from16 v1, v17

    #@6a7
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    #@6aa
    .line 670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6ad
    .line 671
    const/4 v4, 0x1

    #@6ae
    return v4

    #@6af
    .line 668
    .end local v17    # "_arg0":Z
    :cond_16
    const/16 v17, 0x0

    #@6b1
    goto :goto_16

    #@6b2
    .line 675
    :sswitch_3a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@6b5
    move-object/from16 v0, p2

    #@6b7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ba
    .line 676
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    #@6bd
    move-result v35

    #@6be
    .line 677
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6c1
    .line 678
    if-eqz v35, :cond_17

    #@6c3
    const/4 v4, 0x1

    #@6c4
    :goto_17
    move-object/from16 v0, p3

    #@6c6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6c9
    .line 679
    const/4 v4, 0x1

    #@6ca
    return v4

    #@6cb
    .line 678
    :cond_17
    const/4 v4, 0x0

    #@6cc
    goto :goto_17

    #@6cd
    .line 683
    .end local v35    # "_result":Z
    :sswitch_3b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@6d0
    move-object/from16 v0, p2

    #@6d2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6d5
    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6d8
    move-result-object v5

    #@6d9
    .line 687
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6dc
    move-result v4

    #@6dd
    if-eqz v4, :cond_18

    #@6df
    const/16 v26, 0x1

    #@6e1
    .line 688
    .restart local v26    # "_arg1":Z
    :goto_18
    move-object/from16 v0, p0

    #@6e3
    move/from16 v1, v26

    #@6e5
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    #@6e8
    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6eb
    .line 690
    const/4 v4, 0x1

    #@6ec
    return v4

    #@6ed
    .line 687
    .end local v26    # "_arg1":Z
    :cond_18
    const/16 v26, 0x0

    #@6ef
    goto :goto_18

    #@6f0
    .line 694
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_3c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@6f3
    move-object/from16 v0, p2

    #@6f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f8
    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6fb
    move-result-object v5

    #@6fc
    .line 698
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ff
    move-result v4

    #@700
    if-eqz v4, :cond_19

    #@702
    const/16 v26, 0x1

    #@704
    .line 699
    .restart local v26    # "_arg1":Z
    :goto_19
    move-object/from16 v0, p0

    #@706
    move/from16 v1, v26

    #@708
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    #@70b
    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@70e
    .line 701
    const/4 v4, 0x1

    #@70f
    return v4

    #@710
    .line 698
    .end local v26    # "_arg1":Z
    :cond_19
    const/16 v26, 0x0

    #@712
    goto :goto_19

    #@713
    .line 705
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_3d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@716
    move-object/from16 v0, p2

    #@718
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@71b
    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@71e
    move-result-object v5

    #@71f
    .line 709
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@722
    move-result v20

    #@723
    .line 711
    .restart local v20    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@726
    move-result v4

    #@727
    if-eqz v4, :cond_1a

    #@729
    const/16 v31, 0x1

    #@72b
    .line 712
    .local v31, "_arg2":Z
    :goto_1a
    move-object/from16 v0, p0

    #@72d
    move/from16 v1, v20

    #@72f
    move/from16 v2, v31

    #@731
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    #@734
    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@737
    .line 714
    const/4 v4, 0x1

    #@738
    return v4

    #@739
    .line 711
    .end local v31    # "_arg2":Z
    :cond_1a
    const/16 v31, 0x0

    #@73b
    goto :goto_1a

    #@73c
    .line 718
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":I
    :sswitch_3e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@73f
    move-object/from16 v0, p2

    #@741
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@744
    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@747
    move-result v10

    #@748
    .line 722
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@74b
    move-result v20

    #@74c
    .line 724
    .restart local v20    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@74f
    move-result v30

    #@750
    .line 725
    .restart local v30    # "_arg2":I
    move-object/from16 v0, p0

    #@752
    move/from16 v1, v20

    #@754
    move/from16 v2, v30

    #@756
    invoke-virtual {v0, v10, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(III)V

    #@759
    .line 726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@75c
    .line 727
    const/4 v4, 0x1

    #@75d
    return v4

    #@75e
    .line 731
    .end local v10    # "_arg0":I
    .end local v20    # "_arg1":I
    .end local v30    # "_arg2":I
    :sswitch_3f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@761
    move-object/from16 v0, p2

    #@763
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@766
    .line 733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@769
    move-result v10

    #@76a
    .line 735
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@76d
    move-result-object v27

    #@76e
    .line 737
    .local v27, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@771
    move-result-object v32

    #@772
    .line 738
    .local v32, "_arg2":[I
    move-object/from16 v0, p0

    #@774
    move-object/from16 v1, v27

    #@776
    move-object/from16 v2, v32

    #@778
    invoke-virtual {v0, v10, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRules(I[I[I)V

    #@77b
    .line 739
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@77e
    .line 740
    const/4 v4, 0x1

    #@77f
    return v4

    #@780
    .line 744
    .end local v10    # "_arg0":I
    .end local v27    # "_arg1":[I
    .end local v32    # "_arg2":[I
    :sswitch_40
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@783
    move-object/from16 v0, p2

    #@785
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@788
    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@78b
    move-result v10

    #@78c
    .line 748
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@78f
    move-result v4

    #@790
    if-eqz v4, :cond_1b

    #@792
    const/16 v26, 0x1

    #@794
    .line 749
    .restart local v26    # "_arg1":Z
    :goto_1b
    move-object/from16 v0, p0

    #@796
    move/from16 v1, v26

    #@798
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallChainEnabled(IZ)V

    #@79b
    .line 750
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79e
    .line 751
    const/4 v4, 0x1

    #@79f
    return v4

    #@7a0
    .line 748
    .end local v26    # "_arg1":Z
    :cond_1b
    const/16 v26, 0x0

    #@7a2
    goto :goto_1b

    #@7a3
    .line 755
    .end local v10    # "_arg0":I
    :sswitch_41
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@7a6
    move-object/from16 v0, p2

    #@7a8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7ab
    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7ae
    move-result v10

    #@7af
    .line 759
    .restart local v10    # "_arg0":I
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7b1
    move-object/from16 v0, p2

    #@7b3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@7b6
    move-result-object v28

    #@7b7
    check-cast v28, [Landroid/net/UidRange;

    #@7b9
    .line 760
    .local v28, "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    #@7bb
    move-object/from16 v1, v28

    #@7bd
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->addVpnUidRanges(I[Landroid/net/UidRange;)V

    #@7c0
    .line 761
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c3
    .line 762
    const/4 v4, 0x1

    #@7c4
    return v4

    #@7c5
    .line 766
    .end local v10    # "_arg0":I
    .end local v28    # "_arg1":[Landroid/net/UidRange;
    :sswitch_42
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@7c8
    move-object/from16 v0, p2

    #@7ca
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7cd
    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7d0
    move-result v10

    #@7d1
    .line 770
    .restart local v10    # "_arg0":I
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7d3
    move-object/from16 v0, p2

    #@7d5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@7d8
    move-result-object v28

    #@7d9
    check-cast v28, [Landroid/net/UidRange;

    #@7db
    .line 771
    .restart local v28    # "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    #@7dd
    move-object/from16 v1, v28

    #@7df
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->removeVpnUidRanges(I[Landroid/net/UidRange;)V

    #@7e2
    .line 772
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e5
    .line 773
    const/4 v4, 0x1

    #@7e6
    return v4

    #@7e7
    .line 777
    .end local v10    # "_arg0":I
    .end local v28    # "_arg1":[Landroid/net/UidRange;
    :sswitch_43
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@7ea
    move-object/from16 v0, p2

    #@7ec
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7ef
    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7f2
    move-result-object v5

    #@7f3
    .line 780
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7f5
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->startClatd(Ljava/lang/String;)V

    #@7f8
    .line 781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7fb
    .line 782
    const/4 v4, 0x1

    #@7fc
    return v4

    #@7fd
    .line 786
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_44
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@800
    move-object/from16 v0, p2

    #@802
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@805
    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@808
    move-result-object v5

    #@809
    .line 789
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@80b
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->stopClatd(Ljava/lang/String;)V

    #@80e
    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@811
    .line 791
    const/4 v4, 0x1

    #@812
    return v4

    #@813
    .line 795
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_45
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@816
    move-object/from16 v0, p2

    #@818
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@81b
    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@81e
    move-result-object v5

    #@81f
    .line 798
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@821
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->isClatdStarted(Ljava/lang/String;)Z

    #@824
    move-result v35

    #@825
    .line 799
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@828
    .line 800
    if-eqz v35, :cond_1c

    #@82a
    const/4 v4, 0x1

    #@82b
    :goto_1c
    move-object/from16 v0, p3

    #@82d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@830
    .line 801
    const/4 v4, 0x1

    #@831
    return v4

    #@832
    .line 800
    :cond_1c
    const/4 v4, 0x0

    #@833
    goto :goto_1c

    #@834
    .line 805
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":Z
    :sswitch_46
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@837
    move-object/from16 v0, p2

    #@839
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83c
    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@83f
    move-result-object v4

    #@840
    invoke-static {v4}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    #@843
    move-result-object v16

    #@844
    .line 808
    .local v16, "_arg0":Landroid/os/INetworkActivityListener;
    move-object/from16 v0, p0

    #@846
    move-object/from16 v1, v16

    #@848
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    #@84b
    .line 809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@84e
    .line 810
    const/4 v4, 0x1

    #@84f
    return v4

    #@850
    .line 814
    .end local v16    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_47
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@853
    move-object/from16 v0, p2

    #@855
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@858
    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@85b
    move-result-object v4

    #@85c
    invoke-static {v4}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    #@85f
    move-result-object v16

    #@860
    .line 817
    .restart local v16    # "_arg0":Landroid/os/INetworkActivityListener;
    move-object/from16 v0, p0

    #@862
    move-object/from16 v1, v16

    #@864
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    #@867
    .line 818
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@86a
    .line 819
    const/4 v4, 0x1

    #@86b
    return v4

    #@86c
    .line 823
    .end local v16    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_48
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@86f
    move-object/from16 v0, p2

    #@871
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@874
    .line 824
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isNetworkActive()Z

    #@877
    move-result v35

    #@878
    .line 825
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@87b
    .line 826
    if-eqz v35, :cond_1d

    #@87d
    const/4 v4, 0x1

    #@87e
    :goto_1d
    move-object/from16 v0, p3

    #@880
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@883
    .line 827
    const/4 v4, 0x1

    #@884
    return v4

    #@885
    .line 826
    :cond_1d
    const/4 v4, 0x0

    #@886
    goto :goto_1d

    #@887
    .line 831
    .end local v35    # "_result":Z
    :sswitch_49
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@88a
    move-object/from16 v0, p2

    #@88c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@88f
    .line 833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@892
    move-result v10

    #@893
    .line 835
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@896
    move-result-object v6

    #@897
    .line 836
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@899
    invoke-virtual {v0, v10, v6}, Landroid/os/INetworkManagementService$Stub;->createPhysicalNetwork(ILjava/lang/String;)V

    #@89c
    .line 837
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@89f
    .line 838
    const/4 v4, 0x1

    #@8a0
    return v4

    #@8a1
    .line 842
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg0":I
    :sswitch_4a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@8a4
    move-object/from16 v0, p2

    #@8a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8a9
    .line 844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8ac
    move-result v10

    #@8ad
    .line 846
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b0
    move-result v4

    #@8b1
    if-eqz v4, :cond_1e

    #@8b3
    const/16 v26, 0x1

    #@8b5
    .line 848
    .local v26, "_arg1":Z
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b8
    move-result v4

    #@8b9
    if-eqz v4, :cond_1f

    #@8bb
    const/16 v31, 0x1

    #@8bd
    .line 849
    .restart local v31    # "_arg2":Z
    :goto_1f
    move-object/from16 v0, p0

    #@8bf
    move/from16 v1, v26

    #@8c1
    move/from16 v2, v31

    #@8c3
    invoke-virtual {v0, v10, v1, v2}, Landroid/os/INetworkManagementService$Stub;->createVirtualNetwork(IZZ)V

    #@8c6
    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c9
    .line 851
    const/4 v4, 0x1

    #@8ca
    return v4

    #@8cb
    .line 846
    .end local v26    # "_arg1":Z
    .end local v31    # "_arg2":Z
    :cond_1e
    const/16 v26, 0x0

    #@8cd
    .restart local v26    # "_arg1":Z
    goto :goto_1e

    #@8ce
    .line 848
    :cond_1f
    const/16 v31, 0x0

    #@8d0
    goto :goto_1f

    #@8d1
    .line 855
    .end local v10    # "_arg0":I
    .end local v26    # "_arg1":Z
    :sswitch_4b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@8d4
    move-object/from16 v0, p2

    #@8d6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d9
    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8dc
    move-result v10

    #@8dd
    .line 858
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@8df
    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->removeNetwork(I)V

    #@8e2
    .line 859
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8e5
    .line 860
    const/4 v4, 0x1

    #@8e6
    return v4

    #@8e7
    .line 864
    .end local v10    # "_arg0":I
    :sswitch_4c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@8ea
    move-object/from16 v0, p2

    #@8ec
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8ef
    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8f2
    move-result-object v5

    #@8f3
    .line 868
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8f6
    move-result v20

    #@8f7
    .line 869
    .restart local v20    # "_arg1":I
    move-object/from16 v0, p0

    #@8f9
    move/from16 v1, v20

    #@8fb
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToNetwork(Ljava/lang/String;I)V

    #@8fe
    .line 870
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@901
    .line 871
    const/4 v4, 0x1

    #@902
    return v4

    #@903
    .line 875
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":I
    :sswitch_4d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@906
    move-object/from16 v0, p2

    #@908
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@90b
    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@90e
    move-result-object v5

    #@90f
    .line 879
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@912
    move-result v20

    #@913
    .line 880
    .restart local v20    # "_arg1":I
    move-object/from16 v0, p0

    #@915
    move/from16 v1, v20

    #@917
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromNetwork(Ljava/lang/String;I)V

    #@91a
    .line 881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@91d
    .line 882
    const/4 v4, 0x1

    #@91e
    return v4

    #@91f
    .line 886
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":I
    :sswitch_4e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@922
    move-object/from16 v0, p2

    #@924
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@927
    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@92a
    move-result v10

    #@92b
    .line 890
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@92e
    move-result v4

    #@92f
    if-eqz v4, :cond_20

    #@931
    .line 891
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@933
    move-object/from16 v0, p2

    #@935
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@938
    move-result-object v24

    #@939
    check-cast v24, Landroid/net/RouteInfo;

    #@93b
    .line 897
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@93e
    move-result v30

    #@93f
    .line 898
    .restart local v30    # "_arg2":I
    move-object/from16 v0, p0

    #@941
    move-object/from16 v1, v24

    #@943
    move/from16 v2, v30

    #@945
    invoke-virtual {v0, v10, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V

    #@948
    .line 899
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@94b
    .line 900
    const/4 v4, 0x1

    #@94c
    return v4

    #@94d
    .line 894
    .end local v30    # "_arg2":I
    :cond_20
    const/16 v24, 0x0

    #@94f
    .restart local v24    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_20

    #@950
    .line 904
    .end local v10    # "_arg0":I
    .end local v24    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_4f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@953
    move-object/from16 v0, p2

    #@955
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@958
    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@95b
    move-result v10

    #@95c
    .line 907
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@95e
    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->setDefaultNetId(I)V

    #@961
    .line 908
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@964
    .line 909
    const/4 v4, 0x1

    #@965
    return v4

    #@966
    .line 913
    .end local v10    # "_arg0":I
    :sswitch_50
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@969
    move-object/from16 v0, p2

    #@96b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96e
    .line 914
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->clearDefaultNetId()V

    #@971
    .line 915
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@974
    .line 916
    const/4 v4, 0x1

    #@975
    return v4

    #@976
    .line 920
    :sswitch_51
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@979
    move-object/from16 v0, p2

    #@97b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@97e
    .line 922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@981
    move-result v10

    #@982
    .line 924
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@985
    move-result-object v6

    #@986
    .line 925
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@988
    invoke-virtual {v0, v10, v6}, Landroid/os/INetworkManagementService$Stub;->setNetworkPermission(ILjava/lang/String;)V

    #@98b
    .line 926
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@98e
    .line 927
    const/4 v4, 0x1

    #@98f
    return v4

    #@990
    .line 931
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg0":I
    :sswitch_52
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@993
    move-object/from16 v0, p2

    #@995
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@998
    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@99b
    move-result-object v5

    #@99c
    .line 935
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@99f
    move-result-object v27

    #@9a0
    .line 936
    .restart local v27    # "_arg1":[I
    move-object/from16 v0, p0

    #@9a2
    move-object/from16 v1, v27

    #@9a4
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setPermission(Ljava/lang/String;[I)V

    #@9a7
    .line 937
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9aa
    .line 938
    const/4 v4, 0x1

    #@9ab
    return v4

    #@9ac
    .line 942
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":[I
    :sswitch_53
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@9af
    move-object/from16 v0, p2

    #@9b1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9b4
    .line 944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@9b7
    move-result-object v18

    #@9b8
    .line 945
    .local v18, "_arg0":[I
    move-object/from16 v0, p0

    #@9ba
    move-object/from16 v1, v18

    #@9bc
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->clearPermission([I)V

    #@9bf
    .line 946
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9c2
    .line 947
    const/4 v4, 0x1

    #@9c3
    return v4

    #@9c4
    .line 951
    .end local v18    # "_arg0":[I
    :sswitch_54
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@9c7
    move-object/from16 v0, p2

    #@9c9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9cc
    .line 953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9cf
    move-result v10

    #@9d0
    .line 954
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@9d2
    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->allowProtect(I)V

    #@9d5
    .line 955
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9d8
    .line 956
    const/4 v4, 0x1

    #@9d9
    return v4

    #@9da
    .line 960
    .end local v10    # "_arg0":I
    :sswitch_55
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@9dd
    move-object/from16 v0, p2

    #@9df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9e2
    .line 962
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9e5
    move-result v10

    #@9e6
    .line 963
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@9e8
    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->denyProtect(I)V

    #@9eb
    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9ee
    .line 965
    const/4 v4, 0x1

    #@9ef
    return v4

    #@9f0
    .line 969
    .end local v10    # "_arg0":I
    :sswitch_56
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@9f3
    move-object/from16 v0, p2

    #@9f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9f8
    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9fb
    move-result-object v5

    #@9fc
    .line 973
    .restart local v5    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9fe
    move-object/from16 v0, p2

    #@a00
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@a03
    move-result-object v25

    #@a04
    .line 974
    .local v25, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, p0

    #@a06
    move-object/from16 v1, v25

    #@a08
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    #@a0b
    .line 975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a0e
    .line 976
    const/4 v4, 0x1

    #@a0f
    return v4

    #@a10
    .line 980
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :sswitch_57
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@a13
    move-object/from16 v0, p2

    #@a15
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a18
    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a1b
    move-result-object v5

    #@a1c
    .line 983
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a1e
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    #@a21
    .line 984
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a24
    .line 985
    const/4 v4, 0x1

    #@a25
    return v4

    #@a26
    .line 989
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_58
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@a29
    move-object/from16 v0, p2

    #@a2b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2e
    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a31
    move-result v4

    #@a32
    if-eqz v4, :cond_21

    #@a34
    const/16 v17, 0x1

    #@a36
    .line 993
    .local v17, "_arg0":Z
    :goto_21
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a38
    move-object/from16 v0, p2

    #@a3a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@a3d
    move-result-object v28

    #@a3e
    check-cast v28, [Landroid/net/UidRange;

    #@a40
    .line 994
    .restart local v28    # "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    #@a42
    move/from16 v1, v17

    #@a44
    move-object/from16 v2, v28

    #@a46
    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V

    #@a49
    .line 995
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a4c
    .line 996
    const/4 v4, 0x1

    #@a4d
    return v4

    #@a4e
    .line 991
    .end local v17    # "_arg0":Z
    .end local v28    # "_arg1":[Landroid/net/UidRange;
    :cond_21
    const/16 v17, 0x0

    #@a50
    .restart local v17    # "_arg0":Z
    goto :goto_21

    #@a51
    .line 41
    nop

    #@a52
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

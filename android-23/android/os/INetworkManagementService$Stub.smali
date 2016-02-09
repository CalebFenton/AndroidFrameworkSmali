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

.field static final TRANSACTION_addIdleTimer:I = 0x34

.field static final TRANSACTION_addInterfaceToLocalNetwork:I = 0x55

.field static final TRANSACTION_addInterfaceToNetwork:I = 0x4b

.field static final TRANSACTION_addLegacyRouteForNetId:I = 0x4d

.field static final TRANSACTION_addRoute:I = 0xe

.field static final TRANSACTION_addVpnUidRanges:I = 0x40

.field static final TRANSACTION_allowProtect:I = 0x53

.field static final TRANSACTION_attachPppd:I = 0x21

.field static final TRANSACTION_clearDefaultNetId:I = 0x4f

.field static final TRANSACTION_clearInterfaceAddresses:I = 0x6

.field static final TRANSACTION_clearPermission:I = 0x52

.field static final TRANSACTION_createPhysicalNetwork:I = 0x48

.field static final TRANSACTION_createVirtualNetwork:I = 0x49

.field static final TRANSACTION_denyProtect:I = 0x54

.field static final TRANSACTION_detachPppd:I = 0x22

.field static final TRANSACTION_disableIpv6:I = 0xa

.field static final TRANSACTION_disableNat:I = 0x1f

.field static final TRANSACTION_enableIpv6:I = 0xb

.field static final TRANSACTION_enableNat:I = 0x1e

.field static final TRANSACTION_flushNetworkDnsCache:I = 0x37

.field static final TRANSACTION_getDnsForwarders:I = 0x1b

.field static final TRANSACTION_getInterfaceConfig:I = 0x4

.field static final TRANSACTION_getIpForwardingEnabled:I = 0x12

.field static final TRANSACTION_getNetworkStatsDetail:I = 0x29

.field static final TRANSACTION_getNetworkStatsSummaryDev:I = 0x27

.field static final TRANSACTION_getNetworkStatsSummaryXt:I = 0x28

.field static final TRANSACTION_getNetworkStatsTethering:I = 0x2b

.field static final TRANSACTION_getNetworkStatsUidDetail:I = 0x2a

.field static final TRANSACTION_getRoutes:I = 0xd

.field static final TRANSACTION_isBandwidthControlEnabled:I = 0x33

.field static final TRANSACTION_isClatdStarted:I = 0x44

.field static final TRANSACTION_isFirewallEnabled:I = 0x39

.field static final TRANSACTION_isNetworkActive:I = 0x47

.field static final TRANSACTION_isTetheringStarted:I = 0x16

.field static final TRANSACTION_listInterfaces:I = 0x3

.field static final TRANSACTION_listTetheredInterfaces:I = 0x19

.field static final TRANSACTION_listTtys:I = 0x20

.field static final TRANSACTION_registerNetworkActivityListener:I = 0x45

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_removeIdleTimer:I = 0x35

.field static final TRANSACTION_removeInterfaceAlert:I = 0x2f

.field static final TRANSACTION_removeInterfaceFromLocalNetwork:I = 0x56

.field static final TRANSACTION_removeInterfaceFromNetwork:I = 0x4c

.field static final TRANSACTION_removeInterfaceQuota:I = 0x2d

.field static final TRANSACTION_removeNetwork:I = 0x4a

.field static final TRANSACTION_removeRoute:I = 0xf

.field static final TRANSACTION_removeVpnUidRanges:I = 0x41

.field static final TRANSACTION_setAccessPoint:I = 0x26

.field static final TRANSACTION_setDefaultNetId:I = 0x4e

.field static final TRANSACTION_setDnsForwarders:I = 0x1a

.field static final TRANSACTION_setDnsServersForNetwork:I = 0x36

.field static final TRANSACTION_setFirewallChainEnabled:I = 0x3f

.field static final TRANSACTION_setFirewallEgressDestRule:I = 0x3c

.field static final TRANSACTION_setFirewallEgressSourceRule:I = 0x3b

.field static final TRANSACTION_setFirewallEnabled:I = 0x38

.field static final TRANSACTION_setFirewallInterfaceRule:I = 0x3a

.field static final TRANSACTION_setFirewallUidRule:I = 0x3d

.field static final TRANSACTION_setFirewallUidRules:I = 0x3e

.field static final TRANSACTION_setGlobalAlert:I = 0x30

.field static final TRANSACTION_setInterfaceAlert:I = 0x2e

.field static final TRANSACTION_setInterfaceConfig:I = 0x5

.field static final TRANSACTION_setInterfaceDown:I = 0x7

.field static final TRANSACTION_setInterfaceIpv6NdOffload:I = 0xc

.field static final TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0x9

.field static final TRANSACTION_setInterfaceQuota:I = 0x2c

.field static final TRANSACTION_setInterfaceUp:I = 0x8

.field static final TRANSACTION_setIpForwardingEnabled:I = 0x13

.field static final TRANSACTION_setMtu:I = 0x10

.field static final TRANSACTION_setNetworkPermission:I = 0x50

.field static final TRANSACTION_setPermission:I = 0x51

.field static final TRANSACTION_setUidCleartextNetworkPolicy:I = 0x32

.field static final TRANSACTION_setUidNetworkRules:I = 0x31

.field static final TRANSACTION_shutdown:I = 0x11

.field static final TRANSACTION_startAccessPoint:I = 0x24

.field static final TRANSACTION_startClatd:I = 0x42

.field static final TRANSACTION_startInterfaceForwarding:I = 0x1c

.field static final TRANSACTION_startTethering:I = 0x14

.field static final TRANSACTION_stopAccessPoint:I = 0x25

.field static final TRANSACTION_stopClatd:I = 0x43

.field static final TRANSACTION_stopInterfaceForwarding:I = 0x1d

.field static final TRANSACTION_stopTethering:I = 0x15

.field static final TRANSACTION_tetherInterface:I = 0x17

.field static final TRANSACTION_unregisterNetworkActivityListener:I = 0x46

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
    .locals 38
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
    .line 973
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
    move-result-object v37

    #@52
    .line 70
    .local v37, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@55
    .line 71
    move-object/from16 v0, p3

    #@57
    move-object/from16 v1, v37

    #@59
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@5c
    .line 72
    const/4 v4, 0x1

    #@5d
    return v4

    #@5e
    .line 76
    .end local v37    # "_result":[Ljava/lang/String;
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
    .restart local v26    # "_arg1":Z
    goto :goto_2

    #@11c
    .line 146
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Z
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
    .restart local v26    # "_arg1":Z
    goto :goto_3

    #@16b
    .line 175
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Z
    :sswitch_d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@16e
    move-object/from16 v0, p2

    #@170
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@173
    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@176
    move-result-object v5

    #@177
    .line 178
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@179
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;

    #@17c
    move-result-object v36

    #@17d
    .line 179
    .local v36, "_result":[Landroid/net/RouteInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@180
    .line 180
    const/4 v4, 0x1

    #@181
    move-object/from16 v0, p3

    #@183
    move-object/from16 v1, v36

    #@185
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@188
    .line 181
    const/4 v4, 0x1

    #@189
    return v4

    #@18a
    .line 185
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":[Landroid/net/RouteInfo;
    :sswitch_e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@18d
    move-object/from16 v0, p2

    #@18f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@192
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@195
    move-result v10

    #@196
    .line 189
    .local v10, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@199
    move-result v4

    #@19a
    if-eqz v4, :cond_4

    #@19c
    .line 190
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19e
    move-object/from16 v0, p2

    #@1a0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a3
    move-result-object v24

    #@1a4
    check-cast v24, Landroid/net/RouteInfo;

    #@1a6
    .line 195
    :goto_4
    move-object/from16 v0, p0

    #@1a8
    move-object/from16 v1, v24

    #@1aa
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->addRoute(ILandroid/net/RouteInfo;)V

    #@1ad
    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b0
    .line 197
    const/4 v4, 0x1

    #@1b1
    return v4

    #@1b2
    .line 193
    :cond_4
    const/16 v24, 0x0

    #@1b4
    .local v24, "_arg1":Landroid/net/RouteInfo;
    goto :goto_4

    #@1b5
    .line 201
    .end local v10    # "_arg0":I
    .end local v24    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@1b8
    move-object/from16 v0, p2

    #@1ba
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bd
    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c0
    move-result v10

    #@1c1
    .line 205
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c4
    move-result v4

    #@1c5
    if-eqz v4, :cond_5

    #@1c7
    .line 206
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c9
    move-object/from16 v0, p2

    #@1cb
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ce
    move-result-object v24

    #@1cf
    check-cast v24, Landroid/net/RouteInfo;

    #@1d1
    .line 211
    :goto_5
    move-object/from16 v0, p0

    #@1d3
    move-object/from16 v1, v24

    #@1d5
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->removeRoute(ILandroid/net/RouteInfo;)V

    #@1d8
    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1db
    .line 213
    const/4 v4, 0x1

    #@1dc
    return v4

    #@1dd
    .line 209
    :cond_5
    const/16 v24, 0x0

    #@1df
    .restart local v24    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_5

    #@1e0
    .line 217
    .end local v10    # "_arg0":I
    .end local v24    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_10
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@1e3
    move-object/from16 v0, p2

    #@1e5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e8
    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1eb
    move-result-object v5

    #@1ec
    .line 221
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ef
    move-result v20

    #@1f0
    .line 222
    .local v20, "_arg1":I
    move-object/from16 v0, p0

    #@1f2
    move/from16 v1, v20

    #@1f4
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setMtu(Ljava/lang/String;I)V

    #@1f7
    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fa
    .line 224
    const/4 v4, 0x1

    #@1fb
    return v4

    #@1fc
    .line 228
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":I
    :sswitch_11
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@1ff
    move-object/from16 v0, p2

    #@201
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@204
    .line 229
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    #@207
    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20a
    .line 231
    const/4 v4, 0x1

    #@20b
    return v4

    #@20c
    .line 235
    :sswitch_12
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@20f
    move-object/from16 v0, p2

    #@211
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@214
    .line 236
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    #@217
    move-result v35

    #@218
    .line 237
    .local v35, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21b
    .line 238
    if-eqz v35, :cond_6

    #@21d
    const/4 v4, 0x1

    #@21e
    :goto_6
    move-object/from16 v0, p3

    #@220
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@223
    .line 239
    const/4 v4, 0x1

    #@224
    return v4

    #@225
    .line 238
    :cond_6
    const/4 v4, 0x0

    #@226
    goto :goto_6

    #@227
    .line 243
    .end local v35    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@22a
    move-object/from16 v0, p2

    #@22c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22f
    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@232
    move-result v4

    #@233
    if-eqz v4, :cond_7

    #@235
    const/16 v17, 0x1

    #@237
    .line 246
    .local v17, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    #@239
    move/from16 v1, v17

    #@23b
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    #@23e
    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@241
    .line 248
    const/4 v4, 0x1

    #@242
    return v4

    #@243
    .line 245
    .end local v17    # "_arg0":Z
    :cond_7
    const/16 v17, 0x0

    #@245
    .restart local v17    # "_arg0":Z
    goto :goto_7

    #@246
    .line 252
    .end local v17    # "_arg0":Z
    :sswitch_14
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@249
    move-object/from16 v0, p2

    #@24b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24e
    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@251
    move-result-object v19

    #@252
    .line 255
    .local v19, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@254
    move-object/from16 v1, v19

    #@256
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    #@259
    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25c
    .line 257
    const/4 v4, 0x1

    #@25d
    return v4

    #@25e
    .line 261
    .end local v19    # "_arg0":[Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@261
    move-object/from16 v0, p2

    #@263
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@266
    .line 262
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    #@269
    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26c
    .line 264
    const/4 v4, 0x1

    #@26d
    return v4

    #@26e
    .line 268
    :sswitch_16
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@271
    move-object/from16 v0, p2

    #@273
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@276
    .line 269
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    #@279
    move-result v35

    #@27a
    .line 270
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27d
    .line 271
    if-eqz v35, :cond_8

    #@27f
    const/4 v4, 0x1

    #@280
    :goto_8
    move-object/from16 v0, p3

    #@282
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@285
    .line 272
    const/4 v4, 0x1

    #@286
    return v4

    #@287
    .line 271
    :cond_8
    const/4 v4, 0x0

    #@288
    goto :goto_8

    #@289
    .line 276
    .end local v35    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@28c
    move-object/from16 v0, p2

    #@28e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@291
    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@294
    move-result-object v5

    #@295
    .line 279
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@297
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    #@29a
    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29d
    .line 281
    const/4 v4, 0x1

    #@29e
    return v4

    #@29f
    .line 285
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@2a2
    move-object/from16 v0, p2

    #@2a4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a7
    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2aa
    move-result-object v5

    #@2ab
    .line 288
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2ad
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    #@2b0
    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b3
    .line 290
    const/4 v4, 0x1

    #@2b4
    return v4

    #@2b5
    .line 294
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@2b8
    move-object/from16 v0, p2

    #@2ba
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2bd
    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    #@2c0
    move-result-object v37

    #@2c1
    .line 296
    .restart local v37    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c4
    .line 297
    move-object/from16 v0, p3

    #@2c6
    move-object/from16 v1, v37

    #@2c8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@2cb
    .line 298
    const/4 v4, 0x1

    #@2cc
    return v4

    #@2cd
    .line 302
    .end local v37    # "_result":[Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@2d0
    move-object/from16 v0, p2

    #@2d2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d5
    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d8
    move-result v4

    #@2d9
    if-eqz v4, :cond_9

    #@2db
    .line 305
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2dd
    move-object/from16 v0, p2

    #@2df
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e2
    move-result-object v14

    #@2e3
    check-cast v14, Landroid/net/Network;

    #@2e5
    .line 311
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@2e8
    move-result-object v29

    #@2e9
    .line 312
    .local v29, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@2eb
    move-object/from16 v1, v29

    #@2ed
    invoke-virtual {v0, v14, v1}, Landroid/os/INetworkManagementService$Stub;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V

    #@2f0
    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f3
    .line 314
    const/4 v4, 0x1

    #@2f4
    return v4

    #@2f5
    .line 308
    .end local v29    # "_arg1":[Ljava/lang/String;
    :cond_9
    const/4 v14, 0x0

    #@2f6
    .local v14, "_arg0":Landroid/net/Network;
    goto :goto_9

    #@2f7
    .line 318
    .end local v14    # "_arg0":Landroid/net/Network;
    :sswitch_1b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@2fa
    move-object/from16 v0, p2

    #@2fc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ff
    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    #@302
    move-result-object v37

    #@303
    .line 320
    .restart local v37    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@306
    .line 321
    move-object/from16 v0, p3

    #@308
    move-object/from16 v1, v37

    #@30a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@30d
    .line 322
    const/4 v4, 0x1

    #@30e
    return v4

    #@30f
    .line 326
    .end local v37    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@312
    move-object/from16 v0, p2

    #@314
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@317
    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31a
    move-result-object v5

    #@31b
    .line 330
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31e
    move-result-object v6

    #@31f
    .line 331
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@321
    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    #@324
    .line 332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@327
    .line 333
    const/4 v4, 0x1

    #@328
    return v4

    #@329
    .line 337
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@32c
    move-object/from16 v0, p2

    #@32e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@331
    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@334
    move-result-object v5

    #@335
    .line 341
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@338
    move-result-object v6

    #@339
    .line 342
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@33b
    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    #@33e
    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@341
    .line 344
    const/4 v4, 0x1

    #@342
    return v4

    #@343
    .line 348
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@346
    move-object/from16 v0, p2

    #@348
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34b
    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@34e
    move-result-object v5

    #@34f
    .line 352
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@352
    move-result-object v6

    #@353
    .line 353
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@355
    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    #@358
    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@35b
    .line 355
    const/4 v4, 0x1

    #@35c
    return v4

    #@35d
    .line 359
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@360
    move-object/from16 v0, p2

    #@362
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@365
    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@368
    move-result-object v5

    #@369
    .line 363
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36c
    move-result-object v6

    #@36d
    .line 364
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@36f
    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    #@372
    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@375
    .line 366
    const/4 v4, 0x1

    #@376
    return v4

    #@377
    .line 370
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@37a
    move-object/from16 v0, p2

    #@37c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37f
    .line 371
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listTtys()[Ljava/lang/String;

    #@382
    move-result-object v37

    #@383
    .line 372
    .restart local v37    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@386
    .line 373
    move-object/from16 v0, p3

    #@388
    move-object/from16 v1, v37

    #@38a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@38d
    .line 374
    const/4 v4, 0x1

    #@38e
    return v4

    #@38f
    .line 378
    .end local v37    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@392
    move-object/from16 v0, p2

    #@394
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@397
    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39a
    move-result-object v5

    #@39b
    .line 382
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39e
    move-result-object v6

    #@39f
    .line 384
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a2
    move-result-object v7

    #@3a3
    .line 386
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a6
    move-result-object v8

    #@3a7
    .line 388
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3aa
    move-result-object v9

    #@3ab
    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    #@3ad
    .line 389
    invoke-virtual/range {v4 .. v9}, Landroid/os/INetworkManagementService$Stub;->attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3b0
    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b3
    .line 391
    const/4 v4, 0x1

    #@3b4
    return v4

    #@3b5
    .line 395
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@3b8
    move-object/from16 v0, p2

    #@3ba
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3bd
    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c0
    move-result-object v5

    #@3c1
    .line 398
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3c3
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->detachPppd(Ljava/lang/String;)V

    #@3c6
    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c9
    .line 400
    const/4 v4, 0x1

    #@3ca
    return v4

    #@3cb
    .line 404
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@3ce
    move-object/from16 v0, p2

    #@3d0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d3
    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d6
    move-result-object v5

    #@3d7
    .line 408
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3da
    move-result-object v6

    #@3db
    .line 409
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3dd
    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    #@3e0
    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e3
    .line 411
    const/4 v4, 0x1

    #@3e4
    return v4

    #@3e5
    .line 415
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_24
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@3e8
    move-object/from16 v0, p2

    #@3ea
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ed
    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f0
    move-result v4

    #@3f1
    if-eqz v4, :cond_a

    #@3f3
    .line 418
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3f5
    move-object/from16 v0, p2

    #@3f7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3fa
    move-result-object v15

    #@3fb
    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    #@3fd
    .line 424
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@400
    move-result-object v6

    #@401
    .line 425
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@403
    invoke-virtual {v0, v15, v6}, Landroid/os/INetworkManagementService$Stub;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    #@406
    .line 426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@409
    .line 427
    const/4 v4, 0x1

    #@40a
    return v4

    #@40b
    .line 421
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_a
    const/4 v15, 0x0

    #@40c
    .local v15, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_a

    #@40d
    .line 431
    .end local v15    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_25
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@410
    move-object/from16 v0, p2

    #@412
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@415
    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@418
    move-result-object v5

    #@419
    .line 434
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@41b
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->stopAccessPoint(Ljava/lang/String;)V

    #@41e
    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@421
    .line 436
    const/4 v4, 0x1

    #@422
    return v4

    #@423
    .line 440
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@426
    move-object/from16 v0, p2

    #@428
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42b
    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@42e
    move-result v4

    #@42f
    if-eqz v4, :cond_b

    #@431
    .line 443
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@433
    move-object/from16 v0, p2

    #@435
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@438
    move-result-object v15

    #@439
    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    #@43b
    .line 449
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@43e
    move-result-object v6

    #@43f
    .line 450
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@441
    invoke-virtual {v0, v15, v6}, Landroid/os/INetworkManagementService$Stub;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    #@444
    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@447
    .line 452
    const/4 v4, 0x1

    #@448
    return v4

    #@449
    .line 446
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_b
    const/4 v15, 0x0

    #@44a
    .restart local v15    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_b

    #@44b
    .line 456
    .end local v15    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_27
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@44e
    move-object/from16 v0, p2

    #@450
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@453
    .line 457
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    #@456
    move-result-object v34

    #@457
    .line 458
    .local v34, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@45a
    .line 459
    if-eqz v34, :cond_c

    #@45c
    .line 460
    const/4 v4, 0x1

    #@45d
    move-object/from16 v0, p3

    #@45f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@462
    .line 461
    const/4 v4, 0x1

    #@463
    move-object/from16 v0, v34

    #@465
    move-object/from16 v1, p3

    #@467
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@46a
    .line 466
    :goto_c
    const/4 v4, 0x1

    #@46b
    return v4

    #@46c
    .line 464
    :cond_c
    const/4 v4, 0x0

    #@46d
    move-object/from16 v0, p3

    #@46f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@472
    goto :goto_c

    #@473
    .line 470
    .end local v34    # "_result":Landroid/net/NetworkStats;
    :sswitch_28
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@476
    move-object/from16 v0, p2

    #@478
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47b
    .line 471
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    #@47e
    move-result-object v34

    #@47f
    .line 472
    .restart local v34    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@482
    .line 473
    if-eqz v34, :cond_d

    #@484
    .line 474
    const/4 v4, 0x1

    #@485
    move-object/from16 v0, p3

    #@487
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@48a
    .line 475
    const/4 v4, 0x1

    #@48b
    move-object/from16 v0, v34

    #@48d
    move-object/from16 v1, p3

    #@48f
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@492
    .line 480
    :goto_d
    const/4 v4, 0x1

    #@493
    return v4

    #@494
    .line 478
    :cond_d
    const/4 v4, 0x0

    #@495
    move-object/from16 v0, p3

    #@497
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@49a
    goto :goto_d

    #@49b
    .line 484
    .end local v34    # "_result":Landroid/net/NetworkStats;
    :sswitch_29
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@49e
    move-object/from16 v0, p2

    #@4a0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a3
    .line 485
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    #@4a6
    move-result-object v34

    #@4a7
    .line 486
    .restart local v34    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4aa
    .line 487
    if-eqz v34, :cond_e

    #@4ac
    .line 488
    const/4 v4, 0x1

    #@4ad
    move-object/from16 v0, p3

    #@4af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4b2
    .line 489
    const/4 v4, 0x1

    #@4b3
    move-object/from16 v0, v34

    #@4b5
    move-object/from16 v1, p3

    #@4b7
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@4ba
    .line 494
    :goto_e
    const/4 v4, 0x1

    #@4bb
    return v4

    #@4bc
    .line 492
    :cond_e
    const/4 v4, 0x0

    #@4bd
    move-object/from16 v0, p3

    #@4bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4c2
    goto :goto_e

    #@4c3
    .line 498
    .end local v34    # "_result":Landroid/net/NetworkStats;
    :sswitch_2a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@4c6
    move-object/from16 v0, p2

    #@4c8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4cb
    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4ce
    move-result v10

    #@4cf
    .line 501
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@4d1
    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    #@4d4
    move-result-object v34

    #@4d5
    .line 502
    .restart local v34    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4d8
    .line 503
    if-eqz v34, :cond_f

    #@4da
    .line 504
    const/4 v4, 0x1

    #@4db
    move-object/from16 v0, p3

    #@4dd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4e0
    .line 505
    const/4 v4, 0x1

    #@4e1
    move-object/from16 v0, v34

    #@4e3
    move-object/from16 v1, p3

    #@4e5
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@4e8
    .line 510
    :goto_f
    const/4 v4, 0x1

    #@4e9
    return v4

    #@4ea
    .line 508
    :cond_f
    const/4 v4, 0x0

    #@4eb
    move-object/from16 v0, p3

    #@4ed
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4f0
    goto :goto_f

    #@4f1
    .line 514
    .end local v10    # "_arg0":I
    .end local v34    # "_result":Landroid/net/NetworkStats;
    :sswitch_2b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@4f4
    move-object/from16 v0, p2

    #@4f6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f9
    .line 515
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    #@4fc
    move-result-object v34

    #@4fd
    .line 516
    .restart local v34    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@500
    .line 517
    if-eqz v34, :cond_10

    #@502
    .line 518
    const/4 v4, 0x1

    #@503
    move-object/from16 v0, p3

    #@505
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@508
    .line 519
    const/4 v4, 0x1

    #@509
    move-object/from16 v0, v34

    #@50b
    move-object/from16 v1, p3

    #@50d
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@510
    .line 524
    :goto_10
    const/4 v4, 0x1

    #@511
    return v4

    #@512
    .line 522
    :cond_10
    const/4 v4, 0x0

    #@513
    move-object/from16 v0, p3

    #@515
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@518
    goto :goto_10

    #@519
    .line 528
    .end local v34    # "_result":Landroid/net/NetworkStats;
    :sswitch_2c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@51c
    move-object/from16 v0, p2

    #@51e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@521
    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@524
    move-result-object v5

    #@525
    .line 532
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@528
    move-result-wide v22

    #@529
    .line 533
    .local v22, "_arg1":J
    move-object/from16 v0, p0

    #@52b
    move-wide/from16 v1, v22

    #@52d
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    #@530
    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@533
    .line 535
    const/4 v4, 0x1

    #@534
    return v4

    #@535
    .line 539
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":J
    :sswitch_2d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@538
    move-object/from16 v0, p2

    #@53a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53d
    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@540
    move-result-object v5

    #@541
    .line 542
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@543
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    #@546
    .line 543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@549
    .line 544
    const/4 v4, 0x1

    #@54a
    return v4

    #@54b
    .line 548
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_2e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@54e
    move-object/from16 v0, p2

    #@550
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@553
    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@556
    move-result-object v5

    #@557
    .line 552
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@55a
    move-result-wide v22

    #@55b
    .line 553
    .restart local v22    # "_arg1":J
    move-object/from16 v0, p0

    #@55d
    move-wide/from16 v1, v22

    #@55f
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    #@562
    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@565
    .line 555
    const/4 v4, 0x1

    #@566
    return v4

    #@567
    .line 559
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":J
    :sswitch_2f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@56a
    move-object/from16 v0, p2

    #@56c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56f
    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@572
    move-result-object v5

    #@573
    .line 562
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@575
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    #@578
    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@57b
    .line 564
    const/4 v4, 0x1

    #@57c
    return v4

    #@57d
    .line 568
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_30
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@580
    move-object/from16 v0, p2

    #@582
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@585
    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@588
    move-result-wide v12

    #@589
    .line 571
    .local v12, "_arg0":J
    move-object/from16 v0, p0

    #@58b
    invoke-virtual {v0, v12, v13}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    #@58e
    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@591
    .line 573
    const/4 v4, 0x1

    #@592
    return v4

    #@593
    .line 577
    .end local v12    # "_arg0":J
    :sswitch_31
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@596
    move-object/from16 v0, p2

    #@598
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59b
    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@59e
    move-result v10

    #@59f
    .line 581
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a2
    move-result v4

    #@5a3
    if-eqz v4, :cond_11

    #@5a5
    const/16 v26, 0x1

    #@5a7
    .line 582
    .restart local v26    # "_arg1":Z
    :goto_11
    move-object/from16 v0, p0

    #@5a9
    move/from16 v1, v26

    #@5ab
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->setUidNetworkRules(IZ)V

    #@5ae
    .line 583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b1
    .line 584
    const/4 v4, 0x1

    #@5b2
    return v4

    #@5b3
    .line 581
    .end local v26    # "_arg1":Z
    :cond_11
    const/16 v26, 0x0

    #@5b5
    .restart local v26    # "_arg1":Z
    goto :goto_11

    #@5b6
    .line 588
    .end local v10    # "_arg0":I
    .end local v26    # "_arg1":Z
    :sswitch_32
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@5b9
    move-object/from16 v0, p2

    #@5bb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5be
    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c1
    move-result v10

    #@5c2
    .line 592
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c5
    move-result v20

    #@5c6
    .line 593
    .restart local v20    # "_arg1":I
    move-object/from16 v0, p0

    #@5c8
    move/from16 v1, v20

    #@5ca
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->setUidCleartextNetworkPolicy(II)V

    #@5cd
    .line 594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d0
    .line 595
    const/4 v4, 0x1

    #@5d1
    return v4

    #@5d2
    .line 599
    .end local v10    # "_arg0":I
    .end local v20    # "_arg1":I
    :sswitch_33
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@5d5
    move-object/from16 v0, p2

    #@5d7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5da
    .line 600
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    #@5dd
    move-result v35

    #@5de
    .line 601
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e1
    .line 602
    if-eqz v35, :cond_12

    #@5e3
    const/4 v4, 0x1

    #@5e4
    :goto_12
    move-object/from16 v0, p3

    #@5e6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5e9
    .line 603
    const/4 v4, 0x1

    #@5ea
    return v4

    #@5eb
    .line 602
    :cond_12
    const/4 v4, 0x0

    #@5ec
    goto :goto_12

    #@5ed
    .line 607
    .end local v35    # "_result":Z
    :sswitch_34
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@5f0
    move-object/from16 v0, p2

    #@5f2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f5
    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5f8
    move-result-object v5

    #@5f9
    .line 611
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5fc
    move-result v20

    #@5fd
    .line 613
    .restart local v20    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@600
    move-result v30

    #@601
    .line 614
    .local v30, "_arg2":I
    move-object/from16 v0, p0

    #@603
    move/from16 v1, v20

    #@605
    move/from16 v2, v30

    #@607
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addIdleTimer(Ljava/lang/String;II)V

    #@60a
    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@60d
    .line 616
    const/4 v4, 0x1

    #@60e
    return v4

    #@60f
    .line 620
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":I
    .end local v30    # "_arg2":I
    :sswitch_35
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@612
    move-object/from16 v0, p2

    #@614
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@617
    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@61a
    move-result-object v5

    #@61b
    .line 623
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@61d
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeIdleTimer(Ljava/lang/String;)V

    #@620
    .line 624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@623
    .line 625
    const/4 v4, 0x1

    #@624
    return v4

    #@625
    .line 629
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_36
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@628
    move-object/from16 v0, p2

    #@62a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62d
    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@630
    move-result v10

    #@631
    .line 633
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@634
    move-result-object v29

    #@635
    .line 635
    .restart local v29    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@638
    move-result-object v7

    #@639
    .line 636
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@63b
    move-object/from16 v1, v29

    #@63d
    invoke-virtual {v0, v10, v1, v7}, Landroid/os/INetworkManagementService$Stub;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    #@640
    .line 637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@643
    .line 638
    const/4 v4, 0x1

    #@644
    return v4

    #@645
    .line 642
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg0":I
    .end local v29    # "_arg1":[Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@648
    move-object/from16 v0, p2

    #@64a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64d
    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@650
    move-result v10

    #@651
    .line 645
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@653
    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->flushNetworkDnsCache(I)V

    #@656
    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@659
    .line 647
    const/4 v4, 0x1

    #@65a
    return v4

    #@65b
    .line 651
    .end local v10    # "_arg0":I
    :sswitch_38
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@65e
    move-object/from16 v0, p2

    #@660
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@663
    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@666
    move-result v4

    #@667
    if-eqz v4, :cond_13

    #@669
    const/16 v17, 0x1

    #@66b
    .line 654
    .restart local v17    # "_arg0":Z
    :goto_13
    move-object/from16 v0, p0

    #@66d
    move/from16 v1, v17

    #@66f
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    #@672
    .line 655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@675
    .line 656
    const/4 v4, 0x1

    #@676
    return v4

    #@677
    .line 653
    .end local v17    # "_arg0":Z
    :cond_13
    const/16 v17, 0x0

    #@679
    .restart local v17    # "_arg0":Z
    goto :goto_13

    #@67a
    .line 660
    .end local v17    # "_arg0":Z
    :sswitch_39
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@67d
    move-object/from16 v0, p2

    #@67f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@682
    .line 661
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    #@685
    move-result v35

    #@686
    .line 662
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@689
    .line 663
    if-eqz v35, :cond_14

    #@68b
    const/4 v4, 0x1

    #@68c
    :goto_14
    move-object/from16 v0, p3

    #@68e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@691
    .line 664
    const/4 v4, 0x1

    #@692
    return v4

    #@693
    .line 663
    :cond_14
    const/4 v4, 0x0

    #@694
    goto :goto_14

    #@695
    .line 668
    .end local v35    # "_result":Z
    :sswitch_3a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@698
    move-object/from16 v0, p2

    #@69a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@69d
    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6a0
    move-result-object v5

    #@6a1
    .line 672
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6a4
    move-result v4

    #@6a5
    if-eqz v4, :cond_15

    #@6a7
    const/16 v26, 0x1

    #@6a9
    .line 673
    .restart local v26    # "_arg1":Z
    :goto_15
    move-object/from16 v0, p0

    #@6ab
    move/from16 v1, v26

    #@6ad
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    #@6b0
    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6b3
    .line 675
    const/4 v4, 0x1

    #@6b4
    return v4

    #@6b5
    .line 672
    .end local v26    # "_arg1":Z
    :cond_15
    const/16 v26, 0x0

    #@6b7
    .restart local v26    # "_arg1":Z
    goto :goto_15

    #@6b8
    .line 679
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Z
    :sswitch_3b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@6bb
    move-object/from16 v0, p2

    #@6bd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c0
    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6c3
    move-result-object v5

    #@6c4
    .line 683
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6c7
    move-result v4

    #@6c8
    if-eqz v4, :cond_16

    #@6ca
    const/16 v26, 0x1

    #@6cc
    .line 684
    .restart local v26    # "_arg1":Z
    :goto_16
    move-object/from16 v0, p0

    #@6ce
    move/from16 v1, v26

    #@6d0
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    #@6d3
    .line 685
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d6
    .line 686
    const/4 v4, 0x1

    #@6d7
    return v4

    #@6d8
    .line 683
    .end local v26    # "_arg1":Z
    :cond_16
    const/16 v26, 0x0

    #@6da
    .restart local v26    # "_arg1":Z
    goto :goto_16

    #@6db
    .line 690
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Z
    :sswitch_3c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@6de
    move-object/from16 v0, p2

    #@6e0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e3
    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6e6
    move-result-object v5

    #@6e7
    .line 694
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ea
    move-result v20

    #@6eb
    .line 696
    .restart local v20    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ee
    move-result v4

    #@6ef
    if-eqz v4, :cond_17

    #@6f1
    const/16 v31, 0x1

    #@6f3
    .line 697
    .local v31, "_arg2":Z
    :goto_17
    move-object/from16 v0, p0

    #@6f5
    move/from16 v1, v20

    #@6f7
    move/from16 v2, v31

    #@6f9
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    #@6fc
    .line 698
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6ff
    .line 699
    const/4 v4, 0x1

    #@700
    return v4

    #@701
    .line 696
    .end local v31    # "_arg2":Z
    :cond_17
    const/16 v31, 0x0

    #@703
    .restart local v31    # "_arg2":Z
    goto :goto_17

    #@704
    .line 703
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":I
    .end local v31    # "_arg2":Z
    :sswitch_3d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@707
    move-object/from16 v0, p2

    #@709
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70c
    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@70f
    move-result v10

    #@710
    .line 707
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@713
    move-result v20

    #@714
    .line 709
    .restart local v20    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@717
    move-result v30

    #@718
    .line 710
    .restart local v30    # "_arg2":I
    move-object/from16 v0, p0

    #@71a
    move/from16 v1, v20

    #@71c
    move/from16 v2, v30

    #@71e
    invoke-virtual {v0, v10, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(III)V

    #@721
    .line 711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@724
    .line 712
    const/4 v4, 0x1

    #@725
    return v4

    #@726
    .line 716
    .end local v10    # "_arg0":I
    .end local v20    # "_arg1":I
    .end local v30    # "_arg2":I
    :sswitch_3e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@729
    move-object/from16 v0, p2

    #@72b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72e
    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@731
    move-result v10

    #@732
    .line 720
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@735
    move-result-object v27

    #@736
    .line 722
    .local v27, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@739
    move-result-object v32

    #@73a
    .line 723
    .local v32, "_arg2":[I
    move-object/from16 v0, p0

    #@73c
    move-object/from16 v1, v27

    #@73e
    move-object/from16 v2, v32

    #@740
    invoke-virtual {v0, v10, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRules(I[I[I)V

    #@743
    .line 724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@746
    .line 725
    const/4 v4, 0x1

    #@747
    return v4

    #@748
    .line 729
    .end local v10    # "_arg0":I
    .end local v27    # "_arg1":[I
    .end local v32    # "_arg2":[I
    :sswitch_3f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@74b
    move-object/from16 v0, p2

    #@74d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@750
    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@753
    move-result v10

    #@754
    .line 733
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@757
    move-result v4

    #@758
    if-eqz v4, :cond_18

    #@75a
    const/16 v26, 0x1

    #@75c
    .line 734
    .restart local v26    # "_arg1":Z
    :goto_18
    move-object/from16 v0, p0

    #@75e
    move/from16 v1, v26

    #@760
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallChainEnabled(IZ)V

    #@763
    .line 735
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@766
    .line 736
    const/4 v4, 0x1

    #@767
    return v4

    #@768
    .line 733
    .end local v26    # "_arg1":Z
    :cond_18
    const/16 v26, 0x0

    #@76a
    .restart local v26    # "_arg1":Z
    goto :goto_18

    #@76b
    .line 740
    .end local v10    # "_arg0":I
    .end local v26    # "_arg1":Z
    :sswitch_40
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@76e
    move-object/from16 v0, p2

    #@770
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@773
    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@776
    move-result v10

    #@777
    .line 744
    .restart local v10    # "_arg0":I
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    #@779
    move-object/from16 v0, p2

    #@77b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@77e
    move-result-object v28

    #@77f
    check-cast v28, [Landroid/net/UidRange;

    #@781
    .line 745
    .local v28, "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    #@783
    move-object/from16 v1, v28

    #@785
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->addVpnUidRanges(I[Landroid/net/UidRange;)V

    #@788
    .line 746
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@78b
    .line 747
    const/4 v4, 0x1

    #@78c
    return v4

    #@78d
    .line 751
    .end local v10    # "_arg0":I
    .end local v28    # "_arg1":[Landroid/net/UidRange;
    :sswitch_41
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@790
    move-object/from16 v0, p2

    #@792
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@795
    .line 753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@798
    move-result v10

    #@799
    .line 755
    .restart local v10    # "_arg0":I
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    #@79b
    move-object/from16 v0, p2

    #@79d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@7a0
    move-result-object v28

    #@7a1
    check-cast v28, [Landroid/net/UidRange;

    #@7a3
    .line 756
    .restart local v28    # "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    #@7a5
    move-object/from16 v1, v28

    #@7a7
    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->removeVpnUidRanges(I[Landroid/net/UidRange;)V

    #@7aa
    .line 757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7ad
    .line 758
    const/4 v4, 0x1

    #@7ae
    return v4

    #@7af
    .line 762
    .end local v10    # "_arg0":I
    .end local v28    # "_arg1":[Landroid/net/UidRange;
    :sswitch_42
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@7b2
    move-object/from16 v0, p2

    #@7b4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7b7
    .line 764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7ba
    move-result-object v5

    #@7bb
    .line 765
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7bd
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->startClatd(Ljava/lang/String;)V

    #@7c0
    .line 766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c3
    .line 767
    const/4 v4, 0x1

    #@7c4
    return v4

    #@7c5
    .line 771
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_43
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@7c8
    move-object/from16 v0, p2

    #@7ca
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7cd
    .line 773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7d0
    move-result-object v5

    #@7d1
    .line 774
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7d3
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->stopClatd(Ljava/lang/String;)V

    #@7d6
    .line 775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d9
    .line 776
    const/4 v4, 0x1

    #@7da
    return v4

    #@7db
    .line 780
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_44
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@7de
    move-object/from16 v0, p2

    #@7e0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e3
    .line 782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7e6
    move-result-object v5

    #@7e7
    .line 783
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7e9
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->isClatdStarted(Ljava/lang/String;)Z

    #@7ec
    move-result v35

    #@7ed
    .line 784
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f0
    .line 785
    if-eqz v35, :cond_19

    #@7f2
    const/4 v4, 0x1

    #@7f3
    :goto_19
    move-object/from16 v0, p3

    #@7f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7f8
    .line 786
    const/4 v4, 0x1

    #@7f9
    return v4

    #@7fa
    .line 785
    :cond_19
    const/4 v4, 0x0

    #@7fb
    goto :goto_19

    #@7fc
    .line 790
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":Z
    :sswitch_45
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@7ff
    move-object/from16 v0, p2

    #@801
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@804
    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@807
    move-result-object v4

    #@808
    invoke-static {v4}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    #@80b
    move-result-object v16

    #@80c
    .line 793
    .local v16, "_arg0":Landroid/os/INetworkActivityListener;
    move-object/from16 v0, p0

    #@80e
    move-object/from16 v1, v16

    #@810
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    #@813
    .line 794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@816
    .line 795
    const/4 v4, 0x1

    #@817
    return v4

    #@818
    .line 799
    .end local v16    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_46
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@81b
    move-object/from16 v0, p2

    #@81d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@820
    .line 801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@823
    move-result-object v4

    #@824
    invoke-static {v4}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    #@827
    move-result-object v16

    #@828
    .line 802
    .restart local v16    # "_arg0":Landroid/os/INetworkActivityListener;
    move-object/from16 v0, p0

    #@82a
    move-object/from16 v1, v16

    #@82c
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    #@82f
    .line 803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@832
    .line 804
    const/4 v4, 0x1

    #@833
    return v4

    #@834
    .line 808
    .end local v16    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_47
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@837
    move-object/from16 v0, p2

    #@839
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83c
    .line 809
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isNetworkActive()Z

    #@83f
    move-result v35

    #@840
    .line 810
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@843
    .line 811
    if-eqz v35, :cond_1a

    #@845
    const/4 v4, 0x1

    #@846
    :goto_1a
    move-object/from16 v0, p3

    #@848
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@84b
    .line 812
    const/4 v4, 0x1

    #@84c
    return v4

    #@84d
    .line 811
    :cond_1a
    const/4 v4, 0x0

    #@84e
    goto :goto_1a

    #@84f
    .line 816
    .end local v35    # "_result":Z
    :sswitch_48
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@852
    move-object/from16 v0, p2

    #@854
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@857
    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@85a
    move-result v10

    #@85b
    .line 820
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@85e
    move-result-object v6

    #@85f
    .line 821
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@861
    invoke-virtual {v0, v10, v6}, Landroid/os/INetworkManagementService$Stub;->createPhysicalNetwork(ILjava/lang/String;)V

    #@864
    .line 822
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@867
    .line 823
    const/4 v4, 0x1

    #@868
    return v4

    #@869
    .line 827
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg0":I
    :sswitch_49
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@86c
    move-object/from16 v0, p2

    #@86e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@871
    .line 829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@874
    move-result v10

    #@875
    .line 831
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@878
    move-result v4

    #@879
    if-eqz v4, :cond_1b

    #@87b
    const/16 v26, 0x1

    #@87d
    .line 833
    .restart local v26    # "_arg1":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@880
    move-result v4

    #@881
    if-eqz v4, :cond_1c

    #@883
    const/16 v31, 0x1

    #@885
    .line 834
    .restart local v31    # "_arg2":Z
    :goto_1c
    move-object/from16 v0, p0

    #@887
    move/from16 v1, v26

    #@889
    move/from16 v2, v31

    #@88b
    invoke-virtual {v0, v10, v1, v2}, Landroid/os/INetworkManagementService$Stub;->createVirtualNetwork(IZZ)V

    #@88e
    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@891
    .line 836
    const/4 v4, 0x1

    #@892
    return v4

    #@893
    .line 831
    .end local v26    # "_arg1":Z
    .end local v31    # "_arg2":Z
    :cond_1b
    const/16 v26, 0x0

    #@895
    .restart local v26    # "_arg1":Z
    goto :goto_1b

    #@896
    .line 833
    :cond_1c
    const/16 v31, 0x0

    #@898
    .restart local v31    # "_arg2":Z
    goto :goto_1c

    #@899
    .line 840
    .end local v10    # "_arg0":I
    .end local v26    # "_arg1":Z
    .end local v31    # "_arg2":Z
    :sswitch_4a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@89c
    move-object/from16 v0, p2

    #@89e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8a1
    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8a4
    move-result v10

    #@8a5
    .line 843
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@8a7
    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->removeNetwork(I)V

    #@8aa
    .line 844
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8ad
    .line 845
    const/4 v4, 0x1

    #@8ae
    return v4

    #@8af
    .line 849
    .end local v10    # "_arg0":I
    :sswitch_4b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@8b2
    move-object/from16 v0, p2

    #@8b4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b7
    .line 851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8ba
    move-result-object v5

    #@8bb
    .line 853
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8be
    move-result v20

    #@8bf
    .line 854
    .restart local v20    # "_arg1":I
    move-object/from16 v0, p0

    #@8c1
    move/from16 v1, v20

    #@8c3
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToNetwork(Ljava/lang/String;I)V

    #@8c6
    .line 855
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c9
    .line 856
    const/4 v4, 0x1

    #@8ca
    return v4

    #@8cb
    .line 860
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":I
    :sswitch_4c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@8ce
    move-object/from16 v0, p2

    #@8d0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d3
    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8d6
    move-result-object v5

    #@8d7
    .line 864
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8da
    move-result v20

    #@8db
    .line 865
    .restart local v20    # "_arg1":I
    move-object/from16 v0, p0

    #@8dd
    move/from16 v1, v20

    #@8df
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromNetwork(Ljava/lang/String;I)V

    #@8e2
    .line 866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8e5
    .line 867
    const/4 v4, 0x1

    #@8e6
    return v4

    #@8e7
    .line 871
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":I
    :sswitch_4d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@8ea
    move-object/from16 v0, p2

    #@8ec
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8ef
    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8f2
    move-result v10

    #@8f3
    .line 875
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8f6
    move-result v4

    #@8f7
    if-eqz v4, :cond_1d

    #@8f9
    .line 876
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8fb
    move-object/from16 v0, p2

    #@8fd
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@900
    move-result-object v24

    #@901
    check-cast v24, Landroid/net/RouteInfo;

    #@903
    .line 882
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@906
    move-result v30

    #@907
    .line 883
    .restart local v30    # "_arg2":I
    move-object/from16 v0, p0

    #@909
    move-object/from16 v1, v24

    #@90b
    move/from16 v2, v30

    #@90d
    invoke-virtual {v0, v10, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V

    #@910
    .line 884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@913
    .line 885
    const/4 v4, 0x1

    #@914
    return v4

    #@915
    .line 879
    .end local v30    # "_arg2":I
    :cond_1d
    const/16 v24, 0x0

    #@917
    .restart local v24    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_1d

    #@918
    .line 889
    .end local v10    # "_arg0":I
    .end local v24    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_4e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@91b
    move-object/from16 v0, p2

    #@91d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@920
    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@923
    move-result v10

    #@924
    .line 892
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@926
    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->setDefaultNetId(I)V

    #@929
    .line 893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@92c
    .line 894
    const/4 v4, 0x1

    #@92d
    return v4

    #@92e
    .line 898
    .end local v10    # "_arg0":I
    :sswitch_4f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@931
    move-object/from16 v0, p2

    #@933
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@936
    .line 899
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->clearDefaultNetId()V

    #@939
    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@93c
    .line 901
    const/4 v4, 0x1

    #@93d
    return v4

    #@93e
    .line 905
    :sswitch_50
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@941
    move-object/from16 v0, p2

    #@943
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@946
    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@949
    move-result v10

    #@94a
    .line 909
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@94d
    move-result-object v6

    #@94e
    .line 910
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@950
    invoke-virtual {v0, v10, v6}, Landroid/os/INetworkManagementService$Stub;->setNetworkPermission(ILjava/lang/String;)V

    #@953
    .line 911
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@956
    .line 912
    const/4 v4, 0x1

    #@957
    return v4

    #@958
    .line 916
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg0":I
    :sswitch_51
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@95b
    move-object/from16 v0, p2

    #@95d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@960
    .line 918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@963
    move-result-object v5

    #@964
    .line 920
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@967
    move-result-object v27

    #@968
    .line 921
    .restart local v27    # "_arg1":[I
    move-object/from16 v0, p0

    #@96a
    move-object/from16 v1, v27

    #@96c
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setPermission(Ljava/lang/String;[I)V

    #@96f
    .line 922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@972
    .line 923
    const/4 v4, 0x1

    #@973
    return v4

    #@974
    .line 927
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":[I
    :sswitch_52
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@977
    move-object/from16 v0, p2

    #@979
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@97c
    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@97f
    move-result-object v18

    #@980
    .line 930
    .local v18, "_arg0":[I
    move-object/from16 v0, p0

    #@982
    move-object/from16 v1, v18

    #@984
    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->clearPermission([I)V

    #@987
    .line 931
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@98a
    .line 932
    const/4 v4, 0x1

    #@98b
    return v4

    #@98c
    .line 936
    .end local v18    # "_arg0":[I
    :sswitch_53
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@98f
    move-object/from16 v0, p2

    #@991
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@994
    .line 938
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@997
    move-result v10

    #@998
    .line 939
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@99a
    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->allowProtect(I)V

    #@99d
    .line 940
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9a0
    .line 941
    const/4 v4, 0x1

    #@9a1
    return v4

    #@9a2
    .line 945
    .end local v10    # "_arg0":I
    :sswitch_54
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@9a5
    move-object/from16 v0, p2

    #@9a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9aa
    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9ad
    move-result v10

    #@9ae
    .line 948
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@9b0
    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->denyProtect(I)V

    #@9b3
    .line 949
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9b6
    .line 950
    const/4 v4, 0x1

    #@9b7
    return v4

    #@9b8
    .line 954
    .end local v10    # "_arg0":I
    :sswitch_55
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@9bb
    move-object/from16 v0, p2

    #@9bd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c0
    .line 956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9c3
    move-result-object v5

    #@9c4
    .line 958
    .restart local v5    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9c6
    move-object/from16 v0, p2

    #@9c8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@9cb
    move-result-object v25

    #@9cc
    .line 959
    .local v25, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, p0

    #@9ce
    move-object/from16 v1, v25

    #@9d0
    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    #@9d3
    .line 960
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9d6
    .line 961
    const/4 v4, 0x1

    #@9d7
    return v4

    #@9d8
    .line 965
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :sswitch_56
    const-string/jumbo v4, "android.os.INetworkManagementService"

    #@9db
    move-object/from16 v0, p2

    #@9dd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9e0
    .line 967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9e3
    move-result-object v5

    #@9e4
    .line 968
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9e6
    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    #@9e9
    .line 969
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9ec
    .line 970
    const/4 v4, 0x1

    #@9ed
    return v4

    #@9ee
    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

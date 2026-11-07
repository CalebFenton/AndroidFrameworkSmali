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
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final blacklist TRANSACTION_declareNetworkRequestUnfulfillable:I = 0x28

.field static final greylist-max-o TRANSACTION_factoryReset:I = 0x39

.field static final greylist-max-o TRANSACTION_getActiveLinkProperties:I = 0xc

.field static final greylist-max-o TRANSACTION_getActiveNetwork:I = 0x1

.field static final greylist-max-o TRANSACTION_getActiveNetworkForUid:I = 0x2

.field static final greylist-max-o TRANSACTION_getActiveNetworkInfo:I = 0x3

.field static final greylist-max-o TRANSACTION_getActiveNetworkInfoForUid:I = 0x4

.field static final greylist-max-o TRANSACTION_getAllNetworkInfo:I = 0x7

.field static final greylist-max-o TRANSACTION_getAllNetworkState:I = 0x12

.field static final blacklist TRANSACTION_getAllNetworkStateSnapshots:I = 0x13

.field static final greylist-max-o TRANSACTION_getAllNetworks:I = 0x9

.field static final greylist-max-o TRANSACTION_getCaptivePortalServerUrl:I = 0x3f

.field static final blacklist TRANSACTION_getCompanionDeviceManagerProxyService:I = 0x58

.field static final blacklist TRANSACTION_getConnectionOwnerUid:I = 0x41

.field static final greylist-max-o TRANSACTION_getDefaultNetworkCapabilitiesForUser:I = 0xa

.field static final blacklist TRANSACTION_getDefaultRequest:I = 0x37

.field static final blacklist TRANSACTION_getEnabledConnectivityManagerFeatures:I = 0x5c

.field static final blacklist TRANSACTION_getFirewallChainEnabled:I = 0x56

.field static final greylist-max-o TRANSACTION_getGlobalProxy:I = 0x1e

.field static final greylist-max-o TRANSACTION_getLastTetherError:I = 0x16

.field static final greylist-max-o TRANSACTION_getLinkProperties:I = 0xe

.field static final greylist-max-o TRANSACTION_getLinkPropertiesForType:I = 0xd

.field static final greylist-max-o TRANSACTION_getMultipathPreference:I = 0x36

.field static final greylist-max-o TRANSACTION_getNetworkCapabilities:I = 0x10

.field static final greylist-max-o TRANSACTION_getNetworkForType:I = 0x8

.field static final greylist-max-o TRANSACTION_getNetworkInfo:I = 0x5

.field static final greylist-max-o TRANSACTION_getNetworkInfoForUid:I = 0x6

.field static final greylist-max-o TRANSACTION_getNetworkWatchlistConfigHash:I = 0x40

.field static final greylist-max-o TRANSACTION_getProxyForNetwork:I = 0x20

.field static final blacklist TRANSACTION_getRedactedLinkPropertiesForPackage:I = 0xf

.field static final blacklist TRANSACTION_getRedactedNetworkCapabilitiesForPackage:I = 0x11

.field static final greylist-max-o TRANSACTION_getRestoreDefaultNetworkDelay:I = 0x38

.field static final blacklist TRANSACTION_getRestrictBackgroundStatusByCaller:I = 0x4e

.field static final blacklist TRANSACTION_getRoutingCoordinatorService:I = 0x5b

.field static final blacklist TRANSACTION_getSupportedKeepalives:I = 0x3e

.field static final greylist-max-o TRANSACTION_getTetherableIfaces:I = 0x17

.field static final greylist-max-o TRANSACTION_getTetherableUsbRegexs:I = 0x1a

.field static final greylist-max-o TRANSACTION_getTetherableWifiRegexs:I = 0x1b

.field static final greylist-max-o TRANSACTION_getTetheredIfaces:I = 0x18

.field static final greylist-max-o TRANSACTION_getTetheringErroredIfaces:I = 0x19

.field static final blacklist TRANSACTION_getUidFirewallRule:I = 0x54

.field static final greylist-max-o TRANSACTION_isActiveNetworkMetered:I = 0x14

.field static final blacklist TRANSACTION_isConnectivityServiceFeatureEnabledForTesting:I = 0x5d

.field static final blacklist TRANSACTION_isDefaultNetworkActive:I = 0x49

.field static final greylist-max-o TRANSACTION_isNetworkSupported:I = 0xb

.field static final greylist-max-o TRANSACTION_listenForNetwork:I = 0x2d

.field static final blacklist TRANSACTION_offerNetwork:I = 0x4f

.field static final greylist-max-o TRANSACTION_pendingListenForNetwork:I = 0x2e

.field static final greylist-max-o TRANSACTION_pendingRequestForNetwork:I = 0x2b

.field static final blacklist TRANSACTION_registerConnectivityDiagnosticsCallback:I = 0x42

.field static final blacklist TRANSACTION_registerNetworkActivityListener:I = 0x47

.field static final greylist-max-o TRANSACTION_registerNetworkAgent:I = 0x29

.field static final blacklist TRANSACTION_registerNetworkProvider:I = 0x26

.field static final blacklist TRANSACTION_registerQosSocketCallback:I = 0x4a

.field static final greylist-max-o TRANSACTION_releaseNetworkRequest:I = 0x2f

.field static final greylist-max-o TRANSACTION_releasePendingNetworkRequest:I = 0x2c

.field static final blacklist TRANSACTION_replaceFirewallChain:I = 0x57

.field static final greylist-max-o TRANSACTION_reportInetCondition:I = 0x1c

.field static final greylist-max-o TRANSACTION_reportNetworkConnectivity:I = 0x1d

.field static final greylist-max-o TRANSACTION_requestBandwidthUpdate:I = 0x25

.field static final greylist-max-o TRANSACTION_requestNetwork:I = 0x2a

.field static final greylist-max-o TRANSACTION_requestRouteToHostAddress:I = 0x15

.field static final blacklist TRANSACTION_setAcceptPartialConnectivity:I = 0x31

.field static final greylist-max-o TRANSACTION_setAcceptUnvalidated:I = 0x30

.field static final greylist-max-o TRANSACTION_setAirplaneMode:I = 0x24

.field static final greylist-max-o TRANSACTION_setAvoidUnvalidated:I = 0x32

.field static final blacklist TRANSACTION_setDataSaverEnabled:I = 0x52

.field static final blacklist TRANSACTION_setFirewallChainEnabled:I = 0x55

.field static final greylist-max-o TRANSACTION_setGlobalProxy:I = 0x1f

.field static final blacklist TRANSACTION_setLegacyLockdownVpnEnabled:I = 0x22

.field static final blacklist TRANSACTION_setOemNetworkPreference:I = 0x4c

.field static final blacklist TRANSACTION_setProfileNetworkPreferences:I = 0x4d

.field static final greylist-max-o TRANSACTION_setProvisioningNotificationVisible:I = 0x23

.field static final blacklist TRANSACTION_setRequireVpnForUids:I = 0x21

.field static final blacklist TRANSACTION_setTestAllowBadWifiUntil:I = 0x51

.field static final blacklist TRANSACTION_setTestLowTcpPollingTimerForKeepalive:I = 0x5a

.field static final blacklist TRANSACTION_setUidFirewallRule:I = 0x53

.field static final blacklist TRANSACTION_setVpnNetworkPreference:I = 0x59

.field static final blacklist TRANSACTION_shouldAvoidBadWifi:I = 0x35

.field static final blacklist TRANSACTION_simulateDataStall:I = 0x45

.field static final greylist-max-o TRANSACTION_startCaptivePortalApp:I = 0x33

.field static final blacklist TRANSACTION_startCaptivePortalAppInternal:I = 0x34

.field static final greylist-max-o TRANSACTION_startNattKeepalive:I = 0x3a

.field static final blacklist TRANSACTION_startNattKeepaliveWithFd:I = 0x3b

.field static final blacklist TRANSACTION_startOrGetTestNetworkService:I = 0x44

.field static final blacklist TRANSACTION_startTcpKeepalive:I = 0x3c

.field static final greylist-max-o TRANSACTION_stopKeepalive:I = 0x3d

.field static final blacklist TRANSACTION_systemReady:I = 0x46

.field static final blacklist TRANSACTION_unofferNetwork:I = 0x50

.field static final blacklist TRANSACTION_unregisterConnectivityDiagnosticsCallback:I = 0x43

.field static final blacklist TRANSACTION_unregisterNetworkActivityListener:I = 0x48

.field static final blacklist TRANSACTION_unregisterNetworkProvider:I = 0x27

.field static final blacklist TRANSACTION_unregisterQosCallback:I = 0x4b


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 362
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 363
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 371
    if-nez p0, :cond_4

    .line 372
    const/4 v0, 0x0

    return-object v0

    .line 374
    :cond_4
    const-string v0, "android.net.IConnectivityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 375
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_14

    .line 376
    move-object v1, v0

    check-cast v1, Landroid/net/IConnectivityManager;

    return-object v1

    .line 378
    :cond_14
    new-instance v1, Landroid/net/IConnectivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 387
    packed-switch p0, :pswitch_data_11c

    .line 763
    const/4 v0, 0x0

    return-object v0

    .line 759
    :pswitch_5
    const-string v0, "isConnectivityServiceFeatureEnabledForTesting"

    return-object v0

    .line 755
    :pswitch_8
    const-string v0, "getEnabledConnectivityManagerFeatures"

    return-object v0

    .line 751
    :pswitch_b
    const-string v0, "getRoutingCoordinatorService"

    return-object v0

    .line 747
    :pswitch_e
    const-string v0, "setTestLowTcpPollingTimerForKeepalive"

    return-object v0

    .line 743
    :pswitch_11
    const-string v0, "setVpnNetworkPreference"

    return-object v0

    .line 739
    :pswitch_14
    const-string v0, "getCompanionDeviceManagerProxyService"

    return-object v0

    .line 735
    :pswitch_17
    const-string v0, "replaceFirewallChain"

    return-object v0

    .line 731
    :pswitch_1a
    const-string v0, "getFirewallChainEnabled"

    return-object v0

    .line 727
    :pswitch_1d
    const-string v0, "setFirewallChainEnabled"

    return-object v0

    .line 723
    :pswitch_20
    const-string v0, "getUidFirewallRule"

    return-object v0

    .line 719
    :pswitch_23
    const-string v0, "setUidFirewallRule"

    return-object v0

    .line 715
    :pswitch_26
    const-string v0, "setDataSaverEnabled"

    return-object v0

    .line 711
    :pswitch_29
    const-string v0, "setTestAllowBadWifiUntil"

    return-object v0

    .line 707
    :pswitch_2c
    const-string v0, "unofferNetwork"

    return-object v0

    .line 703
    :pswitch_2f
    const-string v0, "offerNetwork"

    return-object v0

    .line 699
    :pswitch_32
    const-string v0, "getRestrictBackgroundStatusByCaller"

    return-object v0

    .line 695
    :pswitch_35
    const-string v0, "setProfileNetworkPreferences"

    return-object v0

    .line 691
    :pswitch_38
    const-string v0, "setOemNetworkPreference"

    return-object v0

    .line 687
    :pswitch_3b
    const-string v0, "unregisterQosCallback"

    return-object v0

    .line 683
    :pswitch_3e
    const-string v0, "registerQosSocketCallback"

    return-object v0

    .line 679
    :pswitch_41
    const-string v0, "isDefaultNetworkActive"

    return-object v0

    .line 675
    :pswitch_44
    const-string v0, "unregisterNetworkActivityListener"

    return-object v0

    .line 671
    :pswitch_47
    const-string v0, "registerNetworkActivityListener"

    return-object v0

    .line 667
    :pswitch_4a
    const-string v0, "systemReady"

    return-object v0

    .line 663
    :pswitch_4d
    const-string v0, "simulateDataStall"

    return-object v0

    .line 659
    :pswitch_50
    const-string v0, "startOrGetTestNetworkService"

    return-object v0

    .line 655
    :pswitch_53
    const-string v0, "unregisterConnectivityDiagnosticsCallback"

    return-object v0

    .line 651
    :pswitch_56
    const-string v0, "registerConnectivityDiagnosticsCallback"

    return-object v0

    .line 647
    :pswitch_59
    const-string v0, "getConnectionOwnerUid"

    return-object v0

    .line 643
    :pswitch_5c
    const-string v0, "getNetworkWatchlistConfigHash"

    return-object v0

    .line 639
    :pswitch_5f
    const-string v0, "getCaptivePortalServerUrl"

    return-object v0

    .line 635
    :pswitch_62
    const-string v0, "getSupportedKeepalives"

    return-object v0

    .line 631
    :pswitch_65
    const-string v0, "stopKeepalive"

    return-object v0

    .line 627
    :pswitch_68
    const-string v0, "startTcpKeepalive"

    return-object v0

    .line 623
    :pswitch_6b
    const-string v0, "startNattKeepaliveWithFd"

    return-object v0

    .line 619
    :pswitch_6e
    const-string v0, "startNattKeepalive"

    return-object v0

    .line 615
    :pswitch_71
    const-string v0, "factoryReset"

    return-object v0

    .line 611
    :pswitch_74
    const-string v0, "getRestoreDefaultNetworkDelay"

    return-object v0

    .line 607
    :pswitch_77
    const-string v0, "getDefaultRequest"

    return-object v0

    .line 603
    :pswitch_7a
    const-string v0, "getMultipathPreference"

    return-object v0

    .line 599
    :pswitch_7d
    const-string v0, "shouldAvoidBadWifi"

    return-object v0

    .line 595
    :pswitch_80
    const-string v0, "startCaptivePortalAppInternal"

    return-object v0

    .line 591
    :pswitch_83
    const-string v0, "startCaptivePortalApp"

    return-object v0

    .line 587
    :pswitch_86
    const-string v0, "setAvoidUnvalidated"

    return-object v0

    .line 583
    :pswitch_89
    const-string v0, "setAcceptPartialConnectivity"

    return-object v0

    .line 579
    :pswitch_8c
    const-string v0, "setAcceptUnvalidated"

    return-object v0

    .line 575
    :pswitch_8f
    const-string v0, "releaseNetworkRequest"

    return-object v0

    .line 571
    :pswitch_92
    const-string v0, "pendingListenForNetwork"

    return-object v0

    .line 567
    :pswitch_95
    const-string v0, "listenForNetwork"

    return-object v0

    .line 563
    :pswitch_98
    const-string v0, "releasePendingNetworkRequest"

    return-object v0

    .line 559
    :pswitch_9b
    const-string v0, "pendingRequestForNetwork"

    return-object v0

    .line 555
    :pswitch_9e
    const-string v0, "requestNetwork"

    return-object v0

    .line 551
    :pswitch_a1
    const-string v0, "registerNetworkAgent"

    return-object v0

    .line 547
    :pswitch_a4
    const-string v0, "declareNetworkRequestUnfulfillable"

    return-object v0

    .line 543
    :pswitch_a7
    const-string v0, "unregisterNetworkProvider"

    return-object v0

    .line 539
    :pswitch_aa
    const-string v0, "registerNetworkProvider"

    return-object v0

    .line 535
    :pswitch_ad
    const-string v0, "requestBandwidthUpdate"

    return-object v0

    .line 531
    :pswitch_b0
    const-string v0, "setAirplaneMode"

    return-object v0

    .line 527
    :pswitch_b3
    const-string v0, "setProvisioningNotificationVisible"

    return-object v0

    .line 523
    :pswitch_b6
    const-string v0, "setLegacyLockdownVpnEnabled"

    return-object v0

    .line 519
    :pswitch_b9
    const-string v0, "setRequireVpnForUids"

    return-object v0

    .line 515
    :pswitch_bc
    const-string v0, "getProxyForNetwork"

    return-object v0

    .line 511
    :pswitch_bf
    const-string v0, "setGlobalProxy"

    return-object v0

    .line 507
    :pswitch_c2
    const-string v0, "getGlobalProxy"

    return-object v0

    .line 503
    :pswitch_c5
    const-string v0, "reportNetworkConnectivity"

    return-object v0

    .line 499
    :pswitch_c8
    const-string v0, "reportInetCondition"

    return-object v0

    .line 495
    :pswitch_cb
    const-string v0, "getTetherableWifiRegexs"

    return-object v0

    .line 491
    :pswitch_ce
    const-string v0, "getTetherableUsbRegexs"

    return-object v0

    .line 487
    :pswitch_d1
    const-string v0, "getTetheringErroredIfaces"

    return-object v0

    .line 483
    :pswitch_d4
    const-string v0, "getTetheredIfaces"

    return-object v0

    .line 479
    :pswitch_d7
    const-string v0, "getTetherableIfaces"

    return-object v0

    .line 475
    :pswitch_da
    const-string v0, "getLastTetherError"

    return-object v0

    .line 471
    :pswitch_dd
    const-string v0, "requestRouteToHostAddress"

    return-object v0

    .line 467
    :pswitch_e0
    const-string v0, "isActiveNetworkMetered"

    return-object v0

    .line 463
    :pswitch_e3
    const-string v0, "getAllNetworkStateSnapshots"

    return-object v0

    .line 459
    :pswitch_e6
    const-string v0, "getAllNetworkState"

    return-object v0

    .line 455
    :pswitch_e9
    const-string v0, "getRedactedNetworkCapabilitiesForPackage"

    return-object v0

    .line 451
    :pswitch_ec
    const-string v0, "getNetworkCapabilities"

    return-object v0

    .line 447
    :pswitch_ef
    const-string v0, "getRedactedLinkPropertiesForPackage"

    return-object v0

    .line 443
    :pswitch_f2
    const-string v0, "getLinkProperties"

    return-object v0

    .line 439
    :pswitch_f5
    const-string v0, "getLinkPropertiesForType"

    return-object v0

    .line 435
    :pswitch_f8
    const-string v0, "getActiveLinkProperties"

    return-object v0

    .line 431
    :pswitch_fb
    const-string v0, "isNetworkSupported"

    return-object v0

    .line 427
    :pswitch_fe
    const-string v0, "getDefaultNetworkCapabilitiesForUser"

    return-object v0

    .line 423
    :pswitch_101
    const-string v0, "getAllNetworks"

    return-object v0

    .line 419
    :pswitch_104
    const-string v0, "getNetworkForType"

    return-object v0

    .line 415
    :pswitch_107
    const-string v0, "getAllNetworkInfo"

    return-object v0

    .line 411
    :pswitch_10a
    const-string v0, "getNetworkInfoForUid"

    return-object v0

    .line 407
    :pswitch_10d
    const-string v0, "getNetworkInfo"

    return-object v0

    .line 403
    :pswitch_110
    const-string v0, "getActiveNetworkInfoForUid"

    return-object v0

    .line 399
    :pswitch_113
    const-string v0, "getActiveNetworkInfo"

    return-object v0

    .line 395
    :pswitch_116
    const-string v0, "getActiveNetworkForUid"

    return-object v0

    .line 391
    :pswitch_119
    const-string v0, "getActiveNetwork"

    return-object v0

    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 382
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 3444
    const/16 v0, 0x5c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 770
    invoke-static {p1}, Landroid/net/IConnectivityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 774
    move-object/from16 v0, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "android.net.IConnectivityManager"

    .line 775
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v12, v10, :cond_15

    const v1, 0xffffff

    if-gt v12, v1, :cond_15

    .line 776
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    :cond_15
    const v1, 0x5f4e5446

    if-ne v12, v1, :cond_1e

    .line 779
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 780
    return v10

    .line 782
    :cond_1e
    packed-switch v12, :pswitch_data_7d6

    .line 1710
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1702
    :pswitch_26
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1703
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->isConnectivityServiceFeatureEnabledForTesting(Ljava/lang/String;)Z

    move-result v2

    .line 1704
    .local v2, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1706
    move v11, v10

    goto/16 :goto_7d5

    .line 1694
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_37
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getEnabledConnectivityManagerFeatures()J

    move-result-wide v1

    .line 1695
    .local v1, "_result":J
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1696
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1697
    move v11, v10

    goto/16 :goto_7d5

    .line 1687
    .end local v1    # "_result":J
    :pswitch_44
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getRoutingCoordinatorService()Landroid/os/IBinder;

    move-result-object v1

    .line 1688
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1689
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1690
    move v11, v10

    goto/16 :goto_7d5

    .line 1680
    .end local v1    # "_result":Landroid/os/IBinder;
    :pswitch_51
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1681
    .local v1, "_arg0":J
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setTestLowTcpPollingTimerForKeepalive(J)V

    .line 1682
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1683
    move v11, v10

    goto/16 :goto_7d5

    .line 1670
    .end local v1    # "_arg0":J
    :pswitch_5e
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1672
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRange;

    .line 1673
    .local v2, "_arg1":[Landroid/net/UidRange;
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setVpnNetworkPreference(Ljava/lang/String;[Landroid/net/UidRange;)V

    .line 1674
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1675
    move v11, v10

    goto/16 :goto_7d5

    .line 1662
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Landroid/net/UidRange;
    :pswitch_73
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getCompanionDeviceManagerProxyService()Landroid/os/IBinder;

    move-result-object v1

    .line 1663
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1664
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1665
    move v11, v10

    goto/16 :goto_7d5

    .line 1653
    .end local v1    # "_result":Landroid/os/IBinder;
    :pswitch_80
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1655
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1656
    .local v2, "_arg1":[I
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->replaceFirewallChain(I[I)V

    .line 1657
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1658
    move v11, v10

    goto/16 :goto_7d5

    .line 1644
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    :pswitch_91
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1645
    .restart local v1    # "_arg0":I
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getFirewallChainEnabled(I)Z

    move-result v2

    .line 1646
    .local v2, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1648
    move v11, v10

    goto/16 :goto_7d5

    .line 1634
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_a2
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1636
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1637
    .local v2, "_arg1":Z
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setFirewallChainEnabled(IZ)V

    .line 1638
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    move v11, v10

    goto/16 :goto_7d5

    .line 1623
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_b3
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1625
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1626
    .local v2, "_arg1":I
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->getUidFirewallRule(II)I

    move-result v3

    .line 1627
    .local v3, "_result":I
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1628
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1629
    move v11, v10

    goto/16 :goto_7d5

    .line 1611
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_c8
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1613
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1615
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1616
    .local v3, "_arg2":I
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setUidFirewallRule(III)V

    .line 1617
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1618
    move v11, v10

    goto/16 :goto_7d5

    .line 1603
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_dd
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1604
    .local v1, "_arg0":Z
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setDataSaverEnabled(Z)V

    .line 1605
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1606
    move v11, v10

    goto/16 :goto_7d5

    .line 1595
    .end local v1    # "_arg0":Z
    :pswitch_ea
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1596
    .local v1, "_arg0":J
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setTestAllowBadWifiUntil(J)V

    .line 1597
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1598
    move v11, v10

    goto/16 :goto_7d5

    .line 1587
    .end local v1    # "_arg0":J
    :pswitch_f7
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/connectivity/android/net/INetworkOfferCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/INetworkOfferCallback;

    move-result-object v1

    .line 1588
    .local v1, "_arg0":Landroid/net/connectivity/android/net/INetworkOfferCallback;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->unofferNetwork(Landroid/net/connectivity/android/net/INetworkOfferCallback;)V

    .line 1589
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    move v11, v10

    goto/16 :goto_7d5

    .line 1573
    .end local v1    # "_arg0":Landroid/net/connectivity/android/net/INetworkOfferCallback;
    :pswitch_108
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1575
    .local v1, "_arg0":I
    sget-object v2, Landroid/net/NetworkScore;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkScore;

    .line 1577
    .local v2, "_arg1":Landroid/net/NetworkScore;
    sget-object v3, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkCapabilities;

    .line 1579
    .local v3, "_arg2":Landroid/net/NetworkCapabilities;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/connectivity/android/net/INetworkOfferCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/INetworkOfferCallback;

    move-result-object v4

    .line 1580
    .local v4, "_arg3":Landroid/net/connectivity/android/net/INetworkOfferCallback;
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->offerNetwork(ILandroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Landroid/net/connectivity/android/net/INetworkOfferCallback;)V

    .line 1581
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1582
    move v11, v10

    goto/16 :goto_7d5

    .line 1565
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/NetworkScore;
    .end local v3    # "_arg2":Landroid/net/NetworkCapabilities;
    .end local v4    # "_arg3":Landroid/net/connectivity/android/net/INetworkOfferCallback;
    :pswitch_12d
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getRestrictBackgroundStatusByCaller()I

    move-result v1

    .line 1566
    .local v1, "_result":I
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1567
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1568
    move v11, v10

    goto/16 :goto_7d5

    .line 1554
    .end local v1    # "_result":I
    :pswitch_13a
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 1556
    .local v1, "_arg0":Landroid/os/UserHandle;
    sget-object v2, Landroid/net/ProfileNetworkPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1558
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/ProfileNetworkPreference;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/connectivity/android/net/IOnCompleteListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/IOnCompleteListener;

    move-result-object v3

    .line 1559
    .local v3, "_arg2":Landroid/net/connectivity/android/net/IOnCompleteListener;
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setProfileNetworkPreferences(Landroid/os/UserHandle;Ljava/util/List;Landroid/net/connectivity/android/net/IOnCompleteListener;)V

    .line 1560
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    move v11, v10

    goto/16 :goto_7d5

    .line 1544
    .end local v1    # "_arg0":Landroid/os/UserHandle;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/ProfileNetworkPreference;>;"
    .end local v3    # "_arg2":Landroid/net/connectivity/android/net/IOnCompleteListener;
    :pswitch_159
    sget-object v1, Landroid/net/OemNetworkPreferences;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/OemNetworkPreferences;

    .line 1546
    .local v1, "_arg0":Landroid/net/OemNetworkPreferences;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/android/net/IOnCompleteListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/IOnCompleteListener;

    move-result-object v2

    .line 1547
    .local v2, "_arg1":Landroid/net/connectivity/android/net/IOnCompleteListener;
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setOemNetworkPreference(Landroid/net/OemNetworkPreferences;Landroid/net/connectivity/android/net/IOnCompleteListener;)V

    .line 1548
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    move v11, v10

    goto/16 :goto_7d5

    .line 1536
    .end local v1    # "_arg0":Landroid/net/OemNetworkPreferences;
    .end local v2    # "_arg1":Landroid/net/connectivity/android/net/IOnCompleteListener;
    :pswitch_172
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/connectivity/android/net/IQosCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/IQosCallback;

    move-result-object v1

    .line 1537
    .local v1, "_arg0":Landroid/net/connectivity/android/net/IQosCallback;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->unregisterQosCallback(Landroid/net/connectivity/android/net/IQosCallback;)V

    .line 1538
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    move v11, v10

    goto/16 :goto_7d5

    .line 1526
    .end local v1    # "_arg0":Landroid/net/connectivity/android/net/IQosCallback;
    :pswitch_183
    sget-object v1, Landroid/net/QosSocketInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/QosSocketInfo;

    .line 1528
    .local v1, "_arg0":Landroid/net/QosSocketInfo;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/android/net/IQosCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/IQosCallback;

    move-result-object v2

    .line 1529
    .local v2, "_arg1":Landroid/net/connectivity/android/net/IQosCallback;
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->registerQosSocketCallback(Landroid/net/QosSocketInfo;Landroid/net/connectivity/android/net/IQosCallback;)V

    .line 1530
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1531
    move v11, v10

    goto/16 :goto_7d5

    .line 1518
    .end local v1    # "_arg0":Landroid/net/QosSocketInfo;
    .end local v2    # "_arg1":Landroid/net/connectivity/android/net/IQosCallback;
    :pswitch_19c
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->isDefaultNetworkActive()Z

    move-result v1

    .line 1519
    .local v1, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1520
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1521
    move v11, v10

    goto/16 :goto_7d5

    .line 1511
    .end local v1    # "_result":Z
    :pswitch_1a9
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/connectivity/android/net/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/INetworkActivityListener;

    move-result-object v1

    .line 1512
    .local v1, "_arg0":Landroid/net/connectivity/android/net/INetworkActivityListener;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->unregisterNetworkActivityListener(Landroid/net/connectivity/android/net/INetworkActivityListener;)V

    .line 1513
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1514
    move v11, v10

    goto/16 :goto_7d5

    .line 1503
    .end local v1    # "_arg0":Landroid/net/connectivity/android/net/INetworkActivityListener;
    :pswitch_1ba
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/connectivity/android/net/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/INetworkActivityListener;

    move-result-object v1

    .line 1504
    .restart local v1    # "_arg0":Landroid/net/connectivity/android/net/INetworkActivityListener;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->registerNetworkActivityListener(Landroid/net/connectivity/android/net/INetworkActivityListener;)V

    .line 1505
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1506
    move v11, v10

    goto/16 :goto_7d5

    .line 1496
    .end local v1    # "_arg0":Landroid/net/connectivity/android/net/INetworkActivityListener;
    :pswitch_1cb
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->systemReady()V

    .line 1497
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1498
    move v11, v10

    goto/16 :goto_7d5

    .line 1483
    :pswitch_1d4
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1485
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1487
    .local v2, "_arg1":J
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Network;

    .line 1489
    .local v4, "_arg2":Landroid/net/Network;
    sget-object v5, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    .line 1490
    .local v5, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual/range {v0 .. v5}, Landroid/net/IConnectivityManager$Stub;->simulateDataStall(IJLandroid/net/Network;Landroid/os/PersistableBundle;)V

    .line 1491
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    move v11, v10

    goto/16 :goto_7d5

    .line 1475
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Landroid/net/Network;
    .end local v5    # "_arg3":Landroid/os/PersistableBundle;
    :pswitch_1f5
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->startOrGetTestNetworkService()Landroid/os/IBinder;

    move-result-object v1

    .line 1476
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1477
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1478
    move v11, v10

    goto/16 :goto_7d5

    .line 1468
    .end local v1    # "_result":Landroid/os/IBinder;
    :pswitch_202
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityDiagnosticsCallback;

    move-result-object v1

    .line 1469
    .local v1, "_arg0":Landroid/net/IConnectivityDiagnosticsCallback;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->unregisterConnectivityDiagnosticsCallback(Landroid/net/IConnectivityDiagnosticsCallback;)V

    .line 1470
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    move v11, v10

    goto/16 :goto_7d5

    .line 1456
    .end local v1    # "_arg0":Landroid/net/IConnectivityDiagnosticsCallback;
    :pswitch_213
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityDiagnosticsCallback;

    move-result-object v1

    .line 1458
    .restart local v1    # "_arg0":Landroid/net/IConnectivityDiagnosticsCallback;
    sget-object v2, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkRequest;

    .line 1460
    .local v2, "_arg1":Landroid/net/NetworkRequest;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1461
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->registerConnectivityDiagnosticsCallback(Landroid/net/IConnectivityDiagnosticsCallback;Landroid/net/NetworkRequest;Ljava/lang/String;)V

    .line 1462
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    move v11, v10

    goto/16 :goto_7d5

    .line 1447
    .end local v1    # "_arg0":Landroid/net/IConnectivityDiagnosticsCallback;
    .end local v2    # "_arg1":Landroid/net/NetworkRequest;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_230
    sget-object v1, Landroid/net/connectivity/android/net/ConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/android/net/ConnectionInfo;

    .line 1448
    .local v1, "_arg0":Landroid/net/connectivity/android/net/ConnectionInfo;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getConnectionOwnerUid(Landroid/net/connectivity/android/net/ConnectionInfo;)I

    move-result v2

    .line 1449
    .local v2, "_result":I
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1451
    move v11, v10

    goto/16 :goto_7d5

    .line 1439
    .end local v1    # "_arg0":Landroid/net/connectivity/android/net/ConnectionInfo;
    .end local v2    # "_result":I
    :pswitch_245
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getNetworkWatchlistConfigHash()[B

    move-result-object v1

    .line 1440
    .local v1, "_result":[B
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1442
    move v11, v10

    goto/16 :goto_7d5

    .line 1432
    .end local v1    # "_result":[B
    :pswitch_252
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getCaptivePortalServerUrl()Ljava/lang/String;

    move-result-object v1

    .line 1433
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1435
    move v11, v10

    goto/16 :goto_7d5

    .line 1425
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_25f
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getSupportedKeepalives()[I

    move-result-object v1

    .line 1426
    .local v1, "_result":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1428
    move v11, v10

    goto/16 :goto_7d5

    .line 1418
    .end local v1    # "_result":[I
    :pswitch_26c
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/connectivity/android/net/ISocketKeepaliveCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;

    move-result-object v1

    .line 1419
    .local v1, "_arg0":Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->stopKeepalive(Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;)V

    .line 1420
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    move v11, v10

    goto/16 :goto_7d5

    .line 1404
    .end local v1    # "_arg0":Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;
    :pswitch_27d
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 1406
    .local v1, "_arg0":Landroid/net/Network;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 1408
    .local v2, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1410
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/connectivity/android/net/ISocketKeepaliveCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;

    move-result-object v4

    .line 1411
    .local v4, "_arg3":Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->startTcpKeepalive(Landroid/net/Network;Landroid/os/ParcelFileDescriptor;ILandroid/net/connectivity/android/net/ISocketKeepaliveCallback;)V

    .line 1412
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1413
    move v11, v10

    goto/16 :goto_7d5

    .line 1380
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;
    :pswitch_2a2
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 1382
    .restart local v1    # "_arg0":Landroid/net/Network;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 1384
    .restart local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1386
    .restart local v3    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1388
    .local v4, "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/connectivity/android/net/ISocketKeepaliveCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;

    move-result-object v5

    .line 1390
    .local v5, "_arg4":Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1392
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1394
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1396
    .local v8, "_arg7":Z
    sget-object v9, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Network;

    .line 1397
    .local v9, "_arg8":Landroid/net/Network;
    invoke-virtual/range {v0 .. v9}, Landroid/net/IConnectivityManager$Stub;->startNattKeepaliveWithFd(Landroid/net/Network;Landroid/os/ParcelFileDescriptor;IILandroid/net/connectivity/android/net/ISocketKeepaliveCallback;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Network;)V

    .line 1398
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    move-object/from16 v0, p0

    move v11, v10

    goto/16 :goto_7d5

    .line 1362
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":Z
    .end local v9    # "_arg8":Landroid/net/Network;
    :pswitch_2e1
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/Network;

    .line 1364
    .restart local v1    # "_arg0":Landroid/net/Network;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1366
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/android/net/ISocketKeepaliveCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;

    move-result-object v3

    .line 1368
    .local v3, "_arg2":Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1370
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1372
    .local v5, "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1373
    .restart local v6    # "_arg5":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/IConnectivityManager$Stub;->startNattKeepalive(Landroid/net/Network;ILandroid/net/connectivity/android/net/ISocketKeepaliveCallback;Ljava/lang/String;ILjava/lang/String;)V

    .line 1374
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    move v11, v10

    goto/16 :goto_7d5

    .line 1355
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/lang/String;
    :pswitch_30d
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->factoryReset()V

    .line 1356
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    move v11, v10

    goto/16 :goto_7d5

    .line 1347
    :pswitch_316
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1348
    .local v1, "_arg0":I
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getRestoreDefaultNetworkDelay(I)I

    move-result v2

    .line 1349
    .local v2, "_result":I
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1350
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    move v11, v10

    goto/16 :goto_7d5

    .line 1339
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_327
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getDefaultRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 1340
    .local v1, "_result":Landroid/net/NetworkRequest;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1341
    invoke-virtual {v14, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1342
    move v11, v10

    goto/16 :goto_7d5

    .line 1331
    .end local v1    # "_result":Landroid/net/NetworkRequest;
    :pswitch_334
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 1332
    .local v1, "_arg0":Landroid/net/Network;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getMultipathPreference(Landroid/net/Network;)I

    move-result v2

    .line 1333
    .restart local v2    # "_result":I
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1335
    move v11, v10

    goto/16 :goto_7d5

    .line 1323
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_result":I
    :pswitch_349
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->shouldAvoidBadWifi()Z

    move-result v1

    .line 1324
    .local v1, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1326
    move v11, v10

    goto/16 :goto_7d5

    .line 1314
    .end local v1    # "_result":Z
    :pswitch_356
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 1316
    .local v1, "_arg0":Landroid/net/Network;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1317
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->startCaptivePortalAppInternal(Landroid/net/Network;Landroid/os/Bundle;)V

    .line 1318
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    move v11, v10

    goto/16 :goto_7d5

    .line 1306
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_36f
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 1307
    .restart local v1    # "_arg0":Landroid/net/Network;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->startCaptivePortalApp(Landroid/net/Network;)V

    .line 1308
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    move v11, v10

    goto/16 :goto_7d5

    .line 1298
    .end local v1    # "_arg0":Landroid/net/Network;
    :pswitch_380
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 1299
    .restart local v1    # "_arg0":Landroid/net/Network;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setAvoidUnvalidated(Landroid/net/Network;)V

    .line 1300
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    move v11, v10

    goto/16 :goto_7d5

    .line 1286
    .end local v1    # "_arg0":Landroid/net/Network;
    :pswitch_391
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 1288
    .restart local v1    # "_arg0":Landroid/net/Network;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1290
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1291
    .local v3, "_arg2":Z
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setAcceptPartialConnectivity(Landroid/net/Network;ZZ)V

    .line 1292
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    move v11, v10

    goto/16 :goto_7d5

    .line 1274
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    :pswitch_3aa
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 1276
    .restart local v1    # "_arg0":Landroid/net/Network;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1278
    .restart local v2    # "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1279
    .restart local v3    # "_arg2":Z
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 1280
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    move v11, v10

    goto/16 :goto_7d5

    .line 1266
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    :pswitch_3c3
    sget-object v1, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .line 1267
    .local v1, "_arg0":Landroid/net/NetworkRequest;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 1268
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    move v11, v10

    goto/16 :goto_7d5

    .line 1252
    .end local v1    # "_arg0":Landroid/net/NetworkRequest;
    :pswitch_3d4
    sget-object v1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 1254
    .local v1, "_arg0":Landroid/net/NetworkCapabilities;
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 1256
    .local v2, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1258
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1259
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    move v11, v10

    goto/16 :goto_7d5

    .line 1231
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_3f5
    sget-object v1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 1233
    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 1235
    .local v2, "_arg1":Landroid/os/Messenger;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1237
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1239
    .local v4, "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1241
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1243
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1244
    .local v7, "_arg6":I
    invoke-virtual/range {v0 .. v7}, Landroid/net/IConnectivityManager$Stub;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)Landroid/net/NetworkRequest;

    move-result-object v8

    .line 1245
    .local v8, "_result":Landroid/net/NetworkRequest;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1246
    invoke-virtual {v14, v8, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1247
    move v11, v10

    goto/16 :goto_7d5

    .line 1223
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v8    # "_result":Landroid/net/NetworkRequest;
    :pswitch_426
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1224
    .local v1, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    .line 1225
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    move v11, v10

    goto/16 :goto_7d5

    .line 1208
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_437
    sget-object v1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 1210
    .local v1, "_arg0":Landroid/net/NetworkCapabilities;
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 1212
    .local v2, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1214
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1215
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkRequest;

    move-result-object v5

    .line 1216
    .local v5, "_result":Landroid/net/NetworkRequest;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    invoke-virtual {v14, v5, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1218
    move v11, v10

    goto/16 :goto_7d5

    .line 1179
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Landroid/net/NetworkRequest;
    :pswitch_45c
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1181
    .local v1, "_arg0":I
    sget-object v2, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    .line 1183
    .local v2, "_arg1":Landroid/net/NetworkCapabilities;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1185
    .local v3, "_arg2":I
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;

    .line 1187
    .local v4, "_arg3":Landroid/os/Messenger;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1189
    .local v5, "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1191
    .local v6, "_arg5":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1193
    .restart local v7    # "_arg6":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1195
    .local v8, "_arg7":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1197
    .local v9, "_arg8":Ljava/lang/String;
    move v11, v10

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1199
    .local v10, "_arg9":Ljava/lang/String;
    move/from16 v16, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1200
    .local v11, "_arg10":I
    invoke-virtual/range {v0 .. v11}, Landroid/net/IConnectivityManager$Stub;->requestNetwork(ILandroid/net/NetworkCapabilities;ILandroid/os/Messenger;ILandroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)Landroid/net/NetworkRequest;

    move-result-object v12

    .line 1201
    .local v12, "_result":Landroid/net/NetworkRequest;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    const/4 v0, 0x1

    invoke-virtual {v14, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1203
    move-object/from16 v0, p0

    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1156
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/NetworkCapabilities;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/Messenger;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Ljava/lang/String;
    .end local v10    # "_arg9":Ljava/lang/String;
    .end local v11    # "_arg10":I
    .end local v12    # "_result":Landroid/net/NetworkRequest;
    :pswitch_4a3
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkAgent;

    move-result-object v1

    .line 1158
    .local v1, "_arg0":Landroid/net/INetworkAgent;
    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1160
    .local v2, "_arg1":Landroid/net/NetworkInfo;
    sget-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/LinkProperties;

    .line 1162
    .local v3, "_arg2":Landroid/net/LinkProperties;
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/NetworkCapabilities;

    .line 1164
    .local v4, "_arg3":Landroid/net/NetworkCapabilities;
    sget-object v0, Landroid/net/NetworkScore;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/NetworkScore;

    .line 1166
    .local v5, "_arg4":Landroid/net/NetworkScore;
    sget-object v0, Landroid/net/connectivity/android/net/LocalNetworkConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/connectivity/android/net/LocalNetworkConfig;

    .line 1168
    .local v6, "_arg5":Landroid/net/connectivity/android/net/LocalNetworkConfig;
    sget-object v0, Landroid/net/NetworkAgentConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/net/NetworkAgentConfig;

    .line 1170
    .local v7, "_arg6":Landroid/net/NetworkAgentConfig;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1171
    .restart local v8    # "_arg7":I
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/net/IConnectivityManager$Stub;->registerNetworkAgent(Landroid/net/INetworkAgent;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/NetworkScore;Landroid/net/connectivity/android/net/LocalNetworkConfig;Landroid/net/NetworkAgentConfig;I)Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;

    move-result-object v9

    .line 1172
    .local v9, "_result":Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    const/4 v11, 0x1

    invoke-virtual {v14, v9, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1174
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1148
    .end local v1    # "_arg0":Landroid/net/INetworkAgent;
    .end local v2    # "_arg1":Landroid/net/NetworkInfo;
    .end local v3    # "_arg2":Landroid/net/LinkProperties;
    .end local v4    # "_arg3":Landroid/net/NetworkCapabilities;
    .end local v5    # "_arg4":Landroid/net/NetworkScore;
    .end local v6    # "_arg5":Landroid/net/connectivity/android/net/LocalNetworkConfig;
    .end local v7    # "_arg6":Landroid/net/NetworkAgentConfig;
    .end local v8    # "_arg7":I
    .end local v9    # "_result":Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;
    :pswitch_4f5
    sget-object v1, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .line 1149
    .local v1, "_arg0":Landroid/net/NetworkRequest;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->declareNetworkRequestUnfulfillable(Landroid/net/NetworkRequest;)V

    .line 1150
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1140
    .end local v1    # "_arg0":Landroid/net/NetworkRequest;
    :pswitch_506
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 1141
    .local v1, "_arg0":Landroid/os/Messenger;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->unregisterNetworkProvider(Landroid/os/Messenger;)V

    .line 1142
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1129
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :pswitch_517
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 1131
    .restart local v1    # "_arg0":Landroid/os/Messenger;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1132
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->registerNetworkProvider(Landroid/os/Messenger;Ljava/lang/String;)I

    move-result v3

    .line 1133
    .local v3, "_result":I
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1135
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1120
    .end local v1    # "_arg0":Landroid/os/Messenger;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_530
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 1121
    .local v1, "_arg0":Landroid/net/Network;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestBandwidthUpdate(Landroid/net/Network;)Z

    move-result v2

    .line 1122
    .local v2, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1124
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1112
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_result":Z
    :pswitch_545
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1113
    .local v1, "_arg0":Z
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    .line 1114
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1100
    .end local v1    # "_arg0":Z
    :pswitch_552
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1102
    .restart local v1    # "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1104
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1105
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    .line 1106
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1092
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_567
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1093
    .restart local v1    # "_arg0":Z
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setLegacyLockdownVpnEnabled(Z)V

    .line 1094
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1082
    .end local v1    # "_arg0":Z
    :pswitch_574
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1084
    .restart local v1    # "_arg0":Z
    sget-object v2, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRange;

    .line 1085
    .local v2, "_arg1":[Landroid/net/UidRange;
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setRequireVpnForUids(Z[Landroid/net/UidRange;)V

    .line 1086
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1073
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":[Landroid/net/UidRange;
    :pswitch_589
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 1074
    .local v1, "_arg0":Landroid/net/Network;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v2

    .line 1075
    .local v2, "_result":Landroid/net/ProxyInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    const/4 v11, 0x1

    invoke-virtual {v14, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1077
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1065
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_result":Landroid/net/ProxyInfo;
    :pswitch_59f
    sget-object v1, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ProxyInfo;

    .line 1066
    .local v1, "_arg0":Landroid/net/ProxyInfo;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 1067
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1057
    .end local v1    # "_arg0":Landroid/net/ProxyInfo;
    :pswitch_5b0
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 1058
    .local v1, "_result":Landroid/net/ProxyInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    const/4 v11, 0x1

    invoke-virtual {v14, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1060
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1048
    .end local v1    # "_result":Landroid/net/ProxyInfo;
    :pswitch_5be
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 1050
    .local v1, "_arg0":Landroid/net/Network;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1051
    .local v2, "_arg1":Z
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 1052
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1038
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":Z
    :pswitch_5d3
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1040
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1041
    .local v2, "_arg1":I
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 1042
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1030
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_5e4
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1033
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1023
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_5f1
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 1024
    .restart local v1    # "_result":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1026
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1016
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_5fe
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 1017
    .restart local v1    # "_result":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1019
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1009
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_60b
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 1010
    .restart local v1    # "_result":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1012
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 1002
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_618
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 1003
    .restart local v1    # "_result":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1005
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 994
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_625
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 995
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v2

    .line 996
    .local v2, "_result":I
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 979
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_636
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 981
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 983
    .local v2, "_arg1":[B
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 985
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 986
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 987
    .local v5, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    invoke-virtual {v14, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 989
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 971
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_653
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v1

    .line 972
    .local v1, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 974
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 964
    .end local v1    # "_result":Z
    :pswitch_660
    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkStateSnapshots()Ljava/util/List;

    move-result-object v1

    .line 965
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkStateSnapshot;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    const/4 v11, 0x1

    invoke-static {v14, v1, v11}, Landroid/net/IConnectivityManager$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 967
    goto/16 :goto_7d5

    .line 957
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkStateSnapshot;>;"
    :pswitch_66d
    move v11, v10

    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v1

    .line 958
    .local v1, "_result":[Landroid/net/NetworkState;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    invoke-virtual {v14, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 960
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 943
    .end local v1    # "_result":[Landroid/net/NetworkState;
    :pswitch_67b
    sget-object v1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 945
    .local v1, "_arg0":Landroid/net/NetworkCapabilities;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 947
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 949
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 950
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->getRedactedNetworkCapabilitiesForPackage(Landroid/net/NetworkCapabilities;ILjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 951
    .local v5, "_result":Landroid/net/NetworkCapabilities;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    const/4 v11, 0x1

    invoke-virtual {v14, v5, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 953
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 930
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Landroid/net/NetworkCapabilities;
    :pswitch_69d
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 932
    .local v1, "_arg0":Landroid/net/Network;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 934
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 935
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->getNetworkCapabilities(Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    .line 936
    .local v4, "_result":Landroid/net/NetworkCapabilities;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    const/4 v11, 0x1

    invoke-virtual {v14, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 938
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 915
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/net/NetworkCapabilities;
    :pswitch_6bb
    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 917
    .local v1, "_arg0":Landroid/net/LinkProperties;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 919
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 921
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 922
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->getRedactedLinkPropertiesForPackage(Landroid/net/LinkProperties;ILjava/lang/String;Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v5

    .line 923
    .local v5, "_result":Landroid/net/LinkProperties;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    const/4 v11, 0x1

    invoke-virtual {v14, v5, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 925
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 906
    .end local v1    # "_arg0":Landroid/net/LinkProperties;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Landroid/net/LinkProperties;
    :pswitch_6dd
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 907
    .local v1, "_arg0":Landroid/net/Network;
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v2

    .line 908
    .local v2, "_result":Landroid/net/LinkProperties;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    const/4 v11, 0x1

    invoke-virtual {v14, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 910
    goto/16 :goto_7d5

    .line 897
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_result":Landroid/net/LinkProperties;
    :pswitch_6f2
    move v11, v10

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 898
    .local v1, "_arg0":I
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v2

    .line 899
    .restart local v2    # "_result":Landroid/net/LinkProperties;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {v14, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 901
    goto/16 :goto_7d5

    .line 889
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/net/LinkProperties;
    :pswitch_703
    move v11, v10

    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 890
    .local v1, "_result":Landroid/net/LinkProperties;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    invoke-virtual {v14, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 892
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 881
    .end local v1    # "_result":Landroid/net/LinkProperties;
    :pswitch_711
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 882
    .local v1, "_arg0":I
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v2

    .line 883
    .local v2, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 885
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 868
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_722
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 870
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 872
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 873
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->getDefaultNetworkCapabilitiesForUser(ILjava/lang/String;Ljava/lang/String;)[Landroid/net/NetworkCapabilities;

    move-result-object v4

    .line 874
    .local v4, "_result":[Landroid/net/NetworkCapabilities;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    const/4 v11, 0x1

    invoke-virtual {v14, v4, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 876
    goto/16 :goto_7d5

    .line 860
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":[Landroid/net/NetworkCapabilities;
    :pswitch_73b
    move v11, v10

    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 861
    .local v1, "_result":[Landroid/net/Network;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    invoke-virtual {v14, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 863
    goto/16 :goto_7d5

    .line 852
    .end local v1    # "_result":[Landroid/net/Network;
    :pswitch_748
    move v11, v10

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 853
    .local v1, "_arg0":I
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v2

    .line 854
    .local v2, "_result":Landroid/net/Network;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    invoke-virtual {v14, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 856
    goto/16 :goto_7d5

    .line 844
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/net/Network;
    :pswitch_759
    move v11, v10

    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 845
    .local v1, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    invoke-virtual {v14, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 847
    const/4 v11, 0x1

    goto/16 :goto_7d5

    .line 832
    .end local v1    # "_result":[Landroid/net/NetworkInfo;
    :pswitch_767
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 834
    .local v1, "_arg0":Landroid/net/Network;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 836
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 837
    .local v3, "_arg2":Z
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 838
    .local v4, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    const/4 v11, 0x1

    invoke-virtual {v14, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 840
    goto :goto_7d5

    .line 823
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Landroid/net/NetworkInfo;
    :pswitch_783
    move v11, v10

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 824
    .local v1, "_arg0":I
    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 825
    .local v2, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {v14, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 827
    const/4 v11, 0x1

    goto :goto_7d5

    .line 812
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/net/NetworkInfo;
    :pswitch_794
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 814
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 815
    .local v2, "_arg1":Z
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 816
    .local v3, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    const/4 v11, 0x1

    invoke-virtual {v14, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 818
    goto :goto_7d5

    .line 804
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Landroid/net/NetworkInfo;
    :pswitch_7a8
    move v11, v10

    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 805
    .local v1, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    invoke-virtual {v14, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 807
    const/4 v11, 0x1

    goto :goto_7d5

    .line 794
    .end local v1    # "_result":Landroid/net/NetworkInfo;
    :pswitch_7b5
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 796
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 797
    .restart local v2    # "_arg1":Z
    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkForUid(IZ)Landroid/net/Network;

    move-result-object v3

    .line 798
    .local v3, "_result":Landroid/net/Network;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    const/4 v11, 0x1

    invoke-virtual {v14, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 800
    goto :goto_7d5

    .line 786
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Landroid/net/Network;
    :pswitch_7c9
    move v11, v10

    invoke-virtual {v0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    .line 787
    .local v1, "_result":Landroid/net/Network;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    invoke-virtual {v14, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 789
    nop

    .line 1713
    .end local v1    # "_result":Landroid/net/Network;
    :goto_7d5
    return v11

    :pswitch_data_7d6
    .packed-switch 0x1
        :pswitch_7c9
        :pswitch_7b5
        :pswitch_7a8
        :pswitch_794
        :pswitch_783
        :pswitch_767
        :pswitch_759
        :pswitch_748
        :pswitch_73b
        :pswitch_722
        :pswitch_711
        :pswitch_703
        :pswitch_6f2
        :pswitch_6dd
        :pswitch_6bb
        :pswitch_69d
        :pswitch_67b
        :pswitch_66d
        :pswitch_660
        :pswitch_653
        :pswitch_636
        :pswitch_625
        :pswitch_618
        :pswitch_60b
        :pswitch_5fe
        :pswitch_5f1
        :pswitch_5e4
        :pswitch_5d3
        :pswitch_5be
        :pswitch_5b0
        :pswitch_59f
        :pswitch_589
        :pswitch_574
        :pswitch_567
        :pswitch_552
        :pswitch_545
        :pswitch_530
        :pswitch_517
        :pswitch_506
        :pswitch_4f5
        :pswitch_4a3
        :pswitch_45c
        :pswitch_437
        :pswitch_426
        :pswitch_3f5
        :pswitch_3d4
        :pswitch_3c3
        :pswitch_3aa
        :pswitch_391
        :pswitch_380
        :pswitch_36f
        :pswitch_356
        :pswitch_349
        :pswitch_334
        :pswitch_327
        :pswitch_316
        :pswitch_30d
        :pswitch_2e1
        :pswitch_2a2
        :pswitch_27d
        :pswitch_26c
        :pswitch_25f
        :pswitch_252
        :pswitch_245
        :pswitch_230
        :pswitch_213
        :pswitch_202
        :pswitch_1f5
        :pswitch_1d4
        :pswitch_1cb
        :pswitch_1ba
        :pswitch_1a9
        :pswitch_19c
        :pswitch_183
        :pswitch_172
        :pswitch_159
        :pswitch_13a
        :pswitch_12d
        :pswitch_108
        :pswitch_f7
        :pswitch_ea
        :pswitch_dd
        :pswitch_c8
        :pswitch_b3
        :pswitch_a2
        :pswitch_91
        :pswitch_80
        :pswitch_73
        :pswitch_5e
        :pswitch_51
        :pswitch_44
        :pswitch_37
        :pswitch_26
    .end packed-switch
.end method

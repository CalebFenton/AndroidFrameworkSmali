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
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final blacklist TRANSACTION_allowLowLatencyAudio:I = 0x5b

.field static final blacklist TRANSACTION_bleOnToOff:I = 0x4f

.field static final blacklist TRANSACTION_bleOnToOn:I = 0x4e

.field static final blacklist TRANSACTION_canBondWithoutDialog:I = 0x58

.field static final blacklist TRANSACTION_cancelBondProcess:I = 0x18

.field static final blacklist TRANSACTION_cancelDiscovery:I = 0x10

.field static final blacklist TRANSACTION_connectAllEnabledProfiles:I = 0x50

.field static final blacklist TRANSACTION_createBond:I = 0x16

.field static final blacklist TRANSACTION_createBondOutOfBand:I = 0x17

.field static final blacklist TRANSACTION_disconnectAllEnabledProfiles:I = 0x51

.field static final blacklist TRANSACTION_factoryReset:I = 0x3a

.field static final blacklist TRANSACTION_fetchRemoteUuids:I = 0x25

.field static final blacklist TRANSACTION_generateLocalOobData:I = 0x5a

.field static final blacklist TRANSACTION_getActiveAudioDevicePolicy:I = 0x75

.field static final blacklist TRANSACTION_getActiveDevices:I = 0x53

.field static final blacklist TRANSACTION_getAdapterConnectionState:I = 0x13

.field static final blacklist TRANSACTION_getAddress:I = 0x4

.field static final blacklist TRANSACTION_getBatteryLevel:I = 0x27

.field static final blacklist TRANSACTION_getBluetoothAdvertise:I = 0x7b

.field static final blacklist TRANSACTION_getBluetoothGatt:I = 0x70

.field static final blacklist TRANSACTION_getBluetoothScan:I = 0x71

.field static final blacklist TRANSACTION_getBondState:I = 0x1a

.field static final blacklist TRANSACTION_getBondedDevices:I = 0x15

.field static final blacklist TRANSACTION_getConnectionHandle:I = 0x1e

.field static final blacklist TRANSACTION_getConnectionState:I = 0x1d

.field static final blacklist TRANSACTION_getDiscoverableTimeout:I = 0xd

.field static final blacklist TRANSACTION_getDiscoveryEndMillis:I = 0x12

.field static final blacklist TRANSACTION_getDistanceMeasurement:I = 0x7c

.field static final blacklist TRANSACTION_getIdentityAddress:I = 0x7

.field static final blacklist TRANSACTION_getIdentityAddressWithType:I = 0x8

.field static final blacklist TRANSACTION_getKeyMissingCount:I = 0x7d

.field static final blacklist TRANSACTION_getLeMaximumAdvertisingDataLength:I = 0x47

.field static final blacklist TRANSACTION_getMaxConnectedAudioDevices:I = 0x28

.field static final blacklist TRANSACTION_getMessageAccessPermission:I = 0x30

.field static final blacklist TRANSACTION_getMetadata:I = 0x4c

.field static final blacklist TRANSACTION_getMostRecentlyConnectedDevices:I = 0x54

.field static final blacklist TRANSACTION_getName:I = 0x9

.field static final blacklist TRANSACTION_getNameLengthForAdvertise:I = 0xa

.field static final blacklist TRANSACTION_getOffloadedTransportDiscoveryDataScanSupported:I = 0x6e

.field static final blacklist TRANSACTION_getPackageNameOfBondingApplication:I = 0x59

.field static final blacklist TRANSACTION_getPhonebookAccessPermission:I = 0x2c

.field static final blacklist TRANSACTION_getPreferredAudioProfiles:I = 0x64

.field static final blacklist TRANSACTION_getProfile:I = 0x73

.field static final blacklist TRANSACTION_getProfileConnectionState:I = 0x14

.field static final blacklist TRANSACTION_getRemoteAlias:I = 0x21

.field static final blacklist TRANSACTION_getRemoteClass:I = 0x23

.field static final blacklist TRANSACTION_getRemoteName:I = 0x1f

.field static final blacklist TRANSACTION_getRemoteType:I = 0x20

.field static final blacklist TRANSACTION_getRemoteUuids:I = 0x24

.field static final blacklist TRANSACTION_getRequestedAudioPolicyAsSink:I = 0x5e

.field static final blacklist TRANSACTION_getScanMode:I = 0xb

.field static final blacklist TRANSACTION_getSilenceMode:I = 0x2e

.field static final blacklist TRANSACTION_getSimAccessPermission:I = 0x32

.field static final blacklist TRANSACTION_getSocketManager:I = 0x37

.field static final blacklist TRANSACTION_getState:I = 0x1

.field static final blacklist TRANSACTION_getSupportedProfiles:I = 0x1c

.field static final blacklist TRANSACTION_getUuids:I = 0x5

.field static final blacklist TRANSACTION_isActivityAndEnergyReportingSupported:I = 0x3e

.field static final blacklist TRANSACTION_isBondingInitiatedLocally:I = 0x1b

.field static final blacklist TRANSACTION_isDiscovering:I = 0x11

.field static final blacklist TRANSACTION_isDistanceMeasurementSupported:I = 0x46

.field static final blacklist TRANSACTION_isDualModeAudioEnabled:I = 0x65

.field static final blacklist TRANSACTION_isLe2MPhySupported:I = 0x3f

.field static final blacklist TRANSACTION_isLeAudioBroadcastAssistantSupported:I = 0x45

.field static final blacklist TRANSACTION_isLeAudioBroadcastSourceSupported:I = 0x44

.field static final blacklist TRANSACTION_isLeAudioSupported:I = 0x43

.field static final blacklist TRANSACTION_isLeCocSocketOffloadSupported:I = 0x79

.field static final blacklist TRANSACTION_isLeCodedPhySupported:I = 0x40

.field static final blacklist TRANSACTION_isLeExtendedAdvertisingSupported:I = 0x41

.field static final blacklist TRANSACTION_isLePeriodicAdvertisingSupported:I = 0x42

.field static final blacklist TRANSACTION_isMediaProfileConnected:I = 0x6f

.field static final blacklist TRANSACTION_isMicrophonePreferredForCalls:I = 0x77

.field static final blacklist TRANSACTION_isMultiAdvertisementSupported:I = 0x3b

.field static final blacklist TRANSACTION_isOffloadedFilteringSupported:I = 0x3c

.field static final blacklist TRANSACTION_isOffloadedScanBatchingSupported:I = 0x3d

.field static final blacklist TRANSACTION_isRequestAudioPolicyAsSinkSupported:I = 0x5c

.field static final blacklist TRANSACTION_isRfcommSocketOffloadSupported:I = 0x7a

.field static final blacklist TRANSACTION_killBluetoothProcess:I = 0x78

.field static final blacklist TRANSACTION_logL2capcocClientConnection:I = 0x38

.field static final blacklist TRANSACTION_logL2capcocServerConnection:I = 0x36

.field static final blacklist TRANSACTION_logRfcommConnectionAttempt:I = 0x39

.field static final blacklist TRANSACTION_notifyActiveDeviceChangeApplied:I = 0x68

.field static final blacklist TRANSACTION_offToBleOn:I = 0x2

.field static final blacklist TRANSACTION_onToBleOn:I = 0x3

.field static final blacklist TRANSACTION_registerBluetoothConnectionCallback:I = 0x56

.field static final blacklist TRANSACTION_registerBluetoothQualityReportReadyCallback:I = 0x69

.field static final blacklist TRANSACTION_registerCallback:I = 0x34

.field static final blacklist TRANSACTION_registerHciVendorSpecificCallback:I = 0x6b

.field static final blacklist TRANSACTION_registerMetadataListener:I = 0x49

.field static final blacklist TRANSACTION_registerPreferredAudioProfilesChangedCallback:I = 0x66

.field static final blacklist TRANSACTION_removeActiveDevice:I = 0x55

.field static final blacklist TRANSACTION_removeBond:I = 0x19

.field static final blacklist TRANSACTION_reportActivityInfo:I = 0x48

.field static final blacklist TRANSACTION_requestActivityInfo:I = 0x4d

.field static final blacklist TRANSACTION_requestAudioPolicyAsSink:I = 0x5d

.field static final blacklist TRANSACTION_retrievePendingSocketForServiceRecord:I = 0x61

.field static final blacklist TRANSACTION_sdpSearch:I = 0x26

.field static final blacklist TRANSACTION_sendHciVendorSpecificCommand:I = 0x6d

.field static final blacklist TRANSACTION_setActiveAudioDevicePolicy:I = 0x74

.field static final blacklist TRANSACTION_setActiveDevice:I = 0x52

.field static final blacklist TRANSACTION_setDiscoverableTimeout:I = 0xe

.field static final blacklist TRANSACTION_setForegroundUserId:I = 0x62

.field static final blacklist TRANSACTION_setMessageAccessPermission:I = 0x31

.field static final blacklist TRANSACTION_setMetadata:I = 0x4b

.field static final blacklist TRANSACTION_setMicrophonePreferredForCalls:I = 0x76

.field static final blacklist TRANSACTION_setName:I = 0x6

.field static final blacklist TRANSACTION_setPairingConfirmation:I = 0x2b

.field static final blacklist TRANSACTION_setPasskey:I = 0x2a

.field static final blacklist TRANSACTION_setPhonebookAccessPermission:I = 0x2f

.field static final blacklist TRANSACTION_setPin:I = 0x29

.field static final blacklist TRANSACTION_setPreferredAudioProfiles:I = 0x63

.field static final blacklist TRANSACTION_setRemoteAlias:I = 0x22

.field static final blacklist TRANSACTION_setScanMode:I = 0xc

.field static final blacklist TRANSACTION_setSilenceMode:I = 0x2d

.field static final blacklist TRANSACTION_setSimAccessPermission:I = 0x33

.field static final blacklist TRANSACTION_startDiscovery:I = 0xf

.field static final blacklist TRANSACTION_startRfcommListener:I = 0x5f

.field static final blacklist TRANSACTION_stopRfcommListener:I = 0x60

.field static final blacklist TRANSACTION_unregAllGattClient:I = 0x72

.field static final blacklist TRANSACTION_unregisterBluetoothConnectionCallback:I = 0x57

.field static final blacklist TRANSACTION_unregisterBluetoothQualityReportReadyCallback:I = 0x6a

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x35

.field static final blacklist TRANSACTION_unregisterHciVendorSpecificCallback:I = 0x6c

.field static final blacklist TRANSACTION_unregisterMetadataListener:I = 0x4a

.field static final blacklist TRANSACTION_unregisterPreferredAudioProfilesChangedCallback:I = 0x67


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 521
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 522
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 530
    if-nez p0, :cond_4

    .line 531
    const/4 v0, 0x0

    return-object v0

    .line 533
    :cond_4
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 534
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_14

    .line 535
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetooth;

    return-object v1

    .line 537
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 546
    packed-switch p0, :pswitch_data_17c

    .line 1050
    const/4 v0, 0x0

    return-object v0

    .line 1046
    :pswitch_5
    const-string v0, "getKeyMissingCount"

    return-object v0

    .line 1042
    :pswitch_8
    const-string v0, "getDistanceMeasurement"

    return-object v0

    .line 1038
    :pswitch_b
    const-string v0, "getBluetoothAdvertise"

    return-object v0

    .line 1034
    :pswitch_e
    const-string v0, "isRfcommSocketOffloadSupported"

    return-object v0

    .line 1030
    :pswitch_11
    const-string v0, "isLeCocSocketOffloadSupported"

    return-object v0

    .line 1026
    :pswitch_14
    const-string v0, "killBluetoothProcess"

    return-object v0

    .line 1022
    :pswitch_17
    const-string v0, "isMicrophonePreferredForCalls"

    return-object v0

    .line 1018
    :pswitch_1a
    const-string v0, "setMicrophonePreferredForCalls"

    return-object v0

    .line 1014
    :pswitch_1d
    const-string v0, "getActiveAudioDevicePolicy"

    return-object v0

    .line 1010
    :pswitch_20
    const-string v0, "setActiveAudioDevicePolicy"

    return-object v0

    .line 1006
    :pswitch_23
    const-string v0, "getProfile"

    return-object v0

    .line 1002
    :pswitch_26
    const-string v0, "unregAllGattClient"

    return-object v0

    .line 998
    :pswitch_29
    const-string v0, "getBluetoothScan"

    return-object v0

    .line 994
    :pswitch_2c
    const-string v0, "getBluetoothGatt"

    return-object v0

    .line 990
    :pswitch_2f
    const-string v0, "isMediaProfileConnected"

    return-object v0

    .line 986
    :pswitch_32
    const-string v0, "getOffloadedTransportDiscoveryDataScanSupported"

    return-object v0

    .line 982
    :pswitch_35
    const-string v0, "sendHciVendorSpecificCommand"

    return-object v0

    .line 978
    :pswitch_38
    const-string v0, "unregisterHciVendorSpecificCallback"

    return-object v0

    .line 974
    :pswitch_3b
    const-string v0, "registerHciVendorSpecificCallback"

    return-object v0

    .line 970
    :pswitch_3e
    const-string v0, "unregisterBluetoothQualityReportReadyCallback"

    return-object v0

    .line 966
    :pswitch_41
    const-string v0, "registerBluetoothQualityReportReadyCallback"

    return-object v0

    .line 962
    :pswitch_44
    const-string v0, "notifyActiveDeviceChangeApplied"

    return-object v0

    .line 958
    :pswitch_47
    const-string v0, "unregisterPreferredAudioProfilesChangedCallback"

    return-object v0

    .line 954
    :pswitch_4a
    const-string v0, "registerPreferredAudioProfilesChangedCallback"

    return-object v0

    .line 950
    :pswitch_4d
    const-string v0, "isDualModeAudioEnabled"

    return-object v0

    .line 946
    :pswitch_50
    const-string v0, "getPreferredAudioProfiles"

    return-object v0

    .line 942
    :pswitch_53
    const-string v0, "setPreferredAudioProfiles"

    return-object v0

    .line 938
    :pswitch_56
    const-string v0, "setForegroundUserId"

    return-object v0

    .line 934
    :pswitch_59
    const-string v0, "retrievePendingSocketForServiceRecord"

    return-object v0

    .line 930
    :pswitch_5c
    const-string v0, "stopRfcommListener"

    return-object v0

    .line 926
    :pswitch_5f
    const-string v0, "startRfcommListener"

    return-object v0

    .line 922
    :pswitch_62
    const-string v0, "getRequestedAudioPolicyAsSink"

    return-object v0

    .line 918
    :pswitch_65
    const-string v0, "requestAudioPolicyAsSink"

    return-object v0

    .line 914
    :pswitch_68
    const-string v0, "isRequestAudioPolicyAsSinkSupported"

    return-object v0

    .line 910
    :pswitch_6b
    const-string v0, "allowLowLatencyAudio"

    return-object v0

    .line 906
    :pswitch_6e
    const-string v0, "generateLocalOobData"

    return-object v0

    .line 902
    :pswitch_71
    const-string v0, "getPackageNameOfBondingApplication"

    return-object v0

    .line 898
    :pswitch_74
    const-string v0, "canBondWithoutDialog"

    return-object v0

    .line 894
    :pswitch_77
    const-string v0, "unregisterBluetoothConnectionCallback"

    return-object v0

    .line 890
    :pswitch_7a
    const-string v0, "registerBluetoothConnectionCallback"

    return-object v0

    .line 886
    :pswitch_7d
    const-string v0, "removeActiveDevice"

    return-object v0

    .line 882
    :pswitch_80
    const-string v0, "getMostRecentlyConnectedDevices"

    return-object v0

    .line 878
    :pswitch_83
    const-string v0, "getActiveDevices"

    return-object v0

    .line 874
    :pswitch_86
    const-string v0, "setActiveDevice"

    return-object v0

    .line 870
    :pswitch_89
    const-string v0, "disconnectAllEnabledProfiles"

    return-object v0

    .line 866
    :pswitch_8c
    const-string v0, "connectAllEnabledProfiles"

    return-object v0

    .line 862
    :pswitch_8f
    const-string v0, "bleOnToOff"

    return-object v0

    .line 858
    :pswitch_92
    const-string v0, "bleOnToOn"

    return-object v0

    .line 854
    :pswitch_95
    const-string v0, "requestActivityInfo"

    return-object v0

    .line 850
    :pswitch_98
    const-string v0, "getMetadata"

    return-object v0

    .line 846
    :pswitch_9b
    const-string v0, "setMetadata"

    return-object v0

    .line 842
    :pswitch_9e
    const-string v0, "unregisterMetadataListener"

    return-object v0

    .line 838
    :pswitch_a1
    const-string v0, "registerMetadataListener"

    return-object v0

    .line 834
    :pswitch_a4
    const-string v0, "reportActivityInfo"

    return-object v0

    .line 830
    :pswitch_a7
    const-string v0, "getLeMaximumAdvertisingDataLength"

    return-object v0

    .line 826
    :pswitch_aa
    const-string v0, "isDistanceMeasurementSupported"

    return-object v0

    .line 822
    :pswitch_ad
    const-string v0, "isLeAudioBroadcastAssistantSupported"

    return-object v0

    .line 818
    :pswitch_b0
    const-string v0, "isLeAudioBroadcastSourceSupported"

    return-object v0

    .line 814
    :pswitch_b3
    const-string v0, "isLeAudioSupported"

    return-object v0

    .line 810
    :pswitch_b6
    const-string v0, "isLePeriodicAdvertisingSupported"

    return-object v0

    .line 806
    :pswitch_b9
    const-string v0, "isLeExtendedAdvertisingSupported"

    return-object v0

    .line 802
    :pswitch_bc
    const-string v0, "isLeCodedPhySupported"

    return-object v0

    .line 798
    :pswitch_bf
    const-string v0, "isLe2MPhySupported"

    return-object v0

    .line 794
    :pswitch_c2
    const-string v0, "isActivityAndEnergyReportingSupported"

    return-object v0

    .line 790
    :pswitch_c5
    const-string v0, "isOffloadedScanBatchingSupported"

    return-object v0

    .line 786
    :pswitch_c8
    const-string v0, "isOffloadedFilteringSupported"

    return-object v0

    .line 782
    :pswitch_cb
    const-string v0, "isMultiAdvertisementSupported"

    return-object v0

    .line 778
    :pswitch_ce
    const-string v0, "factoryReset"

    return-object v0

    .line 774
    :pswitch_d1
    const-string v0, "logRfcommConnectionAttempt"

    return-object v0

    .line 770
    :pswitch_d4
    const-string v0, "logL2capcocClientConnection"

    return-object v0

    .line 766
    :pswitch_d7
    const-string v0, "getSocketManager"

    return-object v0

    .line 762
    :pswitch_da
    const-string v0, "logL2capcocServerConnection"

    return-object v0

    .line 758
    :pswitch_dd
    const-string v0, "unregisterCallback"

    return-object v0

    .line 754
    :pswitch_e0
    const-string v0, "registerCallback"

    return-object v0

    .line 750
    :pswitch_e3
    const-string v0, "setSimAccessPermission"

    return-object v0

    .line 746
    :pswitch_e6
    const-string v0, "getSimAccessPermission"

    return-object v0

    .line 742
    :pswitch_e9
    const-string v0, "setMessageAccessPermission"

    return-object v0

    .line 738
    :pswitch_ec
    const-string v0, "getMessageAccessPermission"

    return-object v0

    .line 734
    :pswitch_ef
    const-string v0, "setPhonebookAccessPermission"

    return-object v0

    .line 730
    :pswitch_f2
    const-string v0, "getSilenceMode"

    return-object v0

    .line 726
    :pswitch_f5
    const-string v0, "setSilenceMode"

    return-object v0

    .line 722
    :pswitch_f8
    const-string v0, "getPhonebookAccessPermission"

    return-object v0

    .line 718
    :pswitch_fb
    const-string v0, "setPairingConfirmation"

    return-object v0

    .line 714
    :pswitch_fe
    const-string v0, "setPasskey"

    return-object v0

    .line 710
    :pswitch_101
    const-string v0, "setPin"

    return-object v0

    .line 706
    :pswitch_104
    const-string v0, "getMaxConnectedAudioDevices"

    return-object v0

    .line 702
    :pswitch_107
    const-string v0, "getBatteryLevel"

    return-object v0

    .line 698
    :pswitch_10a
    const-string v0, "sdpSearch"

    return-object v0

    .line 694
    :pswitch_10d
    const-string v0, "fetchRemoteUuids"

    return-object v0

    .line 690
    :pswitch_110
    const-string v0, "getRemoteUuids"

    return-object v0

    .line 686
    :pswitch_113
    const-string v0, "getRemoteClass"

    return-object v0

    .line 682
    :pswitch_116
    const-string v0, "setRemoteAlias"

    return-object v0

    .line 678
    :pswitch_119
    const-string v0, "getRemoteAlias"

    return-object v0

    .line 674
    :pswitch_11c
    const-string v0, "getRemoteType"

    return-object v0

    .line 670
    :pswitch_11f
    const-string v0, "getRemoteName"

    return-object v0

    .line 666
    :pswitch_122
    const-string v0, "getConnectionHandle"

    return-object v0

    .line 662
    :pswitch_125
    const-string v0, "getConnectionState"

    return-object v0

    .line 658
    :pswitch_128
    const-string v0, "getSupportedProfiles"

    return-object v0

    .line 654
    :pswitch_12b
    const-string v0, "isBondingInitiatedLocally"

    return-object v0

    .line 650
    :pswitch_12e
    const-string v0, "getBondState"

    return-object v0

    .line 646
    :pswitch_131
    const-string v0, "removeBond"

    return-object v0

    .line 642
    :pswitch_134
    const-string v0, "cancelBondProcess"

    return-object v0

    .line 638
    :pswitch_137
    const-string v0, "createBondOutOfBand"

    return-object v0

    .line 634
    :pswitch_13a
    const-string v0, "createBond"

    return-object v0

    .line 630
    :pswitch_13d
    const-string v0, "getBondedDevices"

    return-object v0

    .line 626
    :pswitch_140
    const-string v0, "getProfileConnectionState"

    return-object v0

    .line 622
    :pswitch_143
    const-string v0, "getAdapterConnectionState"

    return-object v0

    .line 618
    :pswitch_146
    const-string v0, "getDiscoveryEndMillis"

    return-object v0

    .line 614
    :pswitch_149
    const-string v0, "isDiscovering"

    return-object v0

    .line 610
    :pswitch_14c
    const-string v0, "cancelDiscovery"

    return-object v0

    .line 606
    :pswitch_14f
    const-string v0, "startDiscovery"

    return-object v0

    .line 602
    :pswitch_152
    const-string v0, "setDiscoverableTimeout"

    return-object v0

    .line 598
    :pswitch_155
    const-string v0, "getDiscoverableTimeout"

    return-object v0

    .line 594
    :pswitch_158
    const-string v0, "setScanMode"

    return-object v0

    .line 590
    :pswitch_15b
    const-string v0, "getScanMode"

    return-object v0

    .line 586
    :pswitch_15e
    const-string v0, "getNameLengthForAdvertise"

    return-object v0

    .line 582
    :pswitch_161
    const-string v0, "getName"

    return-object v0

    .line 578
    :pswitch_164
    const-string v0, "getIdentityAddressWithType"

    return-object v0

    .line 574
    :pswitch_167
    const-string v0, "getIdentityAddress"

    return-object v0

    .line 570
    :pswitch_16a
    const-string v0, "setName"

    return-object v0

    .line 566
    :pswitch_16d
    const-string v0, "getUuids"

    return-object v0

    .line 562
    :pswitch_170
    const-string v0, "getAddress"

    return-object v0

    .line 558
    :pswitch_173
    const-string v0, "onToBleOn"

    return-object v0

    .line 554
    :pswitch_176
    const-string v0, "offToBleOn"

    return-object v0

    .line 550
    :pswitch_179
    const-string v0, "getState"

    return-object v0

    :pswitch_data_17c
    .packed-switch 0x1
        :pswitch_179
        :pswitch_176
        :pswitch_173
        :pswitch_170
        :pswitch_16d
        :pswitch_16a
        :pswitch_167
        :pswitch_164
        :pswitch_161
        :pswitch_15e
        :pswitch_15b
        :pswitch_158
        :pswitch_155
        :pswitch_152
        :pswitch_14f
        :pswitch_14c
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_140
        :pswitch_13d
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
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

    .line 541
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 4895
    const/16 v0, 0x7c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 1057
    invoke-static {p1}, Landroid/bluetooth/IBluetooth$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 1061
    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "android.bluetooth.IBluetooth"

    .line 1062
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v13, v12, :cond_15

    const v1, 0xffffff

    if-gt v13, v1, :cond_15

    .line 1063
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    :cond_15
    const v1, 0x5f4e5446

    if-ne v13, v1, :cond_1e

    .line 1066
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1067
    return v12

    .line 1069
    :cond_1e
    packed-switch v13, :pswitch_data_e8c

    .line 2476
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 2465
    :pswitch_26
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2467
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2468
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2469
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getKeyMissingCount(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v3

    .line 2470
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2471
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2472
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2457
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    :pswitch_48
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->getDistanceMeasurement()Landroid/os/IBinder;

    move-result-object v1

    .line 2458
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2459
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2460
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2450
    .end local v1    # "_result":Landroid/os/IBinder;
    :pswitch_57
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->getBluetoothAdvertise()Landroid/os/IBinder;

    move-result-object v1

    .line 2451
    .restart local v1    # "_result":Landroid/os/IBinder;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2452
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2453
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2441
    .end local v1    # "_result":Landroid/os/IBinder;
    :pswitch_66
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 2442
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2443
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->isRfcommSocketOffloadSupported(Landroid/content/AttributionSource;)Z

    move-result v2

    .line 2444
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2445
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2446
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2431
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Z
    :pswitch_80
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 2432
    .restart local v1    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2433
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->isLeCocSocketOffloadSupported(Landroid/content/AttributionSource;)Z

    move-result v2

    .line 2434
    .restart local v2    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2435
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2436
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2425
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Z
    :pswitch_9a
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->killBluetoothProcess()V

    .line 2426
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2414
    :pswitch_a2
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2416
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2417
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2418
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->isMicrophonePreferredForCalls(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v3

    .line 2419
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2420
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2421
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2400
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    :pswitch_c4
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2402
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2404
    .local v2, "_arg1":Z
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 2405
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2406
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setMicrophonePreferredForCalls(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)I

    move-result v4

    .line 2407
    .local v4, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2408
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2409
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2388
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_ea
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2390
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2391
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2392
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getActiveAudioDevicePolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v3

    .line 2393
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2394
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2395
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2374
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    :pswitch_10c
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2376
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2378
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 2379
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2380
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setActiveAudioDevicePolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)I

    move-result v4

    .line 2381
    .restart local v4    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2382
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2383
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2364
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_132
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2365
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2366
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getProfile(I)Landroid/os/IBinder;

    move-result-object v2

    .line 2367
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2368
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2369
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2356
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_148
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 2357
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2358
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->unregAllGattClient(Landroid/content/AttributionSource;)V

    .line 2359
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2348
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    :pswitch_15b
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->getBluetoothScan()Landroid/os/IBinder;

    move-result-object v1

    .line 2349
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2350
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2351
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2341
    .end local v1    # "_result":Landroid/os/IBinder;
    :pswitch_16a
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->getBluetoothGatt()Landroid/os/IBinder;

    move-result-object v1

    .line 2342
    .restart local v1    # "_result":Landroid/os/IBinder;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2343
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2344
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2332
    .end local v1    # "_result":Landroid/os/IBinder;
    :pswitch_179
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 2333
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2334
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->isMediaProfileConnected(Landroid/content/AttributionSource;)Z

    move-result v2

    .line 2335
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2336
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2337
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2322
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Z
    :pswitch_193
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 2323
    .restart local v1    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2324
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getOffloadedTransportDiscoveryDataScanSupported(Landroid/content/AttributionSource;)I

    move-result v2

    .line 2325
    .local v2, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2326
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2327
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2309
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":I
    :pswitch_1ad
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2311
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 2313
    .local v2, "_arg1":[B
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

    move-result-object v3

    .line 2314
    .local v3, "_arg2":Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2315
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->sendHciVendorSpecificCommand(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V

    .line 2316
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2317
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2300
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;
    :pswitch_1cb
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

    move-result-object v1

    .line 2301
    .local v1, "_arg0":Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2302
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->unregisterHciVendorSpecificCallback(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V

    .line 2303
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2304
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2289
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;
    :pswitch_1e1
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

    move-result-object v1

    .line 2291
    .restart local v1    # "_arg0":Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 2292
    .local v2, "_arg1":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2293
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->registerHciVendorSpecificCallback(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;[I)V

    .line 2294
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2295
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2277
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;
    .end local v2    # "_arg1":[I
    :pswitch_1fb
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothQualityReportReadyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothQualityReportReadyCallback;

    move-result-object v1

    .line 2279
    .local v1, "_arg0":Landroid/bluetooth/IBluetoothQualityReportReadyCallback;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2280
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2281
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->unregisterBluetoothQualityReportReadyCallback(Landroid/bluetooth/IBluetoothQualityReportReadyCallback;Landroid/content/AttributionSource;)I

    move-result v3

    .line 2282
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2283
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2284
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2265
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothQualityReportReadyCallback;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    :pswitch_21d
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothQualityReportReadyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothQualityReportReadyCallback;

    move-result-object v1

    .line 2267
    .restart local v1    # "_arg0":Landroid/bluetooth/IBluetoothQualityReportReadyCallback;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2268
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2269
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->registerBluetoothQualityReportReadyCallback(Landroid/bluetooth/IBluetoothQualityReportReadyCallback;Landroid/content/AttributionSource;)I

    move-result v3

    .line 2270
    .restart local v3    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2271
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2272
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2253
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothQualityReportReadyCallback;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    :pswitch_23f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2255
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2256
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2257
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->notifyActiveDeviceChangeApplied(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v3

    .line 2258
    .restart local v3    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2259
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2260
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2241
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    :pswitch_261
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback;

    move-result-object v1

    .line 2243
    .local v1, "_arg0":Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2244
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2245
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->unregisterPreferredAudioProfilesChangedCallback(Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback;Landroid/content/AttributionSource;)I

    move-result v3

    .line 2246
    .restart local v3    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2247
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2248
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2229
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    :pswitch_283
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback;

    move-result-object v1

    .line 2231
    .restart local v1    # "_arg0":Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2232
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2233
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->registerPreferredAudioProfilesChangedCallback(Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback;Landroid/content/AttributionSource;)I

    move-result v3

    .line 2234
    .restart local v3    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2235
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2236
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2219
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    :pswitch_2a5
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 2220
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2221
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->isDualModeAudioEnabled(Landroid/content/AttributionSource;)I

    move-result v2

    .line 2222
    .local v2, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2223
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2224
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2207
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":I
    :pswitch_2bf
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2209
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2210
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2211
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getPreferredAudioProfiles(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Landroid/os/Bundle;

    move-result-object v3

    .line 2212
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2213
    invoke-virtual {v15, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2214
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2193
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_2e1
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2195
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 2197
    .local v2, "_arg1":Landroid/os/Bundle;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 2198
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2199
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setPreferredAudioProfiles(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;Landroid/content/AttributionSource;)I

    move-result v4

    .line 2200
    .restart local v4    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2201
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2202
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2183
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_30b
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2185
    .local v1, "_arg0":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2186
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2187
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setForegroundUserId(ILandroid/content/AttributionSource;)V

    .line 2188
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2171
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_322
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 2173
    .local v1, "_arg0":Landroid/os/ParcelUuid;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2174
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2175
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->retrievePendingSocketForServiceRecord(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)Landroid/bluetooth/IncomingRfcommSocketInfo;

    move-result-object v3

    .line 2176
    .local v3, "_result":Landroid/bluetooth/IncomingRfcommSocketInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2177
    invoke-virtual {v15, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2178
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2159
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Landroid/bluetooth/IncomingRfcommSocketInfo;
    :pswitch_344
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 2161
    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2162
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2163
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->stopRfcommListener(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)I

    move-result v3

    .line 2164
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2165
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2166
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2143
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    :pswitch_366
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2145
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 2147
    .local v2, "_arg1":Landroid/os/ParcelUuid;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 2149
    .local v3, "_arg2":Landroid/app/PendingIntent;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 2150
    .local v4, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2151
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->startRfcommListener(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/app/PendingIntent;Landroid/content/AttributionSource;)I

    move-result v5

    .line 2152
    .local v5, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2153
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2154
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2131
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    .end local v4    # "_arg3":Landroid/content/AttributionSource;
    .end local v5    # "_result":I
    :pswitch_394
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2133
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2134
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2135
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getRequestedAudioPolicyAsSink(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothSinkAudioPolicy;

    move-result-object v3

    .line 2136
    .local v3, "_result":Landroid/bluetooth/BluetoothSinkAudioPolicy;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2137
    invoke-virtual {v15, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2138
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2117
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Landroid/bluetooth/BluetoothSinkAudioPolicy;
    :pswitch_3b6
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2119
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/bluetooth/BluetoothSinkAudioPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothSinkAudioPolicy;

    .line 2121
    .local v2, "_arg1":Landroid/bluetooth/BluetoothSinkAudioPolicy;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 2122
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2123
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->requestAudioPolicyAsSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSinkAudioPolicy;Landroid/content/AttributionSource;)I

    move-result v4

    .line 2124
    .local v4, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2125
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2105
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothSinkAudioPolicy;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_3e0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2107
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2108
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2109
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->isRequestAudioPolicyAsSinkSupported(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v3

    .line 2110
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2111
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2112
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2093
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    :pswitch_402
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2095
    .local v1, "_arg0":Z
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 2096
    .local v2, "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2097
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->allowLowLatencyAudio(ZLandroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 2098
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2099
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2100
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2080
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :pswitch_420
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2082
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothOobDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothOobDataCallback;

    move-result-object v2

    .line 2084
    .local v2, "_arg1":Landroid/bluetooth/IBluetoothOobDataCallback;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 2085
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2086
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->generateLocalOobData(ILandroid/bluetooth/IBluetoothOobDataCallback;Landroid/content/AttributionSource;)V

    .line 2087
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2088
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2068
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/bluetooth/IBluetoothOobDataCallback;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_442
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2070
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2071
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2072
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getPackageNameOfBondingApplication(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v3

    .line 2073
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2074
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2075
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2056
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_464
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2058
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2059
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2060
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->canBondWithoutDialog(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v3

    .line 2061
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2062
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2063
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2046
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    :pswitch_486
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothConnectionCallback;

    move-result-object v1

    .line 2048
    .local v1, "_arg0":Landroid/bluetooth/IBluetoothConnectionCallback;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2049
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2050
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->unregisterBluetoothConnectionCallback(Landroid/bluetooth/IBluetoothConnectionCallback;Landroid/content/AttributionSource;)V

    .line 2051
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2036
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothConnectionCallback;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_4a1
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothConnectionCallback;

    move-result-object v1

    .line 2038
    .restart local v1    # "_arg0":Landroid/bluetooth/IBluetoothConnectionCallback;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2039
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2040
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->registerBluetoothConnectionCallback(Landroid/bluetooth/IBluetoothConnectionCallback;Landroid/content/AttributionSource;)V

    .line 2041
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2024
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothConnectionCallback;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_4bc
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2026
    .local v1, "_arg0":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2027
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2028
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->removeActiveDevice(ILandroid/content/AttributionSource;)Z

    move-result v3

    .line 2029
    .restart local v3    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2030
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2031
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2014
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    :pswitch_4da
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 2015
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2016
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getMostRecentlyConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2

    .line 2017
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2018
    invoke-static {v15, v2, v12}, Landroid/bluetooth/IBluetooth$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 2019
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 2002
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_4f4
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2004
    .local v1, "_arg0":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 2005
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2006
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getActiveDevices(ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v3

    .line 2007
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2008
    invoke-static {v15, v3, v12}, Landroid/bluetooth/IBluetooth$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 2009
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1988
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_512
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1990
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1992
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 1993
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1994
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v4

    .line 1995
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1996
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1997
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1976
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_538
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1978
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1979
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1980
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->disconnectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v3

    .line 1981
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1982
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1983
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1964
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    :pswitch_55a
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1966
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1967
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1968
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->connectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v3

    .line 1969
    .restart local v3    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1970
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1971
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1956
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    :pswitch_57c
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1957
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1958
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->bleOnToOff(Landroid/content/AttributionSource;)V

    .line 1959
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1948
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    :pswitch_58f
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1949
    .restart local v1    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1950
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->bleOnToOn(Landroid/content/AttributionSource;)V

    .line 1951
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1938
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    :pswitch_5a2
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothActivityEnergyInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothActivityEnergyInfoListener;

    move-result-object v1

    .line 1940
    .local v1, "_arg0":Landroid/bluetooth/IBluetoothActivityEnergyInfoListener;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1941
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1942
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->requestActivityInfo(Landroid/bluetooth/IBluetoothActivityEnergyInfoListener;Landroid/content/AttributionSource;)V

    .line 1943
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1924
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothActivityEnergyInfoListener;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_5bd
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1926
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1928
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 1929
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1930
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->getMetadata(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)[B

    move-result-object v4

    .line 1931
    .local v4, "_result":[B
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1932
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1933
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1908
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":[B
    :pswitch_5e3
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1910
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1912
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1914
    .local v3, "_arg2":[B
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 1915
    .local v4, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1916
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setMetadata(Landroid/bluetooth/BluetoothDevice;I[BLandroid/content/AttributionSource;)Z

    move-result v5

    .line 1917
    .local v5, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1918
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1919
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1894
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :pswitch_60d
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothMetadataListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothMetadataListener;

    move-result-object v1

    .line 1896
    .local v1, "_arg0":Landroid/bluetooth/IBluetoothMetadataListener;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1898
    .local v2, "_arg1":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 1899
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1900
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->unregisterMetadataListener(Landroid/bluetooth/IBluetoothMetadataListener;Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v4

    .line 1901
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1902
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1903
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1880
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothMetadataListener;
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_637
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothMetadataListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothMetadataListener;

    move-result-object v1

    .line 1882
    .restart local v1    # "_arg0":Landroid/bluetooth/IBluetoothMetadataListener;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1884
    .restart local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 1885
    .restart local v3    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1886
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->registerMetadataListener(Landroid/bluetooth/IBluetoothMetadataListener;Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v4

    .line 1887
    .restart local v4    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1888
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1889
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1870
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothMetadataListener;
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_661
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1871
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1872
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->reportActivityInfo(Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v2

    .line 1873
    .local v2, "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1874
    invoke-virtual {v15, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1875
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1862
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :pswitch_67b
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->getLeMaximumAdvertisingDataLength()I

    move-result v1

    .line 1863
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1864
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1865
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1853
    .end local v1    # "_result":I
    :pswitch_68a
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1854
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1855
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->isDistanceMeasurementSupported(Landroid/content/AttributionSource;)I

    move-result v2

    .line 1856
    .local v2, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1857
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1858
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1845
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":I
    :pswitch_6a4
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->isLeAudioBroadcastAssistantSupported()I

    move-result v1

    .line 1846
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1847
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1848
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1838
    .end local v1    # "_result":I
    :pswitch_6b3
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->isLeAudioBroadcastSourceSupported()I

    move-result v1

    .line 1839
    .restart local v1    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1840
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1841
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1831
    .end local v1    # "_result":I
    :pswitch_6c2
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->isLeAudioSupported()I

    move-result v1

    .line 1832
    .restart local v1    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1833
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1834
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1824
    .end local v1    # "_result":I
    :pswitch_6d1
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->isLePeriodicAdvertisingSupported()Z

    move-result v1

    .line 1825
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1826
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1827
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1817
    .end local v1    # "_result":Z
    :pswitch_6e0
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->isLeExtendedAdvertisingSupported()Z

    move-result v1

    .line 1818
    .restart local v1    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1819
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1820
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1810
    .end local v1    # "_result":Z
    :pswitch_6ef
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->isLeCodedPhySupported()Z

    move-result v1

    .line 1811
    .restart local v1    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1812
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1813
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1803
    .end local v1    # "_result":Z
    :pswitch_6fe
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->isLe2MPhySupported()Z

    move-result v1

    .line 1804
    .restart local v1    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1805
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1806
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1796
    .end local v1    # "_result":Z
    :pswitch_70d
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->isActivityAndEnergyReportingSupported()Z

    move-result v1

    .line 1797
    .restart local v1    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1799
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1789
    .end local v1    # "_result":Z
    :pswitch_71c
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedScanBatchingSupported()Z

    move-result v1

    .line 1790
    .restart local v1    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1791
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1792
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1782
    .end local v1    # "_result":Z
    :pswitch_72b
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedFilteringSupported()Z

    move-result v1

    .line 1783
    .restart local v1    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1784
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1785
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1775
    .end local v1    # "_result":Z
    :pswitch_73a
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->isMultiAdvertisementSupported()Z

    move-result v1

    .line 1776
    .restart local v1    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1777
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1778
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1766
    .end local v1    # "_result":Z
    :pswitch_749
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1767
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1768
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->factoryReset(Landroid/content/AttributionSource;)Z

    move-result v2

    .line 1769
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1770
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1771
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1749
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Z
    :pswitch_763
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1751
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1753
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1755
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1757
    .local v4, "_arg3":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1758
    .local v6, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1759
    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetooth$Stub;->logRfcommConnectionAttempt(Landroid/bluetooth/BluetoothDevice;ZIJZ)V

    .line 1760
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1761
    move-object/from16 v0, p0

    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1728
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":J
    .end local v6    # "_arg4":Z
    :pswitch_78b
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1730
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1732
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1734
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1736
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 1738
    .local v5, "_arg4":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1740
    .local v7, "_arg5":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 1741
    .local v9, "_arg6":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1742
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Landroid/bluetooth/IBluetooth$Stub;->logL2capcocClientConnection(Landroid/bluetooth/BluetoothDevice;IZIJJJ)V

    .line 1743
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1744
    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1720
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":J
    .end local v7    # "_arg5":J
    .end local v9    # "_arg6":J
    :pswitch_7bc
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getSocketManager()Landroid/bluetooth/IBluetoothSocketManager;

    move-result-object v0

    .line 1721
    .local v0, "_result":Landroid/bluetooth/IBluetoothSocketManager;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1723
    move-object/from16 v0, p0

    move-object/from16 v16, v11

    move v13, v12

    goto/16 :goto_e8b

    .line 1698
    .end local v0    # "_result":Landroid/bluetooth/IBluetoothSocketManager;
    :pswitch_7cd
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1700
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1702
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1704
    .restart local v3    # "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1706
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 1708
    .restart local v5    # "_arg4":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1710
    .restart local v7    # "_arg5":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 1712
    .restart local v9    # "_arg6":J
    move-object v0, v11

    move/from16 v16, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v0, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 1713
    .local v11, "_arg7":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1714
    move/from16 v13, v16

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    .end local v0    # "descriptor":Ljava/lang/String;
    .local v16, "descriptor":Ljava/lang/String;
    invoke-virtual/range {v0 .. v12}, Landroid/bluetooth/IBluetooth$Stub;->logL2capcocServerConnection(Landroid/bluetooth/BluetoothDevice;IZIJJJJ)V

    .line 1715
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1716
    goto/16 :goto_e8b

    .line 1688
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":J
    .end local v7    # "_arg5":J
    .end local v9    # "_arg6":J
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_806
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v1

    .line 1690
    .local v1, "_arg0":Landroid/bluetooth/IBluetoothCallback;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1691
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1692
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;)V

    .line 1693
    goto/16 :goto_e8b

    .line 1678
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_821
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v1

    .line 1680
    .restart local v1    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1681
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1682
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->registerCallback(Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;)V

    .line 1683
    goto/16 :goto_e8b

    .line 1664
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_83c
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1666
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1668
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 1669
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1670
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v4

    .line 1671
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1672
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1673
    goto/16 :goto_e8b

    .line 1652
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_862
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1654
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1655
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1656
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v3

    .line 1657
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1658
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1659
    goto/16 :goto_e8b

    .line 1638
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_884
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1640
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1642
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 1643
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1644
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v4

    .line 1645
    .restart local v4    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1646
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1647
    goto/16 :goto_e8b

    .line 1626
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8aa
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1628
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1629
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1630
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v3

    .line 1631
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1632
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1633
    goto/16 :goto_e8b

    .line 1612
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8cc
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1614
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1616
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 1617
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1618
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v4

    .line 1619
    .restart local v4    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1621
    goto/16 :goto_e8b

    .line 1600
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8f2
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1602
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1603
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1604
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getSilenceMode(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v3

    .line 1605
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1606
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1607
    goto/16 :goto_e8b

    .line 1586
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_914
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1588
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1590
    .local v2, "_arg1":Z
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 1591
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1592
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setSilenceMode(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)Z

    move-result v4

    .line 1593
    .restart local v4    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1594
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1595
    goto/16 :goto_e8b

    .line 1574
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_93a
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1576
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1577
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1578
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v3

    .line 1579
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    goto/16 :goto_e8b

    .line 1560
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_95c
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1562
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1564
    .local v2, "_arg1":Z
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 1565
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1566
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)Z

    move-result v4

    .line 1567
    .restart local v4    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1568
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1569
    goto/16 :goto_e8b

    .line 1542
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_982
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1544
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1546
    .restart local v2    # "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1548
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 1550
    .local v4, "_arg3":[B
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 1551
    .local v5, "_arg4":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1552
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[BLandroid/content/AttributionSource;)Z

    move-result v6

    .line 1553
    .local v6, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1554
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1555
    move-object/from16 v0, p0

    goto/16 :goto_e8b

    .line 1524
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":Landroid/content/AttributionSource;
    .end local v6    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9b2
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1526
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1528
    .restart local v2    # "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1530
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 1532
    .restart local v4    # "_arg3":[B
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/AttributionSource;

    .line 1533
    .restart local v5    # "_arg4":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1534
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[BLandroid/content/AttributionSource;)Z

    move-result v6

    .line 1535
    .restart local v6    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1536
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1537
    goto/16 :goto_e8b

    .line 1514
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":Landroid/content/AttributionSource;
    .end local v6    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9e4
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1515
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1516
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getMaxConnectedAudioDevices(Landroid/content/AttributionSource;)I

    move-result v2

    .line 1517
    .local v2, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1519
    goto/16 :goto_e8b

    .line 1502
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9fe
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1504
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1505
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1506
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getBatteryLevel(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v3

    .line 1507
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1508
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1509
    goto/16 :goto_e8b

    .line 1488
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a20
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1490
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 1492
    .local v2, "_arg1":Landroid/os/ParcelUuid;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 1493
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1494
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)Z

    move-result v4

    .line 1495
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1497
    goto/16 :goto_e8b

    .line 1474
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a4a
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1476
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1478
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 1479
    .restart local v3    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1480
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v4

    .line 1481
    .restart local v4    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1483
    goto/16 :goto_e8b

    .line 1462
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a70
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1464
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1465
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1466
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v3

    .line 1467
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1468
    invoke-static {v15, v3, v13}, Landroid/bluetooth/IBluetooth$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 1469
    goto/16 :goto_e8b

    .line 1450
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a92
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1452
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1453
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1454
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v3

    .line 1455
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1456
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1457
    goto/16 :goto_e8b

    .line 1436
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ab4
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1438
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1440
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 1441
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1442
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v4

    .line 1443
    .local v4, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1445
    goto/16 :goto_e8b

    .line 1424
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ada
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1426
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1427
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1428
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v3

    .line 1429
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1431
    goto/16 :goto_e8b

    .line 1412
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/lang/String;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_afc
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1414
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1415
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1416
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteType(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v3

    .line 1417
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1418
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1419
    goto/16 :goto_e8b

    .line 1400
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b1e
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1402
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1403
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1404
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v3

    .line 1405
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1407
    goto/16 :goto_e8b

    .line 1386
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/lang/String;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b40
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1388
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1390
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 1391
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1392
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->getConnectionHandle(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)I

    move-result v4

    .line 1393
    .restart local v4    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1394
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    goto/16 :goto_e8b

    .line 1374
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b66
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1376
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1377
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1378
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v3

    .line 1379
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1381
    goto/16 :goto_e8b

    .line 1364
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b88
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1365
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1366
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getSupportedProfiles(Landroid/content/AttributionSource;)J

    move-result-wide v2

    .line 1367
    .local v2, "_result":J
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    invoke-virtual {v15, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1369
    goto/16 :goto_e8b

    .line 1352
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":J
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ba2
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1354
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1355
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1356
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->isBondingInitiatedLocally(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v3

    .line 1357
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1359
    goto/16 :goto_e8b

    .line 1340
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_bc4
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1342
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1343
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1344
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v3

    .line 1345
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1347
    goto/16 :goto_e8b

    .line 1328
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_be6
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1330
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1331
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1332
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v3

    .line 1333
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1335
    goto/16 :goto_e8b

    .line 1316
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c08
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1318
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1319
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1320
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v3

    .line 1321
    .restart local v3    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1323
    goto/16 :goto_e8b

    .line 1298
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c2a
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1300
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1302
    .local v2, "_arg1":I
    sget-object v3, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/OobData;

    .line 1304
    .local v3, "_arg2":Landroid/bluetooth/OobData;
    sget-object v4, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/OobData;

    .line 1306
    .local v4, "_arg3":Landroid/bluetooth/OobData;
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 1307
    .restart local v5    # "_arg4":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1308
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetooth$Stub;->createBondOutOfBand(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;Landroid/bluetooth/OobData;Landroid/content/AttributionSource;)Z

    move-result v6

    .line 1309
    .restart local v6    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1310
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1311
    goto/16 :goto_e8b

    .line 1284
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/bluetooth/OobData;
    .end local v4    # "_arg3":Landroid/bluetooth/OobData;
    .end local v5    # "_arg4":Landroid/content/AttributionSource;
    .end local v6    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c60
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1286
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1288
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 1289
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1290
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v4

    .line 1291
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1293
    goto/16 :goto_e8b

    .line 1274
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c86
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1275
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1276
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getBondedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2

    .line 1277
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    invoke-static {v15, v2, v13}, Landroid/bluetooth/IBluetooth$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 1279
    goto/16 :goto_e8b

    .line 1262
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ca0
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1264
    .local v1, "_arg0":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1265
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1266
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectionState(ILandroid/content/AttributionSource;)I

    move-result v3

    .line 1267
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1269
    goto/16 :goto_e8b

    .line 1254
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_cbe
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->getAdapterConnectionState()I

    move-result v1

    .line 1255
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1256
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    goto/16 :goto_e8b

    .line 1245
    .end local v1    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ccd
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1246
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1247
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoveryEndMillis(Landroid/content/AttributionSource;)J

    move-result-wide v2

    .line 1248
    .local v2, "_result":J
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    invoke-virtual {v15, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1250
    goto/16 :goto_e8b

    .line 1235
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":J
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ce7
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1236
    .restart local v1    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1237
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering(Landroid/content/AttributionSource;)Z

    move-result v2

    .line 1238
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1240
    goto/16 :goto_e8b

    .line 1225
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d01
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1226
    .restart local v1    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1227
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery(Landroid/content/AttributionSource;)Z

    move-result v2

    .line 1228
    .restart local v2    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1230
    goto/16 :goto_e8b

    .line 1215
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d1b
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1216
    .restart local v1    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery(Landroid/content/AttributionSource;)Z

    move-result v2

    .line 1218
    .restart local v2    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1220
    goto/16 :goto_e8b

    .line 1203
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d35
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1205
    .local v1, "_arg0":J
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 1206
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1207
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(JLandroid/content/AttributionSource;)I

    move-result v4

    .line 1208
    .local v4, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    goto/16 :goto_e8b

    .line 1193
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d53
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1194
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1195
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout(Landroid/content/AttributionSource;)J

    move-result-wide v2

    .line 1196
    .local v2, "_result":J
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    invoke-virtual {v15, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1198
    goto/16 :goto_e8b

    .line 1181
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":J
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d6d
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1183
    .local v1, "_arg0":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1184
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1185
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(ILandroid/content/AttributionSource;)I

    move-result v3

    .line 1186
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    goto/16 :goto_e8b

    .line 1171
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d8b
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1172
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1173
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode(Landroid/content/AttributionSource;)I

    move-result v2

    .line 1174
    .local v2, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    goto/16 :goto_e8b

    .line 1161
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_da5
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1162
    .restart local v1    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1163
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getNameLengthForAdvertise(Landroid/content/AttributionSource;)I

    move-result v2

    .line 1164
    .restart local v2    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1166
    goto/16 :goto_e8b

    .line 1151
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_dbf
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1152
    .restart local v1    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1153
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getName(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v2

    .line 1154
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1156
    goto/16 :goto_e8b

    .line 1141
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Ljava/lang/String;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_dd9
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1142
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1143
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getIdentityAddressWithType(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice$BluetoothAddress;

    move-result-object v2

    .line 1144
    .local v2, "_result":Landroid/bluetooth/BluetoothDevice$BluetoothAddress;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    invoke-virtual {v15, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1146
    goto/16 :goto_e8b

    .line 1131
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/bluetooth/BluetoothDevice$BluetoothAddress;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_def
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1132
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getIdentityAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1134
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1136
    goto/16 :goto_e8b

    .line 1119
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e05
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1121
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1122
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1123
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v3

    .line 1124
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1126
    goto/16 :goto_e8b

    .line 1109
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e23
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1110
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1111
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getUuids(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2

    .line 1112
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    invoke-static {v15, v2, v13}, Landroid/bluetooth/IBluetooth$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 1114
    goto :goto_e8b

    .line 1099
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e3c
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1100
    .restart local v1    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1101
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getAddress(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v2

    .line 1102
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1104
    goto :goto_e8b

    .line 1091
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Ljava/lang/String;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e55
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1092
    .restart local v1    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1093
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->onToBleOn(Landroid/content/AttributionSource;)V

    .line 1094
    goto :goto_e8b

    .line 1081
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e67
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1083
    .local v1, "_arg0":Z
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1084
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1085
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->offToBleOn(ZLandroid/content/AttributionSource;)V

    .line 1086
    goto :goto_e8b

    .line 1073
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e7d
    move-object/from16 v16, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/bluetooth/IBluetooth$Stub;->getState()I

    move-result v1

    .line 1074
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    nop

    .line 2479
    .end local v1    # "_result":I
    :goto_e8b
    return v13

    :pswitch_data_e8c
    .packed-switch 0x1
        :pswitch_e7d
        :pswitch_e67
        :pswitch_e55
        :pswitch_e3c
        :pswitch_e23
        :pswitch_e05
        :pswitch_def
        :pswitch_dd9
        :pswitch_dbf
        :pswitch_da5
        :pswitch_d8b
        :pswitch_d6d
        :pswitch_d53
        :pswitch_d35
        :pswitch_d1b
        :pswitch_d01
        :pswitch_ce7
        :pswitch_ccd
        :pswitch_cbe
        :pswitch_ca0
        :pswitch_c86
        :pswitch_c60
        :pswitch_c2a
        :pswitch_c08
        :pswitch_be6
        :pswitch_bc4
        :pswitch_ba2
        :pswitch_b88
        :pswitch_b66
        :pswitch_b40
        :pswitch_b1e
        :pswitch_afc
        :pswitch_ada
        :pswitch_ab4
        :pswitch_a92
        :pswitch_a70
        :pswitch_a4a
        :pswitch_a20
        :pswitch_9fe
        :pswitch_9e4
        :pswitch_9b2
        :pswitch_982
        :pswitch_95c
        :pswitch_93a
        :pswitch_914
        :pswitch_8f2
        :pswitch_8cc
        :pswitch_8aa
        :pswitch_884
        :pswitch_862
        :pswitch_83c
        :pswitch_821
        :pswitch_806
        :pswitch_7cd
        :pswitch_7bc
        :pswitch_78b
        :pswitch_763
        :pswitch_749
        :pswitch_73a
        :pswitch_72b
        :pswitch_71c
        :pswitch_70d
        :pswitch_6fe
        :pswitch_6ef
        :pswitch_6e0
        :pswitch_6d1
        :pswitch_6c2
        :pswitch_6b3
        :pswitch_6a4
        :pswitch_68a
        :pswitch_67b
        :pswitch_661
        :pswitch_637
        :pswitch_60d
        :pswitch_5e3
        :pswitch_5bd
        :pswitch_5a2
        :pswitch_58f
        :pswitch_57c
        :pswitch_55a
        :pswitch_538
        :pswitch_512
        :pswitch_4f4
        :pswitch_4da
        :pswitch_4bc
        :pswitch_4a1
        :pswitch_486
        :pswitch_464
        :pswitch_442
        :pswitch_420
        :pswitch_402
        :pswitch_3e0
        :pswitch_3b6
        :pswitch_394
        :pswitch_366
        :pswitch_344
        :pswitch_322
        :pswitch_30b
        :pswitch_2e1
        :pswitch_2bf
        :pswitch_2a5
        :pswitch_283
        :pswitch_261
        :pswitch_23f
        :pswitch_21d
        :pswitch_1fb
        :pswitch_1e1
        :pswitch_1cb
        :pswitch_1ad
        :pswitch_193
        :pswitch_179
        :pswitch_16a
        :pswitch_15b
        :pswitch_148
        :pswitch_132
        :pswitch_10c
        :pswitch_ea
        :pswitch_c4
        :pswitch_a2
        :pswitch_9a
        :pswitch_80
        :pswitch_66
        :pswitch_57
        :pswitch_48
        :pswitch_26
    .end packed-switch
.end method

.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final greylist-max-o TRANSACTION_addNfcUnlockHandler:I = 0x10

.field static final blacklist TRANSACTION_checkFirmware:I = 0x36

.field static final blacklist TRANSACTION_clearPreference:I = 0x34

.field static final blacklist TRANSACTION_commitRouting:I = 0x3d

.field static final blacklist TRANSACTION_deviceSupportsNfcSecure:I = 0x14

.field static final greylist-max-o TRANSACTION_disable:I = 0x7

.field static final greylist-max-o TRANSACTION_dispatch:I = 0xe

.field static final greylist-max-r TRANSACTION_enable:I = 0x8

.field static final blacklist TRANSACTION_enableReaderOption:I = 0x21

.field static final blacklist TRANSACTION_fetchActiveNfceeList:I = 0x37

.field static final blacklist TRANSACTION_getMaxPausePollingTimeoutMs:I = 0x40

.field static final greylist-max-o TRANSACTION_getNfcAdapterExtrasInterface:I = 0x4

.field static final blacklist TRANSACTION_getNfcAntennaInfo:I = 0x16

.field static final greylist-max-o TRANSACTION_getNfcCardEmulationInterface:I = 0x2

.field static final greylist-max-o TRANSACTION_getNfcDtaInterface:I = 0x5

.field static final greylist-max-o TRANSACTION_getNfcFCardEmulationInterface:I = 0x3

.field static final greylist-max-o TRANSACTION_getNfcTagInterface:I = 0x1

.field static final blacklist TRANSACTION_getRoutingTableEntryList:I = 0x3b

.field static final blacklist TRANSACTION_getSettingStatus:I = 0x39

.field static final greylist-max-o TRANSACTION_getState:I = 0x6

.field static final blacklist TRANSACTION_getT4tNdefNfceeInterface:I = 0x3f

.field static final blacklist TRANSACTION_getTagIntentAppPreferenceForUser:I = 0x1d

.field static final blacklist TRANSACTION_getWlcListenerDeviceInfo:I = 0x2a

.field static final greylist-max-o TRANSACTION_ignore:I = 0xd

.field static final blacklist TRANSACTION_indicateDataMigration:I = 0x3c

.field static final blacklist TRANSACTION_isControllerAlwaysOn:I = 0x18

.field static final blacklist TRANSACTION_isControllerAlwaysOnSupported:I = 0x19

.field static final blacklist TRANSACTION_isNfcSecureEnabled:I = 0x13

.field static final blacklist TRANSACTION_isObserveModeEnabled:I = 0x24

.field static final blacklist TRANSACTION_isObserveModeSupported:I = 0x23

.field static final blacklist TRANSACTION_isReaderModeAnnotationSupported:I = 0x22

.field static final blacklist TRANSACTION_isReaderOptionEnabled:I = 0x1f

.field static final blacklist TRANSACTION_isReaderOptionSupported:I = 0x20

.field static final blacklist TRANSACTION_isTagIntentAllowed:I = 0x3e

.field static final blacklist TRANSACTION_isTagIntentAppPreferenceSupported:I = 0x1c

.field static final blacklist TRANSACTION_isTagPresent:I = 0x3a

.field static final blacklist TRANSACTION_isWlcEnabled:I = 0x27

.field static final blacklist TRANSACTION_notifyHceDeactivated:I = 0x2d

.field static final blacklist TRANSACTION_notifyPollingLoop:I = 0x2c

.field static final blacklist TRANSACTION_notifyTestHceData:I = 0x2e

.field static final greylist-max-o TRANSACTION_pausePolling:I = 0x9

.field static final blacklist TRANSACTION_registerControllerAlwaysOnListener:I = 0x1a

.field static final blacklist TRANSACTION_registerOemExtensionCallback:I = 0x32

.field static final blacklist TRANSACTION_registerVendorExtensionCallback:I = 0x30

.field static final blacklist TRANSACTION_registerWlcStateListener:I = 0x28

.field static final greylist-max-o TRANSACTION_removeNfcUnlockHandler:I = 0x11

.field static final greylist-max-o TRANSACTION_resumePolling:I = 0xa

.field static final blacklist TRANSACTION_sendVendorNciMessage:I = 0x2f

.field static final greylist-max-o TRANSACTION_setAppCallback:I = 0xc

.field static final blacklist TRANSACTION_setControllerAlwaysOn:I = 0x17

.field static final greylist-max-o TRANSACTION_setForegroundDispatch:I = 0xb

.field static final blacklist TRANSACTION_setNfcSecure:I = 0x15

.field static final blacklist TRANSACTION_setObserveMode:I = 0x25

.field static final greylist-max-o TRANSACTION_setReaderMode:I = 0xf

.field static final blacklist TRANSACTION_setScreenState:I = 0x35

.field static final blacklist TRANSACTION_setTagIntentAppPreferenceForUser:I = 0x1e

.field static final blacklist TRANSACTION_setWlcEnabled:I = 0x26

.field static final blacklist TRANSACTION_triggerInitialization:I = 0x38

.field static final blacklist TRANSACTION_unregisterControllerAlwaysOnListener:I = 0x1b

.field static final blacklist TRANSACTION_unregisterOemExtensionCallback:I = 0x33

.field static final blacklist TRANSACTION_unregisterVendorExtensionCallback:I = 0x31

.field static final blacklist TRANSACTION_unregisterWlcStateListener:I = 0x29

.field static final blacklist TRANSACTION_updateDiscoveryTechnology:I = 0x2b

.field static final greylist-max-o TRANSACTION_verifyNfcPermission:I = 0x12


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 258
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 259
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 267
    if-nez p0, :cond_4

    .line 268
    const/4 v0, 0x0

    return-object v0

    .line 270
    :cond_4
    const-string v0, "android.nfc.INfcAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 271
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_14

    .line 272
    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcAdapter;

    return-object v1

    .line 274
    :cond_14
    new-instance v1, Landroid/nfc/INfcAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 283
    packed-switch p0, :pswitch_data_c6

    .line 543
    const/4 v0, 0x0

    return-object v0

    .line 539
    :pswitch_5
    const-string v0, "getMaxPausePollingTimeoutMs"

    return-object v0

    .line 535
    :pswitch_8
    const-string v0, "getT4tNdefNfceeInterface"

    return-object v0

    .line 531
    :pswitch_b
    const-string v0, "isTagIntentAllowed"

    return-object v0

    .line 527
    :pswitch_e
    const-string v0, "commitRouting"

    return-object v0

    .line 523
    :pswitch_11
    const-string v0, "indicateDataMigration"

    return-object v0

    .line 519
    :pswitch_14
    const-string v0, "getRoutingTableEntryList"

    return-object v0

    .line 515
    :pswitch_17
    const-string v0, "isTagPresent"

    return-object v0

    .line 511
    :pswitch_1a
    const-string v0, "getSettingStatus"

    return-object v0

    .line 507
    :pswitch_1d
    const-string v0, "triggerInitialization"

    return-object v0

    .line 503
    :pswitch_20
    const-string v0, "fetchActiveNfceeList"

    return-object v0

    .line 499
    :pswitch_23
    const-string v0, "checkFirmware"

    return-object v0

    .line 495
    :pswitch_26
    const-string v0, "setScreenState"

    return-object v0

    .line 491
    :pswitch_29
    const-string v0, "clearPreference"

    return-object v0

    .line 487
    :pswitch_2c
    const-string v0, "unregisterOemExtensionCallback"

    return-object v0

    .line 483
    :pswitch_2f
    const-string v0, "registerOemExtensionCallback"

    return-object v0

    .line 479
    :pswitch_32
    const-string v0, "unregisterVendorExtensionCallback"

    return-object v0

    .line 475
    :pswitch_35
    const-string v0, "registerVendorExtensionCallback"

    return-object v0

    .line 471
    :pswitch_38
    const-string v0, "sendVendorNciMessage"

    return-object v0

    .line 467
    :pswitch_3b
    const-string v0, "notifyTestHceData"

    return-object v0

    .line 463
    :pswitch_3e
    const-string v0, "notifyHceDeactivated"

    return-object v0

    .line 459
    :pswitch_41
    const-string v0, "notifyPollingLoop"

    return-object v0

    .line 455
    :pswitch_44
    const-string v0, "updateDiscoveryTechnology"

    return-object v0

    .line 451
    :pswitch_47
    const-string v0, "getWlcListenerDeviceInfo"

    return-object v0

    .line 447
    :pswitch_4a
    const-string v0, "unregisterWlcStateListener"

    return-object v0

    .line 443
    :pswitch_4d
    const-string v0, "registerWlcStateListener"

    return-object v0

    .line 439
    :pswitch_50
    const-string v0, "isWlcEnabled"

    return-object v0

    .line 435
    :pswitch_53
    const-string v0, "setWlcEnabled"

    return-object v0

    .line 431
    :pswitch_56
    const-string v0, "setObserveMode"

    return-object v0

    .line 427
    :pswitch_59
    const-string v0, "isObserveModeEnabled"

    return-object v0

    .line 423
    :pswitch_5c
    const-string v0, "isObserveModeSupported"

    return-object v0

    .line 419
    :pswitch_5f
    const-string v0, "isReaderModeAnnotationSupported"

    return-object v0

    .line 415
    :pswitch_62
    const-string v0, "enableReaderOption"

    return-object v0

    .line 411
    :pswitch_65
    const-string v0, "isReaderOptionSupported"

    return-object v0

    .line 407
    :pswitch_68
    const-string v0, "isReaderOptionEnabled"

    return-object v0

    .line 403
    :pswitch_6b
    const-string v0, "setTagIntentAppPreferenceForUser"

    return-object v0

    .line 399
    :pswitch_6e
    const-string v0, "getTagIntentAppPreferenceForUser"

    return-object v0

    .line 395
    :pswitch_71
    const-string v0, "isTagIntentAppPreferenceSupported"

    return-object v0

    .line 391
    :pswitch_74
    const-string v0, "unregisterControllerAlwaysOnListener"

    return-object v0

    .line 387
    :pswitch_77
    const-string v0, "registerControllerAlwaysOnListener"

    return-object v0

    .line 383
    :pswitch_7a
    const-string v0, "isControllerAlwaysOnSupported"

    return-object v0

    .line 379
    :pswitch_7d
    const-string v0, "isControllerAlwaysOn"

    return-object v0

    .line 375
    :pswitch_80
    const-string v0, "setControllerAlwaysOn"

    return-object v0

    .line 371
    :pswitch_83
    const-string v0, "getNfcAntennaInfo"

    return-object v0

    .line 367
    :pswitch_86
    const-string v0, "setNfcSecure"

    return-object v0

    .line 363
    :pswitch_89
    const-string v0, "deviceSupportsNfcSecure"

    return-object v0

    .line 359
    :pswitch_8c
    const-string v0, "isNfcSecureEnabled"

    return-object v0

    .line 355
    :pswitch_8f
    const-string v0, "verifyNfcPermission"

    return-object v0

    .line 351
    :pswitch_92
    const-string v0, "removeNfcUnlockHandler"

    return-object v0

    .line 347
    :pswitch_95
    const-string v0, "addNfcUnlockHandler"

    return-object v0

    .line 343
    :pswitch_98
    const-string v0, "setReaderMode"

    return-object v0

    .line 339
    :pswitch_9b
    const-string v0, "dispatch"

    return-object v0

    .line 335
    :pswitch_9e
    const-string v0, "ignore"

    return-object v0

    .line 331
    :pswitch_a1
    const-string v0, "setAppCallback"

    return-object v0

    .line 327
    :pswitch_a4
    const-string v0, "setForegroundDispatch"

    return-object v0

    .line 323
    :pswitch_a7
    const-string v0, "resumePolling"

    return-object v0

    .line 319
    :pswitch_aa
    const-string v0, "pausePolling"

    return-object v0

    .line 315
    :pswitch_ad
    const-string v0, "enable"

    return-object v0

    .line 311
    :pswitch_b0
    const-string v0, "disable"

    return-object v0

    .line 307
    :pswitch_b3
    const-string v0, "getState"

    return-object v0

    .line 303
    :pswitch_b6
    const-string v0, "getNfcDtaInterface"

    return-object v0

    .line 299
    :pswitch_b9
    const-string v0, "getNfcAdapterExtrasInterface"

    return-object v0

    .line 295
    :pswitch_bc
    const-string v0, "getNfcFCardEmulationInterface"

    return-object v0

    .line 291
    :pswitch_bf
    const-string v0, "getNfcCardEmulationInterface"

    return-object v0

    .line 287
    :pswitch_c2
    const-string v0, "getNfcTagInterface"

    return-object v0

    nop

    :pswitch_data_c6
    .packed-switch 0x1
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

    .line 278
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2295
    const/16 v0, 0x3f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 550
    invoke-static {p1}, Landroid/nfc/INfcAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 554
    const-string v0, "android.nfc.INfcAdapter"

    .line 555
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 556
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 559
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 560
    return v1

    .line 562
    :cond_16
    packed-switch p1, :pswitch_data_486

    .line 1134
    move-object v4, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1127
    :pswitch_1f
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getMaxPausePollingTimeoutMs()J

    move-result-wide v2

    .line 1128
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1130
    move-object v4, p0

    goto/16 :goto_484

    .line 1120
    .end local v2    # "_result":J
    :pswitch_2c
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getT4tNdefNfceeInterface()Landroid/nfc/IT4tNdefNfcee;

    move-result-object v2

    .line 1121
    .local v2, "_result":Landroid/nfc/IT4tNdefNfcee;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1123
    move-object v4, p0

    goto/16 :goto_484

    .line 1109
    .end local v2    # "_result":Landroid/nfc/IT4tNdefNfcee;
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1111
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1112
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1113
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->isTagIntentAllowed(Ljava/lang/String;I)Z

    move-result v4

    .line 1114
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1116
    move-object v4, p0

    goto/16 :goto_484

    .line 1101
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_51
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->commitRouting()I

    move-result v2

    .line 1102
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    move-object v4, p0

    goto/16 :goto_484

    .line 1091
    .end local v2    # "_result":I
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1093
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1094
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->indicateDataMigration(ZLjava/lang/String;)V

    .line 1096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    move-object v4, p0

    goto/16 :goto_484

    .line 1083
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_72
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getRoutingTableEntryList()Ljava/util/List;

    move-result-object v2

    .line 1084
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/Entry;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1086
    move-object v4, p0

    goto/16 :goto_484

    .line 1076
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/Entry;>;"
    :pswitch_7f
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isTagPresent()Z

    move-result v2

    .line 1077
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1079
    move-object v4, p0

    goto/16 :goto_484

    .line 1069
    .end local v2    # "_result":Z
    :pswitch_8c
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getSettingStatus()Z

    move-result v2

    .line 1070
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1072
    move-object v4, p0

    goto/16 :goto_484

    .line 1063
    .end local v2    # "_result":Z
    :pswitch_99
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->triggerInitialization()V

    .line 1064
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    move-object v4, p0

    goto/16 :goto_484

    .line 1056
    :pswitch_a2
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->fetchActiveNfceeList()Ljava/util/Map;

    move-result-object v2

    .line 1057
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1059
    move-object v4, p0

    goto/16 :goto_484

    .line 1050
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_af
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->checkFirmware()V

    .line 1051
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    move-object v4, p0

    goto/16 :goto_484

    .line 1044
    :pswitch_b8
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->setScreenState()V

    .line 1045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    move-object v4, p0

    goto/16 :goto_484

    .line 1038
    :pswitch_c1
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->clearPreference()V

    .line 1039
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    move-object v4, p0

    goto/16 :goto_484

    .line 1030
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcOemExtensionCallback;

    move-result-object v2

    .line 1031
    .local v2, "_arg0":Landroid/nfc/INfcOemExtensionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1032
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->unregisterOemExtensionCallback(Landroid/nfc/INfcOemExtensionCallback;)V

    .line 1033
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    move-object v4, p0

    goto/16 :goto_484

    .line 1021
    .end local v2    # "_arg0":Landroid/nfc/INfcOemExtensionCallback;
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcOemExtensionCallback;

    move-result-object v2

    .line 1022
    .restart local v2    # "_arg0":Landroid/nfc/INfcOemExtensionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1023
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->registerOemExtensionCallback(Landroid/nfc/INfcOemExtensionCallback;)V

    .line 1024
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    move-object v4, p0

    goto/16 :goto_484

    .line 1012
    .end local v2    # "_arg0":Landroid/nfc/INfcOemExtensionCallback;
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcVendorNciCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcVendorNciCallback;

    move-result-object v2

    .line 1013
    .local v2, "_arg0":Landroid/nfc/INfcVendorNciCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1014
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->unregisterVendorExtensionCallback(Landroid/nfc/INfcVendorNciCallback;)V

    .line 1015
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    move-object v4, p0

    goto/16 :goto_484

    .line 1003
    .end local v2    # "_arg0":Landroid/nfc/INfcVendorNciCallback;
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcVendorNciCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcVendorNciCallback;

    move-result-object v2

    .line 1004
    .restart local v2    # "_arg0":Landroid/nfc/INfcVendorNciCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1005
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->registerVendorExtensionCallback(Landroid/nfc/INfcVendorNciCallback;)V

    .line 1006
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    move-object v4, p0

    goto/16 :goto_484

    .line 987
    .end local v2    # "_arg0":Landroid/nfc/INfcVendorNciCallback;
    :pswitch_11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 989
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 991
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 993
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 994
    .local v5, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/nfc/INfcAdapter$Stub;->sendVendorNciMessage(III[B)I

    move-result v6

    .line 996
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    move-object v4, p0

    goto/16 :goto_484

    .line 976
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":[B
    .end local v6    # "_result":I
    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 978
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 979
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 980
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->notifyTestHceData(I[B)V

    .line 981
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    move-object v4, p0

    goto/16 :goto_484

    .line 969
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_14e
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->notifyHceDeactivated()V

    .line 970
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    move-object v4, p0

    goto/16 :goto_484

    .line 961
    :pswitch_157
    sget-object v2, Landroid/nfc/cardemulation/PollingFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/PollingFrame;

    .line 962
    .local v2, "_arg0":Landroid/nfc/cardemulation/PollingFrame;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->notifyPollingLoop(Landroid/nfc/cardemulation/PollingFrame;)V

    .line 964
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    move-object v4, p0

    goto/16 :goto_484

    .line 946
    .end local v2    # "_arg0":Landroid/nfc/cardemulation/PollingFrame;
    :pswitch_16b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 948
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 950
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 952
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 953
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 954
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/nfc/INfcAdapter$Stub;->updateDiscoveryTechnology(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    move-object v4, p0

    goto/16 :goto_484

    .line 938
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_187
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getWlcListenerDeviceInfo()Landroid/nfc/WlcListenerDeviceInfo;

    move-result-object v2

    .line 939
    .local v2, "_result":Landroid/nfc/WlcListenerDeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 941
    move-object v4, p0

    goto/16 :goto_484

    .line 930
    .end local v2    # "_result":Landroid/nfc/WlcListenerDeviceInfo;
    :pswitch_194
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcWlcStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcWlcStateListener;

    move-result-object v2

    .line 931
    .local v2, "_arg0":Landroid/nfc/INfcWlcStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 932
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->unregisterWlcStateListener(Landroid/nfc/INfcWlcStateListener;)V

    .line 933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    move-object v4, p0

    goto/16 :goto_484

    .line 921
    .end local v2    # "_arg0":Landroid/nfc/INfcWlcStateListener;
    :pswitch_1a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcWlcStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcWlcStateListener;

    move-result-object v2

    .line 922
    .restart local v2    # "_arg0":Landroid/nfc/INfcWlcStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 923
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->registerWlcStateListener(Landroid/nfc/INfcWlcStateListener;)V

    .line 924
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    move-object v4, p0

    goto/16 :goto_484

    .line 913
    .end local v2    # "_arg0":Landroid/nfc/INfcWlcStateListener;
    :pswitch_1bc
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isWlcEnabled()Z

    move-result v2

    .line 914
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 916
    move-object v4, p0

    goto/16 :goto_484

    .line 904
    .end local v2    # "_result":Z
    :pswitch_1c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 905
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setWlcEnabled(Z)Z

    move-result v3

    .line 907
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 909
    move-object v4, p0

    goto/16 :goto_484

    .line 892
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_1dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 894
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 895
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->setObserveMode(ZLjava/lang/String;)Z

    move-result v4

    .line 897
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 899
    move-object v4, p0

    goto/16 :goto_484

    .line 884
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1f5
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isObserveModeEnabled()Z

    move-result v2

    .line 885
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 887
    move-object v4, p0

    goto/16 :goto_484

    .line 877
    .end local v2    # "_result":Z
    :pswitch_202
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isObserveModeSupported()Z

    move-result v2

    .line 878
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 880
    move-object v4, p0

    goto/16 :goto_484

    .line 870
    .end local v2    # "_result":Z
    :pswitch_20f
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isReaderModeAnnotationSupported()Z

    move-result v2

    .line 871
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 873
    move-object v4, p0

    goto/16 :goto_484

    .line 859
    .end local v2    # "_result":Z
    :pswitch_21c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 861
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 862
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 863
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->enableReaderOption(ZLjava/lang/String;)Z

    move-result v4

    .line 864
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 866
    move-object v4, p0

    goto/16 :goto_484

    .line 851
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_234
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isReaderOptionSupported()Z

    move-result v2

    .line 852
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 854
    move-object v4, p0

    goto/16 :goto_484

    .line 844
    .end local v2    # "_result":Z
    :pswitch_241
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isReaderOptionEnabled()Z

    move-result v2

    .line 845
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 847
    move-object v4, p0

    goto/16 :goto_484

    .line 831
    .end local v2    # "_result":Z
    :pswitch_24e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 833
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 835
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 836
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 837
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcAdapter$Stub;->setTagIntentAppPreferenceForUser(ILjava/lang/String;Z)I

    move-result v5

    .line 838
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    move-object v4, p0

    goto/16 :goto_484

    .line 821
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_26a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 822
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->getTagIntentAppPreferenceForUser(I)Ljava/util/Map;

    move-result-object v3

    .line 824
    .local v3, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 826
    move-object v4, p0

    goto/16 :goto_484

    .line 813
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/Map;
    :pswitch_27e
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isTagIntentAppPreferenceSupported()Z

    move-result v2

    .line 814
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 816
    move-object v4, p0

    goto/16 :goto_484

    .line 805
    .end local v2    # "_result":Z
    :pswitch_28b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcControllerAlwaysOnListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcControllerAlwaysOnListener;

    move-result-object v2

    .line 806
    .local v2, "_arg0":Landroid/nfc/INfcControllerAlwaysOnListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 807
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->unregisterControllerAlwaysOnListener(Landroid/nfc/INfcControllerAlwaysOnListener;)V

    .line 808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    move-object v4, p0

    goto/16 :goto_484

    .line 796
    .end local v2    # "_arg0":Landroid/nfc/INfcControllerAlwaysOnListener;
    :pswitch_29f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcControllerAlwaysOnListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcControllerAlwaysOnListener;

    move-result-object v2

    .line 797
    .restart local v2    # "_arg0":Landroid/nfc/INfcControllerAlwaysOnListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->registerControllerAlwaysOnListener(Landroid/nfc/INfcControllerAlwaysOnListener;)V

    .line 799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    move-object v4, p0

    goto/16 :goto_484

    .line 788
    .end local v2    # "_arg0":Landroid/nfc/INfcControllerAlwaysOnListener;
    :pswitch_2b3
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isControllerAlwaysOnSupported()Z

    move-result v2

    .line 789
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 791
    move-object v4, p0

    goto/16 :goto_484

    .line 781
    .end local v2    # "_result":Z
    :pswitch_2c0
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isControllerAlwaysOn()Z

    move-result v2

    .line 782
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 784
    move-object v4, p0

    goto/16 :goto_484

    .line 773
    .end local v2    # "_result":Z
    :pswitch_2cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 774
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 775
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setControllerAlwaysOn(I)V

    .line 776
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    move-object v4, p0

    goto/16 :goto_484

    .line 765
    .end local v2    # "_arg0":I
    :pswitch_2dd
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcAntennaInfo()Landroid/nfc/NfcAntennaInfo;

    move-result-object v2

    .line 766
    .local v2, "_result":Landroid/nfc/NfcAntennaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 768
    move-object v4, p0

    goto/16 :goto_484

    .line 756
    .end local v2    # "_result":Landroid/nfc/NfcAntennaInfo;
    :pswitch_2ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 757
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setNfcSecure(Z)Z

    move-result v3

    .line 759
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 761
    move-object v4, p0

    goto/16 :goto_484

    .line 748
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_2fe
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->deviceSupportsNfcSecure()Z

    move-result v2

    .line 749
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 751
    move-object v4, p0

    goto/16 :goto_484

    .line 741
    .end local v2    # "_result":Z
    :pswitch_30b
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isNfcSecureEnabled()Z

    move-result v2

    .line 742
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 744
    move-object v4, p0

    goto/16 :goto_484

    .line 735
    .end local v2    # "_result":Z
    :pswitch_318
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->verifyNfcPermission()V

    .line 736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    move-object v4, p0

    goto/16 :goto_484

    .line 727
    :pswitch_321
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v2

    .line 728
    .local v2, "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    .line 730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    move-object v4, p0

    goto/16 :goto_484

    .line 716
    .end local v2    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    :pswitch_335
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v2

    .line 718
    .restart local v2    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 719
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 720
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    .line 721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    move-object v4, p0

    goto/16 :goto_484

    .line 699
    .end local v2    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    .end local v3    # "_arg1":[I
    :pswitch_34d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 701
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v6

    .line 703
    .local v6, "_arg1":Landroid/nfc/IAppCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 705
    .local v7, "_arg2":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/os/Bundle;

    .line 707
    .local v8, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 708
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 709
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;Ljava/lang/String;)V

    .line 710
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    goto/16 :goto_484

    .line 690
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":Landroid/nfc/IAppCallback;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Landroid/os/Bundle;
    .end local v9    # "_arg4":Ljava/lang/String;
    :pswitch_376
    move-object v4, p0

    sget-object v2, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/Tag;

    .line 691
    .local v2, "_arg0":Landroid/nfc/Tag;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    .line 693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    goto/16 :goto_484

    .line 676
    .end local v2    # "_arg0":Landroid/nfc/Tag;
    :pswitch_38a
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 678
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 680
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/nfc/ITagRemovedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/ITagRemovedCallback;

    move-result-object v5

    .line 681
    .local v5, "_arg2":Landroid/nfc/ITagRemovedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {p0, v2, v3, v5}, Landroid/nfc/INfcAdapter$Stub;->ignore(IILandroid/nfc/ITagRemovedCallback;)Z

    move-result v6

    .line 683
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 685
    goto/16 :goto_484

    .line 667
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v5    # "_arg2":Landroid/nfc/ITagRemovedCallback;
    .end local v6    # "_result":Z
    :pswitch_3aa
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v2

    .line 668
    .local v2, "_arg0":Landroid/nfc/IAppCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    goto/16 :goto_484

    .line 654
    .end local v2    # "_arg0":Landroid/nfc/IAppCallback;
    :pswitch_3be
    move-object v4, p0

    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 656
    .local v2, "_arg0":Landroid/app/PendingIntent;
    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    .line 658
    .local v3, "_arg1":[Landroid/content/IntentFilter;
    sget-object v5, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/TechListParcel;

    .line 659
    .local v5, "_arg2":Landroid/nfc/TechListParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {p0, v2, v3, v5}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    goto/16 :goto_484

    .line 646
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":[Landroid/content/IntentFilter;
    .end local v5    # "_arg2":Landroid/nfc/TechListParcel;
    :pswitch_3e2
    move-object v4, p0

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->resumePolling()I

    move-result v2

    .line 647
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    goto/16 :goto_484

    .line 637
    .end local v2    # "_result":I
    :pswitch_3ef
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 638
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->pausePolling(J)I

    move-result v5

    .line 640
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    goto/16 :goto_484

    .line 627
    .end local v2    # "_arg0":J
    .end local v5    # "_result":I
    :pswitch_403
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->enable(Ljava/lang/String;)Z

    move-result v3

    .line 630
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 632
    goto/16 :goto_484

    .line 615
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_417
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 617
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->disable(ZLjava/lang/String;)Z

    move-result v5

    .line 620
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 622
    goto :goto_484

    .line 607
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_42e
    move-object v4, p0

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v2

    .line 608
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    goto :goto_484

    .line 598
    .end local v2    # "_result":I
    :pswitch_43a
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->getNfcDtaInterface(Ljava/lang/String;)Landroid/nfc/INfcDta;

    move-result-object v3

    .line 601
    .local v3, "_result":Landroid/nfc/INfcDta;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 603
    goto :goto_484

    .line 588
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/nfc/INfcDta;
    :pswitch_44d
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 589
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v3

    .line 591
    .local v3, "_result":Landroid/nfc/INfcAdapterExtras;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 593
    goto :goto_484

    .line 580
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/nfc/INfcAdapterExtras;
    :pswitch_460
    move-object v4, p0

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v2

    .line 581
    .local v2, "_result":Landroid/nfc/INfcFCardEmulation;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 583
    goto :goto_484

    .line 573
    .end local v2    # "_result":Landroid/nfc/INfcFCardEmulation;
    :pswitch_46c
    move-object v4, p0

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v2

    .line 574
    .local v2, "_result":Landroid/nfc/INfcCardEmulation;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 576
    goto :goto_484

    .line 566
    .end local v2    # "_result":Landroid/nfc/INfcCardEmulation;
    :pswitch_478
    move-object v4, p0

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    .line 567
    .local v2, "_result":Landroid/nfc/INfcTag;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 569
    nop

    .line 1137
    .end local v2    # "_result":Landroid/nfc/INfcTag;
    :goto_484
    return v1

    nop

    :pswitch_data_486
    .packed-switch 0x1
        :pswitch_478
        :pswitch_46c
        :pswitch_460
        :pswitch_44d
        :pswitch_43a
        :pswitch_42e
        :pswitch_417
        :pswitch_403
        :pswitch_3ef
        :pswitch_3e2
        :pswitch_3be
        :pswitch_3aa
        :pswitch_38a
        :pswitch_376
        :pswitch_34d
        :pswitch_335
        :pswitch_321
        :pswitch_318
        :pswitch_30b
        :pswitch_2fe
        :pswitch_2ea
        :pswitch_2dd
        :pswitch_2cd
        :pswitch_2c0
        :pswitch_2b3
        :pswitch_29f
        :pswitch_28b
        :pswitch_27e
        :pswitch_26a
        :pswitch_24e
        :pswitch_241
        :pswitch_234
        :pswitch_21c
        :pswitch_20f
        :pswitch_202
        :pswitch_1f5
        :pswitch_1dd
        :pswitch_1c9
        :pswitch_1bc
        :pswitch_1a8
        :pswitch_194
        :pswitch_187
        :pswitch_16b
        :pswitch_157
        :pswitch_14e
        :pswitch_13a
        :pswitch_11a
        :pswitch_106
        :pswitch_f2
        :pswitch_de
        :pswitch_ca
        :pswitch_c1
        :pswitch_b8
        :pswitch_af
        :pswitch_a2
        :pswitch_99
        :pswitch_8c
        :pswitch_7f
        :pswitch_72
        :pswitch_5e
        :pswitch_51
        :pswitch_39
        :pswitch_2c
        :pswitch_1f
    .end packed-switch
.end method

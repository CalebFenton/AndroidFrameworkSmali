.class public abstract Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.super Landroid/os/Binder;
.source "ITelephonyRegistry.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyRegistry"

.field static final blacklist TRANSACTION_addCarrierConfigChangeListener:I = 0x31

.field static final blacklist TRANSACTION_addCarrierPrivilegesCallback:I = 0x2d

.field static final blacklist TRANSACTION_addOnOpportunisticSubscriptionsChangedListener:I = 0x2

.field static final greylist-max-o TRANSACTION_addOnSubscriptionsChangedListener:I = 0x1

.field static final blacklist TRANSACTION_addSatelliteStateChangeListener:I = 0x3b

.field static final blacklist TRANSACTION_listenWithEventList:I = 0x4

.field static final blacklist TRANSACTION_notifyActiveDataSubIdChanged:I = 0x1e

.field static final blacklist TRANSACTION_notifyAllowedNetworkTypesChanged:I = 0x2a

.field static final blacklist TRANSACTION_notifyBarringInfoChanged:I = 0x27

.field static final greylist-max-o TRANSACTION_notifyCallForwardingChanged:I = 0xa

.field static final greylist-max-o TRANSACTION_notifyCallForwardingChangedForSubscriber:I = 0xb

.field static final blacklist TRANSACTION_notifyCallQualityChanged:I = 0x23

.field static final greylist-max-o TRANSACTION_notifyCallState:I = 0x6

.field static final blacklist TRANSACTION_notifyCallStateForAllSubs:I = 0x5

.field static final blacklist TRANSACTION_notifyCallbackModeRestarted:I = 0x35

.field static final blacklist TRANSACTION_notifyCallbackModeStarted:I = 0x34

.field static final blacklist TRANSACTION_notifyCallbackModeStopped:I = 0x36

.field static final blacklist TRANSACTION_notifyCarrierConfigChanged:I = 0x33

.field static final greylist-max-o TRANSACTION_notifyCarrierNetworkChange:I = 0x19

.field static final blacklist TRANSACTION_notifyCarrierNetworkChangeWithSubId:I = 0x1a

.field static final blacklist TRANSACTION_notifyCarrierPrivilegesChanged:I = 0x2f

.field static final blacklist TRANSACTION_notifyCarrierRoamingNtnAvailableServicesChanged:I = 0x39

.field static final blacklist TRANSACTION_notifyCarrierRoamingNtnEligibleStateChanged:I = 0x38

.field static final blacklist TRANSACTION_notifyCarrierRoamingNtnModeChanged:I = 0x37

.field static final blacklist TRANSACTION_notifyCarrierRoamingNtnSignalStrengthChanged:I = 0x3a

.field static final blacklist TRANSACTION_notifyCarrierServiceChanged:I = 0x30

.field static final greylist-max-o TRANSACTION_notifyCellInfo:I = 0x10

.field static final greylist-max-o TRANSACTION_notifyCellInfoForSubscriber:I = 0x13

.field static final greylist-max-o TRANSACTION_notifyCellLocationForSubscriber:I = 0xf

.field static final blacklist TRANSACTION_notifyCellularIdentifierDisclosedChanged:I = 0x3f

.field static final greylist-max-o TRANSACTION_notifyDataActivityForSubscriber:I = 0xc

.field static final blacklist TRANSACTION_notifyDataActivityForSubscriberWithSlot:I = 0xd

.field static final greylist-max-o TRANSACTION_notifyDataConnectionForSubscriber:I = 0xe

.field static final blacklist TRANSACTION_notifyDataEnabled:I = 0x29

.field static final greylist-max-o TRANSACTION_notifyDisconnectCause:I = 0x12

.field static final blacklist TRANSACTION_notifyDisplayInfoChanged:I = 0x1c

.field static final blacklist TRANSACTION_notifyEmergencyNumberList:I = 0x20

.field static final blacklist TRANSACTION_notifyImsDisconnectCause:I = 0x25

.field static final blacklist TRANSACTION_notifyLinkCapacityEstimateChanged:I = 0x2b

.field static final blacklist TRANSACTION_notifyMediaQualityStatusChanged:I = 0x24

.field static final greylist-max-o TRANSACTION_notifyMessageWaitingChangedForPhoneId:I = 0x9

.field static final greylist-max-o TRANSACTION_notifyOemHookRawEventForSubscriber:I = 0x16

.field static final blacklist TRANSACTION_notifyOpportunisticSubscriptionInfoChanged:I = 0x18

.field static final blacklist TRANSACTION_notifyOutgoingEmergencyCall:I = 0x21

.field static final blacklist TRANSACTION_notifyOutgoingEmergencySms:I = 0x22

.field static final blacklist TRANSACTION_notifyPhoneCapabilityChanged:I = 0x1d

.field static final blacklist TRANSACTION_notifyPhysicalChannelConfigForSubscriber:I = 0x28

.field static final greylist-max-o TRANSACTION_notifyPreciseCallState:I = 0x11

.field static final blacklist TRANSACTION_notifyRadioPowerStateChanged:I = 0x1f

.field static final blacklist TRANSACTION_notifyRegistrationFailed:I = 0x26

.field static final blacklist TRANSACTION_notifySatelliteStateChanged:I = 0x3d

.field static final blacklist TRANSACTION_notifySecurityAlgorithmsChanged:I = 0x3e

.field static final greylist-max-o TRANSACTION_notifyServiceStateForPhoneId:I = 0x7

.field static final greylist-max-o TRANSACTION_notifySignalStrengthForPhoneId:I = 0x8

.field static final greylist-max-o TRANSACTION_notifySimActivationStateChangedForPhoneId:I = 0x15

.field static final blacklist TRANSACTION_notifySimultaneousCellularCallingSubscriptionsChanged:I = 0x2c

.field static final blacklist TRANSACTION_notifySrvccStateChanged:I = 0x14

.field static final greylist-max-o TRANSACTION_notifySubscriptionInfoChanged:I = 0x17

.field static final greylist-max-o TRANSACTION_notifyUserMobileDataStateChangedForPhoneId:I = 0x1b

.field static final blacklist TRANSACTION_removeCarrierConfigChangeListener:I = 0x32

.field static final blacklist TRANSACTION_removeCarrierPrivilegesCallback:I = 0x2e

.field static final greylist-max-o TRANSACTION_removeOnSubscriptionsChangedListener:I = 0x3

.field static final blacklist TRANSACTION_removeSatelliteStateChangeListener:I = 0x3c


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 216
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 217
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 225
    if-nez p0, :cond_4

    .line 226
    const/4 v0, 0x0

    return-object v0

    .line 228
    :cond_4
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 229
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_14

    .line 230
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ITelephonyRegistry;

    return-object v1

    .line 232
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 241
    packed-switch p0, :pswitch_data_c6

    .line 497
    const/4 v0, 0x0

    return-object v0

    .line 493
    :pswitch_5
    const-string v0, "notifyCellularIdentifierDisclosedChanged"

    return-object v0

    .line 489
    :pswitch_8
    const-string v0, "notifySecurityAlgorithmsChanged"

    return-object v0

    .line 485
    :pswitch_b
    const-string v0, "notifySatelliteStateChanged"

    return-object v0

    .line 481
    :pswitch_e
    const-string/jumbo v0, "removeSatelliteStateChangeListener"

    return-object v0

    .line 477
    :pswitch_12
    const-string v0, "addSatelliteStateChangeListener"

    return-object v0

    .line 473
    :pswitch_15
    const-string v0, "notifyCarrierRoamingNtnSignalStrengthChanged"

    return-object v0

    .line 469
    :pswitch_18
    const-string v0, "notifyCarrierRoamingNtnAvailableServicesChanged"

    return-object v0

    .line 465
    :pswitch_1b
    const-string v0, "notifyCarrierRoamingNtnEligibleStateChanged"

    return-object v0

    .line 461
    :pswitch_1e
    const-string v0, "notifyCarrierRoamingNtnModeChanged"

    return-object v0

    .line 457
    :pswitch_21
    const-string v0, "notifyCallbackModeStopped"

    return-object v0

    .line 453
    :pswitch_24
    const-string v0, "notifyCallbackModeRestarted"

    return-object v0

    .line 449
    :pswitch_27
    const-string v0, "notifyCallbackModeStarted"

    return-object v0

    .line 445
    :pswitch_2a
    const-string v0, "notifyCarrierConfigChanged"

    return-object v0

    .line 441
    :pswitch_2d
    const-string/jumbo v0, "removeCarrierConfigChangeListener"

    return-object v0

    .line 437
    :pswitch_31
    const-string v0, "addCarrierConfigChangeListener"

    return-object v0

    .line 433
    :pswitch_34
    const-string v0, "notifyCarrierServiceChanged"

    return-object v0

    .line 429
    :pswitch_37
    const-string v0, "notifyCarrierPrivilegesChanged"

    return-object v0

    .line 425
    :pswitch_3a
    const-string/jumbo v0, "removeCarrierPrivilegesCallback"

    return-object v0

    .line 421
    :pswitch_3e
    const-string v0, "addCarrierPrivilegesCallback"

    return-object v0

    .line 417
    :pswitch_41
    const-string v0, "notifySimultaneousCellularCallingSubscriptionsChanged"

    return-object v0

    .line 413
    :pswitch_44
    const-string v0, "notifyLinkCapacityEstimateChanged"

    return-object v0

    .line 409
    :pswitch_47
    const-string v0, "notifyAllowedNetworkTypesChanged"

    return-object v0

    .line 405
    :pswitch_4a
    const-string v0, "notifyDataEnabled"

    return-object v0

    .line 401
    :pswitch_4d
    const-string v0, "notifyPhysicalChannelConfigForSubscriber"

    return-object v0

    .line 397
    :pswitch_50
    const-string v0, "notifyBarringInfoChanged"

    return-object v0

    .line 393
    :pswitch_53
    const-string v0, "notifyRegistrationFailed"

    return-object v0

    .line 389
    :pswitch_56
    const-string v0, "notifyImsDisconnectCause"

    return-object v0

    .line 385
    :pswitch_59
    const-string v0, "notifyMediaQualityStatusChanged"

    return-object v0

    .line 381
    :pswitch_5c
    const-string v0, "notifyCallQualityChanged"

    return-object v0

    .line 377
    :pswitch_5f
    const-string v0, "notifyOutgoingEmergencySms"

    return-object v0

    .line 373
    :pswitch_62
    const-string v0, "notifyOutgoingEmergencyCall"

    return-object v0

    .line 369
    :pswitch_65
    const-string v0, "notifyEmergencyNumberList"

    return-object v0

    .line 365
    :pswitch_68
    const-string v0, "notifyRadioPowerStateChanged"

    return-object v0

    .line 361
    :pswitch_6b
    const-string v0, "notifyActiveDataSubIdChanged"

    return-object v0

    .line 357
    :pswitch_6e
    const-string v0, "notifyPhoneCapabilityChanged"

    return-object v0

    .line 353
    :pswitch_71
    const-string v0, "notifyDisplayInfoChanged"

    return-object v0

    .line 349
    :pswitch_74
    const-string v0, "notifyUserMobileDataStateChangedForPhoneId"

    return-object v0

    .line 345
    :pswitch_77
    const-string v0, "notifyCarrierNetworkChangeWithSubId"

    return-object v0

    .line 341
    :pswitch_7a
    const-string v0, "notifyCarrierNetworkChange"

    return-object v0

    .line 337
    :pswitch_7d
    const-string v0, "notifyOpportunisticSubscriptionInfoChanged"

    return-object v0

    .line 333
    :pswitch_80
    const-string v0, "notifySubscriptionInfoChanged"

    return-object v0

    .line 329
    :pswitch_83
    const-string v0, "notifyOemHookRawEventForSubscriber"

    return-object v0

    .line 325
    :pswitch_86
    const-string v0, "notifySimActivationStateChangedForPhoneId"

    return-object v0

    .line 321
    :pswitch_89
    const-string v0, "notifySrvccStateChanged"

    return-object v0

    .line 317
    :pswitch_8c
    const-string v0, "notifyCellInfoForSubscriber"

    return-object v0

    .line 313
    :pswitch_8f
    const-string v0, "notifyDisconnectCause"

    return-object v0

    .line 309
    :pswitch_92
    const-string v0, "notifyPreciseCallState"

    return-object v0

    .line 305
    :pswitch_95
    const-string v0, "notifyCellInfo"

    return-object v0

    .line 301
    :pswitch_98
    const-string v0, "notifyCellLocationForSubscriber"

    return-object v0

    .line 297
    :pswitch_9b
    const-string v0, "notifyDataConnectionForSubscriber"

    return-object v0

    .line 293
    :pswitch_9e
    const-string v0, "notifyDataActivityForSubscriberWithSlot"

    return-object v0

    .line 289
    :pswitch_a1
    const-string v0, "notifyDataActivityForSubscriber"

    return-object v0

    .line 285
    :pswitch_a4
    const-string v0, "notifyCallForwardingChangedForSubscriber"

    return-object v0

    .line 281
    :pswitch_a7
    const-string v0, "notifyCallForwardingChanged"

    return-object v0

    .line 277
    :pswitch_aa
    const-string v0, "notifyMessageWaitingChangedForPhoneId"

    return-object v0

    .line 273
    :pswitch_ad
    const-string v0, "notifySignalStrengthForPhoneId"

    return-object v0

    .line 269
    :pswitch_b0
    const-string v0, "notifyServiceStateForPhoneId"

    return-object v0

    .line 265
    :pswitch_b3
    const-string v0, "notifyCallState"

    return-object v0

    .line 261
    :pswitch_b6
    const-string v0, "notifyCallStateForAllSubs"

    return-object v0

    .line 257
    :pswitch_b9
    const-string v0, "listenWithEventList"

    return-object v0

    .line 253
    :pswitch_bc
    const-string/jumbo v0, "removeOnSubscriptionsChangedListener"

    return-object v0

    .line 249
    :pswitch_c0
    const-string v0, "addOnOpportunisticSubscriptionsChangedListener"

    return-object v0

    .line 245
    :pswitch_c3
    const-string v0, "addOnSubscriptionsChangedListener"

    return-object v0

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_c0
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
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 236
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2456
    const/16 v0, 0x3e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 504
    invoke-static {p1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    move-object v9, p2

    const-string v10, "com.android.internal.telephony.ITelephonyRegistry"

    .line 509
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt p1, v11, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 510
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_19

    .line 513
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    return v11

    .line 516
    :cond_19
    move-object/from16 v12, p3

    packed-switch p1, :pswitch_data_602

    .line 1309
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1297
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1299
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1301
    .local v2, "_arg1":I
    sget-object v3, Landroid/telephony/CellularIdentifierDisclosure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellularIdentifierDisclosure;

    .line 1302
    .local v3, "_arg2":Landroid/telephony/CellularIdentifierDisclosure;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1303
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellularIdentifierDisclosedChanged(IILandroid/telephony/CellularIdentifierDisclosure;)V

    .line 1304
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    goto/16 :goto_600

    .line 1284
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/telephony/CellularIdentifierDisclosure;
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1286
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1288
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/telephony/SecurityAlgorithmUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SecurityAlgorithmUpdate;

    .line 1289
    .local v3, "_arg2":Landroid/telephony/SecurityAlgorithmUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1290
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySecurityAlgorithmsChanged(IILandroid/telephony/SecurityAlgorithmUpdate;)V

    .line 1291
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    goto/16 :goto_600

    .line 1275
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/telephony/SecurityAlgorithmUpdate;
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1276
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1277
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySatelliteStateChanged(Z)V

    .line 1278
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    goto/16 :goto_600

    .line 1264
    .end local v1    # "_arg0":Z
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISatelliteStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISatelliteStateChangeListener;

    move-result-object v1

    .line 1266
    .local v1, "_arg0":Lcom/android/internal/telephony/ISatelliteStateChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1267
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1268
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeSatelliteStateChangeListener(Lcom/android/internal/telephony/ISatelliteStateChangeListener;Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    goto/16 :goto_600

    .line 1251
    .end local v1    # "_arg0":Lcom/android/internal/telephony/ISatelliteStateChangeListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISatelliteStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISatelliteStateChangeListener;

    move-result-object v1

    .line 1253
    .restart local v1    # "_arg0":Lcom/android/internal/telephony/ISatelliteStateChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1255
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1256
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1257
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addSatelliteStateChangeListener(Lcom/android/internal/telephony/ISatelliteStateChangeListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    goto/16 :goto_600

    .line 1240
    .end local v1    # "_arg0":Lcom/android/internal/telephony/ISatelliteStateChangeListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1242
    .local v1, "_arg0":I
    sget-object v2, Landroid/telephony/satellite/NtnSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/satellite/NtnSignalStrength;

    .line 1243
    .local v2, "_arg1":Landroid/telephony/satellite/NtnSignalStrength;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1244
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierRoamingNtnSignalStrengthChanged(ILandroid/telephony/satellite/NtnSignalStrength;)V

    .line 1245
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1246
    goto/16 :goto_600

    .line 1229
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/satellite/NtnSignalStrength;
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1231
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1232
    .local v2, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1233
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierRoamingNtnAvailableServicesChanged(I[I)V

    .line 1234
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    goto/16 :goto_600

    .line 1218
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1220
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1221
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1222
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierRoamingNtnEligibleStateChanged(IZ)V

    .line 1223
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    goto/16 :goto_600

    .line 1207
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1209
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1210
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1211
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierRoamingNtnModeChanged(IZ)V

    .line 1212
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    goto/16 :goto_600

    .line 1192
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1194
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1196
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1198
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1199
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1200
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallbackModeStopped(IIII)V

    .line 1201
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    goto/16 :goto_600

    .line 1177
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1179
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1181
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1183
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1184
    .local v4, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1185
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallbackModeRestarted(IIIJ)V

    .line 1186
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    goto/16 :goto_600

    .line 1162
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":J
    :pswitch_121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1164
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1166
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1168
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1169
    .restart local v4    # "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1170
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallbackModeStarted(IIIJ)V

    .line 1171
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    goto/16 :goto_600

    .line 1147
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":J
    :pswitch_13d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1149
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1151
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1153
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1154
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierConfigChanged(IIII)V

    .line 1156
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    goto/16 :goto_600

    .line 1136
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ICarrierConfigChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierConfigChangeListener;

    move-result-object v1

    .line 1138
    .local v1, "_arg0":Lcom/android/internal/telephony/ICarrierConfigChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1139
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1140
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeCarrierConfigChangeListener(Lcom/android/internal/telephony/ICarrierConfigChangeListener;Ljava/lang/String;)V

    .line 1141
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    goto/16 :goto_600

    .line 1123
    .end local v1    # "_arg0":Lcom/android/internal/telephony/ICarrierConfigChangeListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_16f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ICarrierConfigChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierConfigChangeListener;

    move-result-object v1

    .line 1125
    .restart local v1    # "_arg0":Lcom/android/internal/telephony/ICarrierConfigChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1127
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1128
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addCarrierConfigChangeListener(Lcom/android/internal/telephony/ICarrierConfigChangeListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    goto/16 :goto_600

    .line 1110
    .end local v1    # "_arg0":Lcom/android/internal/telephony/ICarrierConfigChangeListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_18a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1112
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1114
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1115
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1116
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierServiceChanged(ILjava/lang/String;I)V

    .line 1117
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    goto/16 :goto_600

    .line 1097
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_1a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1099
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1101
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1102
    .local v3, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1103
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierPrivilegesChanged(ILjava/util/List;[I)V

    .line 1104
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    goto/16 :goto_600

    .line 1086
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg2":[I
    :pswitch_1b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    move-result-object v1

    .line 1088
    .local v1, "_arg0":Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1089
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeCarrierPrivilegesCallback(Lcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    goto/16 :goto_600

    .line 1071
    .end local v1    # "_arg0":Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_1cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1073
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    move-result-object v2

    .line 1075
    .local v2, "_arg1":Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1077
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1078
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1079
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addCarrierPrivilegesCallback(ILcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    goto/16 :goto_600

    .line 1062
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_1ee
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1063
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1064
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySimultaneousCellularCallingSubscriptionsChanged([I)V

    .line 1065
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    goto/16 :goto_600

    .line 1049
    .end local v1    # "_arg0":[I
    :pswitch_1fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1051
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1053
    .local v2, "_arg1":I
    sget-object v3, Landroid/telephony/LinkCapacityEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1054
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1055
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyLinkCapacityEstimateChanged(IILjava/util/List;)V

    .line 1056
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    goto/16 :goto_600

    .line 1034
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    :pswitch_216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1036
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1038
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1040
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1041
    .local v4, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1042
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyAllowedNetworkTypesChanged(IIIJ)V

    .line 1043
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    goto/16 :goto_600

    .line 1019
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":J
    :pswitch_232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1021
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1023
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1025
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1026
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1027
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataEnabled(IIZI)V

    .line 1028
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    goto/16 :goto_600

    .line 1006
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    :pswitch_24d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1008
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1010
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1011
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1012
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPhysicalChannelConfigForSubscriber(IILjava/util/List;)V

    .line 1013
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    goto/16 :goto_600

    .line 993
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    :pswitch_266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 995
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 997
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/telephony/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/BarringInfo;

    .line 998
    .local v3, "_arg2":Landroid/telephony/BarringInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V

    .line 1000
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    goto/16 :goto_600

    .line 972
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/telephony/BarringInfo;
    :pswitch_281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 974
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 976
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellIdentity;

    .line 978
    .local v3, "_arg2":Landroid/telephony/CellIdentity;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 980
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 982
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 984
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 985
    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 986
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V

    .line 987
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    goto/16 :goto_600

    .line 961
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/telephony/CellIdentity;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    :pswitch_2ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 963
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 964
    .local v2, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 965
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 966
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    goto/16 :goto_600

    .line 948
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_2c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 950
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 952
    .local v2, "_arg1":I
    sget-object v3, Landroid/telephony/ims/MediaQualityStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/MediaQualityStatus;

    .line 953
    .local v3, "_arg2":Landroid/telephony/ims/MediaQualityStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 954
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMediaQualityStatusChanged(IILandroid/telephony/ims/MediaQualityStatus;)V

    .line 955
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    goto/16 :goto_600

    .line 933
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/telephony/ims/MediaQualityStatus;
    :pswitch_2df
    sget-object v1, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CallQuality;

    .line 935
    .local v1, "_arg0":Landroid/telephony/CallQuality;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 937
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 939
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 940
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallQualityChanged(Landroid/telephony/CallQuality;III)V

    .line 942
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    goto/16 :goto_600

    .line 920
    .end local v1    # "_arg0":Landroid/telephony/CallQuality;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_2fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 922
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 924
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    .line 925
    .local v3, "_arg2":Landroid/telephony/emergency/EmergencyNumber;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V

    .line 927
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    goto/16 :goto_600

    .line 907
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/telephony/emergency/EmergencyNumber;
    :pswitch_319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 909
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 911
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    .line 912
    .restart local v3    # "_arg2":Landroid/telephony/emergency/EmergencyNumber;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOutgoingEmergencyCall(IILandroid/telephony/emergency/EmergencyNumber;)V

    .line 914
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    goto/16 :goto_600

    .line 896
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/telephony/emergency/EmergencyNumber;
    :pswitch_334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 898
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 899
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyEmergencyNumberList(II)V

    .line 901
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    goto/16 :goto_600

    .line 883
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 885
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 887
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 888
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 889
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyRadioPowerStateChanged(III)V

    .line 890
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    goto/16 :goto_600

    .line 874
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_35e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 875
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyActiveDataSubIdChanged(I)V

    .line 877
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    goto/16 :goto_600

    .line 865
    .end local v1    # "_arg0":I
    :pswitch_36d
    sget-object v1, Landroid/telephony/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/PhoneCapability;

    .line 866
    .local v1, "_arg0":Landroid/telephony/PhoneCapability;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    .line 868
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    goto/16 :goto_600

    .line 852
    .end local v1    # "_arg0":Landroid/telephony/PhoneCapability;
    :pswitch_380
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 854
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 856
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/telephony/TelephonyDisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyDisplayInfo;

    .line 857
    .local v3, "_arg2":Landroid/telephony/TelephonyDisplayInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V

    .line 859
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    goto/16 :goto_600

    .line 839
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/telephony/TelephonyDisplayInfo;
    :pswitch_39b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 841
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 843
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 844
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyUserMobileDataStateChangedForPhoneId(IIZ)V

    .line 846
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    goto/16 :goto_600

    .line 828
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_3b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 830
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 831
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierNetworkChangeWithSubId(IZ)V

    .line 833
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    goto/16 :goto_600

    .line 819
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_3c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 820
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierNetworkChange(Z)V

    .line 822
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    goto/16 :goto_600

    .line 812
    .end local v1    # "_arg0":Z
    :pswitch_3d4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOpportunisticSubscriptionInfoChanged()V

    .line 813
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    goto/16 :goto_600

    .line 806
    :pswitch_3dc
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySubscriptionInfoChanged()V

    .line 807
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    goto/16 :goto_600

    .line 794
    :pswitch_3e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 796
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 798
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 799
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOemHookRawEventForSubscriber(II[B)V

    .line 801
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    goto/16 :goto_600

    .line 779
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    :pswitch_3fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 781
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 783
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 785
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 786
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySimActivationStateChangedForPhoneId(IIII)V

    .line 788
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    goto/16 :goto_600

    .line 768
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 770
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 771
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySrvccStateChanged(II)V

    .line 773
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    goto/16 :goto_600

    .line 757
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 759
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 760
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 761
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 762
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    goto/16 :goto_600

    .line 742
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_43e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 744
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 746
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 748
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 749
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDisconnectCause(IIII)V

    .line 751
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    goto/16 :goto_600

    .line 723
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 725
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 727
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 729
    .local v3, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 731
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 733
    .local v5, "_arg4":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 734
    .local v6, "_arg5":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseCallState(II[I[Ljava/lang/String;[I[I)V

    .line 736
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    goto/16 :goto_600

    .line 714
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":[I
    .end local v6    # "_arg5":[I
    :pswitch_47d
    sget-object v1, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 715
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfo(Ljava/util/List;)V

    .line 717
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    goto/16 :goto_600

    .line 703
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_48e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 705
    .local v1, "_arg0":I
    sget-object v2, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellIdentity;

    .line 706
    .local v2, "_arg1":Landroid/telephony/CellIdentity;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;)V

    .line 708
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto/16 :goto_600

    .line 690
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/CellIdentity;
    :pswitch_4a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 692
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 694
    .local v2, "_arg1":I
    sget-object v3, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/PreciseDataConnectionState;

    .line 695
    .local v3, "_arg2":Landroid/telephony/PreciseDataConnectionState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionForSubscriber(IILandroid/telephony/PreciseDataConnectionState;)V

    .line 697
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    goto/16 :goto_600

    .line 677
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/telephony/PreciseDataConnectionState;
    :pswitch_4c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 679
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 681
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 682
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivityForSubscriberWithSlot(III)V

    .line 684
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    goto/16 :goto_600

    .line 666
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_4d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 668
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 669
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivityForSubscriber(II)V

    .line 671
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    goto/16 :goto_600

    .line 655
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_4ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 657
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 658
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChangedForSubscriber(IZ)V

    .line 660
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    goto/16 :goto_600

    .line 646
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_4fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 647
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 648
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChanged(Z)V

    .line 649
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    goto/16 :goto_600

    .line 633
    .end local v1    # "_arg0":Z
    :pswitch_50c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 635
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 637
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 638
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMessageWaitingChangedForPhoneId(IIZ)V

    .line 640
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    goto/16 :goto_600

    .line 620
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_523
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 622
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 624
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SignalStrength;

    .line 625
    .local v3, "_arg2":Landroid/telephony/SignalStrength;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V

    .line 627
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    goto/16 :goto_600

    .line 607
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/telephony/SignalStrength;
    :pswitch_53e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 609
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 611
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ServiceState;

    .line 612
    .local v3, "_arg2":Landroid/telephony/ServiceState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V

    .line 614
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    goto/16 :goto_600

    .line 592
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/telephony/ServiceState;
    :pswitch_559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 594
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 596
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 598
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 599
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallState(IIILjava/lang/String;)V

    .line 601
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    goto/16 :goto_600

    .line 581
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 583
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallStateForAllSubs(ILjava/lang/String;)V

    .line 586
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    goto/16 :goto_600

    .line 558
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_587
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 560
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 562
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 564
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 566
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 568
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v6

    .line 570
    .local v6, "_arg5":Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 572
    .local v7, "_arg6":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 573
    .local v8, "_arg7":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listenWithEventList(ZZILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;[IZ)V

    .line 575
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    goto :goto_600

    .line 547
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v7    # "_arg6":[I
    .end local v8    # "_arg7":Z
    :pswitch_5b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v2

    .line 550
    .local v2, "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 552
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    goto :goto_600

    .line 534
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :pswitch_5cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 536
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v3

    .line 539
    .local v3, "_arg2":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addOnOpportunisticSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 541
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    goto :goto_600

    .line 521
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :pswitch_5e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 523
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 525
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v3

    .line 526
    .restart local v3    # "_arg2":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addOnSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 528
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    nop

    .line 1312
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :goto_600
    return v11

    nop

    :pswitch_data_602
    .packed-switch 0x1
        :pswitch_5e6
        :pswitch_5cc
        :pswitch_5b6
        :pswitch_587
        :pswitch_574
        :pswitch_559
        :pswitch_53e
        :pswitch_523
        :pswitch_50c
        :pswitch_4fd
        :pswitch_4ea
        :pswitch_4d7
        :pswitch_4c0
        :pswitch_4a5
        :pswitch_48e
        :pswitch_47d
        :pswitch_459
        :pswitch_43e
        :pswitch_429
        :pswitch_416
        :pswitch_3fb
        :pswitch_3e4
        :pswitch_3dc
        :pswitch_3d4
        :pswitch_3c5
        :pswitch_3b2
        :pswitch_39b
        :pswitch_380
        :pswitch_36d
        :pswitch_35e
        :pswitch_347
        :pswitch_334
        :pswitch_319
        :pswitch_2fe
        :pswitch_2df
        :pswitch_2c4
        :pswitch_2ad
        :pswitch_281
        :pswitch_266
        :pswitch_24d
        :pswitch_232
        :pswitch_216
        :pswitch_1fd
        :pswitch_1ee
        :pswitch_1cf
        :pswitch_1b8
        :pswitch_1a1
        :pswitch_18a
        :pswitch_16f
        :pswitch_158
        :pswitch_13d
        :pswitch_121
        :pswitch_105
        :pswitch_ea
        :pswitch_d7
        :pswitch_c4
        :pswitch_b1
        :pswitch_9a
        :pswitch_7f
        :pswitch_68
        :pswitch_59
        :pswitch_3e
        :pswitch_23
    .end packed-switch
.end method

.class public abstract Lcom/android/internal/telecom/ITelecomService$Stub;
.super Landroid/os/Binder;
.source "ITelecomService.java"

# interfaces
.implements Lcom/android/internal/telecom/ITelecomService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ITelecomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ITelecomService"

.field static final greylist-max-o TRANSACTION_acceptHandover:I = 0x39

.field static final greylist-max-o TRANSACTION_acceptRingingCall:I = 0x24

.field static final greylist-max-o TRANSACTION_acceptRingingCallWithVideoState:I = 0x25

.field static final blacklist TRANSACTION_addCall:I = 0x4a

.field static final greylist-max-o TRANSACTION_addNewIncomingCall:I = 0x2c

.field static final blacklist TRANSACTION_addNewIncomingConference:I = 0x2d

.field static final greylist-max-o TRANSACTION_addNewUnknownCall:I = 0x2e

.field static final blacklist TRANSACTION_addOrRemoveTestCallCompanionApp:I = 0x45

.field static final greylist-max-o TRANSACTION_cancelMissedCallsNotification:I = 0x26

.field static final blacklist TRANSACTION_cleanupOrphanPhoneAccounts:I = 0x3e

.field static final blacklist TRANSACTION_cleanupStuckCalls:I = 0x3d

.field static final greylist-max-o TRANSACTION_clearAccounts:I = 0x13

.field static final blacklist TRANSACTION_createLaunchEmergencyDialerIntent:I = 0x35

.field static final greylist-max-o TRANSACTION_createManageBlockedNumbersIntent:I = 0x34

.field static final greylist-max-o TRANSACTION_dumpCallAnalytics:I = 0x1b

.field static final greylist-max-o TRANSACTION_enablePhoneAccount:I = 0x31

.field static final greylist-max-o TRANSACTION_endCall:I = 0x23

.field static final greylist-max-o TRANSACTION_getAdnUriForPhoneAccount:I = 0x29

.field static final greylist-max-o TRANSACTION_getAllPhoneAccountHandles:I = 0xe

.field static final greylist-max-o TRANSACTION_getAllPhoneAccounts:I = 0xd

.field static final greylist-max-o TRANSACTION_getAllPhoneAccountsCount:I = 0xc

.field static final greylist-max-o TRANSACTION_getCallCapablePhoneAccounts:I = 0x5

.field static final greylist-max-o TRANSACTION_getCallState:I = 0x21

.field static final blacklist TRANSACTION_getCallStateUsingPackage:I = 0x22

.field static final greylist-max-o TRANSACTION_getCurrentTtyMode:I = 0x2b

.field static final greylist-max-o TRANSACTION_getDefaultDialerPackage:I = 0x18

.field static final blacklist TRANSACTION_getDefaultDialerPackageForUser:I = 0x19

.field static final greylist-max-o TRANSACTION_getDefaultOutgoingPhoneAccount:I = 0x2

.field static final greylist-max-o TRANSACTION_getDefaultPhoneApp:I = 0x17

.field static final greylist-max-o TRANSACTION_getLine1Number:I = 0x16

.field static final blacklist TRANSACTION_getOwnSelfManagedPhoneAccounts:I = 0x7

.field static final greylist-max-o TRANSACTION_getPhoneAccount:I = 0xa

.field static final greylist-max-o TRANSACTION_getPhoneAccountsForPackage:I = 0x9

.field static final greylist-max-o TRANSACTION_getPhoneAccountsSupportingScheme:I = 0x8

.field static final blacklist TRANSACTION_getRegisteredPhoneAccounts:I = 0xb

.field static final greylist-max-o TRANSACTION_getSelfManagedPhoneAccounts:I = 0x6

.field static final greylist-max-o TRANSACTION_getSimCallManager:I = 0xf

.field static final greylist-max-o TRANSACTION_getSimCallManagerForUser:I = 0x10

.field static final greylist-max-o TRANSACTION_getSystemDialerPackage:I = 0x1a

.field static final greylist-max-o TRANSACTION_getUserSelectedOutgoingPhoneAccount:I = 0x3

.field static final greylist-max-o TRANSACTION_getVoiceMailNumber:I = 0x15

.field static final blacklist TRANSACTION_handleCallIntent:I = 0x3c

.field static final greylist-max-o TRANSACTION_handlePinMmi:I = 0x27

.field static final greylist-max-o TRANSACTION_handlePinMmiForPhoneAccount:I = 0x28

.field static final blacklist TRANSACTION_hasForegroundServiceDelegation:I = 0x4b

.field static final blacklist TRANSACTION_hasManageOngoingCallsPermission:I = 0x1e

.field static final greylist-max-o TRANSACTION_isInCall:I = 0x1d

.field static final blacklist TRANSACTION_isInEmergencyCall:I = 0x3b

.field static final greylist-max-o TRANSACTION_isInManagedCall:I = 0x1f

.field static final blacklist TRANSACTION_isInSelfManagedCall:I = 0x49

.field static final greylist-max-o TRANSACTION_isIncomingCallPermitted:I = 0x36

.field static final blacklist TRANSACTION_isNonUiInCallServiceBound:I = 0x3f

.field static final greylist-max-o TRANSACTION_isOutgoingCallPermitted:I = 0x37

.field static final greylist-max-o TRANSACTION_isRinging:I = 0x20

.field static final greylist-max-o TRANSACTION_isTtySupported:I = 0x2a

.field static final greylist-max-o TRANSACTION_isVoiceMailNumber:I = 0x14

.field static final greylist-max-o TRANSACTION_placeCall:I = 0x30

.field static final greylist-max-o TRANSACTION_registerPhoneAccount:I = 0x11

.field static final blacklist TRANSACTION_requestLogMark:I = 0x42

.field static final blacklist TRANSACTION_resetCarMode:I = 0x40

.field static final greylist-max-o TRANSACTION_setDefaultDialer:I = 0x32

.field static final blacklist TRANSACTION_setMetricsTestMode:I = 0x4c

.field static final blacklist TRANSACTION_setSystemDialer:I = 0x46

.field static final blacklist TRANSACTION_setTestCallDiagnosticService:I = 0x48

.field static final blacklist TRANSACTION_setTestDefaultCallRedirectionApp:I = 0x41

.field static final blacklist TRANSACTION_setTestDefaultCallScreeningApp:I = 0x44

.field static final blacklist TRANSACTION_setTestDefaultDialer:I = 0x47

.field static final blacklist TRANSACTION_setTestEmergencyPhoneAccountPackageNameFilter:I = 0x3a

.field static final blacklist TRANSACTION_setTestPhoneAcctSuggestionComponent:I = 0x43

.field static final greylist-max-o TRANSACTION_setUserSelectedOutgoingPhoneAccount:I = 0x4

.field static final greylist-max-o TRANSACTION_showInCallScreen:I = 0x1

.field static final greylist-max-o TRANSACTION_silenceRinger:I = 0x1c

.field static final blacklist TRANSACTION_startConference:I = 0x2f

.field static final blacklist TRANSACTION_stopBlockSuppression:I = 0x33

.field static final greylist-max-o TRANSACTION_unregisterPhoneAccount:I = 0x12

.field static final blacklist TRANSACTION_waitForAudioToUpdate:I = 0x4d

.field static final greylist-max-o TRANSACTION_waitOnHandlers:I = 0x38


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 386
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 387
    const-string v0, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 395
    if-nez p0, :cond_4

    .line 396
    const/4 v0, 0x0

    return-object v0

    .line 398
    :cond_4
    const-string v0, "com.android.internal.telecom.ITelecomService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 399
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/ITelecomService;

    if-eqz v1, :cond_14

    .line 400
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/ITelecomService;

    return-object v1

    .line 402
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 411
    packed-switch p0, :pswitch_data_102

    .line 723
    const/4 v0, 0x0

    return-object v0

    .line 719
    :pswitch_5
    const-string/jumbo v0, "waitForAudioToUpdate"

    return-object v0

    .line 715
    :pswitch_9
    const-string/jumbo v0, "setMetricsTestMode"

    return-object v0

    .line 711
    :pswitch_d
    const-string v0, "hasForegroundServiceDelegation"

    return-object v0

    .line 707
    :pswitch_10
    const-string v0, "addCall"

    return-object v0

    .line 703
    :pswitch_13
    const-string v0, "isInSelfManagedCall"

    return-object v0

    .line 699
    :pswitch_16
    const-string/jumbo v0, "setTestCallDiagnosticService"

    return-object v0

    .line 695
    :pswitch_1a
    const-string/jumbo v0, "setTestDefaultDialer"

    return-object v0

    .line 691
    :pswitch_1e
    const-string/jumbo v0, "setSystemDialer"

    return-object v0

    .line 687
    :pswitch_22
    const-string v0, "addOrRemoveTestCallCompanionApp"

    return-object v0

    .line 683
    :pswitch_25
    const-string/jumbo v0, "setTestDefaultCallScreeningApp"

    return-object v0

    .line 679
    :pswitch_29
    const-string/jumbo v0, "setTestPhoneAcctSuggestionComponent"

    return-object v0

    .line 675
    :pswitch_2d
    const-string/jumbo v0, "requestLogMark"

    return-object v0

    .line 671
    :pswitch_31
    const-string/jumbo v0, "setTestDefaultCallRedirectionApp"

    return-object v0

    .line 667
    :pswitch_35
    const-string/jumbo v0, "resetCarMode"

    return-object v0

    .line 663
    :pswitch_39
    const-string v0, "isNonUiInCallServiceBound"

    return-object v0

    .line 659
    :pswitch_3c
    const-string v0, "cleanupOrphanPhoneAccounts"

    return-object v0

    .line 655
    :pswitch_3f
    const-string v0, "cleanupStuckCalls"

    return-object v0

    .line 651
    :pswitch_42
    const-string v0, "handleCallIntent"

    return-object v0

    .line 647
    :pswitch_45
    const-string v0, "isInEmergencyCall"

    return-object v0

    .line 643
    :pswitch_48
    const-string/jumbo v0, "setTestEmergencyPhoneAccountPackageNameFilter"

    return-object v0

    .line 639
    :pswitch_4c
    const-string v0, "acceptHandover"

    return-object v0

    .line 635
    :pswitch_4f
    const-string/jumbo v0, "waitOnHandlers"

    return-object v0

    .line 631
    :pswitch_53
    const-string v0, "isOutgoingCallPermitted"

    return-object v0

    .line 627
    :pswitch_56
    const-string v0, "isIncomingCallPermitted"

    return-object v0

    .line 623
    :pswitch_59
    const-string v0, "createLaunchEmergencyDialerIntent"

    return-object v0

    .line 619
    :pswitch_5c
    const-string v0, "createManageBlockedNumbersIntent"

    return-object v0

    .line 615
    :pswitch_5f
    const-string/jumbo v0, "stopBlockSuppression"

    return-object v0

    .line 611
    :pswitch_63
    const-string/jumbo v0, "setDefaultDialer"

    return-object v0

    .line 607
    :pswitch_67
    const-string v0, "enablePhoneAccount"

    return-object v0

    .line 603
    :pswitch_6a
    const-string/jumbo v0, "placeCall"

    return-object v0

    .line 599
    :pswitch_6e
    const-string/jumbo v0, "startConference"

    return-object v0

    .line 595
    :pswitch_72
    const-string v0, "addNewUnknownCall"

    return-object v0

    .line 591
    :pswitch_75
    const-string v0, "addNewIncomingConference"

    return-object v0

    .line 587
    :pswitch_78
    const-string v0, "addNewIncomingCall"

    return-object v0

    .line 583
    :pswitch_7b
    const-string v0, "getCurrentTtyMode"

    return-object v0

    .line 579
    :pswitch_7e
    const-string v0, "isTtySupported"

    return-object v0

    .line 575
    :pswitch_81
    const-string v0, "getAdnUriForPhoneAccount"

    return-object v0

    .line 571
    :pswitch_84
    const-string v0, "handlePinMmiForPhoneAccount"

    return-object v0

    .line 567
    :pswitch_87
    const-string v0, "handlePinMmi"

    return-object v0

    .line 563
    :pswitch_8a
    const-string v0, "cancelMissedCallsNotification"

    return-object v0

    .line 559
    :pswitch_8d
    const-string v0, "acceptRingingCallWithVideoState"

    return-object v0

    .line 555
    :pswitch_90
    const-string v0, "acceptRingingCall"

    return-object v0

    .line 551
    :pswitch_93
    const-string v0, "endCall"

    return-object v0

    .line 547
    :pswitch_96
    const-string v0, "getCallStateUsingPackage"

    return-object v0

    .line 543
    :pswitch_99
    const-string v0, "getCallState"

    return-object v0

    .line 539
    :pswitch_9c
    const-string v0, "isRinging"

    return-object v0

    .line 535
    :pswitch_9f
    const-string v0, "isInManagedCall"

    return-object v0

    .line 531
    :pswitch_a2
    const-string v0, "hasManageOngoingCallsPermission"

    return-object v0

    .line 527
    :pswitch_a5
    const-string v0, "isInCall"

    return-object v0

    .line 523
    :pswitch_a8
    const-string/jumbo v0, "silenceRinger"

    return-object v0

    .line 519
    :pswitch_ac
    const-string v0, "dumpCallAnalytics"

    return-object v0

    .line 515
    :pswitch_af
    const-string v0, "getSystemDialerPackage"

    return-object v0

    .line 511
    :pswitch_b2
    const-string v0, "getDefaultDialerPackageForUser"

    return-object v0

    .line 507
    :pswitch_b5
    const-string v0, "getDefaultDialerPackage"

    return-object v0

    .line 503
    :pswitch_b8
    const-string v0, "getDefaultPhoneApp"

    return-object v0

    .line 499
    :pswitch_bb
    const-string v0, "getLine1Number"

    return-object v0

    .line 495
    :pswitch_be
    const-string v0, "getVoiceMailNumber"

    return-object v0

    .line 491
    :pswitch_c1
    const-string v0, "isVoiceMailNumber"

    return-object v0

    .line 487
    :pswitch_c4
    const-string v0, "clearAccounts"

    return-object v0

    .line 483
    :pswitch_c7
    const-string/jumbo v0, "unregisterPhoneAccount"

    return-object v0

    .line 479
    :pswitch_cb
    const-string/jumbo v0, "registerPhoneAccount"

    return-object v0

    .line 475
    :pswitch_cf
    const-string v0, "getSimCallManagerForUser"

    return-object v0

    .line 471
    :pswitch_d2
    const-string v0, "getSimCallManager"

    return-object v0

    .line 467
    :pswitch_d5
    const-string v0, "getAllPhoneAccountHandles"

    return-object v0

    .line 463
    :pswitch_d8
    const-string v0, "getAllPhoneAccounts"

    return-object v0

    .line 459
    :pswitch_db
    const-string v0, "getAllPhoneAccountsCount"

    return-object v0

    .line 455
    :pswitch_de
    const-string v0, "getRegisteredPhoneAccounts"

    return-object v0

    .line 451
    :pswitch_e1
    const-string v0, "getPhoneAccount"

    return-object v0

    .line 447
    :pswitch_e4
    const-string v0, "getPhoneAccountsForPackage"

    return-object v0

    .line 443
    :pswitch_e7
    const-string v0, "getPhoneAccountsSupportingScheme"

    return-object v0

    .line 439
    :pswitch_ea
    const-string v0, "getOwnSelfManagedPhoneAccounts"

    return-object v0

    .line 435
    :pswitch_ed
    const-string v0, "getSelfManagedPhoneAccounts"

    return-object v0

    .line 431
    :pswitch_f0
    const-string v0, "getCallCapablePhoneAccounts"

    return-object v0

    .line 427
    :pswitch_f3
    const-string/jumbo v0, "setUserSelectedOutgoingPhoneAccount"

    return-object v0

    .line 423
    :pswitch_f7
    const-string v0, "getUserSelectedOutgoingPhoneAccount"

    return-object v0

    .line 419
    :pswitch_fa
    const-string v0, "getDefaultOutgoingPhoneAccount"

    return-object v0

    .line 415
    :pswitch_fd
    const-string/jumbo v0, "showInCallScreen"

    return-object v0

    nop

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_fd
        :pswitch_fa
        :pswitch_f7
        :pswitch_f3
        :pswitch_f0
        :pswitch_ed
        :pswitch_ea
        :pswitch_e7
        :pswitch_e4
        :pswitch_e1
        :pswitch_de
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
        :pswitch_d2
        :pswitch_cf
        :pswitch_cb
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_4f
        :pswitch_4c
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 406
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 3082
    const/16 v0, 0x4c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 730
    invoke-static {p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 734
    const-string v0, "com.android.internal.telecom.ITelecomService"

    .line 735
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 736
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 739
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 740
    return v1

    .line 742
    :cond_16
    packed-switch p1, :pswitch_data_65e

    .line 1564
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1556
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1557
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1558
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->waitForAudioToUpdate(Z)V

    .line 1559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1560
    goto/16 :goto_65d

    .line 1547
    .end local v2    # "_arg0":Z
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1548
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1549
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setMetricsTestMode(Z)V

    .line 1550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1551
    goto/16 :goto_65d

    .line 1535
    .end local v2    # "_arg0":Z
    :pswitch_3c
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1537
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1538
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1539
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->hasForegroundServiceDelegation(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v4

    .line 1540
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1541
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1542
    goto/16 :goto_65d

    .line 1520
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_57
    sget-object v2, Landroid/telecom/CallAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallAttributes;

    .line 1522
    .local v2, "_arg0":Landroid/telecom/CallAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallEventCallback;

    move-result-object v3

    .line 1524
    .local v3, "_arg1":Lcom/android/internal/telecom/ICallEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1526
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1527
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1528
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/ITelecomService$Stub;->addCall(Landroid/telecom/CallAttributes;Lcom/android/internal/telecom/ICallEventCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    goto/16 :goto_65d

    .line 1506
    .end local v2    # "_arg0":Landroid/telecom/CallAttributes;
    .end local v3    # "_arg1":Lcom/android/internal/telecom/ICallEventCallback;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1508
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1510
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1511
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1512
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInSelfManagedCall(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5

    .line 1513
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1514
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1515
    goto/16 :goto_65d

    .line 1497
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1498
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1499
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestCallDiagnosticService(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1501
    goto/16 :goto_65d

    .line 1488
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1489
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1490
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestDefaultDialer(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    goto/16 :goto_65d

    .line 1479
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_b7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1480
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1481
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setSystemDialer(Landroid/content/ComponentName;)V

    .line 1482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1483
    goto/16 :goto_65d

    .line 1468
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1470
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1471
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1472
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->addOrRemoveTestCallCompanionApp(Ljava/lang/String;Z)V

    .line 1473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1474
    goto/16 :goto_65d

    .line 1459
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1460
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1461
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestDefaultCallScreeningApp(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    goto/16 :goto_65d

    .line 1448
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1450
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1451
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1452
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestPhoneAcctSuggestionComponent(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1454
    goto/16 :goto_65d

    .line 1439
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1440
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1441
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->requestLogMark(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    goto/16 :goto_65d

    .line 1430
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1431
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1432
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestDefaultCallRedirectionApp(Ljava/lang/String;)V

    .line 1433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    goto/16 :goto_65d

    .line 1423
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_121
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->resetCarMode()V

    .line 1424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1425
    goto/16 :goto_65d

    .line 1414
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1415
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1416
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->isNonUiInCallServiceBound(Ljava/lang/String;)Z

    move-result v3

    .line 1417
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1418
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1419
    goto/16 :goto_65d

    .line 1406
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_13c
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->cleanupOrphanPhoneAccounts()I

    move-result v2

    .line 1407
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1408
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1409
    goto/16 :goto_65d

    .line 1400
    .end local v2    # "_result":I
    :pswitch_148
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->cleanupStuckCalls()V

    .line 1401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    goto/16 :goto_65d

    .line 1390
    :pswitch_150
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1392
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1393
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1394
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->handleCallIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1396
    goto/16 :goto_65d

    .line 1382
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_167
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInEmergencyCall()Z

    move-result v2

    .line 1383
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1384
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1385
    goto/16 :goto_65d

    .line 1374
    .end local v2    # "_result":Z
    :pswitch_173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1375
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1376
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestEmergencyPhoneAccountPackageNameFilter(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1378
    goto/16 :goto_65d

    .line 1359
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_182
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1361
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1363
    .local v3, "_arg1":I
    sget-object v4, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 1365
    .local v4, "_arg2":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1366
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1367
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptHandover(Landroid/net/Uri;ILandroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    goto/16 :goto_65d

    .line 1352
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_1a5
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->waitOnHandlers()V

    .line 1353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1354
    goto/16 :goto_65d

    .line 1341
    :pswitch_1ad
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1343
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1344
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1345
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->isOutgoingCallPermitted(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v4

    .line 1346
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1348
    goto/16 :goto_65d

    .line 1329
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1c8
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1331
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1332
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1333
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->isIncomingCallPermitted(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v4

    .line 1334
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1336
    goto/16 :goto_65d

    .line 1319
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1320
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1321
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1322
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1324
    goto/16 :goto_65d

    .line 1309
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/Intent;
    :pswitch_1f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1310
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1311
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->createManageBlockedNumbersIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1312
    .restart local v3    # "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1314
    goto/16 :goto_65d

    .line 1302
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/Intent;
    :pswitch_209
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->stopBlockSuppression()V

    .line 1303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    goto/16 :goto_65d

    .line 1293
    :pswitch_211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1294
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1295
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setDefaultDialer(Ljava/lang/String;)Z

    move-result v3

    .line 1296
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1297
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1298
    goto/16 :goto_65d

    .line 1281
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_224
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1283
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1284
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1285
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z

    move-result v4

    .line 1286
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1287
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1288
    goto/16 :goto_65d

    .line 1266
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_23f
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1268
    .local v2, "_arg0":Landroid/net/Uri;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1270
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1272
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1273
    .restart local v5    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1274
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/ITelecomService$Stub;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1276
    goto/16 :goto_65d

    .line 1253
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_262
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1255
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1257
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1258
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1259
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->startConference(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    goto/16 :goto_65d

    .line 1242
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_27f
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1244
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1245
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1246
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 1247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    goto/16 :goto_65d

    .line 1229
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_29a
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1231
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1233
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1234
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1235
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    goto/16 :goto_65d

    .line 1216
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_2b9
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1218
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1220
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1221
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1222
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    goto/16 :goto_65d

    .line 1204
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_2d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1206
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1207
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1208
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCurrentTtyMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1209
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    goto/16 :goto_65d

    .line 1192
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_2ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1194
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1195
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1196
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->isTtySupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1197
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1199
    goto/16 :goto_65d

    .line 1180
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_306
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1182
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1183
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1184
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1185
    .local v4, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1187
    goto/16 :goto_65d

    .line 1166
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/net/Uri;
    :pswitch_321
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1168
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1170
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1171
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1172
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 1173
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1175
    goto/16 :goto_65d

    .line 1154
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1156
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1157
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1158
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1159
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1160
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1161
    goto/16 :goto_65d

    .line 1145
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_357
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1146
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1147
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->cancelMissedCallsNotification(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    goto/16 :goto_65d

    .line 1134
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_366
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1136
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1137
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1138
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptRingingCallWithVideoState(Ljava/lang/String;I)V

    .line 1139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    goto/16 :goto_65d

    .line 1125
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_379
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1126
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1127
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptRingingCall(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    goto/16 :goto_65d

    .line 1115
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1116
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->endCall(Ljava/lang/String;)Z

    move-result v3

    .line 1118
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1120
    goto/16 :goto_65d

    .line 1103
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_39b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1105
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1106
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallStateUsingPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1108
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    goto/16 :goto_65d

    .line 1095
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_3b2
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallState()I

    move-result v2

    .line 1096
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1098
    goto/16 :goto_65d

    .line 1086
    .end local v2    # "_result":I
    :pswitch_3be
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1087
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1088
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->isRinging(Ljava/lang/String;)Z

    move-result v3

    .line 1089
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1091
    goto/16 :goto_65d

    .line 1074
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1076
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1077
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1078
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInManagedCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1079
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1081
    goto/16 :goto_65d

    .line 1064
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_3e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1065
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1066
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->hasManageOngoingCallsPermission(Ljava/lang/String;)Z

    move-result v3

    .line 1067
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1069
    goto/16 :goto_65d

    .line 1052
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1054
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1055
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1056
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1057
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1059
    goto/16 :goto_65d

    .line 1043
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_412
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1044
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1045
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->silenceRinger(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    goto/16 :goto_65d

    .line 1035
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_421
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->dumpCallAnalytics()Landroid/telecom/TelecomAnalytics;

    move-result-object v2

    .line 1036
    .local v2, "_result":Landroid/telecom/TelecomAnalytics;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1038
    goto/16 :goto_65d

    .line 1026
    .end local v2    # "_result":Landroid/telecom/TelecomAnalytics;
    :pswitch_42d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1027
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1028
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSystemDialerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1029
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1031
    goto/16 :goto_65d

    .line 1016
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1017
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultDialerPackageForUser(I)Ljava/lang/String;

    move-result-object v3

    .line 1019
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1021
    goto/16 :goto_65d

    .line 1006
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_453
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1007
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1008
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultDialerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1009
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1011
    goto/16 :goto_65d

    .line 998
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_466
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v2

    .line 999
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1001
    goto/16 :goto_65d

    .line 985
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_472
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 987
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 989
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 990
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getLine1Number(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 992
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 994
    goto/16 :goto_65d

    .line 971
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_491
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 973
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 975
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 976
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 978
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 980
    goto/16 :goto_65d

    .line 955
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_4b0
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 957
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 959
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 961
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 962
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/ITelecomService$Stub;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 964
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 966
    goto/16 :goto_65d

    .line 946
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_4d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 947
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->clearAccounts(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    goto/16 :goto_65d

    .line 935
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_4e2
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 937
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 938
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 939
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    .line 940
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    goto/16 :goto_65d

    .line 924
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_4f9
    sget-object v2, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccount;

    .line 926
    .local v2, "_arg0":Landroid/telecom/PhoneAccount;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 927
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 928
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->registerPhoneAccount(Landroid/telecom/PhoneAccount;Ljava/lang/String;)V

    .line 929
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    goto/16 :goto_65d

    .line 912
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccount;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_510
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 914
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 915
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 916
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManagerForUser(ILjava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    .line 917
    .local v4, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 919
    goto/16 :goto_65d

    .line 900
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/telecom/PhoneAccountHandle;
    :pswitch_527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 902
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 903
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManager(ILjava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    .line 905
    .restart local v4    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 907
    goto/16 :goto_65d

    .line 892
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/telecom/PhoneAccountHandle;
    :pswitch_53e
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountHandles()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 893
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 895
    goto/16 :goto_65d

    .line 885
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_54a
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccounts()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 886
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccount;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 888
    goto/16 :goto_65d

    .line 878
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccount;>;"
    :pswitch_556
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountsCount()I

    move-result v2

    .line 879
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    goto/16 :goto_65d

    .line 867
    .end local v2    # "_result":I
    :pswitch_562
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 869
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 870
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 871
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getRegisteredPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 872
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccount;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 874
    goto/16 :goto_65d

    .line 855
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccount;>;"
    :pswitch_579
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 857
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 858
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 859
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    .line 860
    .local v4, "_result":Landroid/telecom/PhoneAccount;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 862
    goto/16 :goto_65d

    .line 845
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/telecom/PhoneAccount;
    :pswitch_594
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccountsForPackage(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 848
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 850
    goto/16 :goto_65d

    .line 833
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_5a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 835
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 836
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 837
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccountsSupportingScheme(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 838
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 840
    goto/16 :goto_65d

    .line 821
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_5be
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 823
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 824
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 825
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getOwnSelfManagedPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 826
    .restart local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 828
    goto/16 :goto_65d

    .line 809
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_5d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 811
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 812
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSelfManagedPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 814
    .restart local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 816
    goto :goto_65d

    .line 793
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_5eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 795
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 797
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 799
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 800
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 801
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallCapablePhoneAccounts(ZLjava/lang/String;Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    .line 802
    .local v6, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 804
    goto :goto_65d

    .line 784
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_609
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 785
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    goto :goto_65d

    .line 774
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :pswitch_61b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->getUserSelectedOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 777
    .local v3, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 779
    goto :goto_65d

    .line 760
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    :pswitch_62d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 762
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 764
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 765
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 767
    .local v5, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 769
    goto :goto_65d

    .line 747
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/telecom/PhoneAccountHandle;
    :pswitch_647
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 749
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 751
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 752
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->showInCallScreen(ZLjava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    nop

    .line 1567
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :goto_65d
    return v1

    :pswitch_data_65e
    .packed-switch 0x1
        :pswitch_647
        :pswitch_62d
        :pswitch_61b
        :pswitch_609
        :pswitch_5eb
        :pswitch_5d5
        :pswitch_5be
        :pswitch_5a7
        :pswitch_594
        :pswitch_579
        :pswitch_562
        :pswitch_556
        :pswitch_54a
        :pswitch_53e
        :pswitch_527
        :pswitch_510
        :pswitch_4f9
        :pswitch_4e2
        :pswitch_4d3
        :pswitch_4b0
        :pswitch_491
        :pswitch_472
        :pswitch_466
        :pswitch_453
        :pswitch_440
        :pswitch_42d
        :pswitch_421
        :pswitch_412
        :pswitch_3fb
        :pswitch_3e8
        :pswitch_3d1
        :pswitch_3be
        :pswitch_3b2
        :pswitch_39b
        :pswitch_388
        :pswitch_379
        :pswitch_366
        :pswitch_357
        :pswitch_340
        :pswitch_321
        :pswitch_306
        :pswitch_2ef
        :pswitch_2d8
        :pswitch_2b9
        :pswitch_29a
        :pswitch_27f
        :pswitch_262
        :pswitch_23f
        :pswitch_224
        :pswitch_211
        :pswitch_209
        :pswitch_1f6
        :pswitch_1e3
        :pswitch_1c8
        :pswitch_1ad
        :pswitch_1a5
        :pswitch_182
        :pswitch_173
        :pswitch_167
        :pswitch_150
        :pswitch_148
        :pswitch_13c
        :pswitch_129
        :pswitch_121
        :pswitch_112
        :pswitch_103
        :pswitch_ec
        :pswitch_dd
        :pswitch_ca
        :pswitch_b7
        :pswitch_a8
        :pswitch_99
        :pswitch_7a
        :pswitch_57
        :pswitch_3c
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method

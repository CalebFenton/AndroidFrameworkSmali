.class public abstract Landroid/telephony/ims/aidl/IImsRcsController$Stub;
.super Landroid/os/Binder;
.source "IImsRcsController.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRcsController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRcsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsRcsController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createSipDelegate:I = 0x11

.field static final blacklist TRANSACTION_destroySipDelegate:I = 0x12

.field static final blacklist TRANSACTION_getImsRcsRegistrationState:I = 0x3

.field static final blacklist TRANSACTION_getImsRcsRegistrationTransportType:I = 0x4

.field static final blacklist TRANSACTION_getUcePublishState:I = 0xb

.field static final blacklist TRANSACTION_isAvailable:I = 0x8

.field static final blacklist TRANSACTION_isCapable:I = 0x7

.field static final blacklist TRANSACTION_isSipDelegateSupported:I = 0x10

.field static final blacklist TRANSACTION_isUceSettingEnabled:I = 0xc

.field static final blacklist TRANSACTION_registerImsRegistrationCallback:I = 0x1

.field static final blacklist TRANSACTION_registerRcsAvailabilityCallback:I = 0x5

.field static final blacklist TRANSACTION_registerRcsFeatureCallback:I = 0x16

.field static final blacklist TRANSACTION_registerSipDialogStateCallback:I = 0x14

.field static final blacklist TRANSACTION_registerUcePublishStateCallback:I = 0xe

.field static final blacklist TRANSACTION_requestAvailability:I = 0xa

.field static final blacklist TRANSACTION_requestCapabilities:I = 0x9

.field static final blacklist TRANSACTION_setUceSettingEnabled:I = 0xd

.field static final blacklist TRANSACTION_triggerNetworkRegistration:I = 0x13

.field static final blacklist TRANSACTION_unregisterImsFeatureCallback:I = 0x17

.field static final blacklist TRANSACTION_unregisterImsRegistrationCallback:I = 0x2

.field static final blacklist TRANSACTION_unregisterRcsAvailabilityCallback:I = 0x6

.field static final blacklist TRANSACTION_unregisterSipDialogStateCallback:I = 0x15

.field static final blacklist TRANSACTION_unregisterUcePublishStateCallback:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 111
    const-string v0, "android.telephony.ims.aidl.IImsRcsController"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 119
    if-nez p0, :cond_4

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsRcsController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 123
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsRcsController;

    if-eqz v1, :cond_14

    .line 124
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsRcsController;

    return-object v1

    .line 126
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsRcsController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 135
    packed-switch p0, :pswitch_data_4a

    .line 231
    const/4 v0, 0x0

    return-object v0

    .line 227
    :pswitch_5
    const-string v0, "unregisterImsFeatureCallback"

    return-object v0

    .line 223
    :pswitch_8
    const-string v0, "registerRcsFeatureCallback"

    return-object v0

    .line 219
    :pswitch_b
    const-string v0, "unregisterSipDialogStateCallback"

    return-object v0

    .line 215
    :pswitch_e
    const-string v0, "registerSipDialogStateCallback"

    return-object v0

    .line 211
    :pswitch_11
    const-string v0, "triggerNetworkRegistration"

    return-object v0

    .line 207
    :pswitch_14
    const-string v0, "destroySipDelegate"

    return-object v0

    .line 203
    :pswitch_17
    const-string v0, "createSipDelegate"

    return-object v0

    .line 199
    :pswitch_1a
    const-string v0, "isSipDelegateSupported"

    return-object v0

    .line 195
    :pswitch_1d
    const-string v0, "unregisterUcePublishStateCallback"

    return-object v0

    .line 191
    :pswitch_20
    const-string v0, "registerUcePublishStateCallback"

    return-object v0

    .line 187
    :pswitch_23
    const-string v0, "setUceSettingEnabled"

    return-object v0

    .line 183
    :pswitch_26
    const-string v0, "isUceSettingEnabled"

    return-object v0

    .line 179
    :pswitch_29
    const-string v0, "getUcePublishState"

    return-object v0

    .line 175
    :pswitch_2c
    const-string v0, "requestAvailability"

    return-object v0

    .line 171
    :pswitch_2f
    const-string v0, "requestCapabilities"

    return-object v0

    .line 167
    :pswitch_32
    const-string v0, "isAvailable"

    return-object v0

    .line 163
    :pswitch_35
    const-string v0, "isCapable"

    return-object v0

    .line 159
    :pswitch_38
    const-string v0, "unregisterRcsAvailabilityCallback"

    return-object v0

    .line 155
    :pswitch_3b
    const-string v0, "registerRcsAvailabilityCallback"

    return-object v0

    .line 151
    :pswitch_3e
    const-string v0, "getImsRcsRegistrationTransportType"

    return-object v0

    .line 147
    :pswitch_41
    const-string v0, "getImsRcsRegistrationState"

    return-object v0

    .line 143
    :pswitch_44
    const-string v0, "unregisterImsRegistrationCallback"

    return-object v0

    .line 139
    :pswitch_47
    const-string v0, "registerImsRegistrationCallback"

    return-object v0

    :pswitch_data_4a
    .packed-switch 0x1
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

    .line 130
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 983
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 238
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    const-string v6, "android.telephony.ims.aidl.IImsRcsController"

    .line 243
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 244
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 247
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    return v7

    .line 250
    :cond_16
    packed-switch p1, :pswitch_data_268

    .line 536
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 528
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v1

    .line 529
    .local v1, "_arg0":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    goto/16 :goto_266

    .line 517
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 519
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v2

    .line 520
    .local v2, "_arg1":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->registerRcsFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    goto/16 :goto_266

    .line 506
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 508
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISipDialogStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISipDialogStateCallback;

    move-result-object v2

    .line 509
    .local v2, "_arg1":Lcom/android/internal/telephony/ISipDialogStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->unregisterSipDialogStateCallback(ILcom/android/internal/telephony/ISipDialogStateCallback;)V

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    goto/16 :goto_266

    .line 495
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/telephony/ISipDialogStateCallback;
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 497
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISipDialogStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISipDialogStateCallback;

    move-result-object v2

    .line 498
    .restart local v2    # "_arg1":Lcom/android/internal/telephony/ISipDialogStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->registerSipDialogStateCallback(ILcom/android/internal/telephony/ISipDialogStateCallback;)V

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    goto/16 :goto_266

    .line 480
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/telephony/ISipDialogStateCallback;
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 482
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v2

    .line 484
    .local v2, "_arg1":Landroid/telephony/ims/aidl/ISipDelegate;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 486
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->triggerNetworkRegistration(ILandroid/telephony/ims/aidl/ISipDelegate;ILjava/lang/String;)V

    .line 489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    goto/16 :goto_266

    .line 467
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/ims/aidl/ISipDelegate;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 469
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v2

    .line 471
    .restart local v2    # "_arg1":Landroid/telephony/ims/aidl/ISipDelegate;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 472
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {p0, v1, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->destroySipDelegate(ILandroid/telephony/ims/aidl/ISipDelegate;I)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    goto/16 :goto_266

    .line 450
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/ims/aidl/ISipDelegate;
    .end local v3    # "_arg2":I
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 452
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/telephony/ims/DelegateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/DelegateRequest;

    .line 454
    .local v2, "_arg1":Landroid/telephony/ims/DelegateRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    move-result-object v4

    .line 458
    .local v4, "_arg3":Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    move-result-object v5

    .line 459
    .local v5, "_arg4":Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Ljava/lang/String;Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    goto/16 :goto_266

    .line 440
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/ims/DelegateRequest;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;
    .end local v5    # "_arg4":Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 441
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->isSipDelegateSupported(I)Z

    move-result v2

    .line 443
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 445
    goto/16 :goto_266

    .line 429
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 431
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    move-result-object v2

    .line 432
    .local v2, "_arg1":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->unregisterUcePublishStateCallback(ILandroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    goto/16 :goto_266

    .line 418
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 420
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    move-result-object v2

    .line 421
    .restart local v2    # "_arg1":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->registerUcePublishStateCallback(ILandroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    goto/16 :goto_266

    .line 407
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 409
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 410
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->setUceSettingEnabled(IZ)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    goto/16 :goto_266

    .line 393
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 395
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 398
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v1, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->isUceSettingEnabled(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 400
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 402
    goto/16 :goto_266

    .line 383
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_14b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 384
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->getUcePublishState(I)I

    move-result v2

    .line 386
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    goto/16 :goto_266

    .line 366
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_15e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 368
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 372
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 374
    .local v4, "_arg3":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    move-result-object v5

    .line 375
    .local v5, "_arg4":Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->requestAvailability(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    goto/16 :goto_266

    .line 349
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/net/Uri;
    .end local v5    # "_arg4":Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    :pswitch_186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 353
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 355
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 357
    .local v4, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    move-result-object v5

    .line 358
    .restart local v5    # "_arg4":Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->requestCapabilities(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    goto/16 :goto_266

    .line 335
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v5    # "_arg4":Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    :pswitch_1ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 337
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 340
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, v1, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->isAvailable(III)Z

    move-result v4

    .line 342
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 344
    goto/16 :goto_266

    .line 321
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_1c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 323
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 325
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 326
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, v1, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->isCapable(III)Z

    move-result v4

    .line 328
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 330
    goto/16 :goto_266

    .line 310
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_1e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 312
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v2

    .line 313
    .local v2, "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->unregisterRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    goto :goto_266

    .line 299
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_1f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 301
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v2

    .line 302
    .restart local v2    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->registerRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    goto :goto_266

    .line 288
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_20e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 290
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 291
    .local v2, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->getImsRcsRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    goto :goto_266

    .line 277
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 279
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 280
    .restart local v2    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->getImsRcsRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    goto :goto_266

    .line 266
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_23a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 268
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v2

    .line 269
    .local v2, "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto :goto_266

    .line 255
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    :pswitch_250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v2

    .line 258
    .restart local v2    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    nop

    .line 539
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    :goto_266
    return v7

    nop

    :pswitch_data_268
    .packed-switch 0x1
        :pswitch_250
        :pswitch_23a
        :pswitch_224
        :pswitch_20e
        :pswitch_1f8
        :pswitch_1e2
        :pswitch_1c7
        :pswitch_1ac
        :pswitch_186
        :pswitch_15e
        :pswitch_14b
        :pswitch_130
        :pswitch_11d
        :pswitch_106
        :pswitch_ef
        :pswitch_dc
        :pswitch_b0
        :pswitch_95
        :pswitch_76
        :pswitch_5f
        :pswitch_48
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method

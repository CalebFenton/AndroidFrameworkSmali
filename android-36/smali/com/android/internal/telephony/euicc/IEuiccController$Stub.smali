.class public abstract Lcom/android/internal/telephony/euicc/IEuiccController$Stub;
.super Landroid/os/Binder;
.source "IEuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/IEuiccController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/IEuiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_continueOperation:I = 0x1

.field static final blacklist TRANSACTION_deleteSubscription:I = 0x8

.field static final blacklist TRANSACTION_downloadSubscription:I = 0x6

.field static final blacklist TRANSACTION_eraseSubscriptions:I = 0xc

.field static final blacklist TRANSACTION_eraseSubscriptionsWithOptions:I = 0xd

.field static final blacklist TRANSACTION_getAvailableMemoryInBytes:I = 0x17

.field static final blacklist TRANSACTION_getDefaultDownloadableSubscriptionList:I = 0x3

.field static final blacklist TRANSACTION_getDownloadableSubscriptionMetadata:I = 0x2

.field static final blacklist TRANSACTION_getEid:I = 0x4

.field static final blacklist TRANSACTION_getEuiccInfo:I = 0x7

.field static final blacklist TRANSACTION_getOtaStatus:I = 0x5

.field static final blacklist TRANSACTION_getSupportedCountries:I = 0x10

.field static final blacklist TRANSACTION_hasCarrierPrivilegesForPackageOnAnyPhone:I = 0x13

.field static final blacklist TRANSACTION_isCompatChangeEnabled:I = 0x14

.field static final blacklist TRANSACTION_isPsimConversionSupported:I = 0x16

.field static final blacklist TRANSACTION_isSimPortAvailable:I = 0x12

.field static final blacklist TRANSACTION_isSupportedCountry:I = 0x11

.field static final blacklist TRANSACTION_retainSubscriptionsForFactoryReset:I = 0xe

.field static final blacklist TRANSACTION_setPsimConversionSupportedCarriers:I = 0x15

.field static final blacklist TRANSACTION_setSupportedCountries:I = 0xf

.field static final blacklist TRANSACTION_switchToSubscription:I = 0x9

.field static final blacklist TRANSACTION_switchToSubscriptionWithPort:I = 0xa

.field static final blacklist TRANSACTION_updateSubscriptionNickname:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 106
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 107
    const-string v0, "com.android.internal.telephony.euicc.IEuiccController"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 115
    if-nez p0, :cond_4

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_4
    const-string v0, "com.android.internal.telephony.euicc.IEuiccController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 119
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/euicc/IEuiccController;

    if-eqz v1, :cond_14

    .line 120
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/euicc/IEuiccController;

    return-object v1

    .line 122
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 131
    packed-switch p0, :pswitch_data_50

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 223
    :pswitch_5
    const-string v0, "getAvailableMemoryInBytes"

    return-object v0

    .line 219
    :pswitch_8
    const-string v0, "isPsimConversionSupported"

    return-object v0

    .line 215
    :pswitch_b
    const-string/jumbo v0, "setPsimConversionSupportedCarriers"

    return-object v0

    .line 211
    :pswitch_f
    const-string v0, "isCompatChangeEnabled"

    return-object v0

    .line 207
    :pswitch_12
    const-string v0, "hasCarrierPrivilegesForPackageOnAnyPhone"

    return-object v0

    .line 203
    :pswitch_15
    const-string v0, "isSimPortAvailable"

    return-object v0

    .line 199
    :pswitch_18
    const-string v0, "isSupportedCountry"

    return-object v0

    .line 195
    :pswitch_1b
    const-string v0, "getSupportedCountries"

    return-object v0

    .line 191
    :pswitch_1e
    const-string/jumbo v0, "setSupportedCountries"

    return-object v0

    .line 187
    :pswitch_22
    const-string/jumbo v0, "retainSubscriptionsForFactoryReset"

    return-object v0

    .line 183
    :pswitch_26
    const-string v0, "eraseSubscriptionsWithOptions"

    return-object v0

    .line 179
    :pswitch_29
    const-string v0, "eraseSubscriptions"

    return-object v0

    .line 175
    :pswitch_2c
    const-string/jumbo v0, "updateSubscriptionNickname"

    return-object v0

    .line 171
    :pswitch_30
    const-string/jumbo v0, "switchToSubscriptionWithPort"

    return-object v0

    .line 167
    :pswitch_34
    const-string/jumbo v0, "switchToSubscription"

    return-object v0

    .line 163
    :pswitch_38
    const-string v0, "deleteSubscription"

    return-object v0

    .line 159
    :pswitch_3b
    const-string v0, "getEuiccInfo"

    return-object v0

    .line 155
    :pswitch_3e
    const-string v0, "downloadSubscription"

    return-object v0

    .line 151
    :pswitch_41
    const-string v0, "getOtaStatus"

    return-object v0

    .line 147
    :pswitch_44
    const-string v0, "getEid"

    return-object v0

    .line 143
    :pswitch_47
    const-string v0, "getDefaultDownloadableSubscriptionList"

    return-object v0

    .line 139
    :pswitch_4a
    const-string v0, "getDownloadableSubscriptionMetadata"

    return-object v0

    .line 135
    :pswitch_4d
    const-string v0, "continueOperation"

    return-object v0

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 126
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 953
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 234
    invoke-static {p1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    const-string v7, "com.android.internal.telephony.euicc.IEuiccController"

    .line 239
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 240
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 243
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    return v8

    .line 246
    :cond_16
    packed-switch p1, :pswitch_data_24a

    .line 528
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 517
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 519
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getAvailableMemoryInBytes(ILjava/lang/String;)J

    move-result-wide v3

    .line 522
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 524
    goto/16 :goto_249

    .line 507
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 508
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->isPsimConversionSupported(I)Z

    move-result v2

    .line 510
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 512
    goto/16 :goto_249

    .line 498
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 499
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->setPsimConversionSupportedCarriers([I)V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    goto/16 :goto_249

    .line 486
    .end local v1    # "_arg0":[I
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 489
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->isCompatChangeEnabled(Ljava/lang/String;J)Z

    move-result v4

    .line 491
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 493
    goto/16 :goto_249

    .line 476
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_result":Z
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 477
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->hasCarrierPrivilegesForPackageOnAnyPhone(Ljava/lang/String;)Z

    move-result v2

    .line 479
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 481
    goto/16 :goto_249

    .line 462
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 464
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 466
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->isSimPortAvailable(IILjava/lang/String;)Z

    move-result v4

    .line 469
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 471
    goto/16 :goto_249

    .line 452
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->isSupportedCountry(Ljava/lang/String;)Z

    move-result v2

    .line 455
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 457
    goto/16 :goto_249

    .line 442
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 443
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getSupportedCountries(Z)Ljava/util/List;

    move-result-object v2

    .line 445
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 447
    goto/16 :goto_249

    .line 431
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 433
    .restart local v1    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 434
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->setSupportedCountries(ZLjava/util/List;)V

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    goto/16 :goto_249

    .line 421
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 423
    .local v1, "_arg0":I
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 424
    .local v2, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->retainSubscriptionsForFactoryReset(ILandroid/app/PendingIntent;)V

    .line 426
    goto/16 :goto_249

    .line 409
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 411
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 413
    .local v2, "_arg1":I
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 414
    .local v3, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->eraseSubscriptionsWithOptions(IILandroid/app/PendingIntent;)V

    .line 416
    goto/16 :goto_249

    .line 399
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 401
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 402
    .local v2, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->eraseSubscriptions(ILandroid/app/PendingIntent;)V

    .line 404
    goto/16 :goto_249

    .line 383
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 385
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 387
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 392
    .local v5, "_arg4":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->updateSubscriptionNickname(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 394
    goto/16 :goto_249

    .line 367
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/app/PendingIntent;
    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 369
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 371
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 373
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 375
    .restart local v4    # "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/PendingIntent;

    .line 376
    .restart local v5    # "_arg4":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->switchToSubscriptionWithPort(IIILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 378
    goto/16 :goto_249

    .line 353
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/app/PendingIntent;
    :pswitch_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 355
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 357
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 360
    .local v4, "_arg3":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->switchToSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 362
    goto/16 :goto_249

    .line 339
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/app/PendingIntent;
    :pswitch_174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 341
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 343
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 345
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 346
    .restart local v4    # "_arg3":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->deleteSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 348
    goto/16 :goto_249

    .line 329
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/app/PendingIntent;
    :pswitch_190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 330
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;

    move-result-object v2

    .line 332
    .local v2, "_result":Landroid/telephony/euicc/EuiccInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v2, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 334
    goto/16 :goto_249

    .line 311
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/telephony/euicc/EuiccInfo;
    :pswitch_1a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 313
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/euicc/DownloadableSubscription;

    .line 315
    .local v2, "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 317
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 321
    .local v5, "_arg4":Landroid/os/Bundle;
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 322
    .local v6, "_arg5":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 324
    goto/16 :goto_249

    .line 301
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_arg5":Landroid/app/PendingIntent;
    :pswitch_1d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 302
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getOtaStatus(I)I

    move-result v2

    .line 304
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    goto :goto_249

    .line 289
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_1e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 291
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getEid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    goto :goto_249

    .line 277
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 279
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 282
    .local v3, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getDefaultDownloadableSubscriptionList(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 284
    goto :goto_249

    .line 263
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    :pswitch_20f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 265
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/euicc/DownloadableSubscription;

    .line 267
    .local v2, "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 270
    .local v4, "_arg3":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 272
    goto :goto_249

    .line 251
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/app/PendingIntent;
    :pswitch_22e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 253
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 255
    .local v2, "_arg1":Landroid/content/Intent;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 256
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->continueOperation(ILandroid/content/Intent;Landroid/os/Bundle;)V

    .line 258
    nop

    .line 531
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :goto_249
    return v8

    :pswitch_data_24a
    .packed-switch 0x1
        :pswitch_22e
        :pswitch_20f
        :pswitch_1f8
        :pswitch_1e2
        :pswitch_1d0
        :pswitch_1a3
        :pswitch_190
        :pswitch_174
        :pswitch_158
        :pswitch_136
        :pswitch_115
        :pswitch_101
        :pswitch_e9
        :pswitch_d5
        :pswitch_c2
        :pswitch_af
        :pswitch_9c
        :pswitch_81
        :pswitch_6e
        :pswitch_57
        :pswitch_48
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method

.class public abstract Landroid/media/tv/extension/scan/IScanSession$Stub;
.super Landroid/os/Binder;
.source "IScanSession.java"

# interfaces
.implements Landroid/media/tv/extension/scan/IScanSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scan/IScanSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IScanSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelScan:I = 0x3

.field static final blacklist TRANSACTION_clearServiceList:I = 0x6

.field static final blacklist TRANSACTION_getAvailableExtensionInterfaceNames:I = 0x4

.field static final blacklist TRANSACTION_getCountryRegionData:I = 0x11

.field static final blacklist TRANSACTION_getExtensionInterface:I = 0x5

.field static final blacklist TRANSACTION_getPackageData:I = 0xf

.field static final blacklist TRANSACTION_getRegionData:I = 0x13

.field static final blacklist TRANSACTION_getServiceInfo:I = 0x8

.field static final blacklist TRANSACTION_getServiceInfoIdList:I = 0x9

.field static final blacklist TRANSACTION_getServiceInfoList:I = 0xa

.field static final blacklist TRANSACTION_getServiceLists:I = 0xd

.field static final blacklist TRANSACTION_getSessionToken:I = 0x15

.field static final blacklist TRANSACTION_release:I = 0x16

.field static final blacklist TRANSACTION_resetScan:I = 0x2

.field static final blacklist TRANSACTION_setCountryRegion:I = 0x12

.field static final blacklist TRANSACTION_setPackage:I = 0x10

.field static final blacklist TRANSACTION_setRegion:I = 0x14

.field static final blacklist TRANSACTION_setServiceList:I = 0xe

.field static final blacklist TRANSACTION_startScan:I = 0x1

.field static final blacklist TRANSACTION_storeServiceList:I = 0x7

.field static final blacklist TRANSACTION_updateServiceInfo:I = 0xb

.field static final blacklist TRANSACTION_updateServiceInfoByList:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 139
    const-string v0, "android.media.tv.extension.scan.IScanSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/IScanSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 147
    if-nez p0, :cond_4

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_4
    const-string v0, "android.media.tv.extension.scan.IScanSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 151
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/scan/IScanSession;

    if-eqz v1, :cond_14

    .line 152
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/scan/IScanSession;

    return-object v1

    .line 154
    :cond_14
    new-instance v1, Landroid/media/tv/extension/scan/IScanSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/scan/IScanSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 163
    packed-switch p0, :pswitch_data_56

    .line 255
    const/4 v0, 0x0

    return-object v0

    .line 251
    :pswitch_5
    const-string/jumbo v0, "release"

    return-object v0

    .line 247
    :pswitch_9
    const-string/jumbo v0, "getSessionToken"

    return-object v0

    .line 243
    :pswitch_d
    const-string/jumbo v0, "setRegion"

    return-object v0

    .line 239
    :pswitch_11
    const-string v0, "getRegionData"

    return-object v0

    .line 235
    :pswitch_14
    const-string/jumbo v0, "setCountryRegion"

    return-object v0

    .line 231
    :pswitch_18
    const-string v0, "getCountryRegionData"

    return-object v0

    .line 227
    :pswitch_1b
    const-string/jumbo v0, "setPackage"

    return-object v0

    .line 223
    :pswitch_1f
    const-string v0, "getPackageData"

    return-object v0

    .line 219
    :pswitch_22
    const-string/jumbo v0, "setServiceList"

    return-object v0

    .line 215
    :pswitch_26
    const-string/jumbo v0, "getServiceLists"

    return-object v0

    .line 211
    :pswitch_2a
    const-string/jumbo v0, "updateServiceInfoByList"

    return-object v0

    .line 207
    :pswitch_2e
    const-string/jumbo v0, "updateServiceInfo"

    return-object v0

    .line 203
    :pswitch_32
    const-string/jumbo v0, "getServiceInfoList"

    return-object v0

    .line 199
    :pswitch_36
    const-string/jumbo v0, "getServiceInfoIdList"

    return-object v0

    .line 195
    :pswitch_3a
    const-string/jumbo v0, "getServiceInfo"

    return-object v0

    .line 191
    :pswitch_3e
    const-string/jumbo v0, "storeServiceList"

    return-object v0

    .line 187
    :pswitch_42
    const-string v0, "clearServiceList"

    return-object v0

    .line 183
    :pswitch_45
    const-string v0, "getExtensionInterface"

    return-object v0

    .line 179
    :pswitch_48
    const-string v0, "getAvailableExtensionInterfaceNames"

    return-object v0

    .line 175
    :pswitch_4b
    const-string v0, "cancelScan"

    return-object v0

    .line 171
    :pswitch_4e
    const-string/jumbo v0, "resetScan"

    return-object v0

    .line 167
    :pswitch_52
    const-string/jumbo v0, "startScan"

    return-object v0

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_52
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 158
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 943
    const/16 v0, 0x15

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 262
    invoke-static {p1}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    const-string v0, "android.media.tv.extension.scan.IScanSession"

    .line 267
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 268
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 271
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    return v1

    .line 274
    :cond_16
    packed-switch p1, :pswitch_data_1a4

    .line 481
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 474
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->release()I

    move-result v2

    .line 475
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    goto/16 :goto_1a3

    .line 467
    .end local v2    # "_result":I
    :pswitch_2a
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    goto/16 :goto_1a3

    .line 458
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IScanSession$Stub;->setRegion(Ljava/lang/String;)I

    move-result v3

    .line 461
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    goto/16 :goto_1a3

    .line 450
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_49
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getRegionData()Landroid/os/Bundle;

    move-result-object v2

    .line 451
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 453
    goto/16 :goto_1a3

    .line 441
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IScanSession$Stub;->setCountryRegion(Ljava/lang/String;)I

    move-result v3

    .line 444
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    goto/16 :goto_1a3

    .line 433
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_68
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getCountryRegionData()Landroid/os/Bundle;

    move-result-object v2

    .line 434
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 436
    goto/16 :goto_1a3

    .line 424
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IScanSession$Stub;->setPackage(Ljava/lang/String;)I

    move-result v3

    .line 427
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    goto/16 :goto_1a3

    .line 416
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_87
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getPackageData()Landroid/os/Bundle;

    move-result-object v2

    .line 417
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 419
    goto/16 :goto_1a3

    .line 407
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 408
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IScanSession$Stub;->setServiceList(I)I

    move-result v3

    .line 410
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    goto/16 :goto_1a3

    .line 399
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_a6
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getServiceLists()Landroid/os/Bundle;

    move-result-object v2

    .line 400
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 402
    goto/16 :goto_1a3

    .line 390
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_b2
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Bundle;

    .line 391
    .local v2, "_arg0":[Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IScanSession$Stub;->updateServiceInfoByList([Landroid/os/Bundle;)I

    move-result v3

    .line 393
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    goto/16 :goto_1a3

    .line 380
    .end local v2    # "_arg0":[Landroid/os/Bundle;
    .end local v3    # "_result":I
    :pswitch_c9
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 381
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IScanSession$Stub;->updateServiceInfo(Landroid/os/Bundle;)I

    move-result v3

    .line 383
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    goto/16 :goto_1a3

    .line 368
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":I
    :pswitch_e0
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 370
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getServiceInfoList(Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 373
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 375
    goto/16 :goto_1a3

    .line 360
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_fb
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getServiceInfoIdList()[Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 363
    goto/16 :goto_1a3

    .line 349
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 352
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getServiceInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 354
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 356
    goto/16 :goto_1a3

    .line 341
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_11e
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->storeServiceList()I

    move-result v2

    .line 342
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    goto/16 :goto_1a3

    .line 332
    .end local v2    # "_result":I
    :pswitch_12a
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 333
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IScanSession$Stub;->clearServiceList(Landroid/os/Bundle;)I

    move-result v3

    .line 335
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    goto :goto_1a3

    .line 322
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":I
    :pswitch_140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getExtensionInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 325
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 327
    goto :goto_1a3

    .line 314
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_152
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getAvailableExtensionInterfaceNames()[Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 317
    goto :goto_1a3

    .line 307
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_15d
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->cancelScan()I

    move-result v2

    .line 308
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    goto :goto_1a3

    .line 300
    .end local v2    # "_result":I
    :pswitch_168
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->resetScan()I

    move-result v2

    .line 301
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    goto :goto_1a3

    .line 279
    .end local v2    # "_result":I
    :pswitch_173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 281
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 287
    .local v7, "_arg3":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 289
    .local v8, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 291
    .local v9, "_arg5":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/os/Bundle;

    .line 292
    .local v10, "_arg6":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/media/tv/extension/scan/IScanSession$Stub;->startScan(ILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    .line 294
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    nop

    .line 484
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":[I
    .end local v8    # "_arg4":Ljava/lang/String;
    .end local v9    # "_arg5":Ljava/lang/String;
    .end local v10    # "_arg6":Landroid/os/Bundle;
    :goto_1a3
    return v1

    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_173
        :pswitch_168
        :pswitch_15d
        :pswitch_152
        :pswitch_140
        :pswitch_12a
        :pswitch_11e
        :pswitch_107
        :pswitch_fb
        :pswitch_e0
        :pswitch_c9
        :pswitch_b2
        :pswitch_a6
        :pswitch_93
        :pswitch_87
        :pswitch_74
        :pswitch_68
        :pswitch_55
        :pswitch_49
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method

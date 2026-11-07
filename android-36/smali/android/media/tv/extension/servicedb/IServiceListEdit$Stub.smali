.class public abstract Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;
.super Landroid/os/Binder;
.source "IServiceListEdit.java"

# interfaces
.implements Landroid/media/tv/extension/servicedb/IServiceListEdit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/servicedb/IServiceListEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addPredefinedChannelList:I = 0x15

.field static final blacklist TRANSACTION_addPredefinedSatInfo:I = 0x16

.field static final blacklist TRANSACTION_addPredefinedServiceListInfo:I = 0x14

.field static final blacklist TRANSACTION_close:I = 0x2

.field static final blacklist TRANSACTION_commit:I = 0x3

.field static final blacklist TRANSACTION_getAllInstalledServiceListInfo:I = 0x19

.field static final blacklist TRANSACTION_getInstalledServiceListInfo:I = 0x18

.field static final blacklist TRANSACTION_getNetworkInfoList:I = 0x10

.field static final blacklist TRANSACTION_getSatelliteInfoList:I = 0x11

.field static final blacklist TRANSACTION_getServiceInfoFromDatabase:I = 0x5

.field static final blacklist TRANSACTION_getServiceInfoIdsFromDatabase:I = 0x7

.field static final blacklist TRANSACTION_getServiceInfoListFromDatabase:I = 0x6

.field static final blacklist TRANSACTION_getServiceListChannelIds:I = 0xc

.field static final blacklist TRANSACTION_getServiceListInfoByChannelId:I = 0xd

.field static final blacklist TRANSACTION_getServiceLogoUri:I = 0x17

.field static final blacklist TRANSACTION_getTransportStreamInfoList:I = 0xe

.field static final blacklist TRANSACTION_getTransportStreamInfoListForce:I = 0xf

.field static final blacklist TRANSACTION_open:I = 0x1

.field static final blacklist TRANSACTION_putRecordIdList:I = 0x13

.field static final blacklist TRANSACTION_removeServiceInfoByListFromDatabase:I = 0xb

.field static final blacklist TRANSACTION_removeServiceInfoFromDatabase:I = 0xa

.field static final blacklist TRANSACTION_toRecordInfoByType:I = 0x12

.field static final blacklist TRANSACTION_updateServiceInfoByListFromDatabase:I = 0x9

.field static final blacklist TRANSACTION_updateServiceInfoFromDatabase:I = 0x8

.field static final blacklist TRANSACTION_userEditCommit:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 157
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 158
    const-string v0, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/servicedb/IServiceListEdit;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 166
    if-nez p0, :cond_4

    .line 167
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_4
    const-string v0, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 170
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/servicedb/IServiceListEdit;

    if-eqz v1, :cond_14

    .line 171
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/servicedb/IServiceListEdit;

    return-object v1

    .line 173
    :cond_14
    new-instance v1, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 182
    packed-switch p0, :pswitch_data_60

    .line 286
    const/4 v0, 0x0

    return-object v0

    .line 282
    :pswitch_5
    const-string v0, "getAllInstalledServiceListInfo"

    return-object v0

    .line 278
    :pswitch_8
    const-string v0, "getInstalledServiceListInfo"

    return-object v0

    .line 274
    :pswitch_b
    const-string/jumbo v0, "getServiceLogoUri"

    return-object v0

    .line 270
    :pswitch_f
    const-string v0, "addPredefinedSatInfo"

    return-object v0

    .line 266
    :pswitch_12
    const-string v0, "addPredefinedChannelList"

    return-object v0

    .line 262
    :pswitch_15
    const-string v0, "addPredefinedServiceListInfo"

    return-object v0

    .line 258
    :pswitch_18
    const-string/jumbo v0, "putRecordIdList"

    return-object v0

    .line 254
    :pswitch_1c
    const-string/jumbo v0, "toRecordInfoByType"

    return-object v0

    .line 250
    :pswitch_20
    const-string v0, "getSatelliteInfoList"

    return-object v0

    .line 246
    :pswitch_23
    const-string v0, "getNetworkInfoList"

    return-object v0

    .line 242
    :pswitch_26
    const-string/jumbo v0, "getTransportStreamInfoListForce"

    return-object v0

    .line 238
    :pswitch_2a
    const-string/jumbo v0, "getTransportStreamInfoList"

    return-object v0

    .line 234
    :pswitch_2e
    const-string/jumbo v0, "getServiceListInfoByChannelId"

    return-object v0

    .line 230
    :pswitch_32
    const-string/jumbo v0, "getServiceListChannelIds"

    return-object v0

    .line 226
    :pswitch_36
    const-string/jumbo v0, "removeServiceInfoByListFromDatabase"

    return-object v0

    .line 222
    :pswitch_3a
    const-string/jumbo v0, "removeServiceInfoFromDatabase"

    return-object v0

    .line 218
    :pswitch_3e
    const-string/jumbo v0, "updateServiceInfoByListFromDatabase"

    return-object v0

    .line 214
    :pswitch_42
    const-string/jumbo v0, "updateServiceInfoFromDatabase"

    return-object v0

    .line 210
    :pswitch_46
    const-string/jumbo v0, "getServiceInfoIdsFromDatabase"

    return-object v0

    .line 206
    :pswitch_4a
    const-string/jumbo v0, "getServiceInfoListFromDatabase"

    return-object v0

    .line 202
    :pswitch_4e
    const-string/jumbo v0, "getServiceInfoFromDatabase"

    return-object v0

    .line 198
    :pswitch_52
    const-string/jumbo v0, "userEditCommit"

    return-object v0

    .line 194
    :pswitch_56
    const-string v0, "commit"

    return-object v0

    .line 190
    :pswitch_59
    const-string v0, "close"

    return-object v0

    .line 186
    :pswitch_5c
    const-string/jumbo v0, "open"

    return-object v0

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1c
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

    .line 177
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1116
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 293
    invoke-static {p1}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 297
    const-string v0, "android.media.tv.extension.servicedb.IServiceListEdit"

    .line 298
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 299
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 302
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    return v1

    .line 305
    :cond_16
    packed-switch p1, :pswitch_data_248

    .line 576
    move-object v5, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 569
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getAllInstalledServiceListInfo()[Landroid/os/Bundle;

    move-result-object v2

    .line 570
    .local v2, "_result":[Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 572
    move-object v5, p0

    goto/16 :goto_246

    .line 560
    .end local v2    # "_result":[Landroid/os/Bundle;
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getInstalledServiceListInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 563
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 565
    move-object v5, p0

    goto/16 :goto_246

    .line 550
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 551
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceLogoUri(I)Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    move-object v5, p0

    goto/16 :goto_246

    .line 538
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 541
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->addPredefinedSatInfo(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v4

    .line 543
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    move-object v5, p0

    goto/16 :goto_246

    .line 526
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":I
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 528
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Bundle;

    .line 529
    .local v3, "_arg1":[Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->addPredefinedChannelList(Ljava/lang/String;[Landroid/os/Bundle;)I

    move-result v4

    .line 531
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    move-object v5, p0

    goto/16 :goto_246

    .line 508
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Landroid/os/Bundle;
    .end local v4    # "_result":I
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 510
    .local v6, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 512
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 514
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 516
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 517
    .local v10, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->addPredefinedServiceListInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 521
    goto/16 :goto_246

    .line 494
    .end local v2    # "_result":Ljava/lang/String;
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":I
    :pswitch_b0
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 498
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 499
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->putRecordIdList(Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v6

    .line 501
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    goto/16 :goto_246

    .line 482
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":I
    .end local v6    # "_result":I
    :pswitch_d0
    move-object v5, p0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 484
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->toRecordInfoByType(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 489
    goto/16 :goto_246

    .line 470
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_ec
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getSatelliteInfoList(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 475
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 477
    goto/16 :goto_246

    .line 458
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_104
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 461
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getNetworkInfoList(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 463
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 465
    goto/16 :goto_246

    .line 446
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_11c
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 448
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 449
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getTransportStreamInfoListForce(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 451
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 453
    goto/16 :goto_246

    .line 434
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_134
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 436
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 437
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getTransportStreamInfoList(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 439
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 441
    goto/16 :goto_246

    .line 422
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_14c
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 424
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 425
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceListInfoByChannelId(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 427
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 429
    goto/16 :goto_246

    .line 414
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_164
    move-object v5, p0

    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceListChannelIds()[Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 417
    goto/16 :goto_246

    .line 405
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_171
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->removeServiceInfoByListFromDatabase([Ljava/lang/String;)I

    move-result v3

    .line 408
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    goto/16 :goto_246

    .line 395
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_185
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->removeServiceInfoFromDatabase(Ljava/lang/String;)I

    move-result v3

    .line 398
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    goto/16 :goto_246

    .line 385
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_199
    move-object v5, p0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Bundle;

    .line 386
    .local v2, "_arg0":[Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->updateServiceInfoByListFromDatabase([Landroid/os/Bundle;)I

    move-result v3

    .line 388
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    goto/16 :goto_246

    .line 375
    .end local v2    # "_arg0":[Landroid/os/Bundle;
    .end local v3    # "_result":I
    :pswitch_1b1
    move-object v5, p0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 376
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->updateServiceInfoFromDatabase(Landroid/os/Bundle;)I

    move-result v3

    .line 378
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    goto/16 :goto_246

    .line 365
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":I
    :pswitch_1c9
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceInfoIdsFromDatabase(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 370
    goto/16 :goto_246

    .line 353
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_1dd
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 355
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceInfoListFromDatabase(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 358
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 360
    goto :goto_246

    .line 341
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_1f4
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 343
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 344
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceInfoFromDatabase(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 346
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 348
    goto :goto_246

    .line 333
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_20b
    move-object v5, p0

    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->userEditCommit()I

    move-result v2

    .line 334
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    goto :goto_246

    .line 326
    .end local v2    # "_result":I
    :pswitch_217
    move-object v5, p0

    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->commit()I

    move-result v2

    .line 327
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    goto :goto_246

    .line 319
    .end local v2    # "_result":I
    :pswitch_223
    move-object v5, p0

    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->close()I

    move-result v2

    .line 320
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    goto :goto_246

    .line 310
    .end local v2    # "_result":I
    :pswitch_22f
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/servicedb/IServiceListEditListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/servicedb/IServiceListEditListener;

    move-result-object v2

    .line 311
    .local v2, "_arg0":Landroid/media/tv/extension/servicedb/IServiceListEditListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->open(Landroid/media/tv/extension/servicedb/IServiceListEditListener;)I

    move-result v3

    .line 313
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    nop

    .line 579
    .end local v2    # "_arg0":Landroid/media/tv/extension/servicedb/IServiceListEditListener;
    .end local v3    # "_result":I
    :goto_246
    return v1

    nop

    :pswitch_data_248
    .packed-switch 0x1
        :pswitch_22f
        :pswitch_223
        :pswitch_217
        :pswitch_20b
        :pswitch_1f4
        :pswitch_1dd
        :pswitch_1c9
        :pswitch_1b1
        :pswitch_199
        :pswitch_185
        :pswitch_171
        :pswitch_164
        :pswitch_14c
        :pswitch_134
        :pswitch_11c
        :pswitch_104
        :pswitch_ec
        :pswitch_d0
        :pswitch_b0
        :pswitch_8c
        :pswitch_70
        :pswitch_54
        :pswitch_40
        :pswitch_2c
        :pswitch_1f
    .end packed-switch
.end method

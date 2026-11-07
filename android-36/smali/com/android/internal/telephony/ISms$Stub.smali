.class public abstract Lcom/android/internal/telephony/ISms$Stub;
.super Landroid/os/Binder;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISms$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISms"

.field static final blacklist TRANSACTION_checkSmsShortCodeDestination:I = 0x1e

.field static final blacklist TRANSACTION_clearStorageMonitorMemoryStatusOverride:I = 0x1d

.field static final greylist-max-o TRANSACTION_copyMessageToIccEfForSubscriber:I = 0x3

.field static final greylist-max-o TRANSACTION_createAppSpecificSmsToken:I = 0x1a

.field static final blacklist TRANSACTION_createAppSpecificSmsTokenWithPackageInfo:I = 0x1b

.field static final greylist-max-o TRANSACTION_disableCellBroadcastForSubscriber:I = 0xb

.field static final greylist-max-o TRANSACTION_disableCellBroadcastRangeForSubscriber:I = 0xd

.field static final greylist-max-o TRANSACTION_enableCellBroadcastForSubscriber:I = 0xa

.field static final greylist-max-o TRANSACTION_enableCellBroadcastRangeForSubscriber:I = 0xc

.field static final greylist-max-o TRANSACTION_getAllMessagesFromIccEfForSubscriber:I = 0x1

.field static final blacklist TRANSACTION_getCarrierConfigValuesForSubscriber:I = 0x19

.field static final greylist-max-o TRANSACTION_getImsSmsFormatForSubscriber:I = 0x15

.field static final greylist-max-o TRANSACTION_getPreferredSmsSubscription:I = 0x14

.field static final greylist-max-o TRANSACTION_getPremiumSmsPermission:I = 0xe

.field static final greylist-max-o TRANSACTION_getPremiumSmsPermissionForSubscriber:I = 0xf

.field static final blacklist TRANSACTION_getSmsCapacityOnIccForSubscriber:I = 0x21

.field static final blacklist TRANSACTION_getSmscAddressFromIccEfForSubscriber:I = 0x1f

.field static final blacklist TRANSACTION_getWapMessageSize:I = 0x23

.field static final greylist-max-o TRANSACTION_injectSmsPduForSubscriber:I = 0x7

.field static final greylist-max-o TRANSACTION_isImsSmsSupportedForSubscriber:I = 0x12

.field static final greylist-max-o TRANSACTION_isSMSPromptEnabled:I = 0x16

.field static final greylist-max-o TRANSACTION_isSmsSimPickActivityNeeded:I = 0x13

.field static final blacklist TRANSACTION_resetAllCellBroadcastRanges:I = 0x22

.field static final greylist-max-o TRANSACTION_sendDataForSubscriber:I = 0x4

.field static final greylist-max-o TRANSACTION_sendMultipartTextForSubscriber:I = 0x8

.field static final greylist-max-o TRANSACTION_sendMultipartTextForSubscriberWithOptions:I = 0x9

.field static final greylist-max-o TRANSACTION_sendStoredMultipartText:I = 0x18

.field static final greylist-max-o TRANSACTION_sendStoredText:I = 0x17

.field static final greylist-max-o TRANSACTION_sendTextForSubscriber:I = 0x5

.field static final greylist-max-o TRANSACTION_sendTextForSubscriberWithOptions:I = 0x6

.field static final greylist-max-o TRANSACTION_setPremiumSmsPermission:I = 0x10

.field static final greylist-max-o TRANSACTION_setPremiumSmsPermissionForSubscriber:I = 0x11

.field static final blacklist TRANSACTION_setSmscAddressOnIccEfForSubscriber:I = 0x20

.field static final blacklist TRANSACTION_setStorageMonitorMemoryStatusOverride:I = 0x1c

.field static final greylist-max-o TRANSACTION_updateMessageOnIccEfForSubscriber:I = 0x2


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 638
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 639
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 647
    if-nez p0, :cond_4

    .line 648
    const/4 v0, 0x0

    return-object v0

    .line 650
    :cond_4
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 651
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_14

    .line 652
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ISms;

    return-object v1

    .line 654
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ISms$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 663
    packed-switch p0, :pswitch_data_7c

    .line 807
    const/4 v0, 0x0

    return-object v0

    .line 803
    :pswitch_5
    const-string v0, "getWapMessageSize"

    return-object v0

    .line 799
    :pswitch_8
    const-string/jumbo v0, "resetAllCellBroadcastRanges"

    return-object v0

    .line 795
    :pswitch_c
    const-string v0, "getSmsCapacityOnIccForSubscriber"

    return-object v0

    .line 791
    :pswitch_f
    const-string/jumbo v0, "setSmscAddressOnIccEfForSubscriber"

    return-object v0

    .line 787
    :pswitch_13
    const-string v0, "getSmscAddressFromIccEfForSubscriber"

    return-object v0

    .line 783
    :pswitch_16
    const-string v0, "checkSmsShortCodeDestination"

    return-object v0

    .line 779
    :pswitch_19
    const-string v0, "clearStorageMonitorMemoryStatusOverride"

    return-object v0

    .line 775
    :pswitch_1c
    const-string/jumbo v0, "setStorageMonitorMemoryStatusOverride"

    return-object v0

    .line 771
    :pswitch_20
    const-string v0, "createAppSpecificSmsTokenWithPackageInfo"

    return-object v0

    .line 767
    :pswitch_23
    const-string v0, "createAppSpecificSmsToken"

    return-object v0

    .line 763
    :pswitch_26
    const-string v0, "getCarrierConfigValuesForSubscriber"

    return-object v0

    .line 759
    :pswitch_29
    const-string/jumbo v0, "sendStoredMultipartText"

    return-object v0

    .line 755
    :pswitch_2d
    const-string/jumbo v0, "sendStoredText"

    return-object v0

    .line 751
    :pswitch_31
    const-string v0, "isSMSPromptEnabled"

    return-object v0

    .line 747
    :pswitch_34
    const-string v0, "getImsSmsFormatForSubscriber"

    return-object v0

    .line 743
    :pswitch_37
    const-string v0, "getPreferredSmsSubscription"

    return-object v0

    .line 739
    :pswitch_3a
    const-string v0, "isSmsSimPickActivityNeeded"

    return-object v0

    .line 735
    :pswitch_3d
    const-string v0, "isImsSmsSupportedForSubscriber"

    return-object v0

    .line 731
    :pswitch_40
    const-string/jumbo v0, "setPremiumSmsPermissionForSubscriber"

    return-object v0

    .line 727
    :pswitch_44
    const-string/jumbo v0, "setPremiumSmsPermission"

    return-object v0

    .line 723
    :pswitch_48
    const-string v0, "getPremiumSmsPermissionForSubscriber"

    return-object v0

    .line 719
    :pswitch_4b
    const-string v0, "getPremiumSmsPermission"

    return-object v0

    .line 715
    :pswitch_4e
    const-string v0, "disableCellBroadcastRangeForSubscriber"

    return-object v0

    .line 711
    :pswitch_51
    const-string v0, "enableCellBroadcastRangeForSubscriber"

    return-object v0

    .line 707
    :pswitch_54
    const-string v0, "disableCellBroadcastForSubscriber"

    return-object v0

    .line 703
    :pswitch_57
    const-string v0, "enableCellBroadcastForSubscriber"

    return-object v0

    .line 699
    :pswitch_5a
    const-string/jumbo v0, "sendMultipartTextForSubscriberWithOptions"

    return-object v0

    .line 695
    :pswitch_5e
    const-string/jumbo v0, "sendMultipartTextForSubscriber"

    return-object v0

    .line 691
    :pswitch_62
    const-string v0, "injectSmsPduForSubscriber"

    return-object v0

    .line 687
    :pswitch_65
    const-string/jumbo v0, "sendTextForSubscriberWithOptions"

    return-object v0

    .line 683
    :pswitch_69
    const-string/jumbo v0, "sendTextForSubscriber"

    return-object v0

    .line 679
    :pswitch_6d
    const-string/jumbo v0, "sendDataForSubscriber"

    return-object v0

    .line 675
    :pswitch_71
    const-string v0, "copyMessageToIccEfForSubscriber"

    return-object v0

    .line 671
    :pswitch_74
    const-string/jumbo v0, "updateMessageOnIccEfForSubscriber"

    return-object v0

    .line 667
    :pswitch_78
    const-string v0, "getAllMessagesFromIccEfForSubscriber"

    return-object v0

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_78
        :pswitch_74
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 658
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2591
    const/16 v0, 0x22

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 814
    invoke-static {p1}, Lcom/android/internal/telephony/ISms$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 818
    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v8, "com.android.internal.telephony.ISms"

    .line 819
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt v13, v9, :cond_15

    const v1, 0xffffff

    if-gt v13, v1, :cond_15

    .line 820
    invoke-virtual {v14, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    :cond_15
    const v1, 0x5f4e5446

    if-ne v13, v1, :cond_1e

    .line 823
    invoke-virtual {v15, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 824
    return v9

    .line 826
    :cond_1e
    packed-switch v13, :pswitch_data_4d2

    .line 1360
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1351
    :pswitch_26
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1352
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1353
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getWapMessageSize(Ljava/lang/String;)J

    move-result-wide v2

    .line 1354
    .local v2, "_result":J
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1355
    invoke-virtual {v15, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1356
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1341
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":J
    :pswitch_3c
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1342
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1343
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->resetAllCellBroadcastRanges(I)Z

    move-result v2

    .line 1344
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1345
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1346
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1331
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_52
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1332
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1333
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getSmsCapacityOnIccForSubscriber(I)I

    move-result v2

    .line 1334
    .local v2, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1336
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1317
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_68
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1319
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1321
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1322
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1323
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->setSmscAddressOnIccEfForSubscriber(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    .line 1324
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1326
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1305
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_86
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1307
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1308
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1309
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->getSmscAddressFromIccEfForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1310
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1312
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1287
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_a0
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1289
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1291
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1293
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1295
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1296
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1297
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ISms$Stub;->checkSmsShortCodeDestination(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1298
    .local v6, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1278
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_result":I
    :pswitch_c6
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1279
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1280
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->clearStorageMonitorMemoryStatusOverride(I)V

    .line 1281
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1267
    .end local v1    # "_arg0":I
    :pswitch_d8
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1269
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1270
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1271
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->setStorageMonitorMemoryStatusOverride(IZ)V

    .line 1272
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1273
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1251
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_ee
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1253
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1255
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1257
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 1258
    .local v4, "_arg3":Landroid/app/PendingIntent;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1259
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->createAppSpecificSmsTokenWithPackageInfo(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v5

    .line 1260
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1262
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1237
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/app/PendingIntent;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_114
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1239
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1241
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 1242
    .local v3, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1243
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->createAppSpecificSmsToken(ILjava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v4

    .line 1244
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1246
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1227
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_136
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1228
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1229
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getCarrierConfigValuesForSubscriber(I)Landroid/os/Bundle;

    move-result-object v2

    .line 1230
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    invoke-virtual {v15, v2, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1232
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1206
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_14c
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1208
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1210
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1212
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1214
    .local v4, "_arg3":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1216
    .local v5, "_arg4":Ljava/lang/String;
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1218
    .local v6, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1219
    .local v7, "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1220
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredMultipartText(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1221
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    move-object/from16 v0, p0

    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1185
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/net/Uri;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v7    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :pswitch_180
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1187
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1189
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1191
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    .line 1193
    .restart local v4    # "_arg3":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1195
    .restart local v5    # "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/PendingIntent;

    .line 1197
    .local v6, "_arg5":Landroid/app/PendingIntent;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/PendingIntent;

    .line 1198
    .local v7, "_arg6":Landroid/app/PendingIntent;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredText(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 1200
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1177
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/net/Uri;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/app/PendingIntent;
    .end local v7    # "_arg6":Landroid/app/PendingIntent;
    :pswitch_1bb
    invoke-virtual {v0}, Lcom/android/internal/telephony/ISms$Stub;->isSMSPromptEnabled()Z

    move-result v1

    .line 1178
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1180
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1168
    .end local v1    # "_result":Z
    :pswitch_1ca
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1169
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1170
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;

    move-result-object v2

    .line 1171
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1173
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1160
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1e0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ISms$Stub;->getPreferredSmsSubscription()I

    move-result v1

    .line 1161
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1163
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1151
    .end local v1    # "_result":I
    :pswitch_1ef
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1152
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1153
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->isSmsSimPickActivityNeeded(I)Z

    move-result v2

    .line 1154
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1156
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1141
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_205
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1142
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1143
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->isImsSmsSupportedForSubscriber(I)Z

    move-result v2

    .line 1144
    .restart local v2    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1146
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1128
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_21b
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1130
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1132
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1133
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1134
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V

    .line 1135
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1117
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_235
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1119
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1120
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1121
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 1122
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1105
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_24b
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1107
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1108
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1109
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I

    move-result v3

    .line 1110
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1095
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_265
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1096
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v2

    .line 1098
    .local v2, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1100
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1079
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_27b
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1081
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1083
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1085
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1086
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1087
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v5

    .line 1088
    .local v5, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1090
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1063
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_29d
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1065
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1067
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1069
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1070
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v5

    .line 1072
    .restart local v5    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1074
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1049
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_2bf
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1051
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1053
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1054
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1055
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastForSubscriber(III)Z

    move-result v4

    .line 1056
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1058
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1035
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_2dd
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1037
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1039
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1040
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1041
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastForSubscriber(III)Z

    move-result v4

    .line 1042
    .restart local v4    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1044
    move-object/from16 v17, v8

    move v13, v9

    goto/16 :goto_4d1

    .line 1004
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_2fb
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1006
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1008
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1010
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1012
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1014
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 1016
    .local v6, "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1018
    .local v7, "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v10, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1020
    .local v10, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move v11, v9

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 1022
    .local v9, "_arg8":Z
    move-object v12, v8

    move-object v8, v10

    .end local v10    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local v8, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local v12, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1024
    .local v10, "_arg9":I
    move/from16 v16, v11

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 1026
    .local v11, "_arg10":Z
    move-object/from16 v17, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v17, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1027
    .local v12, "_arg11":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1028
    move/from16 v13, v16

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V

    .line 1029
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    move-object/from16 v0, p0

    goto/16 :goto_4d1

    .line 977
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v9    # "_arg8":Z
    .end local v10    # "_arg9":I
    .end local v11    # "_arg10":Z
    .end local v12    # "_arg11":I
    .end local v17    # "descriptor":Ljava/lang/String;
    .local v8, "descriptor":Ljava/lang/String;
    :pswitch_345
    move-object/from16 v17, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 979
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 981
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 983
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 985
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 987
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 989
    .restart local v6    # "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 991
    .restart local v7    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    .line 993
    .local v8, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 995
    .restart local v9    # "_arg8":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 996
    .local v10, "_arg9":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 997
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V

    .line 998
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    goto/16 :goto_4d1

    .line 962
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v9    # "_arg8":Z
    .end local v10    # "_arg9":J
    .end local v17    # "descriptor":Ljava/lang/String;
    .local v8, "descriptor":Ljava/lang/String;
    :pswitch_381
    move-object/from16 v17, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 964
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 966
    .local v2, "_arg1":[B
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 968
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 969
    .local v4, "_arg3":Landroid/app/PendingIntent;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 971
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    goto/16 :goto_4d1

    .line 931
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/app/PendingIntent;
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_3a3
    move-object/from16 v17, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 933
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 935
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 937
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 939
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 941
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 943
    .local v6, "_arg5":Ljava/lang/String;
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 945
    .local v7, "_arg6":Landroid/app/PendingIntent;
    sget-object v8, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 947
    .local v8, "_arg7":Landroid/app/PendingIntent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 949
    .restart local v9    # "_arg8":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 951
    .local v10, "_arg9":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 953
    .restart local v11    # "_arg10":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 954
    .restart local v12    # "_arg11":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/ISms$Stub;->sendTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    .line 956
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    move-object/from16 v0, p0

    goto/16 :goto_4d1

    .line 904
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Landroid/app/PendingIntent;
    .end local v9    # "_arg8":Z
    .end local v10    # "_arg9":I
    .end local v11    # "_arg10":Z
    .end local v12    # "_arg11":I
    .end local v17    # "descriptor":Ljava/lang/String;
    .local v8, "descriptor":Ljava/lang/String;
    :pswitch_3eb
    move-object/from16 v17, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 906
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 908
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 910
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 912
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 914
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 916
    .restart local v6    # "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/PendingIntent;

    .line 918
    .restart local v7    # "_arg6":Landroid/app/PendingIntent;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    .line 920
    .local v8, "_arg7":Landroid/app/PendingIntent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 922
    .restart local v9    # "_arg8":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 923
    .local v10, "_arg9":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/ISms$Stub;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    .line 925
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    goto/16 :goto_4d1

    .line 879
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Landroid/app/PendingIntent;
    .end local v9    # "_arg8":Z
    .end local v10    # "_arg9":J
    .end local v17    # "descriptor":Ljava/lang/String;
    .local v8, "descriptor":Ljava/lang/String;
    :pswitch_42d
    move-object/from16 v17, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 881
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 883
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 885
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 887
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 889
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 891
    .local v6, "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 893
    .local v7, "_arg6":[B
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    .line 895
    .local v8, "_arg7":Landroid/app/PendingIntent;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    .line 896
    .local v9, "_arg8":Landroid/app/PendingIntent;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 897
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/ISms$Stub;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 898
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    goto :goto_4d1

    .line 861
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":[B
    .end local v9    # "_arg8":Landroid/app/PendingIntent;
    .end local v17    # "descriptor":Ljava/lang/String;
    .local v8, "descriptor":Ljava/lang/String;
    :pswitch_46a
    move-object/from16 v17, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 863
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 865
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 867
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 869
    .local v4, "_arg3":[B
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 870
    .local v5, "_arg4":[B
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 871
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z

    move-result v6

    .line 872
    .local v6, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 874
    goto :goto_4d1

    .line 843
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[B
    .end local v6    # "_result":Z
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_491
    move-object/from16 v17, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 845
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 847
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 849
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 851
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 852
    .restart local v5    # "_arg4":[B
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z

    move-result v6

    .line 854
    .restart local v6    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 856
    goto :goto_4d1

    .line 831
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v6    # "_result":Z
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_4b8
    move-object/from16 v17, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 833
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 834
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 835
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 836
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    invoke-virtual {v15, v3, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 838
    nop

    .line 1363
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :goto_4d1
    return v13

    :pswitch_data_4d2
    .packed-switch 0x1
        :pswitch_4b8
        :pswitch_491
        :pswitch_46a
        :pswitch_42d
        :pswitch_3eb
        :pswitch_3a3
        :pswitch_381
        :pswitch_345
        :pswitch_2fb
        :pswitch_2dd
        :pswitch_2bf
        :pswitch_29d
        :pswitch_27b
        :pswitch_265
        :pswitch_24b
        :pswitch_235
        :pswitch_21b
        :pswitch_205
        :pswitch_1ef
        :pswitch_1e0
        :pswitch_1ca
        :pswitch_1bb
        :pswitch_180
        :pswitch_14c
        :pswitch_136
        :pswitch_114
        :pswitch_ee
        :pswitch_d8
        :pswitch_c6
        :pswitch_a0
        :pswitch_86
        :pswitch_68
        :pswitch_52
        :pswitch_3c
        :pswitch_26
    .end packed-switch
.end method

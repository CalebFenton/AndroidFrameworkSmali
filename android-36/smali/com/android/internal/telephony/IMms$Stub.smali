.class public abstract Lcom/android/internal/telephony/IMms$Stub;
.super Landroid/os/Binder;
.source "IMms.java"

# interfaces
.implements Lcom/android/internal/telephony/IMms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IMms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IMms$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IMms"

.field static final greylist-max-o TRANSACTION_addMultimediaMessageDraft:I = 0xa

.field static final greylist-max-o TRANSACTION_addTextMessageDraft:I = 0x9

.field static final greylist-max-o TRANSACTION_archiveStoredConversation:I = 0x8

.field static final greylist-max-o TRANSACTION_deleteStoredConversation:I = 0x6

.field static final greylist-max-o TRANSACTION_deleteStoredMessage:I = 0x5

.field static final greylist-max-o TRANSACTION_downloadMessage:I = 0x2

.field static final greylist-max-o TRANSACTION_getAutoPersisting:I = 0xd

.field static final greylist-max-o TRANSACTION_importMultimediaMessage:I = 0x4

.field static final greylist-max-o TRANSACTION_importTextMessage:I = 0x3

.field static final greylist-max-o TRANSACTION_sendMessage:I = 0x1

.field static final greylist-max-o TRANSACTION_sendStoredMessage:I = 0xb

.field static final greylist-max-o TRANSACTION_setAutoPersisting:I = 0xc

.field static final greylist-max-o TRANSACTION_updateStoredMessageStatus:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 214
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 215
    const-string v0, "com.android.internal.telephony.IMms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IMms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 223
    if-nez p0, :cond_4

    .line 224
    const/4 v0, 0x0

    return-object v0

    .line 226
    :cond_4
    const-string v0, "com.android.internal.telephony.IMms"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 227
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/IMms;

    if-eqz v1, :cond_14

    .line 228
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IMms;

    return-object v1

    .line 230
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/IMms$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IMms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 239
    packed-switch p0, :pswitch_data_30

    .line 295
    const/4 v0, 0x0

    return-object v0

    .line 291
    :pswitch_5
    const-string v0, "getAutoPersisting"

    return-object v0

    .line 287
    :pswitch_8
    const-string/jumbo v0, "setAutoPersisting"

    return-object v0

    .line 283
    :pswitch_c
    const-string/jumbo v0, "sendStoredMessage"

    return-object v0

    .line 279
    :pswitch_10
    const-string v0, "addMultimediaMessageDraft"

    return-object v0

    .line 275
    :pswitch_13
    const-string v0, "addTextMessageDraft"

    return-object v0

    .line 271
    :pswitch_16
    const-string v0, "archiveStoredConversation"

    return-object v0

    .line 267
    :pswitch_19
    const-string/jumbo v0, "updateStoredMessageStatus"

    return-object v0

    .line 263
    :pswitch_1d
    const-string v0, "deleteStoredConversation"

    return-object v0

    .line 259
    :pswitch_20
    const-string v0, "deleteStoredMessage"

    return-object v0

    .line 255
    :pswitch_23
    const-string v0, "importMultimediaMessage"

    return-object v0

    .line 251
    :pswitch_26
    const-string v0, "importTextMessage"

    return-object v0

    .line 247
    :pswitch_29
    const-string v0, "downloadMessage"

    return-object v0

    .line 243
    :pswitch_2c
    const-string/jumbo v0, "sendMessage"

    return-object v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 234
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 969
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 302
    invoke-static {p1}, Lcom/android/internal/telephony/IMms$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    move-object/from16 v0, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "com.android.internal.telephony.IMms"

    .line 307
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v11, v15, :cond_15

    const v1, 0xffffff

    if-gt v11, v1, :cond_15

    .line 308
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    :cond_15
    const v1, 0x5f4e5446

    if-ne v11, v1, :cond_1e

    .line 311
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    return v15

    .line 314
    :cond_1e
    packed-switch v11, :pswitch_data_1f6

    .line 527
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 520
    :pswitch_26
    invoke-virtual {v0}, Lcom/android/internal/telephony/IMms$Stub;->getAutoPersisting()Z

    move-result v1

    .line 521
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 523
    goto/16 :goto_1f4

    .line 510
    .end local v1    # "_result":Z
    :pswitch_32
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 513
    .local v2, "_arg1":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IMms$Stub;->setAutoPersisting(Ljava/lang/String;Z)V

    .line 515
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    goto/16 :goto_1f4

    .line 493
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_45
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 495
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 499
    .local v3, "_arg2":Landroid/net/Uri;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 501
    .local v4, "_arg3":Landroid/os/Bundle;
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 502
    .local v5, "_arg4":Landroid/app/PendingIntent;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IMms$Stub;->sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 504
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    goto/16 :goto_1f4

    .line 479
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/net/Uri;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_arg4":Landroid/app/PendingIntent;
    :pswitch_70
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 481
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 483
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 484
    .restart local v3    # "_arg2":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IMms$Stub;->addMultimediaMessageDraft(ILjava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 486
    .local v4, "_result":Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {v13, v4, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 488
    goto/16 :goto_1f4

    .line 465
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/net/Uri;
    .end local v4    # "_result":Landroid/net/Uri;
    :pswitch_8f
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 469
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IMms$Stub;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 472
    .restart local v4    # "_result":Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {v13, v4, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 474
    goto/16 :goto_1f4

    .line 451
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/net/Uri;
    :pswitch_aa
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 453
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 455
    .local v2, "_arg1":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 456
    .local v4, "_arg2":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IMms$Stub;->archiveStoredConversation(Ljava/lang/String;JZ)Z

    move-result v5

    .line 458
    .local v5, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {v13, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 460
    goto/16 :goto_1f4

    .line 437
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":Z
    :pswitch_c5
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 439
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 441
    .local v2, "_arg1":Landroid/net/Uri;
    sget-object v3, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 442
    .local v3, "_arg2":Landroid/content/ContentValues;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IMms$Stub;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v4

    .line 444
    .local v4, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 446
    goto/16 :goto_1f4

    .line 425
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":Landroid/content/ContentValues;
    .end local v4    # "_result":Z
    :pswitch_e8
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 427
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 428
    .local v2, "_arg1":J
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 429
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IMms$Stub;->deleteStoredConversation(Ljava/lang/String;J)Z

    move-result v4

    .line 430
    .restart local v4    # "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 432
    goto/16 :goto_1f4

    .line 413
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_result":Z
    :pswitch_ff
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 415
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 416
    .local v2, "_arg1":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IMms$Stub;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v3

    .line 418
    .local v3, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 420
    goto/16 :goto_1f4

    .line 391
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_result":Z
    :pswitch_11a
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 393
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 397
    .local v3, "_arg2":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 401
    .local v5, "_arg4":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 403
    .local v7, "_arg5":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 404
    .local v8, "_arg6":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/IMms$Stub;->importMultimediaMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v9

    .line 406
    .local v9, "_result":Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {v13, v9, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 408
    goto/16 :goto_1f4

    .line 369
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/net/Uri;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":J
    .end local v7    # "_arg5":Z
    .end local v8    # "_arg6":Z
    .end local v9    # "_result":Landroid/net/Uri;
    :pswitch_149
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 375
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 377
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 379
    .restart local v5    # "_arg4":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 381
    .restart local v7    # "_arg5":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 382
    .restart local v8    # "_arg6":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/IMms$Stub;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v9

    .line 384
    .restart local v9    # "_result":Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {v13, v9, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 386
    goto/16 :goto_1f4

    .line 344
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":J
    .end local v7    # "_arg5":Z
    .end local v8    # "_arg6":Z
    .end local v9    # "_result":Landroid/net/Uri;
    :pswitch_176
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 346
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 352
    .restart local v4    # "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/Uri;

    .line 354
    .local v5, "_arg4":Landroid/net/Uri;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    .line 356
    .local v6, "_arg5":Landroid/os/Bundle;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/PendingIntent;

    .line 358
    .local v7, "_arg6":Landroid/app/PendingIntent;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 360
    .local v8, "_arg7":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 361
    .local v10, "_arg8":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/IMms$Stub;->downloadMessage(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;JLjava/lang/String;)V

    .line 363
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    goto :goto_1f4

    .line 319
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/net/Uri;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":Landroid/app/PendingIntent;
    .end local v8    # "_arg7":J
    .end local v10    # "_arg8":Ljava/lang/String;
    :pswitch_1b5
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 321
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 325
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    .line 327
    .local v4, "_arg3":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 329
    .local v5, "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    .line 331
    .restart local v6    # "_arg5":Landroid/os/Bundle;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/PendingIntent;

    .line 333
    .restart local v7    # "_arg6":Landroid/app/PendingIntent;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 335
    .restart local v8    # "_arg7":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 336
    .restart local v10    # "_arg8":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/IMms$Stub;->sendMessage(IILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;JLjava/lang/String;)V

    .line 338
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    nop

    .line 530
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/net/Uri;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":Landroid/app/PendingIntent;
    .end local v8    # "_arg7":J
    .end local v10    # "_arg8":Ljava/lang/String;
    :goto_1f4
    return v15

    nop

    :pswitch_data_1f6
    .packed-switch 0x1
        :pswitch_1b5
        :pswitch_176
        :pswitch_149
        :pswitch_11a
        :pswitch_ff
        :pswitch_e8
        :pswitch_c5
        :pswitch_aa
        :pswitch_8f
        :pswitch_70
        :pswitch_45
        :pswitch_32
        :pswitch_26
    .end packed-switch
.end method

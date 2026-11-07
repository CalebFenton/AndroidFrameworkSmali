.class public abstract Lcom/android/ims/internal/IImsUt$Stub;
.super Landroid/os/Binder;
.source "IImsUt.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUt$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsUt"

.field static final greylist-max-o TRANSACTION_close:I = 0x1

.field static final greylist-max-o TRANSACTION_queryCLIP:I = 0x6

.field static final greylist-max-o TRANSACTION_queryCLIR:I = 0x5

.field static final greylist-max-o TRANSACTION_queryCOLP:I = 0x8

.field static final greylist-max-o TRANSACTION_queryCOLR:I = 0x7

.field static final greylist-max-o TRANSACTION_queryCallBarring:I = 0x2

.field static final greylist-max-o TRANSACTION_queryCallBarringForServiceClass:I = 0x12

.field static final greylist-max-o TRANSACTION_queryCallForward:I = 0x3

.field static final greylist-max-o TRANSACTION_queryCallWaiting:I = 0x4

.field static final greylist-max-o TRANSACTION_setListener:I = 0x11

.field static final greylist-max-o TRANSACTION_transact:I = 0x9

.field static final greylist-max-o TRANSACTION_updateCLIP:I = 0xe

.field static final greylist-max-o TRANSACTION_updateCLIR:I = 0xd

.field static final greylist-max-o TRANSACTION_updateCOLP:I = 0x10

.field static final greylist-max-o TRANSACTION_updateCOLR:I = 0xf

.field static final greylist-max-o TRANSACTION_updateCallBarring:I = 0xa

.field static final greylist-max-o TRANSACTION_updateCallBarringForServiceClass:I = 0x13

.field static final blacklist TRANSACTION_updateCallBarringWithPassword:I = 0x14

.field static final greylist-max-o TRANSACTION_updateCallForward:I = 0xb

.field static final greylist-max-o TRANSACTION_updateCallWaiting:I = 0xc


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 130
    const-string v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsUt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 138
    if-nez p0, :cond_4

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_4
    const-string v0, "com.android.ims.internal.IImsUt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 142
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsUt;

    if-eqz v1, :cond_14

    .line 143
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsUt;

    return-object v1

    .line 145
    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsUt$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsUt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 154
    packed-switch p0, :pswitch_data_54

    .line 238
    const/4 v0, 0x0

    return-object v0

    .line 234
    :pswitch_5
    const-string/jumbo v0, "updateCallBarringWithPassword"

    return-object v0

    .line 230
    :pswitch_9
    const-string/jumbo v0, "updateCallBarringForServiceClass"

    return-object v0

    .line 226
    :pswitch_d
    const-string/jumbo v0, "queryCallBarringForServiceClass"

    return-object v0

    .line 222
    :pswitch_11
    const-string/jumbo v0, "setListener"

    return-object v0

    .line 218
    :pswitch_15
    const-string/jumbo v0, "updateCOLP"

    return-object v0

    .line 214
    :pswitch_19
    const-string/jumbo v0, "updateCOLR"

    return-object v0

    .line 210
    :pswitch_1d
    const-string/jumbo v0, "updateCLIP"

    return-object v0

    .line 206
    :pswitch_21
    const-string/jumbo v0, "updateCLIR"

    return-object v0

    .line 202
    :pswitch_25
    const-string/jumbo v0, "updateCallWaiting"

    return-object v0

    .line 198
    :pswitch_29
    const-string/jumbo v0, "updateCallForward"

    return-object v0

    .line 194
    :pswitch_2d
    const-string/jumbo v0, "updateCallBarring"

    return-object v0

    .line 190
    :pswitch_31
    const-string/jumbo v0, "transact"

    return-object v0

    .line 186
    :pswitch_35
    const-string/jumbo v0, "queryCOLP"

    return-object v0

    .line 182
    :pswitch_39
    const-string/jumbo v0, "queryCOLR"

    return-object v0

    .line 178
    :pswitch_3d
    const-string/jumbo v0, "queryCLIP"

    return-object v0

    .line 174
    :pswitch_41
    const-string/jumbo v0, "queryCLIR"

    return-object v0

    .line 170
    :pswitch_45
    const-string/jumbo v0, "queryCallWaiting"

    return-object v0

    .line 166
    :pswitch_49
    const-string/jumbo v0, "queryCallForward"

    return-object v0

    .line 162
    :pswitch_4d
    const-string/jumbo v0, "queryCallBarring"

    return-object v0

    .line 158
    :pswitch_51
    const-string v0, "close"

    return-object v0

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 149
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 903
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 245
    invoke-static {p1}, Lcom/android/ims/internal/IImsUt$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 249
    const-string v6, "com.android.ims.internal.IImsUt"

    .line 250
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v0, 0xffffff

    if-gt p1, v0, :cond_d

    .line 251
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    :cond_d
    const v0, 0x5f4e5446

    if-ne p1, v0, :cond_16

    .line 254
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    return v7

    .line 257
    :cond_16
    packed-switch p1, :pswitch_data_1aa

    .line 473
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 456
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 458
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 460
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, "_arg2":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 464
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 465
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    .line 467
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    goto/16 :goto_1a9

    .line 440
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v8    # "_result":I
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 442
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 444
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 446
    .restart local v3    # "_arg2":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 447
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result v5

    .line 449
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    goto/16 :goto_1a9

    .line 428
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 430
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 431
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {p0, v1, v2}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallBarringForServiceClass(II)I

    move-result v3

    .line 433
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    goto/16 :goto_1a9

    .line 419
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsUtListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v1

    .line 420
    .local v1, "_arg0":Lcom/android/ims/internal/IImsUtListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->setListener(Lcom/android/ims/internal/IImsUtListener;)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    goto/16 :goto_1a9

    .line 409
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsUtListener;
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 410
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->updateCOLP(Z)I

    move-result v2

    .line 412
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    goto/16 :goto_1a9

    .line 399
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":I
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 400
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->updateCOLR(I)I

    move-result v2

    .line 402
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    goto/16 :goto_1a9

    .line 389
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 390
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->updateCLIP(Z)I

    move-result v2

    .line 392
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    goto/16 :goto_1a9

    .line 379
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":I
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 380
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->updateCLIR(I)I

    move-result v2

    .line 382
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    goto/16 :goto_1a9

    .line 367
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 369
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 370
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, v1, v2}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallWaiting(ZI)I

    move-result v3

    .line 372
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    goto/16 :goto_1a9

    .line 349
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 353
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 357
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 358
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallForward(IILjava/lang/String;II)I

    move-result v8

    .line 360
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    goto/16 :goto_1a9

    .line 335
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v8    # "_result":I
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 337
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "_arg2":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v4

    .line 342
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    goto/16 :goto_1a9

    .line 325
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_12d
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 326
    .local v1, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->transact(Landroid/os/Bundle;)I

    move-result v2

    .line 328
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    goto :goto_1a9

    .line 317
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .end local v2    # "_result":I
    :pswitch_143
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCOLP()I

    move-result v1

    .line 318
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    goto :goto_1a9

    .line 310
    .end local v1    # "_result":I
    :pswitch_14e
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCOLR()I

    move-result v1

    .line 311
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    goto :goto_1a9

    .line 303
    .end local v1    # "_result":I
    :pswitch_159
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCLIP()I

    move-result v1

    .line 304
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    goto :goto_1a9

    .line 296
    .end local v1    # "_result":I
    :pswitch_164
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCLIR()I

    move-result v1

    .line 297
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    goto :goto_1a9

    .line 289
    .end local v1    # "_result":I
    :pswitch_16f
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallWaiting()I

    move-result v1

    .line 290
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    goto :goto_1a9

    .line 278
    .end local v1    # "_result":I
    :pswitch_17a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 280
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, v1, v2}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallForward(ILjava/lang/String;)I

    move-result v3

    .line 283
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    goto :goto_1a9

    .line 268
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallBarring(I)I

    move-result v2

    .line 271
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    goto :goto_1a9

    .line 261
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_1a2
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->close()V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    nop

    .line 476
    :goto_1a9
    return v7

    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_1a2
        :pswitch_190
        :pswitch_17a
        :pswitch_16f
        :pswitch_164
        :pswitch_159
        :pswitch_14e
        :pswitch_143
        :pswitch_12d
        :pswitch_112
        :pswitch_ee
        :pswitch_d7
        :pswitch_c4
        :pswitch_b1
        :pswitch_9e
        :pswitch_8b
        :pswitch_78
        :pswitch_61
        :pswitch_42
        :pswitch_1e
    .end packed-switch
.end method

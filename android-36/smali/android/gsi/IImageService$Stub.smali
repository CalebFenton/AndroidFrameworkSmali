.class public abstract Landroid/gsi/IImageService$Stub;
.super Landroid/os/Binder;
.source "IImageService.java"

# interfaces
.implements Landroid/gsi/IImageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/IImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IImageService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_backingImageExists:I = 0x5

.field static final blacklist TRANSACTION_createBackingImage:I = 0x1

.field static final blacklist TRANSACTION_deleteBackingImage:I = 0x2

.field static final blacklist TRANSACTION_disableImage:I = 0xb

.field static final blacklist TRANSACTION_getAllBackingImages:I = 0x8

.field static final blacklist TRANSACTION_getAvbPublicKey:I = 0x7

.field static final blacklist TRANSACTION_getMappedImageDevice:I = 0xe

.field static final blacklist TRANSACTION_isImageDisabled:I = 0xd

.field static final blacklist TRANSACTION_isImageMapped:I = 0x6

.field static final blacklist TRANSACTION_mapImageDevice:I = 0x3

.field static final blacklist TRANSACTION_removeAllImages:I = 0xa

.field static final blacklist TRANSACTION_removeDisabledImages:I = 0xc

.field static final blacklist TRANSACTION_unmapImageDevice:I = 0x4

.field static final blacklist TRANSACTION_zeroFillNewImage:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 153
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 154
    const-string v0, "android.gsi.IImageService"

    invoke-virtual {p0, p0, v0}, Landroid/gsi/IImageService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/gsi/IImageService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 162
    if-nez p0, :cond_4

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_4
    const-string v0, "android.gsi.IImageService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 166
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/gsi/IImageService;

    if-eqz v1, :cond_14

    .line 167
    move-object v1, v0

    check-cast v1, Landroid/gsi/IImageService;

    return-object v1

    .line 169
    :cond_14
    new-instance v1, Landroid/gsi/IImageService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/gsi/IImageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 178
    packed-switch p0, :pswitch_data_36

    .line 238
    const/4 v0, 0x0

    return-object v0

    .line 234
    :pswitch_5
    const-string v0, "getMappedImageDevice"

    return-object v0

    .line 230
    :pswitch_8
    const-string/jumbo v0, "isImageDisabled"

    return-object v0

    .line 226
    :pswitch_c
    const-string/jumbo v0, "removeDisabledImages"

    return-object v0

    .line 222
    :pswitch_10
    const-string v0, "disableImage"

    return-object v0

    .line 218
    :pswitch_13
    const-string/jumbo v0, "removeAllImages"

    return-object v0

    .line 214
    :pswitch_17
    const-string/jumbo v0, "zeroFillNewImage"

    return-object v0

    .line 210
    :pswitch_1b
    const-string v0, "getAllBackingImages"

    return-object v0

    .line 206
    :pswitch_1e
    const-string v0, "getAvbPublicKey"

    return-object v0

    .line 202
    :pswitch_21
    const-string/jumbo v0, "isImageMapped"

    return-object v0

    .line 198
    :pswitch_25
    const-string v0, "backingImageExists"

    return-object v0

    .line 194
    :pswitch_28
    const-string/jumbo v0, "unmapImageDevice"

    return-object v0

    .line 190
    :pswitch_2c
    const-string/jumbo v0, "mapImageDevice"

    return-object v0

    .line 186
    :pswitch_30
    const-string v0, "deleteBackingImage"

    return-object v0

    .line 182
    :pswitch_33
    const-string v0, "createBackingImage"

    return-object v0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_17
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

    .line 173
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 752
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 245
    invoke-static {p1}, Landroid/gsi/IImageService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "android.gsi.IImageService"

    .line 250
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 251
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 254
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    return v1

    .line 257
    :cond_16
    packed-switch p1, :pswitch_data_118

    .line 400
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 391
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {p0, v2}, Landroid/gsi/IImageService$Stub;->getMappedImageDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    goto/16 :goto_116

    .line 381
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 382
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {p0, v2}, Landroid/gsi/IImageService$Stub;->isImageDisabled(Ljava/lang/String;)Z

    move-result v3

    .line 384
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 386
    goto/16 :goto_116

    .line 374
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_44
    invoke-virtual {p0}, Landroid/gsi/IImageService$Stub;->removeDisabledImages()V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    goto/16 :goto_116

    .line 366
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 367
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {p0, v2}, Landroid/gsi/IImageService$Stub;->disableImage(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    goto/16 :goto_116

    .line 359
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_5b
    invoke-virtual {p0}, Landroid/gsi/IImageService$Stub;->removeAllImages()V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    goto/16 :goto_116

    .line 349
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 351
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 352
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v2, v3, v4}, Landroid/gsi/IImageService$Stub;->zeroFillNewImage(Ljava/lang/String;J)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    goto/16 :goto_116

    .line 341
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_76
    invoke-virtual {p0}, Landroid/gsi/IImageService$Stub;->getAllBackingImages()Ljava/util/List;

    move-result-object v2

    .line 342
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 344
    goto/16 :goto_116

    .line 329
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "_arg0":Ljava/lang/String;
    new-instance v3, Landroid/gsi/AvbPublicKey;

    invoke-direct {v3}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 332
    .local v3, "_arg1":Landroid/gsi/AvbPublicKey;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, v2, v3}, Landroid/gsi/IImageService$Stub;->getAvbPublicKey(Ljava/lang/String;Landroid/gsi/AvbPublicKey;)I

    move-result v4

    .line 334
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 337
    goto/16 :goto_116

    .line 319
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/gsi/AvbPublicKey;
    .end local v4    # "_result":I
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 320
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2}, Landroid/gsi/IImageService$Stub;->isImageMapped(Ljava/lang/String;)Z

    move-result v3

    .line 322
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 324
    goto :goto_116

    .line 309
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, v2}, Landroid/gsi/IImageService$Stub;->backingImageExists(Ljava/lang/String;)Z

    move-result v3

    .line 312
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 314
    goto :goto_116

    .line 300
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2}, Landroid/gsi/IImageService$Stub;->unmapImageDevice(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    goto :goto_116

    .line 286
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 288
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 290
    .local v3, "_arg1":I
    new-instance v4, Landroid/gsi/MappedImage;

    invoke-direct {v4}, Landroid/gsi/MappedImage;-><init>()V

    .line 291
    .local v4, "_arg2":Landroid/gsi/MappedImage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v2, v3, v4}, Landroid/gsi/IImageService$Stub;->mapImageDevice(Ljava/lang/String;ILandroid/gsi/MappedImage;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 295
    goto :goto_116

    .line 277
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/gsi/MappedImage;
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v2}, Landroid/gsi/IImageService$Stub;->deleteBackingImage(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    goto :goto_116

    .line 262
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 266
    .local v5, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 268
    .local v7, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/gsi/IProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IProgressCallback;

    move-result-object v8

    .line 269
    .local v8, "_arg3":Landroid/gsi/IProgressCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/gsi/IImageService$Stub;->createBackingImage(Ljava/lang/String;JILandroid/gsi/IProgressCallback;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    nop

    .line 403
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":J
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Landroid/gsi/IProgressCallback;
    :goto_116
    return v1

    nop

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_f7
        :pswitch_e9
        :pswitch_cf
        :pswitch_c1
        :pswitch_af
        :pswitch_9d
        :pswitch_82
        :pswitch_76
        :pswitch_63
        :pswitch_5b
        :pswitch_4c
        :pswitch_44
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method

.class public abstract Landroid/hardware/radio/ITuner$Stub;
.super Landroid/os/Binder;
.source "ITuner.java"

# interfaces
.implements Landroid/hardware/radio/ITuner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ITuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ITuner$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.radio.ITuner"

.field static final greylist-max-o TRANSACTION_cancel:I = 0xa

.field static final greylist-max-o TRANSACTION_cancelAnnouncement:I = 0xb

.field static final greylist-max-o TRANSACTION_close:I = 0x1

.field static final greylist-max-o TRANSACTION_getConfiguration:I = 0x4

.field static final greylist-max-o TRANSACTION_getImage:I = 0xc

.field static final greylist-max-o TRANSACTION_getParameters:I = 0x14

.field static final greylist-max-o TRANSACTION_isClosed:I = 0x2

.field static final greylist-max-o TRANSACTION_isConfigFlagSet:I = 0x11

.field static final greylist-max-o TRANSACTION_isConfigFlagSupported:I = 0x10

.field static final greylist-max-o TRANSACTION_isMuted:I = 0x6

.field static final blacklist TRANSACTION_seek:I = 0x8

.field static final greylist-max-o TRANSACTION_setConfigFlag:I = 0x12

.field static final greylist-max-o TRANSACTION_setConfiguration:I = 0x3

.field static final greylist-max-o TRANSACTION_setMuted:I = 0x5

.field static final greylist-max-o TRANSACTION_setParameters:I = 0x13

.field static final greylist-max-o TRANSACTION_startBackgroundScan:I = 0xd

.field static final greylist-max-o TRANSACTION_startProgramListUpdates:I = 0xe

.field static final greylist-max-o TRANSACTION_step:I = 0x7

.field static final greylist-max-o TRANSACTION_stopProgramListUpdates:I = 0xf

.field static final greylist-max-o TRANSACTION_tune:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 117
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 118
    const-string v0, "android.hardware.radio.ITuner"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ITuner$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ITuner;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 126
    if-nez p0, :cond_4

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_4
    const-string v0, "android.hardware.radio.ITuner"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 130
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/ITuner;

    if-eqz v1, :cond_14

    .line 131
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/ITuner;

    return-object v1

    .line 133
    :cond_14
    new-instance v1, Landroid/hardware/radio/ITuner$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/ITuner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 142
    packed-switch p0, :pswitch_data_42

    .line 226
    const/4 v0, 0x0

    return-object v0

    .line 222
    :pswitch_5
    const-string v0, "getParameters"

    return-object v0

    .line 218
    :pswitch_8
    const-string v0, "setParameters"

    return-object v0

    .line 214
    :pswitch_b
    const-string v0, "setConfigFlag"

    return-object v0

    .line 210
    :pswitch_e
    const-string v0, "isConfigFlagSet"

    return-object v0

    .line 206
    :pswitch_11
    const-string v0, "isConfigFlagSupported"

    return-object v0

    .line 202
    :pswitch_14
    const-string v0, "stopProgramListUpdates"

    return-object v0

    .line 198
    :pswitch_17
    const-string v0, "startProgramListUpdates"

    return-object v0

    .line 194
    :pswitch_1a
    const-string v0, "startBackgroundScan"

    return-object v0

    .line 190
    :pswitch_1d
    const-string v0, "getImage"

    return-object v0

    .line 186
    :pswitch_20
    const-string v0, "cancelAnnouncement"

    return-object v0

    .line 182
    :pswitch_23
    const-string v0, "cancel"

    return-object v0

    .line 178
    :pswitch_26
    const-string v0, "tune"

    return-object v0

    .line 174
    :pswitch_29
    const-string v0, "seek"

    return-object v0

    .line 170
    :pswitch_2c
    const-string v0, "step"

    return-object v0

    .line 166
    :pswitch_2f
    const-string v0, "isMuted"

    return-object v0

    .line 162
    :pswitch_32
    const-string v0, "setMuted"

    return-object v0

    .line 158
    :pswitch_35
    const-string v0, "getConfiguration"

    return-object v0

    .line 154
    :pswitch_38
    const-string v0, "setConfiguration"

    return-object v0

    .line 150
    :pswitch_3b
    const-string v0, "isClosed"

    return-object v0

    .line 146
    :pswitch_3e
    const-string v0, "close"

    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x1
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

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 5
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "_arg0"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 405
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "v":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    return-void
.end method

.method static synthetic blacklist lambda$onTransact$1(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 419
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method static synthetic blacklist lambda$onTransact$2(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 437
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 137
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 860
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 233
    invoke-static {p1}, Landroid/hardware/radio/ITuner$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 237
    const-string v0, "android.hardware.radio.ITuner"

    .line 238
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 239
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 242
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    return v1

    .line 245
    :cond_16
    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_184

    .line 445
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 428
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 429
    .local v3, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITuner$Stub;->getParameters(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 431
    .local v4, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    if-nez v4, :cond_34

    .line 433
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_182

    .line 435
    :cond_34
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    new-instance v2, Landroid/hardware/radio/ITuner$Stub$$ExternalSyntheticLambda2;

    invoke-direct {v2, p3}, Landroid/hardware/radio/ITuner$Stub$$ExternalSyntheticLambda2;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v4, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 441
    goto/16 :goto_182

    .line 402
    .end local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 403
    .local v3, "N":I
    if-gez v3, :cond_4d

    const/4 v4, 0x0

    goto :goto_52

    :cond_4d
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 404
    .local v4, "_arg0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_52
    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v5

    new-instance v6, Landroid/hardware/radio/ITuner$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v6, p2, v4}, Landroid/hardware/radio/ITuner$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v5, v6}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 411
    .end local v3    # "N":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v4}, Landroid/hardware/radio/ITuner$Stub;->setParameters(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 413
    .local v3, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    if-nez v3, :cond_70

    .line 415
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_182

    .line 417
    :cond_70
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    new-instance v2, Landroid/hardware/radio/ITuner$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3}, Landroid/hardware/radio/ITuner$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v3, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 423
    goto/16 :goto_182

    .line 390
    .end local v3    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "_arg0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 392
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 393
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/ITuner$Stub;->setConfigFlag(IZ)V

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    goto/16 :goto_182

    .line 380
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 381
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITuner$Stub;->isConfigFlagSet(I)Z

    move-result v3

    .line 383
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 385
    goto/16 :goto_182

    .line 370
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 371
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITuner$Stub;->isConfigFlagSupported(I)Z

    move-result v3

    .line 373
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 375
    goto/16 :goto_182

    .line 363
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_ba
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->stopProgramListUpdates()V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    goto/16 :goto_182

    .line 355
    :pswitch_c2
    sget-object v2, Landroid/hardware/radio/ProgramList$Filter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramList$Filter;

    .line 356
    .local v2, "_arg0":Landroid/hardware/radio/ProgramList$Filter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITuner$Stub;->startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    goto/16 :goto_182

    .line 347
    .end local v2    # "_arg0":Landroid/hardware/radio/ProgramList$Filter;
    :pswitch_d5
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->startBackgroundScan()Z

    move-result v2

    .line 348
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 350
    goto/16 :goto_182

    .line 338
    .end local v2    # "_result":Z
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITuner$Stub;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 341
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 343
    goto/16 :goto_182

    .line 331
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :pswitch_f4
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->cancelAnnouncement()V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    goto/16 :goto_182

    .line 325
    :pswitch_fc
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->cancel()V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    goto/16 :goto_182

    .line 317
    :pswitch_104
    sget-object v2, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramSelector;

    .line 318
    .local v2, "_arg0":Landroid/hardware/radio/ProgramSelector;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITuner$Stub;->tune(Landroid/hardware/radio/ProgramSelector;)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    goto :goto_182

    .line 306
    .end local v2    # "_arg0":Landroid/hardware/radio/ProgramSelector;
    :pswitch_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 308
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 309
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/ITuner$Stub;->seek(ZZ)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto :goto_182

    .line 295
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 297
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 298
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/ITuner$Stub;->step(ZZ)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    goto :goto_182

    .line 287
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_13a
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->isMuted()Z

    move-result v2

    .line 288
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 290
    goto :goto_182

    .line 279
    .end local v2    # "_result":Z
    :pswitch_145
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 280
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITuner$Stub;->setMuted(Z)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    goto :goto_182

    .line 271
    .end local v2    # "_arg0":Z
    :pswitch_153
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;

    move-result-object v2

    .line 272
    .local v2, "_result":Landroid/hardware/radio/RadioManager$BandConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 274
    goto :goto_182

    .line 263
    .end local v2    # "_result":Landroid/hardware/radio/RadioManager$BandConfig;
    :pswitch_15e
    sget-object v2, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioManager$BandConfig;

    .line 264
    .local v2, "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITuner$Stub;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto :goto_182

    .line 255
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    :pswitch_170
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->isClosed()Z

    move-result v2

    .line 256
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 258
    goto :goto_182

    .line 249
    .end local v2    # "_result":Z
    :pswitch_17b
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->close()V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    nop

    .line 448
    :goto_182
    return v1

    nop

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_17b
        :pswitch_170
        :pswitch_15e
        :pswitch_153
        :pswitch_145
        :pswitch_13a
        :pswitch_128
        :pswitch_116
        :pswitch_104
        :pswitch_fc
        :pswitch_f4
        :pswitch_e1
        :pswitch_d5
        :pswitch_c2
        :pswitch_ba
        :pswitch_a7
        :pswitch_94
        :pswitch_81
        :pswitch_45
        :pswitch_1f
    .end packed-switch
.end method

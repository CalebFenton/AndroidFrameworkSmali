.class public abstract Landroid/media/ISpatializer$Stub;
.super Landroid/os/Binder;
.source "ISpatializer.java"

# interfaces
.implements Landroid/media/ISpatializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ISpatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISpatializer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getActualHeadTrackingMode:I = 0x8

.field static final blacklist TRANSACTION_getLevel:I = 0x4

.field static final blacklist TRANSACTION_getOutput:I = 0x14

.field static final blacklist TRANSACTION_getParameter:I = 0x13

.field static final blacklist TRANSACTION_getSpatializedChannelMasks:I = 0x15

.field static final blacklist TRANSACTION_getSupportedHeadTrackingModes:I = 0x6

.field static final blacklist TRANSACTION_getSupportedLevels:I = 0x2

.field static final blacklist TRANSACTION_getSupportedModes:I = 0x10

.field static final blacklist TRANSACTION_isHeadTrackingSupported:I = 0x5

.field static final blacklist TRANSACTION_recenterHeadTracker:I = 0x9

.field static final blacklist TRANSACTION_registerHeadTrackingCallback:I = 0x11

.field static final blacklist TRANSACTION_release:I = 0x1

.field static final blacklist TRANSACTION_setDesiredHeadTrackingMode:I = 0x7

.field static final blacklist TRANSACTION_setDisplayOrientation:I = 0xd

.field static final blacklist TRANSACTION_setFoldState:I = 0xf

.field static final blacklist TRANSACTION_setGlobalTransform:I = 0xa

.field static final blacklist TRANSACTION_setHeadSensor:I = 0xb

.field static final blacklist TRANSACTION_setHingeAngle:I = 0xe

.field static final blacklist TRANSACTION_setLevel:I = 0x3

.field static final blacklist TRANSACTION_setParameter:I = 0x12

.field static final blacklist TRANSACTION_setScreenSensor:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 198
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 199
    const-string v0, "android.media.ISpatializer"

    invoke-virtual {p0, p0, v0}, Landroid/media/ISpatializer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 207
    if-nez p0, :cond_4

    .line 208
    const/4 v0, 0x0

    return-object v0

    .line 210
    :cond_4
    const-string v0, "android.media.ISpatializer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 211
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/ISpatializer;

    if-eqz v1, :cond_14

    .line 212
    move-object v1, v0

    check-cast v1, Landroid/media/ISpatializer;

    return-object v1

    .line 214
    :cond_14
    new-instance v1, Landroid/media/ISpatializer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/ISpatializer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 218
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    const-string v0, "android.media.ISpatializer"

    .line 223
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 224
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 227
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    return v1

    .line 230
    :cond_16
    packed-switch p1, :pswitch_data_13a

    .line 406
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 399
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getSpatializedChannelMasks()[I

    move-result-object v2

    .line 400
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 402
    goto/16 :goto_138

    .line 392
    .end local v2    # "_result":[I
    :pswitch_2a
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getOutput()I

    move-result v2

    .line 393
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    goto/16 :goto_138

    .line 381
    .end local v2    # "_result":I
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 383
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 384
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, v2, v3}, Landroid/media/ISpatializer$Stub;->getParameter(I[B)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 388
    goto/16 :goto_138

    .line 370
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 372
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 373
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, v2, v3}, Landroid/media/ISpatializer$Stub;->setParameter(I[B)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    goto/16 :goto_138

    .line 361
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ISpatializerHeadTrackingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingCallback;

    move-result-object v2

    .line 362
    .local v2, "_arg0":Landroid/media/ISpatializerHeadTrackingCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->registerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingCallback;)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    goto/16 :goto_138

    .line 353
    .end local v2    # "_arg0":Landroid/media/ISpatializerHeadTrackingCallback;
    :pswitch_72
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getSupportedModes()[B

    move-result-object v2

    .line 354
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 356
    goto/16 :goto_138

    .line 345
    .end local v2    # "_result":[B
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 346
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->setFoldState(Z)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    goto/16 :goto_138

    .line 336
    .end local v2    # "_arg0":Z
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 337
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->setHingeAngle(F)V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    goto/16 :goto_138

    .line 327
    .end local v2    # "_arg0":F
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 328
    .restart local v2    # "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->setDisplayOrientation(F)V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    goto/16 :goto_138

    .line 318
    .end local v2    # "_arg0":F
    :pswitch_ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 319
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->setScreenSensor(I)V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    goto/16 :goto_138

    .line 309
    .end local v2    # "_arg0":I
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 310
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->setHeadSensor(I)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    goto/16 :goto_138

    .line 300
    .end local v2    # "_arg0":I
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 301
    .local v2, "_arg0":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->setGlobalTransform([F)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    goto :goto_138

    .line 293
    .end local v2    # "_arg0":[F
    :pswitch_d7
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->recenterHeadTracker()V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    goto :goto_138

    .line 286
    :pswitch_de
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getActualHeadTrackingMode()B

    move-result v2

    .line 287
    .local v2, "_result":B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 289
    goto :goto_138

    .line 278
    .end local v2    # "_result":B
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 279
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->setDesiredHeadTrackingMode(B)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    goto :goto_138

    .line 270
    .end local v2    # "_arg0":B
    :pswitch_f7
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getSupportedHeadTrackingModes()[B

    move-result-object v2

    .line 271
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 273
    goto :goto_138

    .line 263
    .end local v2    # "_result":[B
    :pswitch_102
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->isHeadTrackingSupported()Z

    move-result v2

    .line 264
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 266
    goto :goto_138

    .line 256
    .end local v2    # "_result":Z
    :pswitch_10d
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getLevel()B

    move-result v2

    .line 257
    .local v2, "_result":B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 259
    goto :goto_138

    .line 248
    .end local v2    # "_result":B
    :pswitch_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 249
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->setLevel(B)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto :goto_138

    .line 240
    .end local v2    # "_arg0":B
    :pswitch_126
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getSupportedLevels()[B

    move-result-object v2

    .line 241
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 243
    goto :goto_138

    .line 234
    .end local v2    # "_result":[B
    :pswitch_131
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->release()V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    nop

    .line 409
    :goto_138
    return v1

    nop

    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_131
        :pswitch_126
        :pswitch_118
        :pswitch_10d
        :pswitch_102
        :pswitch_f7
        :pswitch_e9
        :pswitch_de
        :pswitch_d7
        :pswitch_c9
        :pswitch_ba
        :pswitch_ab
        :pswitch_9c
        :pswitch_8d
        :pswitch_7e
        :pswitch_72
        :pswitch_5f
        :pswitch_4c
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method

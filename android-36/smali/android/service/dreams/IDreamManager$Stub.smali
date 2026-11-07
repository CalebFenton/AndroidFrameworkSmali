.class public abstract Landroid/service/dreams/IDreamManager$Stub;
.super Landroid/os/Binder;
.source "IDreamManager.java"

# interfaces
.implements Landroid/service/dreams/IDreamManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.dreams.IDreamManager"

.field static final greylist-max-o TRANSACTION_awaken:I = 0x2

.field static final blacklist TRANSACTION_canStartDreaming:I = 0x9

.field static final greylist-max-o TRANSACTION_dream:I = 0x1

.field static final greylist-max-o TRANSACTION_finishSelf:I = 0xa

.field static final blacklist TRANSACTION_finishSelfOneway:I = 0x16

.field static final blacklist TRANSACTION_forceAmbientDisplayEnabled:I = 0xd

.field static final blacklist TRANSACTION_getDefaultDreamComponentForUser:I = 0x5

.field static final greylist-max-o TRANSACTION_getDreamComponents:I = 0x4

.field static final blacklist TRANSACTION_getDreamComponentsForUser:I = 0xe

.field static final greylist-max-o TRANSACTION_isDreaming:I = 0x7

.field static final blacklist TRANSACTION_isDreamingOrInPreview:I = 0x8

.field static final blacklist TRANSACTION_registerDreamOverlayService:I = 0x11

.field static final blacklist TRANSACTION_setDevicePostured:I = 0x14

.field static final greylist-max-o TRANSACTION_setDreamComponents:I = 0x3

.field static final blacklist TRANSACTION_setDreamComponentsForUser:I = 0xf

.field static final blacklist TRANSACTION_setDreamIsObscured:I = 0x13

.field static final blacklist TRANSACTION_setScreensaverEnabled:I = 0x17

.field static final blacklist TRANSACTION_setSystemDreamComponent:I = 0x10

.field static final greylist-max-o TRANSACTION_startDozing:I = 0xb

.field static final blacklist TRANSACTION_startDozingOneway:I = 0x15

.field static final blacklist TRANSACTION_startDreamActivity:I = 0x12

.field static final greylist-max-o TRANSACTION_stopDozing:I = 0xc

.field static final greylist-max-o TRANSACTION_testDream:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 104
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 105
    const-string v0, "android.service.dreams.IDreamManager"

    invoke-virtual {p0, p0, v0}, Landroid/service/dreams/IDreamManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 113
    if-nez p0, :cond_4

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_4
    const-string v0, "android.service.dreams.IDreamManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 117
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_14

    .line 118
    move-object v1, v0

    check-cast v1, Landroid/service/dreams/IDreamManager;

    return-object v1

    .line 120
    :cond_14
    new-instance v1, Landroid/service/dreams/IDreamManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/dreams/IDreamManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 129
    packed-switch p0, :pswitch_data_58

    .line 225
    const/4 v0, 0x0

    return-object v0

    .line 221
    :pswitch_5
    const-string/jumbo v0, "setScreensaverEnabled"

    return-object v0

    .line 217
    :pswitch_9
    const-string v0, "finishSelfOneway"

    return-object v0

    .line 213
    :pswitch_c
    const-string/jumbo v0, "startDozingOneway"

    return-object v0

    .line 209
    :pswitch_10
    const-string/jumbo v0, "setDevicePostured"

    return-object v0

    .line 205
    :pswitch_14
    const-string/jumbo v0, "setDreamIsObscured"

    return-object v0

    .line 201
    :pswitch_18
    const-string/jumbo v0, "startDreamActivity"

    return-object v0

    .line 197
    :pswitch_1c
    const-string/jumbo v0, "registerDreamOverlayService"

    return-object v0

    .line 193
    :pswitch_20
    const-string/jumbo v0, "setSystemDreamComponent"

    return-object v0

    .line 189
    :pswitch_24
    const-string/jumbo v0, "setDreamComponentsForUser"

    return-object v0

    .line 185
    :pswitch_28
    const-string v0, "getDreamComponentsForUser"

    return-object v0

    .line 181
    :pswitch_2b
    const-string v0, "forceAmbientDisplayEnabled"

    return-object v0

    .line 177
    :pswitch_2e
    const-string/jumbo v0, "stopDozing"

    return-object v0

    .line 173
    :pswitch_32
    const-string/jumbo v0, "startDozing"

    return-object v0

    .line 169
    :pswitch_36
    const-string v0, "finishSelf"

    return-object v0

    .line 165
    :pswitch_39
    const-string v0, "canStartDreaming"

    return-object v0

    .line 161
    :pswitch_3c
    const-string/jumbo v0, "isDreamingOrInPreview"

    return-object v0

    .line 157
    :pswitch_40
    const-string/jumbo v0, "isDreaming"

    return-object v0

    .line 153
    :pswitch_44
    const-string/jumbo v0, "testDream"

    return-object v0

    .line 149
    :pswitch_48
    const-string v0, "getDefaultDreamComponentForUser"

    return-object v0

    .line 145
    :pswitch_4b
    const-string v0, "getDreamComponents"

    return-object v0

    .line 141
    :pswitch_4e
    const-string/jumbo v0, "setDreamComponents"

    return-object v0

    .line 137
    :pswitch_52
    const-string v0, "awaken"

    return-object v0

    .line 133
    :pswitch_55
    const-string v0, "dream"

    return-object v0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_55
        :pswitch_52
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 124
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 881
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 232
    invoke-static {p1}, Landroid/service/dreams/IDreamManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 236
    const-string v7, "android.service.dreams.IDreamManager"

    .line 237
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 238
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 241
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    return v8

    .line 244
    :cond_16
    packed-switch p1, :pswitch_data_1aa

    .line 470
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 462
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 463
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->setScreensaverEnabled(Z)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    goto/16 :goto_1a9

    .line 452
    .end local v1    # "_arg0":Z
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 454
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 455
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {p0, v1, v2}, Landroid/service/dreams/IDreamManager$Stub;->finishSelfOneway(Landroid/os/IBinder;Z)V

    .line 457
    goto/16 :goto_1a9

    .line 434
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 436
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 438
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 440
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 442
    .local v4, "_arg3":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 444
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 445
    .local v6, "_arg5":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/service/dreams/IDreamManager$Stub;->startDozingOneway(Landroid/os/IBinder;IIFIZ)V

    .line 447
    goto/16 :goto_1a9

    .line 426
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":F
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Z
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 427
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->setDevicePostured(Z)V

    .line 429
    goto/16 :goto_1a9

    .line 418
    .end local v1    # "_arg0":Z
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 419
    .restart local v1    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->setDreamIsObscured(Z)V

    .line 421
    goto/16 :goto_1a9

    .line 409
    .end local v1    # "_arg0":Z
    :pswitch_76
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 410
    .local v1, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->startDreamActivity(Landroid/content/Intent;)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    goto/16 :goto_1a9

    .line 400
    .end local v1    # "_arg0":Landroid/content/Intent;
    :pswitch_89
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 401
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->registerDreamOverlayService(Landroid/content/ComponentName;)V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    goto/16 :goto_1a9

    .line 391
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_9c
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 392
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->setSystemDreamComponent(Landroid/content/ComponentName;)V

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    goto/16 :goto_1a9

    .line 380
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 382
    .local v1, "_arg0":I
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ComponentName;

    .line 383
    .local v2, "_arg1":[Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v1, v2}, Landroid/service/dreams/IDreamManager$Stub;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    goto/16 :goto_1a9

    .line 370
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/content/ComponentName;
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 371
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v2

    .line 373
    .local v2, "_result":[Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v2, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 375
    goto/16 :goto_1a9

    .line 361
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[Landroid/content/ComponentName;
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 362
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->forceAmbientDisplayEnabled(Z)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    goto/16 :goto_1a9

    .line 352
    .end local v1    # "_arg0":Z
    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 353
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->stopDozing(Landroid/os/IBinder;)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    goto/16 :goto_1a9

    .line 333
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 335
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 337
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 339
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 341
    .restart local v4    # "_arg3":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 343
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 344
    .restart local v6    # "_arg5":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/service/dreams/IDreamManager$Stub;->startDozing(Landroid/os/IBinder;IIFIZ)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    goto/16 :goto_1a9

    .line 322
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":F
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Z
    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 324
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 325
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v1, v2}, Landroid/service/dreams/IDreamManager$Stub;->finishSelf(Landroid/os/IBinder;Z)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    goto/16 :goto_1a9

    .line 312
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_12e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 313
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->canStartDreaming(Z)Z

    move-result v2

    .line 315
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 317
    goto :goto_1a9

    .line 304
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_140
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->isDreamingOrInPreview()Z

    move-result v1

    .line 305
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 307
    goto :goto_1a9

    .line 297
    .end local v1    # "_result":Z
    :pswitch_14b
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->isDreaming()Z

    move-result v1

    .line 298
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 300
    goto :goto_1a9

    .line 287
    .end local v1    # "_result":Z
    :pswitch_156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 289
    .local v1, "_arg0":I
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 290
    .local v2, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v1, v2}, Landroid/service/dreams/IDreamManager$Stub;->testDream(ILandroid/content/ComponentName;)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    goto :goto_1a9

    .line 277
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :pswitch_16c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 278
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 280
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v2, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 282
    goto :goto_1a9

    .line 269
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_17e
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->getDreamComponents()[Landroid/content/ComponentName;

    move-result-object v1

    .line 270
    .local v1, "_result":[Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v1, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 272
    goto :goto_1a9

    .line 261
    .end local v1    # "_result":[Landroid/content/ComponentName;
    :pswitch_189
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    .line 262
    .local v1, "_arg0":[Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->setDreamComponents([Landroid/content/ComponentName;)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto :goto_1a9

    .line 254
    .end local v1    # "_arg0":[Landroid/content/ComponentName;
    :pswitch_19b
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->awaken()V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto :goto_1a9

    .line 248
    :pswitch_1a2
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->dream()V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    nop

    .line 473
    :goto_1a9
    return v8

    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_1a2
        :pswitch_19b
        :pswitch_189
        :pswitch_17e
        :pswitch_16c
        :pswitch_156
        :pswitch_14b
        :pswitch_140
        :pswitch_12e
        :pswitch_11b
        :pswitch_f7
        :pswitch_e8
        :pswitch_d9
        :pswitch_c6
        :pswitch_af
        :pswitch_9c
        :pswitch_89
        :pswitch_76
        :pswitch_6a
        :pswitch_5e
        :pswitch_3d
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method

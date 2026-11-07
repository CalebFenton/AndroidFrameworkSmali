.class public abstract Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;
.super Landroid/os/Binder;
.source "IUceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/uceservice/IUceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/uceservice/IUceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.uceservice.IUceService"

.field static final greylist-max-o TRANSACTION_createOptionsService:I = 0x4

.field static final blacklist TRANSACTION_createOptionsServiceForSubscription:I = 0x5

.field static final greylist-max-o TRANSACTION_createPresenceService:I = 0x7

.field static final blacklist TRANSACTION_createPresenceServiceForSubscription:I = 0x8

.field static final greylist-max-o TRANSACTION_destroyOptionsService:I = 0x6

.field static final greylist-max-o TRANSACTION_destroyPresenceService:I = 0x9

.field static final greylist-max-o TRANSACTION_getOptionsService:I = 0xd

.field static final blacklist TRANSACTION_getOptionsServiceForSubscription:I = 0xe

.field static final greylist-max-o TRANSACTION_getPresenceService:I = 0xb

.field static final blacklist TRANSACTION_getPresenceServiceForSubscription:I = 0xc

.field static final greylist-max-o TRANSACTION_getServiceStatus:I = 0xa

.field static final greylist-max-o TRANSACTION_isServiceStarted:I = 0x3

.field static final greylist-max-o TRANSACTION_startService:I = 0x1

.field static final greylist-max-o TRANSACTION_stopService:I = 0x2


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 217
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 218
    const-string v0, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 226
    if-nez p0, :cond_4

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_4
    const-string v0, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 230
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/uce/uceservice/IUceService;

    if-eqz v1, :cond_14

    .line 231
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-object v1

    .line 233
    :cond_14
    new-instance v1, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 242
    packed-switch p0, :pswitch_data_32

    .line 302
    const/4 v0, 0x0

    return-object v0

    .line 298
    :pswitch_5
    const-string v0, "getOptionsServiceForSubscription"

    return-object v0

    .line 294
    :pswitch_8
    const-string v0, "getOptionsService"

    return-object v0

    .line 290
    :pswitch_b
    const-string v0, "getPresenceServiceForSubscription"

    return-object v0

    .line 286
    :pswitch_e
    const-string v0, "getPresenceService"

    return-object v0

    .line 282
    :pswitch_11
    const-string v0, "getServiceStatus"

    return-object v0

    .line 278
    :pswitch_14
    const-string v0, "destroyPresenceService"

    return-object v0

    .line 274
    :pswitch_17
    const-string v0, "createPresenceServiceForSubscription"

    return-object v0

    .line 270
    :pswitch_1a
    const-string v0, "createPresenceService"

    return-object v0

    .line 266
    :pswitch_1d
    const-string v0, "destroyOptionsService"

    return-object v0

    .line 262
    :pswitch_20
    const-string v0, "createOptionsServiceForSubscription"

    return-object v0

    .line 258
    :pswitch_23
    const-string v0, "createOptionsService"

    return-object v0

    .line 254
    :pswitch_26
    const-string v0, "isServiceStarted"

    return-object v0

    .line 250
    :pswitch_29
    const-string/jumbo v0, "stopService"

    return-object v0

    .line 246
    :pswitch_2d
    const-string/jumbo v0, "startService"

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2d
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 237
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 895
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 309
    invoke-static {p1}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    const-string v0, "com.android.ims.internal.uce.uceservice.IUceService"

    .line 314
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 315
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 318
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    return v1

    .line 321
    :cond_16
    packed-switch p1, :pswitch_data_140

    .line 464
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 455
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getOptionsServiceForSubscription(Ljava/lang/String;)Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object v3

    .line 458
    .local v3, "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 460
    goto/16 :goto_13f

    .line 447
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object v2

    .line 448
    .local v2, "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 450
    goto/16 :goto_13f

    .line 438
    .end local v2    # "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getPresenceServiceForSubscription(Ljava/lang/String;)Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object v3

    .line 441
    .local v3, "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 443
    goto/16 :goto_13f

    .line 430
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    :pswitch_50
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object v2

    .line 431
    .local v2, "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 433
    goto/16 :goto_13f

    .line 423
    .end local v2    # "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    :pswitch_5c
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getServiceStatus()Z

    move-result v2

    .line 424
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 426
    goto/16 :goto_13f

    .line 415
    .end local v2    # "_result":Z
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 416
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->destroyPresenceService(I)V

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    goto/16 :goto_13f

    .line 400
    .end local v2    # "_arg0":I
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v2

    .line 402
    .local v2, "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    sget-object v3, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    .line 404
    .local v3, "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 405
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createPresenceServiceForSubscription(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I

    move-result v5

    .line 407
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 410
    goto/16 :goto_13f

    .line 387
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v2

    .line 389
    .restart local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    sget-object v3, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    .line 390
    .restart local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createPresenceService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result v4

    .line 392
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 395
    goto/16 :goto_13f

    .line 378
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v4    # "_result":I
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 379
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->destroyOptionsService(I)V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    goto :goto_13f

    .line 363
    .end local v2    # "_arg0":I
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    move-result-object v2

    .line 365
    .local v2, "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    sget-object v3, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    .line 367
    .restart local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createOptionsServiceForSubscription(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I

    move-result v5

    .line 370
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 373
    goto :goto_13f

    .line 350
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    move-result-object v2

    .line 352
    .restart local v2    # "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    sget-object v3, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    .line 353
    .restart local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result v4

    .line 355
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 358
    goto :goto_13f

    .line 342
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v4    # "_result":I
    :pswitch_113
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->isServiceStarted()Z

    move-result v2

    .line 343
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 345
    goto :goto_13f

    .line 335
    .end local v2    # "_result":Z
    :pswitch_11e
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->stopService()Z

    move-result v2

    .line 336
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 338
    goto :goto_13f

    .line 326
    .end local v2    # "_result":Z
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/uce/uceservice/IUceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceListener;

    move-result-object v2

    .line 327
    .local v2, "_arg0":Lcom/android/ims/internal/uce/uceservice/IUceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->startService(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z

    move-result v3

    .line 329
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 331
    nop

    .line 467
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/uceservice/IUceListener;
    .end local v3    # "_result":Z
    :goto_13f
    return v1

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_129
        :pswitch_11e
        :pswitch_113
        :pswitch_f2
        :pswitch_cd
        :pswitch_bf
        :pswitch_9d
        :pswitch_77
        :pswitch_68
        :pswitch_5c
        :pswitch_50
        :pswitch_3d
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method

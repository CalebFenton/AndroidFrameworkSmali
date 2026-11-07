.class Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIccPhoneBook.java"

# interfaces
.implements Lcom/android/internal/telephony/IIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 300
    iget-object p0, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public blacklist getAdnRecordsCapacityForSubscriber(I)Lcom/android/internal/telephony/uicc/AdnCapacity;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 535
    :try_start_c
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget-object p0, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 539
    sget-object p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/AdnCapacity;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2e

    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2e
    move-exception p0

    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    throw p0
.end method

.method public blacklist getAdnRecordsInEf(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 319
    :try_start_c
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget-object p0, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 323
    sget-object p0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2b

    .line 326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2b
    move-exception p0

    .line 326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 328
    throw p0
.end method

.method public blacklist getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 345
    :try_start_c
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-object p0, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 350
    sget-object p0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2e

    .line 353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2e
    move-exception p0

    .line 353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 355
    throw p0
.end method

.method public blacklist getAdnRecordsSize(I)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 482
    :try_start_c
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget-object p0, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x6

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 485
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_29

    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_29
    move-exception p0

    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 491
    throw p0
.end method

.method public blacklist getAdnRecordsSizeForSubscriber(II)[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 510
    :try_start_c
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget-object p0, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 515
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2c

    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2c
    move-exception p0

    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 520
    throw p0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 304
    const-string p0, "com.android.internal.telephony.IIccPhoneBook"

    return-object p0
.end method

.method public blacklist updateAdnRecordsInEfByIndexForSubscriber(IILandroid/content/ContentValues;ILjava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 451
    :try_start_c
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 454
    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 455
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    iget-object p0, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x5

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 458
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 459
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_35

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_35
    move-exception p0

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 464
    throw p0
.end method

.method public blacklist updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 382
    :try_start_c
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object p0, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_38

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_38
    move-exception p0

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 396
    throw p0
.end method

.method public blacklist updateAdnRecordsInEfBySearchForSubscriber(IILandroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 417
    :try_start_c
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 420
    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 421
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    iget-object p0, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x4

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 423
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_32

    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_32
    move-exception p0

    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 429
    throw p0
.end method

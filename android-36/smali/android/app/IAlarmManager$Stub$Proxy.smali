.class Landroid/app/IAlarmManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAlarmManager.java"

# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 295
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 298
    iget-object v0, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist canScheduleExactAlarms(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 432
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 435
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 438
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 442
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 444
    nop

    .line 445
    return v3

    .line 442
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 444
    throw v2
.end method

.method public blacklist getConfigVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 469
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 472
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 474
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 478
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    nop

    .line 481
    return v3

    .line 478
    .end local v3    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 302
    const-string v0, "android.app.IAlarmManager"

    return-object v0
.end method

.method public greylist-max-o getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 414
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 417
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 420
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 421
    sget-object v3, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager$AlarmClockInfo;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 424
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    nop

    .line 427
    return-object v3

    .line 424
    .end local v3    # "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    throw v2
.end method

.method public greylist-max-o getNextWakeFromIdleTime()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 397
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 400
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 401
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 402
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 403
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 406
    .end local v2    # "_status":Z
    .local v3, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 408
    nop

    .line 409
    return-wide v3

    .line 406
    .end local v3    # "_result":J
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 408
    throw v2
.end method

.method public blacklist hasScheduleExactAlarm(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 450
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 453
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 457
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 458
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 461
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 463
    nop

    .line 464
    return v3

    .line 461
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 463
    throw v2
.end method

.method public greylist-max-o remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 8
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 368
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 369
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 370
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 371
    iget-object v3, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 372
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 375
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    nop

    .line 378
    return-void

    .line 375
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    throw v2
.end method

.method public blacklist removeAll(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 382
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 384
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 387
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 390
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 392
    nop

    .line 393
    return-void

    .line 390
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 392
    throw v2
.end method

.method public greylist-max-o set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 31
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "triggerAtTime"    # J
    .param p5, "windowLength"    # J
    .param p7, "interval"    # J
    .param p9, "flags"    # I
    .param p10, "operation"    # Landroid/app/PendingIntent;
    .param p11, "listener"    # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"    # Ljava/lang/String;
    .param p13, "workSource"    # Landroid/os/WorkSource;
    .param p14, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/app/IAlarmManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 308
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 310
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 311
    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    move/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_6e

    .line 313
    move-wide/from16 v5, p3

    :try_start_1d
    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_6c

    .line 314
    move-wide/from16 v7, p5

    :try_start_22
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_6a

    .line 315
    move-wide/from16 v9, p7

    :try_start_27
    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_68

    .line 316
    move/from16 v11, p9

    :try_start_2c
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_66

    .line 317
    const/4 v0, 0x0

    move-object/from16 v12, p10

    :try_start_32
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_64

    .line 318
    move-object/from16 v13, p11

    :try_start_37
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_62

    .line 319
    move-object/from16 v14, p12

    :try_start_3c
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_60

    .line 320
    move-object/from16 v15, p13

    :try_start_41
    invoke-virtual {v1, v15, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 321
    move-object/from16 v3, p14

    invoke-virtual {v1, v3, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 322
    move-object/from16 v3, p0

    iget-object v0, v3, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 323
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_56
    .catchall {:try_start_41 .. :try_end_56} :catchall_5e

    .line 326
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 328
    nop

    .line 329
    return-void

    .line 326
    :catchall_5e
    move-exception v0

    goto :goto_7f

    :catchall_60
    move-exception v0

    goto :goto_7d

    :catchall_62
    move-exception v0

    goto :goto_7b

    :catchall_64
    move-exception v0

    goto :goto_79

    :catchall_66
    move-exception v0

    goto :goto_77

    :catchall_68
    move-exception v0

    goto :goto_75

    :catchall_6a
    move-exception v0

    goto :goto_73

    :catchall_6c
    move-exception v0

    goto :goto_71

    :catchall_6e
    move-exception v0

    move-wide/from16 v5, p3

    :goto_71
    move-wide/from16 v7, p5

    :goto_73
    move-wide/from16 v9, p7

    :goto_75
    move/from16 v11, p9

    :goto_77
    move-object/from16 v12, p10

    :goto_79
    move-object/from16 v13, p11

    :goto_7b
    move-object/from16 v14, p12

    :goto_7d
    move-object/from16 v15, p13

    :goto_7f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 328
    throw v0
.end method

.method public greylist-max-o setTime(J)Z
    .registers 8
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 333
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 336
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 338
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 339
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 343
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    nop

    .line 346
    return v3

    .line 343
    .end local v3    # "_result":Z
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    throw v2
.end method

.method public greylist-max-o setTimeZone(Ljava/lang/String;)V
    .registers 7
    .param p1, "zone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 351
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 353
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 356
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 359
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    nop

    .line 362
    return-void

    .line 359
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    throw v2
.end method

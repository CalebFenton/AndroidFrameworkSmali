.class Landroid/print/IPrintManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPrintManager.java"

# interfaces
.implements Landroid/print/IPrintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 295
    iput-object p1, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 293
    return-void
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V
    .locals 5
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 438
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 440
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.print.IPrintManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 441
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 442
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 443
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 444
    iget-object v2, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v3, 0x6

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 445
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 435
    return-void

    #@2f
    .line 447
    :catchall_0
    move-exception v2

    #@30
    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 447
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;II)V
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 392
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 395
    if-eqz p1, :cond_0

    #@10
    .line 396
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 397
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 402
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 403
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 404
    iget-object v2, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v3, 0x4

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 389
    return-void

    #@2f
    .line 400
    :cond_0
    const/4 v2, 0x0

    #@30
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 407
    :catchall_0
    move-exception v2

    #@35
    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 407
    throw v2
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 5
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 507
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 509
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.print.IPrintManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 510
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/print/IPrinterDiscoveryObserver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 511
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 512
    iget-object v2, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xa

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 513
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 504
    return-void

    #@2d
    .line 515
    :catchall_0
    move-exception v2

    #@2e
    .line 516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 515
    throw v2
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 5
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 616
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 618
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.print.IPrintManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 619
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/print/IPrinterDiscoveryObserver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 620
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 621
    iget-object v2, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x10

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 622
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 613
    return-void

    #@2d
    .line 624
    :catchall_0
    move-exception v2

    #@2e
    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 624
    throw v2
.end method

.method public getEnabledPrintServices(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 489
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 492
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.print.IPrintManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 494
    iget-object v3, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x9

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 496
    sget-object v3, Landroid/printservice/PrintServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v2

    #@22
    .line 499
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 502
    return-object v2

    #@29
    .line 498
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :catchall_0
    move-exception v3

    #@2a
    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 498
    throw v3
.end method

.method public getInstalledPrintServices(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 471
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 474
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.print.IPrintManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 475
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 476
    iget-object v3, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x8

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 478
    sget-object v3, Landroid/printservice/PrintServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v2

    #@22
    .line 481
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 484
    return-object v2

    #@29
    .line 480
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :catchall_0
    move-exception v3

    #@2a
    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 480
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 303
    const-string/jumbo v0, "android.print.IPrintManager"

    #@3
    return-object v0
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;
    .locals 6
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 327
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 330
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.print.IPrintManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 331
    if-eqz p1, :cond_0

    #@10
    .line 332
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 333
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 338
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 339
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 340
    iget-object v3, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v4, 0x2

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 343
    sget-object v3, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Landroid/print/PrintJobInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 350
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 353
    return-object v2

    #@3d
    .line 336
    :cond_0
    const/4 v3, 0x0

    #@3e
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 349
    :catchall_0
    move-exception v3

    #@43
    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 349
    throw v3

    #@4a
    .line 346
    :cond_1
    const/4 v2, 0x0

    #@4b
    .local v2, "_result":Landroid/print/PrintJobInfo;
    goto :goto_1
.end method

.method public getPrintJobInfos(II)Ljava/util/List;
    .locals 6
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 308
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 311
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.print.IPrintManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 312
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 313
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 314
    iget-object v3, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x1

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 316
    sget-object v3, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v2

    #@24
    .line 319
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 322
    return-object v2

    #@2b
    .line 318
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :catchall_0
    move-exception v3

    #@2c
    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 318
    throw v3
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 6
    .param p1, "printJobName"    # Ljava/lang/String;
    .param p2, "printAdapter"    # Landroid/print/IPrintDocumentAdapter;
    .param p3, "attributes"    # Landroid/print/PrintAttributes;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appId"    # I
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 358
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 361
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.print.IPrintManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 362
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 363
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 364
    if-eqz p3, :cond_1

    #@1d
    .line 365
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 366
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/print/PrintAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 371
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@28
    .line 372
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 373
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 374
    iget-object v3, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@30
    const/4 v4, 0x3

    #@31
    const/4 v5, 0x0

    #@32
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@35
    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@38
    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_2

    #@3e
    .line 377
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@40
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@43
    move-result-object v2

    #@44
    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 384
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 387
    return-object v2

    #@4d
    .line 369
    :cond_1
    const/4 v3, 0x0

    #@4e
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 383
    :catchall_0
    move-exception v3

    #@53
    .line 384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@56
    .line 385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@59
    .line 383
    throw v3

    #@5a
    .line 380
    :cond_2
    const/4 v2, 0x0

    #@5b
    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 455
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 457
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.print.IPrintManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 458
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 459
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 460
    iget-object v2, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x7

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 452
    return-void

    #@2c
    .line 463
    :catchall_0
    move-exception v2

    #@2d
    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 463
    throw v2
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;II)V
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 415
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 417
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 418
    if-eqz p1, :cond_0

    #@10
    .line 419
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 420
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 425
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 426
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 427
    iget-object v2, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v3, 0x5

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 428
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 412
    return-void

    #@2f
    .line 423
    :cond_0
    const/4 v2, 0x0

    #@30
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 430
    :catchall_0
    move-exception v2

    #@35
    .line 431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 430
    throw v2
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V
    .locals 5
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    const/4 v2, 0x0

    #@1
    .line 522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 523
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 525
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.print.IPrintManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 526
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/print/IPrinterDiscoveryObserver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 527
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1b
    .line 528
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 529
    iget-object v2, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0xb

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 530
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 520
    return-void

    #@30
    .line 532
    :catchall_0
    move-exception v2

    #@31
    .line 533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 532
    throw v2
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;I)V
    .locals 5
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 572
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 574
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 575
    if-eqz p1, :cond_0

    #@10
    .line 576
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 577
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/print/PrinterId;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 582
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 583
    iget-object v2, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xe

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 584
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 569
    return-void

    #@2d
    .line 580
    :cond_0
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 586
    :catchall_0
    move-exception v2

    #@33
    .line 587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 586
    throw v2
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 5
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 540
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 542
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.print.IPrintManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 543
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/print/IPrinterDiscoveryObserver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 544
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 545
    iget-object v2, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xc

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 546
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 537
    return-void

    #@2d
    .line 548
    :catchall_0
    move-exception v2

    #@2e
    .line 549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 548
    throw v2
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;I)V
    .locals 5
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 594
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 596
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 597
    if-eqz p1, :cond_0

    #@10
    .line 598
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 599
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/print/PrinterId;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 604
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 605
    iget-object v2, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xf

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 606
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 591
    return-void

    #@2d
    .line 602
    :cond_0
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 608
    :catchall_0
    move-exception v2

    #@33
    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 608
    throw v2
.end method

.method public validatePrinters(Ljava/util/List;I)V
    .locals 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 555
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 556
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 558
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@11
    .line 560
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 561
    iget-object v2, p0, Landroid/print/IPrintManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0xd

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 553
    return-void

    #@26
    .line 564
    :catchall_0
    move-exception v2

    #@27
    .line 565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 564
    throw v2
.end method

.class Landroid/print/IPrintSpooler$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPrintSpooler.java"

# interfaces
.implements Landroid/print/IPrintSpooler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpooler$Stub;
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
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 318
    iput-object p1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 316
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 322
    iget-object v0, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public clearCustomPrinterIconCache(Landroid/print/IPrintSpoolerCallbacks;I)V
    .locals 5
    .param p1, "callbacks"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 586
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintSpooler"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 587
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/print/IPrintSpoolerCallbacks;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 588
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 589
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v2, 0xb

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x1

    #@1d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 582
    return-void

    #@24
    .line 591
    :catchall_0
    move-exception v1

    #@25
    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 591
    throw v1
.end method

.method public createPrintJob(Landroid/print/PrintJobInfo;)V
    .locals 5
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 386
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.IPrintSpooler"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 387
    if-eqz p1, :cond_0

    #@c
    .line 388
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 389
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/print/PrintJobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 394
    :goto_0
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x4

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 382
    return-void

    #@20
    .line 392
    :cond_0
    const/4 v1, 0x0

    #@21
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 396
    :catchall_0
    move-exception v1

    #@26
    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 396
    throw v1
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;Landroid/print/IPrintSpoolerCallbacks;I)V
    .locals 5
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "callbacks"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p3, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 560
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintSpooler"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 561
    if-eqz p1, :cond_1

    #@d
    .line 562
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 563
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/print/PrinterId;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 568
    :goto_0
    if-eqz p2, :cond_0

    #@17
    invoke-interface {p2}, Landroid/print/IPrintSpoolerCallbacks;->asBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v1

    #@1b
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1e
    .line 569
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 570
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v2, 0xa

    #@25
    const/4 v3, 0x0

    #@26
    const/4 v4, 0x1

    #@27
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 556
    return-void

    #@2e
    .line 566
    :cond_1
    const/4 v2, 0x0

    #@2f
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 572
    :catchall_0
    move-exception v1

    #@34
    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 572
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 326
    const-string/jumbo v0, "android.print.IPrintSpooler"

    #@3
    return-object v0
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;Landroid/print/IPrintSpoolerCallbacks;II)V
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "callback"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p3, "appId"    # I
    .param p4, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 365
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintSpooler"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 366
    if-eqz p1, :cond_1

    #@d
    .line 367
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 368
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 373
    :goto_0
    if-eqz p2, :cond_0

    #@17
    invoke-interface {p2}, Landroid/print/IPrintSpoolerCallbacks;->asBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v1

    #@1b
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1e
    .line 374
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 375
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 376
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/4 v2, 0x3

    #@27
    const/4 v3, 0x0

    #@28
    const/4 v4, 0x1

    #@29
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 361
    return-void

    #@30
    .line 371
    :cond_1
    const/4 v2, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 378
    :catchall_0
    move-exception v1

    #@36
    .line 379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 378
    throw v1
.end method

.method public getPrintJobInfos(Landroid/print/IPrintSpoolerCallbacks;Landroid/content/ComponentName;III)V
    .locals 5
    .param p1, "callback"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "state"    # I
    .param p4, "appId"    # I
    .param p5, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 343
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintSpooler"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 344
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/print/IPrintSpoolerCallbacks;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 345
    if-eqz p2, :cond_1

    #@16
    .line 346
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 347
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 352
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 353
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 354
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 355
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v2, 0x2

    #@2a
    const/4 v3, 0x0

    #@2b
    const/4 v4, 0x1

    #@2c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 339
    return-void

    #@33
    .line 350
    :cond_1
    const/4 v1, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 357
    :catchall_0
    move-exception v1

    #@39
    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 357
    throw v1
.end method

.method public onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;Landroid/print/IPrintSpoolerCallbacks;I)V
    .locals 5
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "callbacks"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p4, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 524
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintSpooler"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 525
    if-eqz p1, :cond_1

    #@d
    .line 526
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 527
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/print/PrinterId;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 532
    :goto_0
    if-eqz p2, :cond_2

    #@17
    .line 533
    const/4 v2, 0x1

    #@18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 534
    const/4 v2, 0x0

    #@1c
    invoke-virtual {p2, v0, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f
    .line 539
    :goto_1
    if-eqz p3, :cond_0

    #@21
    invoke-interface {p3}, Landroid/print/IPrintSpoolerCallbacks;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v1

    #@25
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@28
    .line 540
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 541
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/16 v2, 0x9

    #@2f
    const/4 v3, 0x0

    #@30
    const/4 v4, 0x1

    #@31
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 520
    return-void

    #@38
    .line 530
    :cond_1
    const/4 v2, 0x0

    #@39
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 543
    :catchall_0
    move-exception v1

    #@3e
    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 543
    throw v1

    #@42
    .line 537
    :cond_2
    const/4 v2, 0x0

    #@43
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    goto :goto_1
.end method

.method public pruneApprovedPrintServices(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 679
    .local p1, "servicesToKeep":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 681
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.IPrintSpooler"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 682
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@d
    .line 683
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x10

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 677
    return-void

    #@1a
    .line 685
    :catchall_0
    move-exception v1

    #@1b
    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 685
    throw v1
.end method

.method public removeObsoletePrintJobs()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 332
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.IPrintSpooler"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 333
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x1

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 328
    return-void

    #@16
    .line 335
    :catchall_0
    move-exception v1

    #@17
    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 335
    throw v1
.end method

.method public setClient(Landroid/print/IPrintSpoolerClient;)V
    .locals 5
    .param p1, "client"    # Landroid/print/IPrintSpoolerClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 645
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintSpooler"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 646
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/print/IPrintSpoolerClient;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 647
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0xe

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 641
    return-void

    #@21
    .line 649
    :catchall_0
    move-exception v1

    #@22
    .line 650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 649
    throw v1
.end method

.method public setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "cancelling"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 657
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.print.IPrintSpooler"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 658
    if-eqz p1, :cond_0

    #@e
    .line 659
    const/4 v3, 0x1

    #@f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 660
    const/4 v3, 0x0

    #@13
    invoke-virtual {p1, v0, v3}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    .line 665
    :goto_0
    if-eqz p2, :cond_1

    #@18
    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 666
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v2, 0xf

    #@1f
    const/4 v3, 0x0

    #@20
    const/4 v4, 0x1

    #@21
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 653
    return-void

    #@28
    .line 663
    :cond_0
    const/4 v3, 0x0

    #@29
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 668
    :catchall_0
    move-exception v1

    #@2e
    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 668
    throw v1

    #@32
    :cond_1
    move v1, v2

    #@33
    .line 665
    goto :goto_1
.end method

.method public setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # I
    .param p3, "stateReason"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p5, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 404
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintSpooler"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 405
    if-eqz p1, :cond_1

    #@d
    .line 406
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 407
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 412
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 413
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 414
    if-eqz p4, :cond_0

    #@1d
    invoke-interface {p4}, Landroid/print/IPrintSpoolerCallbacks;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v1

    #@21
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 415
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 416
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v2, 0x5

    #@2a
    const/4 v3, 0x0

    #@2b
    const/4 v4, 0x1

    #@2c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 400
    return-void

    #@33
    .line 410
    :cond_1
    const/4 v2, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 418
    :catchall_0
    move-exception v1

    #@39
    .line 419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 418
    throw v1
.end method

.method public setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p4, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 599
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintSpooler"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 600
    if-eqz p1, :cond_1

    #@d
    .line 601
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 602
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 607
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 608
    if-eqz p3, :cond_0

    #@1a
    invoke-interface {p3}, Landroid/print/IPrintSpoolerCallbacks;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v1

    #@1e
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 609
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 610
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/16 v2, 0xc

    #@28
    const/4 v3, 0x0

    #@29
    const/4 v4, 0x1

    #@2a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 595
    return-void

    #@31
    .line 605
    :cond_1
    const/4 v2, 0x0

    #@32
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 612
    :catchall_0
    move-exception v1

    #@37
    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 612
    throw v1
.end method

.method public setProgress(Landroid/print/PrintJobId;F)V
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "progress"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 432
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.IPrintSpooler"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 433
    if-eqz p1, :cond_0

    #@c
    .line 434
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 435
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 440
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@17
    .line 441
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x6

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 428
    return-void

    #@23
    .line 438
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 443
    :catchall_0
    move-exception v1

    #@29
    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 443
    throw v1
.end method

.method public setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 457
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.IPrintSpooler"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 458
    if-eqz p1, :cond_0

    #@c
    .line 459
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 460
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 465
    :goto_0
    if-eqz p2, :cond_1

    #@16
    .line 466
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 467
    const/4 v1, 0x0

    #@1b
    invoke-static {p2, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@1e
    .line 472
    :goto_1
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v2, 0x7

    #@21
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x1

    #@23
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 453
    return-void

    #@2a
    .line 463
    :cond_0
    const/4 v1, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 474
    :catchall_0
    move-exception v1

    #@30
    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 474
    throw v1

    #@34
    .line 470
    :cond_1
    const/4 v1, 0x0

    #@35
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    goto :goto_1
.end method

.method public setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # I
    .param p3, "appPackageName"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 489
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.IPrintSpooler"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 490
    if-eqz p1, :cond_0

    #@c
    .line 491
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 492
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 497
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 498
    if-eqz p3, :cond_1

    #@19
    .line 499
    const/4 v1, 0x1

    #@1a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 500
    const/4 v1, 0x0

    #@1e
    invoke-static {p3, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@21
    .line 505
    :goto_1
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v2, 0x8

    #@25
    const/4 v3, 0x0

    #@26
    const/4 v4, 0x1

    #@27
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 485
    return-void

    #@2e
    .line 495
    :cond_0
    const/4 v1, 0x0

    #@2f
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 507
    :catchall_0
    move-exception v1

    #@34
    .line 508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 507
    throw v1

    #@38
    .line 503
    :cond_1
    const/4 v1, 0x0

    #@39
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    goto :goto_1
.end method

.method public writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "printJobId"    # Landroid/print/PrintJobId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 620
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.IPrintSpooler"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 621
    if-eqz p1, :cond_0

    #@c
    .line 622
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 623
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 628
    :goto_0
    if-eqz p2, :cond_1

    #@16
    .line 629
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 630
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 635
    :goto_1
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v2, 0xd

    #@22
    const/4 v3, 0x0

    #@23
    const/4 v4, 0x1

    #@24
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 616
    return-void

    #@2b
    .line 626
    :cond_0
    const/4 v1, 0x0

    #@2c
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 637
    :catchall_0
    move-exception v1

    #@31
    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 637
    throw v1

    #@35
    .line 633
    :cond_1
    const/4 v1, 0x0

    #@36
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    goto :goto_1
.end method

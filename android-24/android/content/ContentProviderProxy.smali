.class final Landroid/content/ContentProviderProxy;
.super Ljava/lang/Object;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 378
    iput-object p1, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 376
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    #@0
    .prologue
    .line 509
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 510
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v3

    #@8
    .line 512
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.content.IContentProvider"

    #@b
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 513
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 514
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v5

    #@15
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 515
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v2

    #@1c
    .local v2, "operation$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_0

    #@22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroid/content/ContentProviderOperation;

    #@28
    .line 516
    .local v1, "operation":Landroid/content/ContentProviderOperation;
    const/4 v5, 0x0

    #@29
    invoke-virtual {v1, v0, v5}, Landroid/content/ContentProviderOperation;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 524
    .end local v1    # "operation":Landroid/content/ContentProviderOperation;
    .end local v2    # "operation$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@2e
    .line 525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 526
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 524
    throw v5

    #@35
    .line 518
    .restart local v2    # "operation$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v5, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@37
    const/16 v6, 0x14

    #@39
    const/4 v7, 0x0

    #@3a
    invoke-interface {v5, v6, v0, v3, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3d
    .line 520
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V

    #@40
    .line 522
    sget-object v5, Landroid/content/ContentProviderResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@42
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@45
    move-result-object v4

    #@46
    check-cast v4, [Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    .line 525
    .local v4, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 526
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 523
    return-object v4
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 487
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 489
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentProvider"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 491
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 492
    const/4 v3, 0x0

    #@12
    invoke-virtual {p2, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 493
    const/4 v3, 0x0

    #@16
    invoke-virtual {v1, p3, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@19
    .line 495
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@1b
    const/16 v4, 0xd

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    .line 497
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    #@24
    .line 498
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result v0

    #@28
    .line 501
    .local v0, "count":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 502
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 499
    return v0

    #@2f
    .line 500
    .end local v0    # "count":I
    :catchall_0
    move-exception v3

    #@30
    .line 501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 502
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 500
    throw v3
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "request"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 634
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 635
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 637
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentProvider"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 639
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 640
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 641
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 642
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@1a
    .line 644
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v4, 0x15

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 646
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    #@25
    .line 647
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v0

    #@29
    .line 650
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 651
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 648
    return-object v0

    #@30
    .line 649
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    #@31
    .line 650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 651
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 649
    throw v3
.end method

.method public canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 725
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 727
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentProvider"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 729
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 730
    const/4 v3, 0x0

    #@12
    invoke-virtual {p2, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 732
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0x19

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 734
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    #@20
    .line 735
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 738
    .local v1, "out":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 739
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 736
    return-object v1

    #@2f
    .line 737
    .end local v1    # "out":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    #@30
    .line 738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 739
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 737
    throw v3
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 705
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 707
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentProvider"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 709
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x18

    #@12
    .line 710
    const/4 v5, 0x0

    #@13
    .line 709
    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 712
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    #@19
    .line 714
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v3

    #@1d
    .line 713
    invoke-static {v3}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-object v0

    #@21
    .line 717
    .local v0, "cancellationSignal":Landroid/os/ICancellationSignal;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 718
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 715
    return-object v0

    #@28
    .line 716
    .end local v0    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :catchall_0
    move-exception v3

    #@29
    .line 717
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 718
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 716
    throw v3
.end method

.method public delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 533
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 535
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentProvider"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 537
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 538
    const/4 v3, 0x0

    #@12
    invoke-virtual {p2, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 539
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 540
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1b
    .line 542
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x4

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 544
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    #@25
    .line 545
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v0

    #@29
    .line 548
    .local v0, "count":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 549
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 546
    return v0

    #@30
    .line 547
    .end local v0    # "count":I
    :catchall_0
    move-exception v3

    #@31
    .line 548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 549
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 547
    throw v3
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 658
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 660
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentProvider"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 662
    const/4 v3, 0x0

    #@f
    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 663
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 665
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0x16

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 667
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    #@20
    .line 668
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v1

    #@24
    .line 671
    .local v1, "out":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 672
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 669
    return-object v1

    #@2b
    .line 670
    .end local v1    # "out":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@2c
    .line 671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 672
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 670
    throw v3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 446
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 448
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentProvider"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 450
    const/4 v3, 0x0

    #@f
    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 452
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/4 v4, 0x2

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 454
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    #@1c
    .line 455
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v1

    #@20
    .line 458
    .local v1, "out":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 459
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 456
    return-object v1

    #@27
    .line 457
    .end local v1    # "out":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@28
    .line 458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 459
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 457
    throw v3
.end method

.method public insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 466
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 468
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentProvider"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 470
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 471
    const/4 v3, 0x0

    #@12
    invoke-virtual {p2, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 472
    const/4 v3, 0x0

    #@16
    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 474
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@1b
    const/4 v4, 0x3

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 476
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    #@23
    .line 477
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@25
    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 480
    .local v1, "out":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 481
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 478
    return-object v1

    #@32
    .line 479
    .end local v1    # "out":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    #@33
    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 481
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 479
    throw v3
.end method

.method public openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 610
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v3

    #@9
    .line 612
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.content.IContentProvider"

    #@c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 614
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 615
    const/4 v5, 0x0

    #@13
    invoke-virtual {p2, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    .line 616
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 617
    if-eqz p4, :cond_0

    #@1b
    invoke-interface {p4}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v4

    #@1f
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@22
    .line 619
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v5, 0xf

    #@26
    const/4 v6, 0x0

    #@27
    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 621
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    #@2d
    .line 622
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v2

    #@31
    .line 623
    .local v2, "has":I
    if-eqz v2, :cond_1

    #@33
    .line 624
    sget-object v4, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@35
    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    .line 627
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 628
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 625
    return-object v1

    #@42
    .line 624
    :cond_1
    const/4 v1, 0x0

    #@43
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    goto :goto_0

    #@44
    .line 626
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "has":I
    :catchall_0
    move-exception v4

    #@45
    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 628
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 626
    throw v4
.end method

.method public openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .param p5, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 582
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v3

    #@9
    .line 584
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.content.IContentProvider"

    #@c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 586
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 587
    const/4 v5, 0x0

    #@13
    invoke-virtual {p2, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    .line 588
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 589
    if-eqz p4, :cond_0

    #@1b
    invoke-interface {p4}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v4

    #@1f
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@22
    .line 590
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@25
    .line 592
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v5, 0xe

    #@29
    const/4 v6, 0x0

    #@2a
    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 594
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    #@30
    .line 595
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v2

    #@34
    .line 596
    .local v2, "has":I
    if-eqz v2, :cond_1

    #@36
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38
    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 600
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 601
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 598
    return-object v1

    #@45
    .line 597
    :cond_1
    const/4 v1, 0x0

    #@46
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    #@47
    .line 599
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "has":I
    :catchall_0
    move-exception v4

    #@48
    .line 600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 601
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 599
    throw v4
.end method

.method public openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 680
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v3

    #@9
    .line 682
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.content.IContentProvider"

    #@c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 684
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 685
    const/4 v5, 0x0

    #@13
    invoke-virtual {p2, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    .line 686
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 687
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@1c
    .line 688
    if-eqz p5, :cond_0

    #@1e
    invoke-interface {p5}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    #@21
    move-result-object v4

    #@22
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@25
    .line 690
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v5, 0x17

    #@29
    const/4 v6, 0x0

    #@2a
    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 692
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    #@30
    .line 693
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v2

    #@34
    .line 694
    .local v2, "has":I
    if-eqz v2, :cond_1

    #@36
    .line 695
    sget-object v4, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38
    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 698
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 699
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 696
    return-object v1

    #@45
    .line 695
    :cond_1
    const/4 v1, 0x0

    #@46
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    goto :goto_0

    #@47
    .line 697
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "has":I
    :catchall_0
    move-exception v4

    #@48
    .line 698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 699
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 697
    throw v4
.end method

.method public query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 12
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 389
    new-instance v1, Landroid/database/BulkCursorToCursorAdaptor;

    #@2
    invoke-direct {v1}, Landroid/database/BulkCursorToCursorAdaptor;-><init>()V

    #@5
    .line 390
    .local v1, "adaptor":Landroid/database/BulkCursorToCursorAdaptor;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v3

    #@9
    .line 391
    .local v3, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@c
    move-result-object v8

    #@d
    .line 393
    .local v8, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v9, "android.content.IContentProvider"

    #@10
    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@13
    .line 395
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 396
    const/4 v9, 0x0

    #@17
    invoke-virtual {p2, v3, v9}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 397
    const/4 v7, 0x0

    #@1b
    .line 398
    .local v7, "length":I
    if-eqz p3, :cond_0

    #@1d
    .line 399
    array-length v7, p3

    #@1e
    .line 401
    :cond_0
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 402
    const/4 v6, 0x0

    #@22
    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_1

    #@24
    .line 403
    aget-object v9, p3, v6

    #@26
    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@29
    .line 402
    add-int/lit8 v6, v6, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 405
    :cond_1
    move-object/from16 v0, p4

    #@2e
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@31
    .line 406
    if-eqz p5, :cond_2

    #@33
    .line 407
    move-object/from16 v0, p5

    #@35
    array-length v7, v0

    #@36
    .line 411
    :goto_1
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 412
    const/4 v6, 0x0

    #@3a
    :goto_2
    if-ge v6, v7, :cond_3

    #@3c
    .line 413
    aget-object v9, p5, v6

    #@3e
    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@41
    .line 412
    add-int/lit8 v6, v6, 0x1

    #@43
    goto :goto_2

    #@44
    .line 409
    :cond_2
    const/4 v7, 0x0

    #@45
    goto :goto_1

    #@46
    .line 415
    :cond_3
    move-object/from16 v0, p6

    #@48
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4b
    .line 416
    invoke-virtual {v1}, Landroid/database/BulkCursorToCursorAdaptor;->getObserver()Landroid/database/IContentObserver;

    #@4e
    move-result-object v9

    #@4f
    invoke-interface {v9}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@52
    move-result-object v9

    #@53
    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@56
    .line 417
    if-eqz p7, :cond_4

    #@58
    invoke-interface/range {p7 .. p7}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    #@5b
    move-result-object v9

    #@5c
    :goto_3
    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@5f
    .line 419
    iget-object v9, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@61
    const/4 v10, 0x1

    #@62
    const/4 v11, 0x0

    #@63
    invoke-interface {v9, v10, v3, v8, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@66
    .line 421
    invoke-static {v8}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    #@69
    .line 423
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    #@6c
    move-result v9

    #@6d
    if-eqz v9, :cond_5

    #@6f
    .line 424
    sget-object v9, Landroid/database/BulkCursorDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@71
    invoke-interface {v9, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@74
    move-result-object v2

    #@75
    check-cast v2, Landroid/database/BulkCursorDescriptor;

    #@77
    .line 425
    .local v2, "d":Landroid/database/BulkCursorDescriptor;
    invoke-virtual {v1, v2}, Landroid/database/BulkCursorToCursorAdaptor;->initialize(Landroid/database/BulkCursorDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7a
    .line 438
    .end local v1    # "adaptor":Landroid/database/BulkCursorToCursorAdaptor;
    .end local v2    # "d":Landroid/database/BulkCursorDescriptor;
    :goto_4
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@7d
    .line 439
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    #@80
    .line 430
    return-object v1

    #@81
    .line 417
    .restart local v1    # "adaptor":Landroid/database/BulkCursorToCursorAdaptor;
    :cond_4
    const/4 v9, 0x0

    #@82
    goto :goto_3

    #@83
    .line 427
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Landroid/database/BulkCursorToCursorAdaptor;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@86
    .line 428
    const/4 v1, 0x0

    #@87
    .local v1, "adaptor":Landroid/database/BulkCursorToCursorAdaptor;
    goto :goto_4

    #@88
    .line 434
    .end local v6    # "i":I
    .end local v7    # "length":I
    .local v1, "adaptor":Landroid/database/BulkCursorToCursorAdaptor;
    :catch_0
    move-exception v5

    #@89
    .line 435
    .local v5, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v1}, Landroid/database/BulkCursorToCursorAdaptor;->close()V

    #@8c
    .line 436
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8d
    .line 437
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v9

    #@8e
    .line 438
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@91
    .line 439
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    #@94
    .line 437
    throw v9

    #@95
    .line 431
    :catch_1
    move-exception v4

    #@96
    .line 432
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/database/BulkCursorToCursorAdaptor;->close()V

    #@99
    .line 433
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 745
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 747
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentProvider"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 749
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 750
    const/4 v3, 0x0

    #@12
    invoke-virtual {p2, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 752
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0x1a

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 754
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    #@20
    .line 755
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 758
    .local v1, "out":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 759
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 756
    return-object v1

    #@2f
    .line 757
    .end local v1    # "out":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    #@30
    .line 758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 759
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 757
    throw v3
.end method

.method public update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 556
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 558
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentProvider"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 560
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 561
    const/4 v3, 0x0

    #@12
    invoke-virtual {p2, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 562
    const/4 v3, 0x0

    #@16
    invoke-virtual {p3, v1, v3}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 563
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 564
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1f
    .line 566
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/16 v4, 0xa

    #@23
    const/4 v5, 0x0

    #@24
    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    .line 568
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    #@2a
    .line 569
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result v0

    #@2e
    .line 572
    .local v0, "count":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 573
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 570
    return v0

    #@35
    .line 571
    .end local v0    # "count":I
    :catchall_0
    move-exception v3

    #@36
    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 573
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 571
    throw v3
.end method

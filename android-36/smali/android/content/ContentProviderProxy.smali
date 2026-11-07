.class final Landroid/content/ContentProviderProxy;
.super Ljava/lang/Object;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# instance fields
.field private greylist mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p1, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    .line 459
    return-void
.end method


# virtual methods
.method public blacklist applyBatch(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 9
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
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

    .line 625
    .local p3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 626
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 628
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 629
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 630
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentProviderOperation;

    .line 633
    .local v4, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v4, v0, v2}, Landroid/content/ContentProviderOperation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 634
    .end local v4    # "operation":Landroid/content/ContentProviderOperation;
    goto :goto_1f

    .line 635
    :cond_2f
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 637
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V

    .line 638
    sget-object v2, Landroid/content/ContentProviderResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 639
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentProviderResult;
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_49

    .line 640
    .local v2, "results":[Landroid/content/ContentProviderResult;
    nop

    .line 642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 640
    return-object v2

    .line 642
    .end local v2    # "results":[Landroid/content/ContentProviderResult;
    :catchall_49
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 644
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 464
    iget-object v0, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 9
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 602
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 604
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 606
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 607
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 608
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 610
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 612
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 613
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 614
    .local v2, "count":I
    nop

    .line 616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 614
    return v2

    .line 616
    .end local v2    # "count":I
    :catchall_2d
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 618
    throw v2
.end method

.method public blacklist call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "request"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 752
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 754
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 756
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 757
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 762
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 764
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 765
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_33

    .line 766
    .local v2, "bundle":Landroid/os/Bundle;
    nop

    .line 768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 766
    return-object v2

    .line 768
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catchall_33
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 770
    throw v2
.end method

.method public blacklist canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 8
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 849
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 851
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 853
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 854
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 856
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 858
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 859
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2e

    .line 860
    .local v2, "out":Landroid/net/Uri;
    nop

    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 860
    return-object v2

    .line 862
    .end local v2    # "out":Landroid/net/Uri;
    :catchall_2e
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 864
    throw v2
.end method

.method public blacklist canonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 9
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 872
    .local v0, "data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.content.IContentProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 874
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 875
    invoke-virtual {p2, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 876
    invoke-virtual {p3, v0, v1}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    .line 878
    iget-object v1, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1e

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_21

    .line 881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 882
    nop

    .line 883
    return-void

    .line 881
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 882
    throw v1
.end method

.method public blacklist checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I
    .registers 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 953
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 955
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 957
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 958
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 959
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 962
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 964
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 965
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    return v2

    .line 967
    :catchall_2f
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    throw v2
.end method

.method public blacklist createCancellationSignal()Landroid/os/ICancellationSignal;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 828
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 830
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 832
    iget-object v2, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 835
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 836
    nop

    .line 837
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 836
    invoke-static {v2}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v2
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_29

    .line 838
    .local v2, "cancellationSignal":Landroid/os/ICancellationSignal;
    nop

    .line 840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 838
    return-object v2

    .line 840
    .end local v2    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :catchall_29
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 842
    throw v2
.end method

.method public blacklist delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I
    .registers 9
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 651
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 653
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 655
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 656
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 657
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 659
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 661
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 662
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2c

    .line 663
    .local v2, "count":I
    nop

    .line 665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 663
    return v2

    .line 665
    .end local v2    # "count":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 667
    throw v2
.end method

.method public blacklist getStreamTypes(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mimeTypeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 778
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 780
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 781
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 783
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 784
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 786
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 788
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 789
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 790
    .local v2, "out":[Ljava/lang/String;
    nop

    .line 792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 790
    return-object v2

    .line 792
    .end local v2    # "out":[Ljava/lang/String;
    :catchall_2d
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 794
    throw v2
.end method

.method public blacklist getType(Landroid/content/AttributionSource;Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 522
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 524
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 525
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 526
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 528
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 530
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_29

    .line 532
    .local v2, "out":Ljava/lang/String;
    nop

    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    return-object v2

    .line 534
    .end local v2    # "out":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 536
    throw v2
.end method

.method public blacklist getTypeAnonymousAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 561
    .local v0, "data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.content.IContentProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 563
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 564
    invoke-virtual {p2, v0, v1}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    .line 566
    iget-object v1, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1e

    .line 569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 570
    nop

    .line 571
    return-void

    .line 569
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 570
    throw v1
.end method

.method public blacklist getTypeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 9
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 544
    .local v0, "data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.content.IContentProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 545
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 546
    invoke-virtual {p2, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 547
    invoke-virtual {p3, v0, v1}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    .line 549
    iget-object v1, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1d

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_21

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 553
    nop

    .line 554
    return-void

    .line 552
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 553
    throw v1
.end method

.method public blacklist insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 578
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 580
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 582
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 583
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 584
    invoke-virtual {p3, v0, v2}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 585
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 587
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 589
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 590
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_33

    .line 591
    .local v2, "out":Landroid/net/Uri;
    nop

    .line 593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 594
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    return-object v2

    .line 593
    .end local v2    # "out":Landroid/net/Uri;
    :catchall_33
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 594
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 595
    throw v2
.end method

.method public blacklist openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 11
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 726
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 728
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 730
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 731
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 732
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 733
    const/4 v3, 0x0

    if-eqz p4, :cond_1f

    invoke-interface {p4}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_20

    :cond_1f
    move-object v4, v3

    :goto_20
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 735
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xf

    invoke-interface {v4, v5, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 737
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 738
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 739
    .local v2, "has":I
    if-eqz v2, :cond_3b

    .line 740
    sget-object v3, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/AssetFileDescriptor;
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_44

    :cond_3b
    nop

    .line 741
    .local v3, "fd":Landroid/content/res/AssetFileDescriptor;
    nop

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 741
    return-object v3

    .line 743
    .end local v2    # "has":I
    .end local v3    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catchall_44
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 745
    throw v2
.end method

.method public blacklist openFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 699
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 701
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 703
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 704
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 705
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 706
    const/4 v3, 0x0

    if-eqz p4, :cond_1f

    invoke-interface {p4}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_20

    :cond_1f
    move-object v4, v3

    :goto_20
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 708
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    invoke-interface {v4, v5, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 710
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 711
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 712
    .local v2, "has":I
    if-eqz v2, :cond_3b

    .line 713
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_44

    :cond_3b
    nop

    .line 714
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 717
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 714
    return-object v3

    .line 716
    .end local v2    # "has":I
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_44
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 717
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 718
    throw v2
.end method

.method public blacklist openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 12
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
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

    .line 801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 802
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 804
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 806
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 807
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 808
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 810
    const/4 v3, 0x0

    if-eqz p5, :cond_22

    invoke-interface {p5}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_23

    :cond_22
    move-object v4, v3

    :goto_23
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 812
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x17

    invoke-interface {v4, v5, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 814
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 815
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 816
    .local v2, "has":I
    if-eqz v2, :cond_3e

    .line 817
    sget-object v3, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/AssetFileDescriptor;
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_47

    :cond_3e
    nop

    .line 818
    .local v3, "fd":Landroid/content/res/AssetFileDescriptor;
    nop

    .line 820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 818
    return-object v3

    .line 820
    .end local v2    # "has":I
    .end local v3    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catchall_47
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 822
    throw v2
.end method

.method public blacklist query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .registers 14
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "queryArgs"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    new-instance v0, Landroid/database/BulkCursorToCursorAdaptor;

    invoke-direct {v0}, Landroid/database/BulkCursorToCursorAdaptor;-><init>()V

    .line 473
    .local v0, "adaptor":Landroid/database/BulkCursorToCursorAdaptor;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 474
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 476
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_d
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 479
    invoke-virtual {p2, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 480
    const/4 v4, 0x0

    .line 481
    .local v4, "length":I
    if-eqz p3, :cond_1e

    .line 482
    array-length v5, p3

    move v4, v5

    .line 484
    :cond_1e
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_22
    if-ge v5, v4, :cond_2c

    .line 486
    aget-object v6, p3, v5

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 485
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 488
    .end local v5    # "i":I
    :cond_2c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 489
    invoke-virtual {v0}, Landroid/database/BulkCursorToCursorAdaptor;->getObserver()Landroid/database/IContentObserver;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 490
    nop

    .line 491
    const/4 v5, 0x0

    if-eqz p5, :cond_43

    invoke-interface {p5}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    goto :goto_44

    :cond_43
    move-object v6, v5

    .line 490
    :goto_44
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 493
    iget-object v6, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v7, 0x1

    invoke-interface {v6, v7, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 495
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 497
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_71

    .line 498
    sget-object v3, Landroid/database/BulkCursorDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/BulkCursorDescriptor;

    .line 499
    .local v3, "d":Landroid/database/BulkCursorDescriptor;
    iget-object v6, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    iget-object v7, v3, Landroid/database/BulkCursorDescriptor;->cursor:Landroid/database/IBulkCursor;

    if-eqz v7, :cond_6a

    iget-object v5, v3, Landroid/database/BulkCursorDescriptor;->cursor:Landroid/database/IBulkCursor;

    invoke-interface {v5}, Landroid/database/IBulkCursor;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_6a
    invoke-static {v6, v5}, Landroid/os/Binder;->copyAllowBlocking(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 500
    invoke-virtual {v0, v3}, Landroid/database/BulkCursorToCursorAdaptor;->initialize(Landroid/database/BulkCursorDescriptor;)V

    .line 501
    .end local v3    # "d":Landroid/database/BulkCursorDescriptor;
    goto :goto_75

    .line 502
    :cond_71
    invoke-virtual {v0}, Landroid/database/BulkCursorToCursorAdaptor;->close()V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_74} :catch_85
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_74} :catch_7f
    .catchall {:try_start_d .. :try_end_74} :catchall_7d

    .line 503
    const/4 v0, 0x0

    .line 505
    :goto_75
    nop

    .line 513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 505
    return-object v0

    .line 513
    .end local v4    # "length":I
    :catchall_7d
    move-exception v3

    goto :goto_8b

    .line 509
    :catch_7f
    move-exception v3

    .line 510
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_80
    invoke-virtual {v0}, Landroid/database/BulkCursorToCursorAdaptor;->close()V

    .line 511
    nop

    .end local v0    # "adaptor":Landroid/database/BulkCursorToCursorAdaptor;
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/content/ContentProviderProxy;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "url":Landroid/net/Uri;
    .end local p3    # "projection":[Ljava/lang/String;
    .end local p4    # "queryArgs":Landroid/os/Bundle;
    .end local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v3

    .line 506
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "adaptor":Landroid/database/BulkCursorToCursorAdaptor;
    .restart local v1    # "data":Landroid/os/Parcel;
    .restart local v2    # "reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/content/ContentProviderProxy;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "url":Landroid/net/Uri;
    .restart local p3    # "projection":[Ljava/lang/String;
    .restart local p4    # "queryArgs":Landroid/os/Bundle;
    .restart local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :catch_85
    move-exception v3

    .line 507
    .local v3, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/database/BulkCursorToCursorAdaptor;->close()V

    .line 508
    nop

    .end local v0    # "adaptor":Landroid/database/BulkCursorToCursorAdaptor;
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/content/ContentProviderProxy;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "url":Landroid/net/Uri;
    .end local p3    # "projection":[Ljava/lang/String;
    .end local p4    # "queryArgs":Landroid/os/Bundle;
    .end local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v3
    :try_end_8b
    .catchall {:try_start_80 .. :try_end_8b} :catchall_7d

    .line 513
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "adaptor":Landroid/database/BulkCursorToCursorAdaptor;
    .restart local v1    # "data":Landroid/os/Parcel;
    .restart local v2    # "reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/content/ContentProviderProxy;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "url":Landroid/net/Uri;
    .restart local p3    # "projection":[Ljava/lang/String;
    .restart local p4    # "queryArgs":Landroid/os/Bundle;
    .restart local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_8b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 515
    throw v3
.end method

.method public blacklist refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z
    .registers 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 928
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 929
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 931
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 933
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 934
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 935
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 936
    if-eqz p4, :cond_1e

    invoke-interface {p4}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 938
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 940
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 941
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_3a

    .line 942
    .local v3, "success":I
    if-nez v3, :cond_33

    const/4 v2, 0x1

    .line 944
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 942
    return v2

    .line 944
    .end local v3    # "success":I
    :catchall_3a
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 946
    throw v2
.end method

.method public blacklist uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 8
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 889
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 891
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 893
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 894
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 896
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 898
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 899
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2e

    .line 900
    .local v2, "out":Landroid/net/Uri;
    nop

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 903
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 900
    return-object v2

    .line 902
    .end local v2    # "out":Landroid/net/Uri;
    :catchall_2e
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 903
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 904
    throw v2
.end method

.method public blacklist uncanonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 9
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 912
    .local v0, "data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.content.IContentProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 914
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 915
    invoke-virtual {p2, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 916
    invoke-virtual {p3, v0, v1}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    .line 918
    iget-object v1, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_21

    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 922
    nop

    .line 923
    return-void

    .line 921
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 922
    throw v1
.end method

.method public blacklist update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .registers 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 674
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 676
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 678
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 679
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 680
    invoke-virtual {p3, v0, v2}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 681
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 683
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 685
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 686
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    .line 687
    .local v2, "count":I
    nop

    .line 689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 687
    return v2

    .line 689
    .end local v2    # "count":I
    :catchall_30
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    throw v2
.end method

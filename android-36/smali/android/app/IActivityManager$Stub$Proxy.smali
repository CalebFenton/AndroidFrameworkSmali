.class Landroid/app/IActivityManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IActivityManager.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 5748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5749
    iput-object p1, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 5750
    return-void
.end method


# virtual methods
.method public blacklist addApplicationStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/app/IApplicationStartInfoCompleteListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9975
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9976
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9978
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9979
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9980
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9981
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9982
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9985
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9987
    nop

    .line 9988
    return-void

    .line 9985
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9987
    throw v2
.end method

.method public greylist-max-o addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "target"    # Landroid/app/IApplicationThread;
    .param p2, "results"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6684
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6685
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6687
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6688
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6689
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6690
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6691
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6694
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6696
    nop

    .line 6697
    return-void

    .line 6694
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6696
    throw v2
.end method

.method public blacklist addOverridePermissionState(IILjava/lang/String;I)V
    .registers 10
    .param p1, "originatingUid"    # I
    .param p2, "uid"    # I
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10786
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10789
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10790
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10791
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10792
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10793
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10794
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x106

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10795
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 10798
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10800
    nop

    .line 10801
    return-void

    .line 10798
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10800
    throw v2
.end method

.method public greylist-max-o addPackageDependency(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7667
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7668
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7670
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7671
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7672
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7673
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 7676
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7678
    nop

    .line 7679
    return-void

    .line 7676
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7678
    throw v2
.end method

.method public blacklist addStartInfoTimestamp(IJI)V
    .registers 10
    .param p1, "key"    # I
    .param p2, "timestampNs"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10022
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10023
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10025
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10026
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10027
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 10028
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10029
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10030
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 10033
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10035
    nop

    .line 10036
    return-void

    .line 10033
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10035
    throw v2
.end method

.method public blacklist addUidToObserver(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 9
    .param p1, "observerToken"    # Landroid/os/IBinder;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5862
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5863
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5865
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5866
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5867
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5868
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5869
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5870
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 5873
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5875
    nop

    .line 5876
    return-void

    .line 5873
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5875
    throw v2
.end method

.method public blacklist appNotResponding(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9916
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9917
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9919
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9920
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9921
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9922
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9925
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9927
    nop

    .line 9928
    return-void

    .line 9925
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9927
    throw v2
.end method

.method public greylist-max-o appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "connection"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8983
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8984
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8986
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8987
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8988
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xac

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8989
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 8992
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8994
    nop

    .line 8995
    return-void

    .line 8992
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8994
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 5753
    iget-object v0, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o attachApplication(Landroid/app/IApplicationThread;J)V
    .registers 9
    .param p1, "app"    # Landroid/app/IApplicationThread;
    .param p2, "startSeq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6298
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6299
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6301
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6302
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6303
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 6304
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6305
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6308
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6310
    nop

    .line 6311
    return-void

    .line 6308
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6310
    throw v2
.end method

.method public blacklist backgroundAllowlistUid(I)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9773
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9774
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9776
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9777
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9778
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9779
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9782
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9784
    nop

    .line 9785
    return-void

    .line 9782
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9784
    throw v2
.end method

.method public blacklist backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/os/IBinder;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7611
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7612
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7614
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7615
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7616
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7617
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7618
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7619
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 7622
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7624
    nop

    .line 7625
    return-void

    .line 7622
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7624
    throw v2
.end method

.method public blacklist bindBackupAgent(Ljava/lang/String;IIIZ)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "backupRestoreMode"    # I
    .param p3, "targetUserId"    # I
    .param p4, "backupDestination"    # I
    .param p5, "useRestrictedMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7589
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7590
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7593
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7594
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7595
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7596
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7597
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7598
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7599
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7600
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7601
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 7604
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7606
    nop

    .line 7607
    return v3

    .line 7604
    .end local v3    # "_result":Z
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7606
    throw v2
.end method

.method public blacklist bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;I)I
    .registers 15
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # J
    .param p8, "callingPackage"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6508
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6509
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6512
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6513
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6514
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6515
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6516
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6517
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6518
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 6519
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6520
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 6521
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6522
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6523
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_41

    .line 6526
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6528
    nop

    .line 6529
    return v3

    .line 6526
    .end local v3    # "_result":I
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6528
    throw v2
.end method

.method public blacklist bindServiceInstance(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;Ljava/lang/String;I)I
    .registers 16
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # J
    .param p8, "instanceName"    # Ljava/lang/String;
    .param p9, "callingPackage"    # Ljava/lang/String;
    .param p10, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6533
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6534
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6537
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6538
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6539
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6540
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6541
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6542
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6543
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 6544
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6545
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6546
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeInt(I)V

    .line 6547
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6548
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6549
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_44

    .line 6552
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6554
    nop

    .line 6555
    return v3

    .line 6552
    .end local v3    # "_result":I
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6554
    throw v2
.end method

.method public greylist-max-o bootAnimationComplete()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9151
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9152
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9154
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9155
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9156
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 9159
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9161
    nop

    .line 9162
    return-void

    .line 9159
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9161
    throw v2
.end method

.method public greylist-max-o broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    .registers 30
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p5, "resultCode"    # I
    .param p6, "resultData"    # Ljava/lang/String;
    .param p7, "map"    # Landroid/os/Bundle;
    .param p8, "requiredPermissions"    # [Ljava/lang/String;
    .param p9, "appOp"    # I
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "serialized"    # Z
    .param p12, "sticky"    # Z
    .param p13, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6201
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 6202
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 6205
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6206
    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6207
    const/4 v0, 0x0

    move-object/from16 v4, p2

    invoke-virtual {v1, v4, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_83

    .line 6208
    move-object/from16 v5, p3

    :try_start_1e
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_81

    .line 6209
    move-object/from16 v6, p4

    :try_start_23
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_7f

    .line 6210
    move/from16 v7, p5

    :try_start_28
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_7d

    .line 6211
    move-object/from16 v8, p6

    :try_start_2d
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_7b

    .line 6212
    move-object/from16 v9, p7

    :try_start_32
    invoke-virtual {v1, v9, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_79

    .line 6213
    move-object/from16 v10, p8

    :try_start_37
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_77

    .line 6214
    move/from16 v11, p9

    :try_start_3c
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_75

    .line 6215
    move-object/from16 v12, p10

    :try_start_41
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_73

    .line 6216
    move/from16 v13, p11

    :try_start_46
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_71

    .line 6217
    move/from16 v14, p12

    :try_start_4b
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_6f

    .line 6218
    move/from16 v15, p13

    :try_start_50
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 6219
    move-object/from16 v3, p0

    iget-object v0, v3, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 6220
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 6221
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_65
    .catchall {:try_start_50 .. :try_end_65} :catchall_6d

    .line 6224
    .end local v0    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 6225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6226
    nop

    .line 6227
    return v3

    .line 6224
    .end local v3    # "_result":I
    :catchall_6d
    move-exception v0

    goto :goto_9a

    :catchall_6f
    move-exception v0

    goto :goto_98

    :catchall_71
    move-exception v0

    goto :goto_96

    :catchall_73
    move-exception v0

    goto :goto_94

    :catchall_75
    move-exception v0

    goto :goto_92

    :catchall_77
    move-exception v0

    goto :goto_90

    :catchall_79
    move-exception v0

    goto :goto_8e

    :catchall_7b
    move-exception v0

    goto :goto_8c

    :catchall_7d
    move-exception v0

    goto :goto_8a

    :catchall_7f
    move-exception v0

    goto :goto_88

    :catchall_81
    move-exception v0

    goto :goto_86

    :catchall_83
    move-exception v0

    move-object/from16 v5, p3

    :goto_86
    move-object/from16 v6, p4

    :goto_88
    move/from16 v7, p5

    :goto_8a
    move-object/from16 v8, p6

    :goto_8c
    move-object/from16 v9, p7

    :goto_8e
    move-object/from16 v10, p8

    :goto_90
    move/from16 v11, p9

    :goto_92
    move-object/from16 v12, p10

    :goto_94
    move/from16 v13, p11

    :goto_96
    move/from16 v14, p12

    :goto_98
    move/from16 v15, p13

    :goto_9a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 6225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6226
    throw v0
.end method

.method public blacklist broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    .registers 33
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p6, "resultCode"    # I
    .param p7, "resultData"    # Ljava/lang/String;
    .param p8, "map"    # Landroid/os/Bundle;
    .param p9, "requiredPermissions"    # [Ljava/lang/String;
    .param p10, "excludePermissions"    # [Ljava/lang/String;
    .param p11, "excludePackages"    # [Ljava/lang/String;
    .param p12, "appOp"    # I
    .param p13, "options"    # Landroid/os/Bundle;
    .param p14, "serialized"    # Z
    .param p15, "sticky"    # Z
    .param p16, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6231
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 6232
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 6235
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6236
    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6237
    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_92

    .line 6238
    const/4 v0, 0x0

    move-object/from16 v5, p3

    :try_start_1e
    invoke-virtual {v1, v5, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_90

    .line 6239
    move-object/from16 v6, p4

    :try_start_23
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_8e

    .line 6240
    move-object/from16 v7, p5

    :try_start_28
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_8c

    .line 6241
    move/from16 v8, p6

    :try_start_2d
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_8a

    .line 6242
    move-object/from16 v9, p7

    :try_start_32
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_88

    .line 6243
    move-object/from16 v10, p8

    :try_start_37
    invoke-virtual {v1, v10, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_86

    .line 6244
    move-object/from16 v11, p9

    :try_start_3c
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_84

    .line 6245
    move-object/from16 v12, p10

    :try_start_41
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_82

    .line 6246
    move-object/from16 v13, p11

    :try_start_46
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_80

    .line 6247
    move/from16 v14, p12

    :try_start_4b
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_7e

    .line 6248
    move-object/from16 v15, p13

    :try_start_50
    invoke-virtual {v1, v15, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6249
    move/from16 v3, p14

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6250
    move/from16 v3, p15

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6251
    move/from16 v3, p16

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6252
    move-object/from16 v3, p0

    iget-object v0, v3, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 6253
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 6254
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_74
    .catchall {:try_start_50 .. :try_end_74} :catchall_7c

    .line 6257
    .end local v0    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 6258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6259
    nop

    .line 6260
    return v3

    .line 6257
    .end local v3    # "_result":I
    :catchall_7c
    move-exception v0

    goto :goto_a9

    :catchall_7e
    move-exception v0

    goto :goto_a7

    :catchall_80
    move-exception v0

    goto :goto_a5

    :catchall_82
    move-exception v0

    goto :goto_a3

    :catchall_84
    move-exception v0

    goto :goto_a1

    :catchall_86
    move-exception v0

    goto :goto_9f

    :catchall_88
    move-exception v0

    goto :goto_9d

    :catchall_8a
    move-exception v0

    goto :goto_9b

    :catchall_8c
    move-exception v0

    goto :goto_99

    :catchall_8e
    move-exception v0

    goto :goto_97

    :catchall_90
    move-exception v0

    goto :goto_95

    :catchall_92
    move-exception v0

    move-object/from16 v5, p3

    :goto_95
    move-object/from16 v6, p4

    :goto_97
    move-object/from16 v7, p5

    :goto_99
    move/from16 v8, p6

    :goto_9b
    move-object/from16 v9, p7

    :goto_9d
    move-object/from16 v10, p8

    :goto_9f
    move-object/from16 v11, p9

    :goto_a1
    move-object/from16 v12, p10

    :goto_a3
    move-object/from16 v13, p11

    :goto_a5
    move/from16 v14, p12

    :goto_a7
    move-object/from16 v15, p13

    :goto_a9
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 6258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6259
    throw v0
.end method

.method public greylist-max-o cancelIntentSender(Landroid/content/IIntentSender;)V
    .registers 7
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7093
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7094
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7096
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7097
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7098
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7099
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 7102
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7104
    nop

    .line 7105
    return-void

    .line 7102
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7104
    throw v2
.end method

.method public greylist-max-o cancelTaskWindowTransition(I)V
    .registers 7
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9711
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9712
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9714
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9715
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9716
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9717
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9720
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9722
    nop

    .line 9723
    return-void

    .line 9720
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9722
    throw v2
.end method

.method public blacklist checkContentUriPermissionFull(Landroid/net/Uri;IIII)I
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6867
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6868
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6871
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6872
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6873
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6874
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6875
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6876
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6877
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6878
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6879
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 6882
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6884
    nop

    .line 6885
    return v3

    .line 6882
    .end local v3    # "_result":I
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6884
    throw v2
.end method

.method public greylist-max-o checkPermission(Ljava/lang/String;II)I
    .registers 9
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5942
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5943
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5946
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5947
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5948
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5949
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5950
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5951
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5952
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 5955
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5957
    nop

    .line 5958
    return v3

    .line 5955
    .end local v3    # "_result":I
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5957
    throw v2
.end method

.method public blacklist checkPermissionForDevice(Ljava/lang/String;III)I
    .registers 10
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10688
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10689
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10692
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10693
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10694
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10695
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10696
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10697
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x102

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10698
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10699
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 10702
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10704
    nop

    .line 10705
    return v3

    .line 10702
    .end local v3    # "_result":I
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10704
    throw v2
.end method

.method public greylist-max-o checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "userId"    # I
    .param p6, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6844
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6845
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6848
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6849
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6850
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6851
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6852
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6853
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6854
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6855
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6856
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6857
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_3b

    .line 6860
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6862
    nop

    .line 6863
    return v3

    .line 6860
    .end local v3    # "_result":I
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6862
    throw v2
.end method

.method public blacklist checkUriPermissions(Ljava/util/List;IIIILandroid/os/IBinder;)[I
    .registers 12
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "userId"    # I
    .param p6, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;IIII",
            "Landroid/os/IBinder;",
            ")[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6889
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6890
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6893
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6894
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 6895
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6896
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6897
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6898
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6899
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6900
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6901
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6902
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_3b

    .line 6905
    .end local v2    # "_status":Z
    .local v3, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6907
    nop

    .line 6908
    return-object v3

    .line 6905
    .end local v3    # "_result":[I
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6907
    throw v2
.end method

.method public blacklist clearAllOverridePermissionStates(I)V
    .registers 7
    .param p1, "originatingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10855
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10856
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10858
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10859
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10860
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x109

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10861
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 10864
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10866
    nop

    .line 10867
    return-void

    .line 10864
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10866
    throw v2
.end method

.method public greylist-max-o clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "keepState"    # Z
    .param p3, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7355
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7356
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7359
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7360
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7361
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7362
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7363
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7364
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7365
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7366
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 7369
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7371
    nop

    .line 7372
    return v3

    .line 7369
    .end local v3    # "_result":Z
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7371
    throw v2
.end method

.method public blacklist clearOverridePermissionStates(II)V
    .registers 8
    .param p1, "originatingUid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10834
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10835
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10837
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10838
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10839
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10840
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x108

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10841
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 10844
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10846
    nop

    .line 10847
    return-void

    .line 10844
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10846
    throw v2
.end method

.method public greylist-max-o closeSystemDialogs(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7701
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7702
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7704
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7705
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7706
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7707
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 7710
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7712
    nop

    .line 7713
    return-void

    .line 7710
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7712
    throw v2
.end method

.method public blacklist crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "force"    # Z
    .param p7, "exceptionTypeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7889
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7890
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7892
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7893
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7894
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7895
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7896
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7897
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7898
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7899
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 7900
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7901
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_3a

    .line 7904
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7906
    nop

    .line 7907
    return-void

    .line 7904
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7906
    throw v2
.end method

.method public blacklist crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "force"    # Z
    .param p7, "exceptionTypeId"    # I
    .param p8, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7910
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7911
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7913
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7914
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7915
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7916
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7917
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7918
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7919
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7920
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 7921
    const/4 v2, 0x0

    invoke-virtual {v0, p8, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7922
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x70

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7923
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_3d

    .line 7926
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7928
    nop

    .line 7929
    return-void

    .line 7926
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7928
    throw v2
.end method

.method public blacklist dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z
    .registers 15
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "managed"    # Z
    .param p4, "mallocInfo"    # Z
    .param p5, "runGc"    # Z
    .param p6, "dumpBitmaps"    # Ljava/lang/String;
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p9, "finishCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7947
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7948
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7951
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7952
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7953
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7954
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7955
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7956
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7957
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7958
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7959
    const/4 v2, 0x0

    invoke-virtual {v0, p8, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7960
    invoke-virtual {v0, p9, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7961
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x72

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7962
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7963
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_44

    .line 7966
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7968
    nop

    .line 7969
    return v3

    .line 7966
    .end local v3    # "_result":Z
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7968
    throw v2
.end method

.method public greylist-max-o dumpHeapFinished(Ljava/lang/String;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9302
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9303
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9305
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9306
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9307
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9308
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9311
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9313
    nop

    .line 9314
    return-void

    .line 9311
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9313
    throw v2
.end method

.method public blacklist enableAppFreezer(Z)Z
    .registers 7
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10263
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10264
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10267
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10268
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10269
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xed

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10270
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10271
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 10274
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10276
    nop

    .line 10277
    return v3

    .line 10274
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10276
    throw v2
.end method

.method public blacklist enableFgsNotificationRateLimit(Z)Z
    .registers 7
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10288
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10292
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10293
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10294
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xee

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10295
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10296
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 10299
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10301
    nop

    .line 10302
    return v3

    .line 10299
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10301
    throw v2
.end method

.method public greylist-max-o enterSafeMode()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7167
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7168
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7170
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7171
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7172
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 7175
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7177
    nop

    .line 7178
    return-void

    .line 7175
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7177
    throw v2
.end method

.method public greylist-max-o finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .param p4, "finishTask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6096
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6097
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6100
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6101
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6102
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6103
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6104
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6105
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6106
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6107
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 6110
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6112
    nop

    .line 6113
    return v3

    .line 6110
    .end local v3    # "_result":Z
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6112
    throw v2
.end method

.method public blacklist finishAttachApplication(JJ)V
    .registers 10
    .param p1, "startSeq"    # J
    .param p3, "timestampApplicationOnCreateNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6314
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6317
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6318
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 6319
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 6320
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6321
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6324
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6326
    nop

    .line 6327
    return-void

    .line 6324
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6326
    throw v2
.end method

.method public greylist-max-o finishHeavyWeightApp()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7825
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7826
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7828
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7829
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7830
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 7833
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7835
    nop

    .line 7836
    return-void

    .line 7833
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7835
    throw v2
.end method

.method public greylist-max-o finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    .registers 9
    .param p1, "target"    # Landroid/app/IApplicationThread;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6700
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6701
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6703
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6704
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6705
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6706
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6707
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6708
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6711
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6713
    nop

    .line 6714
    return-void

    .line 6711
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6713
    throw v2
.end method

.method public greylist-max-o finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    .registers 12
    .param p1, "who"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "map"    # Landroid/os/Bundle;
    .param p5, "abortBroadcast"    # Z
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6281
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6283
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6284
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6285
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6286
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6287
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6288
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6289
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 6290
    iget-object v1, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x19

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_2e

    .line 6293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6294
    nop

    .line 6295
    return-void

    .line 6293
    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6294
    throw v1
.end method

.method public blacklist forceDelayBroadcastDelivery(Ljava/lang/String;J)V
    .registers 9
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "delayedDurationMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10447
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10448
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10450
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10451
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10452
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 10453
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10454
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 10457
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10459
    nop

    .line 10460
    return-void

    .line 10457
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10459
    throw v2
.end method

.method public greylist-max-o forceStopPackage(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7411
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7412
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7414
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7415
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7416
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7417
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7418
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 7421
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7423
    nop

    .line 7424
    return-void

    .line 7421
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7423
    throw v2
.end method

.method public blacklist forceStopPackageEvenWhenStopping(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7427
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7428
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7430
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7431
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7432
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7433
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7434
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 7437
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7439
    nop

    .line 7440
    return-void

    .line 7437
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7439
    throw v2
.end method

.method public blacklist frozenBinderTransactionDetected(IIII)V
    .registers 10
    .param p1, "debugPid"    # I
    .param p2, "code"    # I
    .param p3, "flags"    # I
    .param p4, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10717
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10719
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10720
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10721
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10722
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10723
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10724
    iget-object v1, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x103

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 10727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10728
    nop

    .line 10729
    return-void

    .line 10727
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10728
    throw v1
.end method

.method public blacklist getAllRootTaskInfos()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8889
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8890
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8893
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8894
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8895
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8896
    sget-object v3, Landroid/app/ActivityTaskManager$RootTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 8899
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8901
    nop

    .line 8902
    return-object v3

    .line 8899
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8901
    throw v2
.end method

.method public blacklist getBackgroundRestrictionExemptionReason(I)I
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10490
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10491
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10494
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10496
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10497
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10498
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 10501
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10503
    nop

    .line 10504
    return v3

    .line 10501
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10503
    throw v2
.end method

.method public blacklist getBindingUidProcessState(ILjava/lang/String;)I
    .registers 8
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10732
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10733
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10736
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10737
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10738
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10739
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x104

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10740
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10741
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 10744
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10746
    nop

    .line 10747
    return v3

    .line 10744
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10746
    throw v2
.end method

.method public blacklist getBugreportWhitelistedPackages()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8786
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8790
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8791
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8792
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8793
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 8796
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8798
    nop

    .line 8799
    return-object v3

    .line 8796
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8798
    throw v2
.end method

.method public greylist getConfiguration()Landroid/content/res/Configuration;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6722
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6723
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6726
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6727
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6728
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6729
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 6732
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6734
    nop

    .line 6735
    return-object v3

    .line 6732
    .end local v3    # "_result":Landroid/content/res/Configuration;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6734
    throw v2
.end method

.method public blacklist getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;
    .registers 11
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "stable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6386
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6387
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6390
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6391
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6392
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6393
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6394
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6395
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6396
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6397
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6398
    sget-object v3, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ContentProviderHolder;
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_3c

    .line 6401
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/app/ContentProviderHolder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6403
    nop

    .line 6404
    return-object v3

    .line 6401
    .end local v3    # "_result":Landroid/app/ContentProviderHolder;
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6403
    throw v2
.end method

.method public blacklist getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8229
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8230
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8233
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8235
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8236
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8237
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8238
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x82

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8239
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8240
    sget-object v3, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ContentProviderHolder;
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 8243
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/app/ContentProviderHolder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8245
    nop

    .line 8246
    return-object v3

    .line 8243
    .end local v3    # "_result":Landroid/app/ContentProviderHolder;
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8245
    throw v2
.end method

.method public greylist-max-o getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8320
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8321
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8324
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8325
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x87

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8326
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8327
    sget-object v3, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 8330
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8332
    nop

    .line 8333
    return-object v3

    .line 8330
    .end local v3    # "_result":Landroid/content/pm/UserInfo;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8332
    throw v2
.end method

.method public blacklist getCurrentUserId()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8337
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8338
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8341
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8342
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8343
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8344
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 8347
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8349
    nop

    .line 8350
    return v3

    .line 8347
    .end local v3    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8349
    throw v2
.end method

.method public blacklist getDelegatedShellPermissions()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9857
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9858
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9861
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9862
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9863
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9864
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 9867
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9869
    nop

    .line 9870
    return-object v3

    .line 9867
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9869
    throw v2
.end method

.method public blacklist getDisplayIdsForStartingVisibleBackgroundUsers()[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10583
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10584
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10587
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10588
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10589
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10590
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 10593
    .end local v2    # "_status":Z
    .local v3, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10595
    nop

    .line 10596
    return-object v3

    .line 10593
    .end local v3    # "_result":[I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10595
    throw v2
.end method

.method public blacklist getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8938
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8939
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8942
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8943
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8944
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8945
    sget-object v3, Landroid/app/ActivityTaskManager$RootTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityTaskManager$RootTaskInfo;
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 8948
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8950
    nop

    .line 8951
    return-object v3

    .line 8948
    .end local v3    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8950
    throw v2
.end method

.method public blacklist getForegroundServiceType(Landroid/content/ComponentName;Landroid/os/IBinder;)I
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7283
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7284
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7287
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7288
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7289
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7290
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7291
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7292
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 7295
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7297
    nop

    .line 7298
    return v3

    .line 7295
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7297
    throw v2
.end method

.method public blacklist getHistoricalProcessExitReasons(Ljava/lang/String;III)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "maxNum"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10082
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10083
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10086
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10087
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10088
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10089
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10090
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10091
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10092
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10093
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 10096
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10098
    nop

    .line 10099
    return-object v3

    .line 10096
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationExitInfo;>;"
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10098
    throw v2
.end method

.method public blacklist getHistoricalProcessStartReasons(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "maxNum"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ApplicationStartInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9947
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9948
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9951
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9952
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9953
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9954
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9955
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9956
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9957
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 9960
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationStartInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9962
    nop

    .line 9963
    return-object v3

    .line 9960
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationStartInfo;>;"
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9962
    throw v2
.end method

.method public blacklist getInfoForIntentSender(Landroid/content/IIntentSender;)Landroid/app/ActivityManager$PendingIntentInfo;
    .registers 7
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7108
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7109
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7112
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7113
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7114
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7115
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7116
    sget-object v3, Landroid/app/ActivityManager$PendingIntentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$PendingIntentInfo;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 7119
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/app/ActivityManager$PendingIntentInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7121
    nop

    .line 7122
    return-object v3

    .line 7119
    .end local v3    # "_result":Landroid/app/ActivityManager$PendingIntentInfo;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7121
    throw v2
.end method

.method public greylist-max-o getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
    .registers 7
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8803
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8804
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8807
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8808
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8809
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8810
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8811
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 8814
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8816
    nop

    .line 8817
    return-object v3

    .line 8814
    .end local v3    # "_result":Landroid/content/Intent;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8816
    throw v2
.end method

.method public greylist-max-o getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;
    .registers 16
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "resultWho"    # Ljava/lang/String;
    .param p5, "requestCode"    # I
    .param p6, "intents"    # [Landroid/content/Intent;
    .param p7, "resolvedTypes"    # [Ljava/lang/String;
    .param p8, "flags"    # I
    .param p9, "options"    # Landroid/os/Bundle;
    .param p10, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7038
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7039
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7042
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7043
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7044
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7045
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7046
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7047
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 7048
    const/4 v2, 0x0

    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 7049
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 7050
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 7051
    invoke-virtual {v0, p9, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7052
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeInt(I)V

    .line 7053
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x40

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7054
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7055
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v3
    :try_end_43
    .catchall {:try_start_c .. :try_end_43} :catchall_4b

    .line 7058
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/IIntentSender;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7060
    nop

    .line 7061
    return-object v3

    .line 7058
    .end local v3    # "_result":Landroid/content/IIntentSender;
    :catchall_4b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7060
    throw v2
.end method

.method public blacklist getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;
    .registers 28
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "resultWho"    # Ljava/lang/String;
    .param p6, "requestCode"    # I
    .param p7, "intents"    # [Landroid/content/Intent;
    .param p8, "resolvedTypes"    # [Ljava/lang/String;
    .param p9, "flags"    # I
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7065
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 7066
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 7069
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7070
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_90

    .line 7071
    move-object/from16 v4, p2

    :try_start_18
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_8c

    .line 7072
    move-object/from16 v5, p3

    :try_start_1d
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_88

    .line 7073
    move-object/from16 v6, p4

    :try_start_22
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_84

    .line 7074
    move-object/from16 v7, p5

    :try_start_27
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_80

    .line 7075
    move/from16 v8, p6

    :try_start_2c
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_7c

    .line 7076
    const/4 v0, 0x0

    move-object/from16 v9, p7

    :try_start_32
    invoke-virtual {v1, v9, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_78

    .line 7077
    move-object/from16 v10, p8

    :try_start_37
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_74

    .line 7078
    move/from16 v11, p9

    :try_start_3c
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_70

    .line 7079
    move-object/from16 v12, p10

    :try_start_41
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_6c

    .line 7080
    move/from16 v13, p11

    :try_start_46
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_68

    .line 7081
    move-object/from16 v14, p0

    :try_start_4b
    iget-object v15, v14, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    invoke-interface {v15, v3, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 7082
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 7083
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v3
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_66

    .line 7086
    .end local v0    # "_status":Z
    .local v3, "_result":Landroid/content/IIntentSender;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 7087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7088
    nop

    .line 7089
    return-object v3

    .line 7086
    .end local v3    # "_result":Landroid/content/IIntentSender;
    :catchall_66
    move-exception v0

    goto :goto_a7

    :catchall_68
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_a7

    :catchall_6c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_a5

    :catchall_70
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_a3

    :catchall_74
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_a1

    :catchall_78
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9f

    :catchall_7c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9d

    :catchall_80
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9b

    :catchall_84
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_99

    :catchall_88
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_97

    :catchall_8c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_95

    :catchall_90
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p2

    :goto_95
    move-object/from16 v5, p3

    :goto_97
    move-object/from16 v6, p4

    :goto_99
    move-object/from16 v7, p5

    :goto_9b
    move/from16 v8, p6

    :goto_9d
    move-object/from16 v9, p7

    :goto_9f
    move-object/from16 v10, p8

    :goto_a1
    move/from16 v11, p9

    :goto_a3
    move-object/from16 v12, p10

    :goto_a5
    move/from16 v13, p11

    :goto_a7
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 7087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7088
    throw v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 5757
    const-string v0, "android.app.IActivityManager"

    return-object v0
.end method

.method public greylist-max-o getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 7
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8823
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8824
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8828
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8829
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8830
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8831
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 8834
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8836
    nop

    .line 8837
    return-object v3

    .line 8834
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8836
    throw v2
.end method

.method public greylist getLaunchedFromUid(Landroid/os/IBinder;)I
    .registers 7
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8356
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8357
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8360
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8362
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x89

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8363
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8364
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 8367
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8369
    nop

    .line 8370
    return v3

    .line 8367
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8369
    throw v2
.end method

.method public blacklist getLifeMonitor()Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9875
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9876
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9879
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9880
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9881
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9882
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 9885
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9887
    nop

    .line 9888
    return-object v3

    .line 9885
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9887
    throw v2
.end method

.method public greylist-max-o getLockTaskModeState()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9267
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9268
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9271
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9272
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9273
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9274
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 9277
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9279
    nop

    .line 9280
    return v3

    .line 9277
    .end local v3    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9279
    throw v2
.end method

.method public greylist-max-o getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .registers 7
    .param p1, "outInfo"    # Landroid/app/ActivityManager$MemoryInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7321
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7322
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7324
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7325
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7326
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7327
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    .line 7328
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 7332
    .end local v2    # "_status":Z
    :cond_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7334
    nop

    .line 7335
    return-void

    .line 7332
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7334
    throw v2
.end method

.method public greylist-max-o getMemoryTrimLevel()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9546
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9547
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9550
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9551
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9552
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9553
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 9556
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9558
    nop

    .line 9559
    return v3

    .line 9556
    .end local v3    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9558
    throw v2
.end method

.method public blacklist getMimeTypeFilterAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "resultCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7932
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7934
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7935
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7936
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7937
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7938
    iget-object v1, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x71

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 7941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7942
    nop

    .line 7943
    return-void

    .line 7941
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7942
    throw v1
.end method

.method public greylist-max-o getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .registers 7
    .param p1, "outInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8285
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8286
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8288
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8289
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8290
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8291
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    .line 8292
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 8296
    .end local v2    # "_status":Z
    :cond_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8298
    nop

    .line 8299
    return-void

    .line 8296
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8298
    throw v2
.end method

.method public greylist-max-o getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9369
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9370
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9373
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9374
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9375
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9376
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9377
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9378
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 9381
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9383
    nop

    .line 9384
    return v3

    .line 9381
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9383
    throw v2
.end method

.method public greylist getProcessLimit()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6827
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6831
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6832
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6833
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6834
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 6837
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6839
    nop

    .line 6840
    return v3

    .line 6837
    .end local v3    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6839
    throw v2
.end method

.method public greylist-max-o getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .registers 7
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7716
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7717
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7720
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7721
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 7722
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7723
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7724
    sget-object v3, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Debug$MemoryInfo;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 7727
    .end local v2    # "_status":Z
    .local v3, "_result":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7729
    nop

    .line 7730
    return-object v3

    .line 7727
    .end local v3    # "_result":[Landroid/os/Debug$MemoryInfo;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7729
    throw v2
.end method

.method public greylist getProcessPss([I)[J
    .registers 7
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8175
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8176
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8179
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8180
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 8181
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8182
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8183
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 8186
    .end local v2    # "_status":Z
    .local v3, "_result":[J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8188
    nop

    .line 8189
    return-object v3

    .line 8186
    .end local v3    # "_result":[J
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8188
    throw v2
.end method

.method public greylist-max-o getProcessesInErrorState()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7338
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7339
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7343
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7344
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7345
    sget-object v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 7348
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7350
    nop

    .line 7351
    return-object v3

    .line 7348
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7350
    throw v2
.end method

.method public greylist-max-o getRecentTasks(III)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7001
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7002
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7005
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7006
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7007
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7008
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7009
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7010
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7011
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 7014
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7016
    nop

    .line 7017
    return-object v3

    .line 7014
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7016
    throw v2
.end method

.method public blacklist getRegisteredIntentFilters(Landroid/content/IIntentReceiver;)Ljava/util/List;
    .registers 7
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IIntentReceiver;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6182
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6183
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6187
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6188
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6189
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6190
    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6193
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6195
    nop

    .line 6196
    return-object v3

    .line 6193
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6195
    throw v2
.end method

.method public greylist-max-o getRunningAppProcesses()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7483
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7484
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7487
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7488
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7489
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7490
    sget-object v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 7493
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7495
    nop

    .line 7496
    return-object v3

    .line 7493
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7495
    throw v2
.end method

.method public greylist-max-o getRunningExternalApplications()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7808
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7809
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7812
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7813
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7814
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7815
    sget-object v3, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 7818
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7820
    nop

    .line 7821
    return-object v3

    .line 7818
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7820
    throw v2
.end method

.method public greylist-max-o getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .registers 7
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6444
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6445
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6448
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6449
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6450
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6451
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6452
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 6455
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6457
    nop

    .line 6458
    return-object v3

    .line 6455
    .end local v3    # "_result":Landroid/app/PendingIntent;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6457
    throw v2
.end method

.method public greylist-max-o getRunningUserIds()[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8578
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8579
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8582
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8583
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x94

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8584
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8585
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 8588
    .end local v2    # "_status":Z
    .local v3, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8590
    nop

    .line 8591
    return-object v3

    .line 8588
    .end local v3    # "_result":[I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8590
    throw v2
.end method

.method public greylist-max-o getServices(II)Ljava/util/List;
    .registers 8
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7463
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7464
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7467
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7468
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7469
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7470
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7471
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7472
    sget-object v3, Landroid/app/ActivityManager$RunningServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 7475
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7477
    nop

    .line 7478
    return-object v3

    .line 7475
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7477
    throw v2
.end method

.method public blacklist getSwitchingFromUserMessage(I)Ljava/lang/String;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8026
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8027
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8030
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8031
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8032
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8033
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8034
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 8037
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8039
    nop

    .line 8040
    return-object v3

    .line 8037
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8039
    throw v2
.end method

.method public blacklist getSwitchingToUserMessage(I)Ljava/lang/String;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8044
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8045
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8048
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8049
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8050
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8051
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8052
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 8055
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8057
    nop

    .line 8058
    return-object v3

    .line 8055
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8057
    throw v2
.end method

.method public greylist-max-o getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9037
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9038
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9041
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9042
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9043
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9044
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9045
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9046
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 9049
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9051
    nop

    .line 9052
    return-object v3

    .line 9049
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9051
    throw v2
.end method

.method public greylist-max-o getTaskBounds(I)Landroid/graphics/Rect;
    .registers 7
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8998
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8999
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9002
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9003
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9004
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xad

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9005
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9006
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 9009
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9011
    nop

    .line 9012
    return-object v3

    .line 9009
    .end local v3    # "_result":Landroid/graphics/Rect;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9011
    throw v2
.end method

.method public greylist-max-o getTaskForActivity(Landroid/os/IBinder;Z)I
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyRoot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6367
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6368
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6371
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6372
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6373
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6374
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6375
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6376
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 6379
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6381
    nop

    .line 6382
    return v3

    .line 6379
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6381
    throw v2
.end method

.method public greylist-max-o getTasks(I)Ljava/util/List;
    .registers 7
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6330
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6336
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6337
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6338
    sget-object v3, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6341
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6343
    nop

    .line 6344
    return-object v3

    .line 6341
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6343
    throw v2
.end method

.method public blacklist getUidFrozenState([I)[I
    .registers 7
    .param p1, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10670
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10671
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10674
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 10676
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x101

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10677
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10678
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 10681
    .end local v2    # "_status":Z
    .local v3, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10683
    nop

    .line 10684
    return-object v3

    .line 10681
    .end local v3    # "_result":[I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10683
    throw v2
.end method

.method public blacklist getUidLastIdleElapsedTime(ILjava/lang/String;)J
    .registers 8
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10757
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10758
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10761
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10762
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10763
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10764
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x105

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10765
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10766
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 10769
    .end local v2    # "_status":Z
    .local v3, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10771
    nop

    .line 10772
    return-wide v3

    .line 10769
    .end local v3    # "_result":J
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10771
    throw v2
.end method

.method public blacklist getUidProcessCapabilities(ILjava/lang/String;)I
    .registers 8
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10398
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10399
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10402
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10404
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10405
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10406
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10407
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 10410
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10412
    nop

    .line 10413
    return v3

    .line 10410
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10412
    throw v2
.end method

.method public greylist-max-o getUidProcessState(ILjava/lang/String;)I
    .registers 8
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5923
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5924
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5927
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5928
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5929
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5930
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5931
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5932
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 5935
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5937
    nop

    .line 5938
    return v3

    .line 5935
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5937
    throw v2
.end method

.method public greylist-max-o grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    .registers 11
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "mode"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6912
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6913
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6915
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6916
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6917
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6918
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6919
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6920
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6921
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x39

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6922
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 6925
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6927
    nop

    .line 6928
    return-void

    .line 6925
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6927
    throw v2
.end method

.method public greylist-max-o handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V
    .registers 8
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6010
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6011
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6013
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6014
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6015
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6016
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6017
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6020
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6022
    nop

    .line 6023
    return-void

    .line 6020
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6022
    throw v2
.end method

.method public greylist-max-o handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 9
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "penaltyMask"    # I
    .param p3, "crashInfo"    # Landroid/os/StrictMode$ViolationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7840
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7841
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7843
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7844
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7845
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7846
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7847
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7848
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 7851
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7853
    nop

    .line 7854
    return-void

    .line 7851
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7853
    throw v2
.end method

.method public blacklist handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .registers 11
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "system"    # Z
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .param p5, "immediateCallerPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7751
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7752
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7755
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7756
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7757
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7758
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7759
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7760
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 7761
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x67

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7762
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7763
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 7766
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7768
    nop

    .line 7769
    return v3

    .line 7766
    .end local v3    # "_result":Z
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7768
    throw v2
.end method

.method public greylist-max-o handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "requireFull"    # Z
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7643
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7644
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7647
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7648
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7649
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7650
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7651
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7652
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7653
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7654
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7655
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7656
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7657
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_3e

    .line 7660
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7662
    nop

    .line 7663
    return v3

    .line 7660
    .end local v3    # "_result":I
    :catchall_3e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7662
    throw v2
.end method

.method public greylist-max-o hang(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "who"    # Landroid/os/IBinder;
    .param p2, "allowRestart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8873
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8874
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8876
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8877
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8878
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8879
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8880
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 8883
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8885
    nop

    .line 8886
    return-void

    .line 8883
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8885
    throw v2
.end method

.method public blacklist hasServiceTimeLimitExceeded(Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10621
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10622
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10625
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10626
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10627
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 10628
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10629
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10630
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 10633
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10635
    nop

    .line 10636
    return v3

    .line 10633
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10635
    throw v2
.end method

.method public blacklist holdLock(Landroid/os/IBinder;I)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "durationMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10312
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10313
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10315
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10316
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 10317
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10318
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xef

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10319
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 10322
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10324
    nop

    .line 10325
    return-void

    .line 10322
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10324
    throw v2
.end method

.method public blacklist isAppFreezerEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10201
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10202
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10206
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xea

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10207
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10208
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 10211
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10213
    nop

    .line 10214
    return v3

    .line 10211
    .end local v3    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10213
    throw v2
.end method

.method public blacklist isAppFreezerSupported()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10183
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10184
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10187
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10188
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10189
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10190
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 10193
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10195
    nop

    .line 10196
    return v3

    .line 10193
    .end local v3    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10195
    throw v2
.end method

.method public greylist-max-o isBackgroundRestricted(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9652
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9653
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9656
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9657
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9658
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9659
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9660
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 9663
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9665
    nop

    .line 9666
    return v3

    .line 9663
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9665
    throw v2
.end method

.method public greylist-max-o isInLockTaskMode()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9082
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9083
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9086
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9087
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9088
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9089
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 9092
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9094
    nop

    .line 9095
    return v3

    .line 9092
    .end local v3    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9094
    throw v2
.end method

.method public greylist-max-o isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z
    .registers 7
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8389
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8390
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8393
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8395
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8396
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8397
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 8400
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8402
    nop

    .line 8403
    return v3

    .line 8400
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8402
    throw v2
.end method

.method public greylist-max-o isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z
    .registers 7
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8125
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8126
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8129
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8131
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8132
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8133
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 8136
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8138
    nop

    .line 8139
    return v3

    .line 8136
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8138
    throw v2
.end method

.method public blacklist isProcessFrozen(I)Z
    .registers 7
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10464
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10465
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10468
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10469
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10470
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10471
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10472
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 10475
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10477
    nop

    .line 10478
    return v3

    .line 10475
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10477
    throw v2
.end method

.method public greylist-max-o isTopActivityImmersive()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7872
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7873
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7876
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7877
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7878
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7879
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 7882
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7884
    nop

    .line 7885
    return v3

    .line 7882
    .end local v3    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7884
    throw v2
.end method

.method public greylist-max-o isTopOfTask(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9133
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9134
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9137
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 9139
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9140
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9141
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 9144
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9146
    nop

    .line 9147
    return v3

    .line 9144
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9146
    throw v2
.end method

.method public greylist-max-o isUidActive(ILjava/lang/String;)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5904
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5905
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5908
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5909
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5910
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5911
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5912
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5913
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 5916
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5918
    nop

    .line 5919
    return v3

    .line 5916
    .end local v3    # "_result":Z
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5918
    throw v2
.end method

.method public greylist-max-o isUserAMonkey()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7789
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7790
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7793
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7794
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7795
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7796
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 7799
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7801
    nop

    .line 7802
    return v3

    .line 7799
    .end local v3    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7801
    throw v2
.end method

.method public greylist-max-o isUserRunning(II)Z
    .registers 8
    .param p1, "userid"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7973
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7974
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7977
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7978
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7979
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7980
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7981
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7982
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 7985
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7987
    nop

    .line 7988
    return v3

    .line 7985
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7987
    throw v2
.end method

.method public greylist-max-o isVrModePackageEnabled(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "packageName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9563
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9564
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9567
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9568
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9569
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xcc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9570
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9571
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 9574
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9576
    nop

    .line 9577
    return v3

    .line 9574
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9576
    throw v2
.end method

.method public greylist-max-o killAllBackgroundProcesses()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8215
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8216
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8218
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8219
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8220
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 8223
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8225
    nop

    .line 8226
    return-void

    .line 8223
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8225
    throw v2
.end method

.method public blacklist killApplication(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "exitInfoReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7682
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7683
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7685
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7686
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7687
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7688
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7689
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7690
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 7691
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7692
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 7695
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7697
    nop

    .line 7698
    return-void

    .line 7695
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7697
    throw v2
.end method

.method public greylist-max-o killApplicationProcess(Ljava/lang/String;I)V
    .registers 8
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7734
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7735
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7737
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7738
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7739
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7740
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7741
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 7744
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7746
    nop

    .line 7747
    return-void

    .line 7744
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7746
    throw v2
.end method

.method public greylist-max-o killBackgroundProcesses(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7773
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7774
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7776
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7777
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7778
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7779
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7780
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 7783
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7785
    nop

    .line 7786
    return-void

    .line 7783
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7785
    throw v2
.end method

.method public greylist-max-o killPackageDependents(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9499
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9500
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9502
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9503
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9504
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9505
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9506
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9509
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9511
    nop

    .line 9512
    return-void

    .line 9509
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9511
    throw v2
.end method

.method public greylist-max-o killPids([ILjava/lang/String;Z)Z
    .registers 9
    .param p1, "pids"    # [I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "secure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7443
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7444
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7447
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7448
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 7449
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7450
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7451
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7452
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7453
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 7456
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7458
    nop

    .line 7459
    return v3

    .line 7456
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7458
    throw v2
.end method

.method public greylist-max-o killProcessesBelowForeground(Ljava/lang/String;)Z
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8302
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8303
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8306
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8307
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8308
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8309
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8310
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 8313
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8315
    nop

    .line 8316
    return v3

    .line 8313
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8315
    throw v2
.end method

.method public blacklist killProcessesWhenImperceptible([ILjava/lang/String;)V
    .registers 8
    .param p1, "pids"    # [I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10107
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10110
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 10112
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10113
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10114
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 10117
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10119
    nop

    .line 10120
    return-void

    .line 10117
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10119
    throw v2
.end method

.method public greylist-max-o killUid(IILjava/lang/String;)V
    .registers 9
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8841
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8842
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8844
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8845
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8846
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8847
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8848
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8849
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 8852
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8854
    nop

    .line 8855
    return-void

    .line 8852
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8854
    throw v2
.end method

.method public blacklist killUidForPermissionChange(IILjava/lang/String;)V
    .registers 9
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10219
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10220
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10222
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10224
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10225
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10226
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xeb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10227
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 10230
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10232
    nop

    .line 10233
    return-void

    .line 10230
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10232
    throw v2
.end method

.method public blacklist launchBugReportHandlerApp()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8769
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8770
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8774
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8775
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8776
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 8779
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8781
    nop

    .line 8782
    return v3

    .line 8779
    .end local v3    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8781
    throw v2
.end method

.method public blacklist logFgsApiBegin(III)V
    .registers 9
    .param p1, "apiType"    # I
    .param p2, "appUid"    # I
    .param p3, "appPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5963
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5965
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5966
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5967
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5968
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5969
    iget-object v1, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 5972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5973
    nop

    .line 5974
    return-void

    .line 5972
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5973
    throw v1
.end method

.method public blacklist logFgsApiEnd(III)V
    .registers 9
    .param p1, "apiType"    # I
    .param p2, "appUid"    # I
    .param p3, "appPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5978
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5980
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5981
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5982
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5983
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5984
    iget-object v1, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 5987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5988
    nop

    .line 5989
    return-void

    .line 5987
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5988
    throw v1
.end method

.method public blacklist logFgsApiStateChanged(IIII)V
    .registers 10
    .param p1, "apiType"    # I
    .param p2, "state"    # I
    .param p3, "appUid"    # I
    .param p4, "appPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5993
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5995
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5996
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5997
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5998
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5999
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6000
    iget-object v1, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 6003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6004
    nop

    .line 6005
    return-void

    .line 6003
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6004
    throw v1
.end method

.method public greylist-max-o makePackageIdle(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9515
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9516
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9518
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9519
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9520
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9521
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9522
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9525
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9527
    nop

    .line 9528
    return-void

    .line 9525
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9527
    throw v2
.end method

.method public greylist-max-o moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7302
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7303
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7306
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7307
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7308
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7309
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7310
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7311
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 7314
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7316
    nop

    .line 7317
    return v3

    .line 7314
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7316
    throw v2
.end method

.method public blacklist moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    .registers 11
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "task"    # I
    .param p4, "flags"    # I
    .param p5, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6348
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6351
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6352
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6353
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6354
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6355
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6356
    const/4 v2, 0x0

    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6357
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6358
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 6361
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6363
    nop

    .line 6364
    return-void

    .line 6361
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6363
    throw v2
.end method

.method public blacklist moveTaskToRootTask(IIZ)V
    .registers 9
    .param p1, "taskId"    # I
    .param p2, "rootTaskId"    # I
    .param p3, "toTop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8906
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8907
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8909
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8910
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8911
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8912
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8913
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8914
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 8917
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8919
    nop

    .line 8920
    return-void

    .line 8917
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8919
    throw v2
.end method

.method public greylist-max-o noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V
    .registers 10
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "sourceUid"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9351
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9352
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9354
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9356
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9357
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9358
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9359
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9360
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 9363
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9365
    nop

    .line 9366
    return-void

    .line 9363
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9365
    throw v2
.end method

.method public greylist-max-o noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V
    .registers 10
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "sourceUid"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9333
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9334
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9336
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9338
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9339
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9340
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9341
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9342
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 9345
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9347
    nop

    .line 9348
    return-void

    .line 9345
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9347
    throw v2
.end method

.method public blacklist noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "restrictionType"    # I
    .param p4, "enabled"    # Z
    .param p5, "reason"    # I
    .param p6, "subReason"    # Ljava/lang/String;
    .param p7, "source"    # I
    .param p8, "threshold"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10874
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10875
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10877
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10878
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10879
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10880
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10881
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10882
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10883
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10884
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 10885
    invoke-virtual {v0, p8, p9}, Landroid/os/Parcel;->writeLong(J)V

    .line 10886
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10887
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_3d

    .line 10890
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10892
    nop

    .line 10893
    return-void

    .line 10890
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10892
    throw v2
.end method

.method public greylist-max-o noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "sourceUid"    # I
    .param p4, "sourcePkg"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7181
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7182
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7184
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7185
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7186
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7187
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7188
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7189
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7190
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7191
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 7194
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7196
    nop

    .line 7197
    return-void

    .line 7194
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7196
    throw v2
.end method

.method public greylist-max-o notifyCleartextNetwork(I[B)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "firstPacket"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9218
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9221
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9222
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9223
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 9224
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9225
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9228
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9230
    nop

    .line 9231
    return-void

    .line 9228
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9230
    throw v2
.end method

.method public greylist-max-o notifyLockedProfile(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9581
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9582
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9584
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9585
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9586
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9587
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9590
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9592
    nop

    .line 9593
    return-void

    .line 9590
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9592
    throw v2
.end method

.method public greylist-max-o openContentUri(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5768
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5769
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5772
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5773
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5774
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5775
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5776
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 5779
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5781
    nop

    .line 5782
    return-object v3

    .line 5779
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5781
    throw v2
.end method

.method public greylist-max-o peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 9
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7500
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7501
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7504
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7505
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7506
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7507
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7508
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x59

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7509
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7510
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 7513
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7515
    nop

    .line 7516
    return-object v3

    .line 7513
    .end local v3    # "_result":Landroid/os/IBinder;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7515
    throw v2
.end method

.method public greylist-max-o performIdleMaintenance()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8969
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8970
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8972
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8973
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xab

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8974
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 8977
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8979
    nop

    .line 8980
    return-void

    .line 8977
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8979
    throw v2
.end method

.method public greylist-max-o profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z
    .registers 11
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "start"    # Z
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "profileType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7521
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7522
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7525
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7526
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7527
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7528
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7529
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7530
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 7531
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7532
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7533
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 7536
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7538
    nop

    .line 7539
    return v3

    .line 7536
    .end local v3    # "_result":Z
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7538
    throw v2
.end method

.method public greylist-max-o publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .registers 8
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IApplicationThread;",
            "Ljava/util/List<",
            "Landroid/app/ContentProviderHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6408
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6409
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6411
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6412
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6413
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 6414
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6415
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6418
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6420
    nop

    .line 6421
    return-void

    .line 6418
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6420
    throw v2
.end method

.method public greylist-max-o publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6594
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6595
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6597
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6598
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6599
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6600
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6601
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6602
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6605
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6607
    nop

    .line 6608
    return-void

    .line 6605
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6607
    throw v2
.end method

.method public blacklist queryIntentComponentsForIntentSender(Landroid/content/IIntentSender;I)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "matchFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10379
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10380
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10383
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10384
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 10385
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10386
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10387
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10388
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 10391
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10393
    nop

    .line 10394
    return-object v3

    .line 10391
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10393
    throw v2
.end method

.method public greylist-max-o refContentProvider(Landroid/os/IBinder;II)Z
    .registers 9
    .param p1, "connection"    # Landroid/os/IBinder;
    .param p2, "stableDelta"    # I
    .param p3, "unstableDelta"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6424
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6425
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6428
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6429
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6430
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6431
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6432
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6433
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6434
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 6437
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6439
    nop

    .line 6440
    return v3

    .line 6437
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6439
    throw v2
.end method

.method public blacklist refreshIntentCreatorToken(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10903
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10904
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10907
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10908
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10909
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10910
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10911
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 10914
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10916
    nop

    .line 10917
    return-object v3

    .line 10914
    .end local v3    # "_result":Landroid/os/IBinder;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10916
    throw v2
.end method

.method public blacklist registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z
    .registers 7
    .param p1, "callback"    # Landroid/app/IForegroundServiceObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7393
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7394
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7397
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7398
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7399
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7400
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7401
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 7404
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7406
    nop

    .line 7407
    return v3

    .line 7404
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7406
    throw v2
.end method

.method public blacklist registerIntentSenderCancelListenerEx(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)Z
    .registers 8
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7132
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7133
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7136
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7137
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7138
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7139
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7140
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7141
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 7144
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7146
    nop

    .line 7147
    return v3

    .line 7144
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7146
    throw v2
.end method

.method public greylist-max-o registerProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 7
    .param p1, "observer"    # Landroid/app/IProcessObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8095
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8096
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8098
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8099
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8100
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8101
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 8104
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8106
    nop

    .line 8107
    return-void

    .line 8104
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8106
    throw v2
.end method

.method public greylist-max-o registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;
    .registers 13
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/content/IIntentReceiver;
    .param p4, "filter"    # Landroid/content/IntentFilter;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .param p7, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6117
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6121
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6123
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6124
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6125
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6126
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6127
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 6128
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 6129
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6130
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6131
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_42

    .line 6134
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6136
    nop

    .line 6137
    return-object v3

    .line 6134
    .end local v3    # "_result":Landroid/content/Intent;
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6136
    throw v2
.end method

.method public blacklist registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;
    .registers 15
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "receiverId"    # Ljava/lang/String;
    .param p5, "receiver"    # Landroid/content/IIntentReceiver;
    .param p6, "filter"    # Landroid/content/IntentFilter;
    .param p7, "requiredPermission"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .param p9, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6141
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6142
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6145
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6147
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6148
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6149
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6150
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6151
    const/4 v2, 0x0

    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6152
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6153
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 6154
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 6155
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6156
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6157
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;
    :try_end_40
    .catchall {:try_start_c .. :try_end_40} :catchall_48

    .line 6160
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6162
    nop

    .line 6163
    return-object v3

    .line 6160
    .end local v3    # "_result":Landroid/content/Intent;
    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6162
    throw v2
.end method

.method public blacklist registerStrictModeCallback(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7857
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7858
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7860
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7861
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7862
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7863
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 7866
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7868
    nop

    .line 7869
    return-void

    .line 7866
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7868
    throw v2
.end method

.method public greylist-max-o registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/app/ITaskStackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9188
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9191
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9192
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9193
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9194
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9197
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9199
    nop

    .line 9200
    return-void

    .line 9197
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9199
    throw v2
.end method

.method public blacklist registerUidFrozenStateChangedCallback(Landroid/app/IUidFrozenStateChangedCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/app/IUidFrozenStateChangedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10640
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10641
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10643
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10644
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 10645
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10646
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 10649
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10651
    nop

    .line 10652
    return-void

    .line 10649
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10651
    throw v2
.end method

.method public greylist-max-o registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    .registers 10
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "which"    # I
    .param p3, "cutpoint"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5786
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5789
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5790
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5791
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5792
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5793
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5794
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5795
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 5798
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5800
    nop

    .line 5801
    return-void

    .line 5798
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5800
    throw v2
.end method

.method public blacklist registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;
    .registers 11
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "which"    # I
    .param p3, "cutpoint"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5832
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5833
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5836
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5837
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5838
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5839
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5840
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5841
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5842
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5843
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5844
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 5847
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5849
    nop

    .line 5850
    return-object v3

    .line 5847
    .end local v3    # "_result":Landroid/os/IBinder;
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5849
    throw v2
.end method

.method public greylist-max-o registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .registers 8
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8547
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8548
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8550
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8551
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8552
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8553
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x92

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8554
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 8557
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8559
    nop

    .line 8560
    return-void

    .line 8557
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8559
    throw v2
.end method

.method public blacklist removeApplicationStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/app/IApplicationStartInfoCompleteListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9996
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9997
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9999
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10000
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 10001
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10002
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10003
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 10006
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10008
    nop

    .line 10009
    return-void

    .line 10006
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10008
    throw v2
.end method

.method public greylist-max-o removeContentProvider(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "connection"    # Landroid/os/IBinder;
    .param p2, "stable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7200
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7202
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7204
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7205
    iget-object v1, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x48

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 7208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7209
    nop

    .line 7210
    return-void

    .line 7208
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7209
    throw v1
.end method

.method public greylist-max-o removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8251
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8252
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8254
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8255
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8256
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8257
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8258
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 8261
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8263
    nop

    .line 8264
    return-void

    .line 8261
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8263
    throw v2
.end method

.method public blacklist removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8267
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8268
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8270
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8272
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8273
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8274
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x84

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8275
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 8278
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8280
    nop

    .line 8281
    return-void

    .line 8278
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8280
    throw v2
.end method

.method public blacklist removeOverridePermissionState(IILjava/lang/String;)V
    .registers 9
    .param p1, "originatingUid"    # I
    .param p2, "uid"    # I
    .param p3, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10811
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10812
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10814
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10815
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10816
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10817
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10818
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x107

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10819
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 10822
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10824
    nop

    .line 10825
    return-void

    .line 10822
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10824
    throw v2
.end method

.method public greylist-max-o removeTask(I)Z
    .registers 7
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8077
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8078
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8081
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8082
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8083
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8084
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8085
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 8088
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8090
    nop

    .line 8091
    return v3

    .line 8088
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8090
    throw v2
.end method

.method public blacklist removeUidFromObserver(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 9
    .param p1, "observerToken"    # Landroid/os/IBinder;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5887
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5888
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5890
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5891
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5892
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5893
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5894
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5895
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 5898
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5900
    nop

    .line 5901
    return-void

    .line 5898
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5900
    throw v2
.end method

.method public blacklist reportStartInfoViewTimestamps(JJ)V
    .registers 10
    .param p1, "renderThreadDrawStartTimeNs"    # J
    .param p3, "framePresentedTimeNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10046
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10048
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10049
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 10050
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 10051
    iget-object v1, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xe4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 10054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10055
    nop

    .line 10056
    return-void

    .line 10054
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10055
    throw v1
.end method

.method public greylist-max-o requestBugReport(I)V
    .registers 7
    .param p1, "bugreportType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8610
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8611
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8613
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8614
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8615
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x96

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8616
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 8619
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8621
    nop

    .line 8622
    return-void

    .line 8619
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8621
    throw v2
.end method

.method public blacklist requestBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "shareTitle"    # Ljava/lang/String;
    .param p2, "shareDescription"    # Ljava/lang/String;
    .param p3, "bugreportType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8625
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8626
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8628
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8629
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8630
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8631
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8632
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x97

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8633
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 8636
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8638
    nop

    .line 8639
    return-void

    .line 8636
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8638
    throw v2
.end method

.method public blacklist requestBugReportWithExtraAttachments(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8725
    .local p1, "extraAttachment":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8726
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8728
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8729
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 8730
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8731
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 8734
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8736
    nop

    .line 8737
    return-void

    .line 8734
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8736
    throw v2
.end method

.method public blacklist requestFullBugReport()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8740
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8741
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8743
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8744
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8745
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 8748
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8750
    nop

    .line 8751
    return-void

    .line 8748
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8750
    throw v2
.end method

.method public blacklist requestInteractiveBugReport()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8711
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8712
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8714
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8715
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8716
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 8719
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8721
    nop

    .line 8722
    return-void

    .line 8719
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8721
    throw v2
.end method

.method public blacklist requestInteractiveBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "shareTitle"    # Ljava/lang/String;
    .param p2, "shareDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8695
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8696
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8698
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8700
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8701
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8702
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 8705
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8707
    nop

    .line 8708
    return-void

    .line 8705
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8707
    throw v2
.end method

.method public blacklist requestRemoteBugReport(J)V
    .registers 8
    .param p1, "nonce"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8754
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8755
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8757
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8758
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8759
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8760
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 8763
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8765
    nop

    .line 8766
    return-void

    .line 8763
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8765
    throw v2
.end method

.method public blacklist requestSystemServerHeapDump()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8596
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8597
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8599
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8600
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x95

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8601
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 8604
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8606
    nop

    .line 8607
    return-void

    .line 8604
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8606
    throw v2
.end method

.method public greylist-max-o requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "shareTitle"    # Ljava/lang/String;
    .param p2, "shareDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8652
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8653
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8655
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8656
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8657
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8658
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x98

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8659
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 8662
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8664
    nop

    .line 8665
    return-void

    .line 8662
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8664
    throw v2
.end method

.method public greylist-max-o requestWifiBugReport(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "shareTitle"    # Ljava/lang/String;
    .param p2, "shareDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8679
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8680
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8682
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8683
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8684
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8685
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x99

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8686
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 8689
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8691
    nop

    .line 8692
    return-void

    .line 8689
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8691
    throw v2
.end method

.method public blacklist resetAppErrors()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10241
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10242
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10244
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10245
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xec

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10246
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 10249
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10251
    nop

    .line 10252
    return-void

    .line 10249
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10251
    throw v2
.end method

.method public greylist-max-o resizeTask(ILandroid/graphics/Rect;I)V
    .registers 9
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "resizeMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9250
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9254
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9255
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9256
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9257
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9258
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 9261
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9263
    nop

    .line 9264
    return-void

    .line 9261
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9263
    throw v2
.end method

.method public greylist-max-o restart()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8955
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8956
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8958
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8959
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8960
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 8963
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8965
    nop

    .line 8966
    return-void

    .line 8963
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8965
    throw v2
.end method

.method public blacklist restartUserInBackground(II)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "userStartMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10559
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10560
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10563
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10564
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10565
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10566
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10567
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10568
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 10571
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10573
    nop

    .line 10574
    return v3

    .line 10571
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10573
    throw v2
.end method

.method public greylist-max-o resumeAppSwitches()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7575
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7576
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7578
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7579
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7580
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 7583
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7585
    nop

    .line 7586
    return-void

    .line 7583
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7585
    throw v2
.end method

.method public greylist-max-o revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    .registers 11
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "mode"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6931
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6932
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6934
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6935
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6936
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6937
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6938
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6939
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6940
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6941
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 6944
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6946
    nop

    .line 6947
    return-void

    .line 6944
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6946
    throw v2
.end method

.method public greylist-max-o scheduleApplicationInfoChanged(Ljava/util/List;I)V
    .registers 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9726
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9727
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9729
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9730
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 9731
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9732
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9733
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9736
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9738
    nop

    .line 9739
    return-void

    .line 9736
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9738
    throw v2
.end method

.method public greylist-max-o sendIdleJobTrigger()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9612
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9613
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9615
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9616
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9617
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 9620
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9622
    nop

    .line 9623
    return-void

    .line 9620
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9622
    throw v2
.end method

.method public blacklist sendIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 15
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "target"    # Landroid/content/IIntentSender;
    .param p3, "whitelistToken"    # Landroid/os/IBinder;
    .param p4, "code"    # I
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p8, "requiredPermission"    # Ljava/lang/String;
    .param p9, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9626
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9627
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9630
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9631
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9632
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9633
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 9634
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9635
    const/4 v2, 0x0

    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9636
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9637
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9638
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9639
    invoke-virtual {v0, p9, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9640
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9641
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9642
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_44

    .line 9645
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9647
    nop

    .line 9648
    return v3

    .line 9645
    .end local v3    # "_result":I
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9647
    throw v2
.end method

.method public blacklist serviceDoneExecuting(Landroid/os/IBinder;IIILandroid/content/Intent;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "startId"    # I
    .param p4, "res"    # I
    .param p5, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7021
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7023
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7024
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7025
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7026
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7027
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7028
    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7029
    iget-object v1, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2b

    .line 7032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7033
    nop

    .line 7034
    return-void

    .line 7032
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7033
    throw v1
.end method

.method public greylist-max-r setActivityController(Landroid/app/IActivityController;Z)V
    .registers 8
    .param p1, "watcher"    # Landroid/app/IActivityController;
    .param p2, "imAMonkey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6950
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6951
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6953
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6954
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6955
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6956
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6957
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6960
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6962
    nop

    .line 6963
    return-void

    .line 6960
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6962
    throw v2
.end method

.method public blacklist setActivityLocusContext(Landroid/content/ComponentName;Landroid/content/LocusId;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "locusId"    # Landroid/content/LocusId;
    .param p3, "appToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10129
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10130
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10132
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10133
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10134
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10135
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 10136
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10137
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 10140
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10142
    nop

    .line 10143
    return-void

    .line 10140
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10142
    throw v2
.end method

.method public greylist-max-o setAgentApp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6628
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6629
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6631
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6632
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6633
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6634
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6635
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6638
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6640
    nop

    .line 6641
    return-void

    .line 6638
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6640
    throw v2
.end method

.method public greylist-max-o setAlwaysFinish(Z)V
    .registers 7
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6644
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6645
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6647
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6648
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6649
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6650
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 6653
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6655
    nop

    .line 6656
    return-void

    .line 6653
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6655
    throw v2
.end method

.method public greylist-max-o setDebugApp(Ljava/lang/String;ZZ)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "waitForDebugger"    # Z
    .param p3, "persistent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6611
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6612
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6614
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6615
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6616
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6617
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6618
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6619
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6622
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6624
    nop

    .line 6625
    return-void

    .line 6622
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6624
    throw v2
.end method

.method public blacklist setDeterministicUidIdle(Z)V
    .registers 7
    .param p1, "deterministic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9531
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9532
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9534
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9535
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9536
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xca

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9537
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9540
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9542
    nop

    .line 9543
    return-void

    .line 9540
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9542
    throw v2
.end method

.method public greylist-max-o setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    .registers 11
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "maxMemSize"    # J
    .param p5, "reportPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9284
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9285
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9287
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9289
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9290
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 9291
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9292
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9293
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 9296
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9298
    nop

    .line 9299
    return-void

    .line 9296
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9298
    throw v2
.end method

.method public blacklist setFocusedRootTask(I)V
    .registers 7
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8923
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8924
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8926
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8927
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8928
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8929
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 8932
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8934
    nop

    .line 8935
    return-void

    .line 8932
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8934
    throw v2
.end method

.method public greylist-max-o setHasTopUi(Z)V
    .registers 7
    .param p1, "hasTopUi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9694
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9695
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9697
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9698
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9699
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9700
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9703
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9705
    nop

    .line 9706
    return-void

    .line 9703
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9705
    throw v2
.end method

.method public greylist-max-o setPackageScreenCompatMode(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7992
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7993
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7995
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7996
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7997
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7998
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7999
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 8002
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8004
    nop

    .line 8005
    return-void

    .line 8002
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8004
    throw v2
.end method

.method public greylist-max-o setPersistentVrThread(I)V
    .registers 7
    .param p1, "tid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9742
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9743
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9745
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9746
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9747
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9748
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9751
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9753
    nop

    .line 9754
    return-void

    .line 9751
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9753
    throw v2
.end method

.method public greylist-max-o setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "isForeground"    # Z
    .param p4, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7245
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7246
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7248
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7250
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7251
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7252
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7253
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7254
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 7257
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7259
    nop

    .line 7260
    return-void

    .line 7257
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7259
    throw v2
.end method

.method public greylist-max-o setProcessLimit(I)V
    .registers 7
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6812
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6813
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6815
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6816
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6817
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6818
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 6821
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6823
    nop

    .line 6824
    return-void

    .line 6821
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6823
    throw v2
.end method

.method public greylist-max-o setProcessMemoryTrimLevel(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9016
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9017
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9020
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9021
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9022
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9023
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9024
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xae

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9025
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9026
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 9029
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9031
    nop

    .line 9032
    return v3

    .line 9029
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9031
    throw v2
.end method

.method public blacklist setProcessStateSummary([B)V
    .registers 7
    .param p1, "state"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10167
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10168
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10170
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 10172
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10173
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 10176
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10178
    nop

    .line 10179
    return-void

    .line 10176
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10178
    throw v2
.end method

.method public greylist-max-o setRenderThread(I)V
    .registers 7
    .param p1, "tid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9671
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9672
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9674
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9676
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9677
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9680
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9682
    nop

    .line 9683
    return-void

    .line 9680
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9682
    throw v2
.end method

.method public greylist-max-o setRequestedOrientation(Landroid/os/IBinder;I)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestedOrientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7213
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7214
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7216
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7217
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7218
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7219
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7220
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 7223
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7225
    nop

    .line 7226
    return-void

    .line 7223
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7225
    throw v2
.end method

.method public blacklist setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V
    .registers 12
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "flags"    # I
    .param p6, "foregroundServiceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7263
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7264
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7266
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7267
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7268
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7269
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7270
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7271
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 7272
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 7273
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7274
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 7277
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7279
    nop

    .line 7280
    return-void

    .line 7277
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7279
    throw v2
.end method

.method public blacklist setStopUserOnSwitch(I)V
    .registers 7
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8062
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8063
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8065
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8066
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8067
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8068
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 8071
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8072
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8073
    nop

    .line 8074
    return-void

    .line 8071
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8072
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8073
    throw v2
.end method

.method public greylist-max-o setTaskResizeable(II)V
    .registers 8
    .param p1, "taskId"    # I
    .param p2, "resizeableMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9234
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9239
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9240
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xba

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9241
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9244
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9246
    nop

    .line 9247
    return-void

    .line 9244
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9246
    throw v2
.end method

.method public blacklist setThemeOverlayReady(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9173
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9174
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9178
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9179
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9182
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9184
    nop

    .line 9185
    return-void

    .line 9182
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9184
    throw v2
.end method

.method public greylist-max-o setUserIsMonkey(Z)V
    .registers 7
    .param p1, "monkey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8858
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8859
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8861
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8862
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8863
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8864
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 8867
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8869
    nop

    .line 8870
    return-void

    .line 8867
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8869
    throw v2
.end method

.method public blacklist shouldServiceTimeOut(Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10601
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10602
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10605
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10606
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10607
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 10608
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10609
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10610
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 10613
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10615
    nop

    .line 10616
    return v3

    .line 10613
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10615
    throw v2
.end method

.method public greylist-max-o showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 8
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8193
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8194
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8196
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8197
    const/4 v2, 0x0

    if-eqz p1, :cond_1c

    .line 8198
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8199
    invoke-static {p1, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1f

    .line 8202
    :cond_1c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8204
    :goto_1f
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8205
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x80

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8206
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 8209
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8211
    nop

    .line 8212
    return-void

    .line 8209
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8211
    throw v2
.end method

.method public greylist-max-o showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    .registers 8
    .param p1, "who"    # Landroid/app/IApplicationThread;
    .param p2, "waiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6966
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6967
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6969
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6970
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6971
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6972
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6973
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6976
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6978
    nop

    .line 6979
    return-void

    .line 6976
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6978
    throw v2
.end method

.method public greylist-max-o shutdown(I)Z
    .registers 7
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7543
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7544
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7547
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7548
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7549
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7550
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7551
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 7554
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7556
    nop

    .line 7557
    return v3

    .line 7554
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7556
    throw v2
.end method

.method public greylist-max-o signalPersistentProcesses(I)V
    .registers 7
    .param p1, "signal"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6986
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6987
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6989
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6990
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6991
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6992
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 6995
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6997
    nop

    .line 6998
    return-void

    .line 6995
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6997
    throw v2
.end method

.method public greylist-max-o startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .registers 16
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "flags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6027
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6028
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6031
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6032
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6033
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6034
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6035
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6036
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6037
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6038
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 6039
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 6040
    invoke-virtual {v0, p9, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6041
    invoke-virtual {v0, p10, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6042
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6043
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6044
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_47

    .line 6047
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6049
    nop

    .line 6050
    return v3

    .line 6047
    .end local v3    # "_result":I
    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6049
    throw v2
.end method

.method public greylist-max-o startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .registers 28
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "flags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8408
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 8409
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 8412
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8413
    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_8c

    .line 8414
    move-object/from16 v4, p2

    :try_start_18
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_88

    .line 8415
    const/4 v0, 0x0

    move-object/from16 v5, p3

    :try_start_1e
    invoke-virtual {v1, v5, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_84

    .line 8416
    move-object/from16 v6, p4

    :try_start_23
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_80

    .line 8417
    move-object/from16 v7, p5

    :try_start_28
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_7c

    .line 8418
    move-object/from16 v8, p6

    :try_start_2d
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_78

    .line 8419
    move/from16 v9, p7

    :try_start_32
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_74

    .line 8420
    move/from16 v10, p8

    :try_start_37
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_70

    .line 8421
    move-object/from16 v11, p9

    :try_start_3c
    invoke-virtual {v1, v11, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_6c

    .line 8422
    move-object/from16 v12, p10

    :try_start_41
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_68

    .line 8423
    move/from16 v13, p11

    :try_start_46
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_64

    .line 8424
    move-object/from16 v14, p0

    :try_start_4b
    iget-object v15, v14, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8c

    invoke-interface {v15, v3, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 8425
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 8426
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_62

    .line 8429
    .end local v0    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 8430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8431
    nop

    .line 8432
    return v3

    .line 8429
    .end local v3    # "_result":I
    :catchall_62
    move-exception v0

    goto :goto_a3

    :catchall_64
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_a3

    :catchall_68
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_a1

    :catchall_6c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9f

    :catchall_70
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9d

    :catchall_74
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9b

    :catchall_78
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_99

    :catchall_7c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_97

    :catchall_80
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_95

    :catchall_84
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_93

    :catchall_88
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_91

    :catchall_8c
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p2

    :goto_91
    move-object/from16 v5, p3

    :goto_93
    move-object/from16 v6, p4

    :goto_95
    move-object/from16 v7, p5

    :goto_97
    move-object/from16 v8, p6

    :goto_99
    move/from16 v9, p7

    :goto_9b
    move/from16 v10, p8

    :goto_9d
    move-object/from16 v11, p9

    :goto_9f
    move-object/from16 v12, p10

    :goto_a1
    move/from16 v13, p11

    :goto_a3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 8430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8431
    throw v0
.end method

.method public blacklist startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .registers 29
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "flags"    # I
    .param p10, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p11, "options"    # Landroid/os/Bundle;
    .param p12, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8436
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 8437
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 8440
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8441
    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8442
    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_92

    .line 8443
    move-object/from16 v5, p3

    :try_start_1d
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_8e

    .line 8444
    const/4 v0, 0x0

    move-object/from16 v6, p4

    :try_start_23
    invoke-virtual {v1, v6, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_8a

    .line 8445
    move-object/from16 v7, p5

    :try_start_28
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_86

    .line 8446
    move-object/from16 v8, p6

    :try_start_2d
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_82

    .line 8447
    move-object/from16 v9, p7

    :try_start_32
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_7e

    .line 8448
    move/from16 v10, p8

    :try_start_37
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_7a

    .line 8449
    move/from16 v11, p9

    :try_start_3c
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_76

    .line 8450
    move-object/from16 v12, p10

    :try_start_41
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_72

    .line 8451
    move-object/from16 v13, p11

    :try_start_46
    invoke-virtual {v1, v13, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_6e

    .line 8452
    move/from16 v14, p12

    :try_start_4b
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_6a

    .line 8453
    move-object/from16 v15, p0

    :try_start_50
    iget-object v0, v15, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 8454
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 8455
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_60
    .catchall {:try_start_50 .. :try_end_60} :catchall_68

    .line 8458
    .end local v0    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 8459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8460
    nop

    .line 8461
    return v3

    .line 8458
    .end local v3    # "_result":I
    :catchall_68
    move-exception v0

    goto :goto_a9

    :catchall_6a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_a9

    :catchall_6e
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_a7

    :catchall_72
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_a5

    :catchall_76
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_a3

    :catchall_7a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_a1

    :catchall_7e
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_9f

    :catchall_82
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_9d

    :catchall_86
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_9b

    :catchall_8a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_99

    :catchall_8e
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_97

    :catchall_92
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v5, p3

    :goto_97
    move-object/from16 v6, p4

    :goto_99
    move-object/from16 v7, p5

    :goto_9b
    move-object/from16 v8, p6

    :goto_9d
    move-object/from16 v9, p7

    :goto_9f
    move/from16 v10, p8

    :goto_a1
    move/from16 v11, p9

    :goto_a3
    move-object/from16 v12, p10

    :goto_a5
    move-object/from16 v13, p11

    :goto_a7
    move/from16 v14, p12

    :goto_a9
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 8459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8460
    throw v0
.end method

.method public greylist-max-o startActivityFromRecents(ILandroid/os/Bundle;)I
    .registers 8
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9099
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9100
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9103
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9105
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9106
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9107
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9108
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 9111
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9113
    nop

    .line 9114
    return v3

    .line 9111
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9113
    throw v2
.end method

.method public blacklist startActivityWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .registers 28
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "flags"    # I
    .param p10, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p11, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6054
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 6055
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 6058
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6059
    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_8c

    .line 6060
    move-object/from16 v4, p2

    :try_start_18
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_88

    .line 6061
    move-object/from16 v5, p3

    :try_start_1d
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_84

    .line 6062
    const/4 v0, 0x0

    move-object/from16 v6, p4

    :try_start_23
    invoke-virtual {v1, v6, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_80

    .line 6063
    move-object/from16 v7, p5

    :try_start_28
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_7c

    .line 6064
    move-object/from16 v8, p6

    :try_start_2d
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_78

    .line 6065
    move-object/from16 v9, p7

    :try_start_32
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_74

    .line 6066
    move/from16 v10, p8

    :try_start_37
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_70

    .line 6067
    move/from16 v11, p9

    :try_start_3c
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_6c

    .line 6068
    move-object/from16 v12, p10

    :try_start_41
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_68

    .line 6069
    move-object/from16 v13, p11

    :try_start_46
    invoke-virtual {v1, v13, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_64

    .line 6070
    move-object/from16 v14, p0

    :try_start_4b
    iget-object v15, v14, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    invoke-interface {v15, v3, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 6071
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 6072
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_62

    .line 6075
    .end local v0    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 6076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6077
    nop

    .line 6078
    return v3

    .line 6075
    .end local v3    # "_result":I
    :catchall_62
    move-exception v0

    goto :goto_a3

    :catchall_64
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_a3

    :catchall_68
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_a1

    :catchall_6c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9f

    :catchall_70
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9d

    :catchall_74
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9b

    :catchall_78
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_99

    :catchall_7c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_97

    :catchall_80
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_95

    :catchall_84
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_93

    :catchall_88
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_91

    :catchall_8c
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p2

    :goto_91
    move-object/from16 v5, p3

    :goto_93
    move-object/from16 v6, p4

    :goto_95
    move-object/from16 v7, p5

    :goto_97
    move-object/from16 v8, p6

    :goto_99
    move-object/from16 v9, p7

    :goto_9b
    move/from16 v10, p8

    :goto_9d
    move/from16 v11, p9

    :goto_9f
    move-object/from16 v12, p10

    :goto_a1
    move-object/from16 v13, p11

    :goto_a3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 6076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6077
    throw v0
.end method

.method public greylist-max-o startBinderTracking()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9390
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9395
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9396
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9397
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 9400
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9402
    nop

    .line 9403
    return v3

    .line 9400
    .end local v3    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9402
    throw v2
.end method

.method public greylist-max-o startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9596
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9597
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9599
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9600
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9601
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9602
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xce

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9603
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9606
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9608
    nop

    .line 9609
    return-void

    .line 9606
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9608
    throw v2
.end method

.method public blacklist startDelegateShellPermissionIdentity(I[Ljava/lang/String;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9818
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9819
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9821
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9822
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9823
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 9824
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xda

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9825
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9828
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9830
    nop

    .line 9831
    return-void

    .line 9828
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9830
    throw v2
.end method

.method public greylist-max-o startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z
    .registers 14
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "profileFile"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "watcher"    # Landroid/app/IInstrumentationWatcher;
    .param p6, "connection"    # Landroid/app/IUiAutomationConnection;
    .param p7, "userId"    # I
    .param p8, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6659
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6660
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6663
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6664
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6665
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6666
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6667
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6668
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6669
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6670
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 6671
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6672
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6673
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6674
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_41

    .line 6677
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6679
    nop

    .line 6680
    return v3

    .line 6677
    .end local v3    # "_result":Z
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6679
    throw v2
.end method

.method public blacklist startProfile(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10335
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10339
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10340
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10341
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10342
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10343
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 10346
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10348
    nop

    .line 10349
    return v3

    .line 10346
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10348
    throw v2
.end method

.method public blacklist startProfileWithListener(ILandroid/os/IProgressListener;)Z
    .registers 8
    .param p1, "userid"    # I
    .param p2, "unlockProgressListener"    # Landroid/os/IProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10540
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10541
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10544
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10545
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10546
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 10547
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10548
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10549
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 10552
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10554
    nop

    .line 10555
    return v3

    .line 10552
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10554
    throw v2
.end method

.method public blacklist startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 13
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "requireForeground"    # Z
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callingFeatureId"    # Ljava/lang/String;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6462
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6463
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6466
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6467
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6468
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6469
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6470
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6471
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6472
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6473
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 6474
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6475
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6476
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_42

    .line 6479
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6481
    nop

    .line 6482
    return-object v3

    .line 6479
    .end local v3    # "_result":Landroid/content/ComponentName;
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6481
    throw v2
.end method

.method public greylist-max-o startSystemLockTaskMode(I)V
    .registers 7
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9118
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9119
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9121
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9123
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9124
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9127
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9129
    nop

    .line 9130
    return-void

    .line 9127
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9129
    throw v2
.end method

.method public greylist-max-o startUserInBackground(I)Z
    .registers 7
    .param p1, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9064
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9065
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9068
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9069
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9070
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9071
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9072
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 9075
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9077
    nop

    .line 9078
    return v3

    .line 9075
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9077
    throw v2
.end method

.method public blacklist startUserInBackgroundVisibleOnDisplay(IILandroid/os/IProgressListener;)Z
    .registers 9
    .param p1, "userid"    # I
    .param p2, "displayId"    # I
    .param p3, "unlockProgressListener"    # Landroid/os/IProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10516
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10517
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10520
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10521
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10522
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10523
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 10524
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10525
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10526
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 10529
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10531
    nop

    .line 10532
    return v3

    .line 10529
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10531
    throw v2
.end method

.method public greylist-max-o startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z
    .registers 8
    .param p1, "userid"    # I
    .param p2, "unlockProgressListener"    # Landroid/os/IProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9793
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9794
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9797
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9798
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9799
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9800
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9801
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9802
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 9805
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9807
    nop

    .line 9808
    return v3

    .line 9805
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9807
    throw v2
.end method

.method public blacklist startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z
    .registers 8
    .param p1, "userid"    # I
    .param p2, "unlockProgressListener"    # Landroid/os/IProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9896
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9897
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9900
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9901
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9902
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9903
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xde

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9904
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9905
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 9908
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9910
    nop

    .line 9911
    return v3

    .line 9908
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9910
    throw v2
.end method

.method public blacklist stopAppForUser(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7376
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7379
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7381
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7382
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7383
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 7386
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7388
    nop

    .line 7389
    return-void

    .line 7386
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7388
    throw v2
.end method

.method public greylist-max-o stopAppSwitches()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7561
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7562
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7564
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7565
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7566
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 7569
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7571
    nop

    .line 7572
    return-void

    .line 7569
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7571
    throw v2
.end method

.method public greylist-max-o stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z
    .registers 7
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9409
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9410
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9413
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9414
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9415
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9416
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9417
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 9420
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9422
    nop

    .line 9423
    return v3

    .line 9420
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9422
    throw v2
.end method

.method public blacklist stopDelegateShellPermissionIdentity()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9839
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9840
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9842
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9843
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9844
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 9847
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9849
    nop

    .line 9850
    return-void

    .line 9847
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9849
    throw v2
.end method

.method public blacklist stopProfile(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10360
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10361
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10364
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10365
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10366
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10367
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10368
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 10371
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10373
    nop

    .line 10374
    return v3

    .line 10371
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10373
    throw v2
.end method

.method public greylist-max-o stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 10
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6486
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6487
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6490
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6492
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6493
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6494
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6495
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6496
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6497
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 6500
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6502
    nop

    .line 6503
    return v3

    .line 6500
    .end local v3    # "_result":I
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6502
    throw v2
.end method

.method public greylist-max-o stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .registers 9
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "startId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6792
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6793
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6796
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6797
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6798
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6799
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6800
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x33

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6801
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6802
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 6805
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6807
    nop

    .line 6808
    return v3

    .line 6805
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6807
    throw v2
.end method

.method public greylist-max-o stopUser(IZLandroid/app/IStopUserCallback;)I
    .registers 9
    .param p1, "userid"    # I
    .param p2, "stopProfileRegardlessOfParent"    # Z
    .param p3, "callback"    # Landroid/app/IStopUserCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8465
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8466
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8469
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8470
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8471
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8472
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8473
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8474
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8475
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 8478
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8480
    nop

    .line 8481
    return v3

    .line 8478
    .end local v3    # "_result":I
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8480
    throw v2
.end method

.method public blacklist stopUserExceptCertainProfiles(IZLandroid/app/IStopUserCallback;)I
    .registers 9
    .param p1, "userid"    # I
    .param p2, "stopProfileRegardlessOfParent"    # Z
    .param p3, "callback"    # Landroid/app/IStopUserCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8504
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8505
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8508
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8509
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8510
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8511
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8512
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x90

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8513
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8514
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 8517
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8519
    nop

    .line 8520
    return v3

    .line 8517
    .end local v3    # "_result":I
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8519
    throw v2
.end method

.method public blacklist stopUserWithCallback(ILandroid/app/IStopUserCallback;)I
    .registers 8
    .param p1, "userid"    # I
    .param p2, "callback"    # Landroid/app/IStopUserCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8485
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8486
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8489
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8490
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8491
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8492
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8493
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8494
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 8497
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8499
    nop

    .line 8500
    return v3

    .line 8497
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8499
    throw v2
.end method

.method public blacklist stopUserWithDelayedLocking(ILandroid/app/IStopUserCallback;)I
    .registers 8
    .param p1, "userid"    # I
    .param p2, "callback"    # Landroid/app/IStopUserCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8528
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8529
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8532
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8533
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8534
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8535
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x91

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8536
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8537
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 8540
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8542
    nop

    .line 8543
    return v3

    .line 8540
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8542
    throw v2
.end method

.method public greylist-max-o suppressResizeConfigChanges(Z)V
    .registers 7
    .param p1, "suppress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9427
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9428
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9430
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9431
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9432
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9433
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9436
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9438
    nop

    .line 9439
    return-void

    .line 9436
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9438
    throw v2
.end method

.method public greylist-max-o switchUser(I)Z
    .registers 7
    .param p1, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8008
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8009
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8012
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8013
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8014
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x75

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8015
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8016
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 8019
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8021
    nop

    .line 8022
    return v3

    .line 8019
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8021
    throw v2
.end method

.method public greylist-max-o unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    .registers 7
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7628
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7629
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7631
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7632
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7633
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x60

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7634
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 7637
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7639
    nop

    .line 7640
    return-void

    .line 7637
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7639
    throw v2
.end method

.method public blacklist unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "service"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7229
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7230
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7232
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7234
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7235
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7236
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 7239
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7241
    nop

    .line 7242
    return-void

    .line 7239
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7241
    throw v2
.end method

.method public greylist-max-o unbindService(Landroid/app/IServiceConnection;)Z
    .registers 7
    .param p1, "connection"    # Landroid/app/IServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6576
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6577
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6580
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6581
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6582
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6583
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6584
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 6587
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6589
    nop

    .line 6590
    return v3

    .line 6587
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6589
    throw v2
.end method

.method public greylist-max-o unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    .registers 9
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6264
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6265
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6267
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6268
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6269
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6270
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6271
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6272
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6275
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6277
    nop

    .line 6278
    return-void

    .line 6275
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6277
    throw v2
.end method

.method public greylist-max-o unhandledBack()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6082
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6083
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6085
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6086
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6087
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 6090
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6092
    nop

    .line 6093
    return-void

    .line 6090
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6092
    throw v2
.end method

.method public greylist-max-o unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    .registers 10
    .param p1, "userid"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9448
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9449
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9452
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9454
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 9455
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 9456
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9457
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9458
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9459
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 9462
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9464
    nop

    .line 9465
    return v3

    .line 9462
    .end local v3    # "_result":Z
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9464
    throw v2
.end method

.method public blacklist unlockUser2(ILandroid/os/IProgressListener;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "listener"    # Landroid/os/IProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9480
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9481
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9484
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9485
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9486
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9487
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9488
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9489
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 9492
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9494
    nop

    .line 9495
    return v3

    .line 9492
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9494
    throw v2
.end method

.method public greylist-max-o unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
    .registers 8
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7151
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7152
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7154
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7156
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7157
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7158
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 7161
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7163
    nop

    .line 7164
    return-void

    .line 7161
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7163
    throw v2
.end method

.method public greylist-max-o unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 7
    .param p1, "observer"    # Landroid/app/IProcessObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8110
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8111
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8113
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8114
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8115
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8116
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 8119
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8121
    nop

    .line 8122
    return-void

    .line 8119
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8121
    throw v2
.end method

.method public greylist-max-o unregisterReceiver(Landroid/content/IIntentReceiver;)V
    .registers 7
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6167
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6168
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6170
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6172
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6173
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 6176
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6178
    nop

    .line 6179
    return-void

    .line 6176
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6178
    throw v2
.end method

.method public greylist-max-o unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/app/ITaskStackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9203
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9204
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9206
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9207
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9208
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9209
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9212
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9214
    nop

    .line 9215
    return-void

    .line 9212
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9214
    throw v2
.end method

.method public blacklist unregisterUidFrozenStateChangedCallback(Landroid/app/IUidFrozenStateChangedCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/app/IUidFrozenStateChangedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10655
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10656
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10658
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10659
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 10660
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x100

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10661
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 10664
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10666
    nop

    .line 10667
    return-void

    .line 10664
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10666
    throw v2
.end method

.method public greylist-max-o unregisterUidObserver(Landroid/app/IUidObserver;)V
    .registers 7
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5804
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5805
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5807
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5808
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5809
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5810
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 5813
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5815
    nop

    .line 5816
    return-void

    .line 5813
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5815
    throw v2
.end method

.method public greylist-max-o unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .registers 7
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8563
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8564
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8566
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8567
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8568
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x93

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8569
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 8572
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8574
    nop

    .line 8575
    return-void

    .line 8572
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8574
    throw v2
.end method

.method public greylist-max-o unstableProviderDied(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "connection"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8374
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8375
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8377
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8378
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8379
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8380
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 8383
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8385
    nop

    .line 8386
    return-void

    .line 8383
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8385
    throw v2
.end method

.method public greylist-max-o updateConfiguration(Landroid/content/res/Configuration;)Z
    .registers 7
    .param p1, "values"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6746
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6747
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6750
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6751
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6752
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6753
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6754
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 6757
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6759
    nop

    .line 6760
    return v3

    .line 6757
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6759
    throw v2
.end method

.method public greylist-max-o updateLockTaskPackages(I[Ljava/lang/String;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9317
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9318
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9320
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 9323
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9324
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9327
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9329
    nop

    .line 9330
    return-void

    .line 9327
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9329
    throw v2
.end method

.method public blacklist updateMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6773
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6774
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6777
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6778
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6779
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6780
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6781
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6782
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 6785
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6787
    nop

    .line 6788
    return v3

    .line 6785
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6787
    throw v2
.end method

.method public greylist-max-r updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "values"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8143
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8144
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8146
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8147
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8148
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8149
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 8152
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8154
    nop

    .line 8155
    return-void

    .line 8152
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8154
    throw v2
.end method

.method public blacklist updatePersistentConfigurationWithAttribution(Landroid/content/res/Configuration;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8158
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8159
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8161
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8162
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8163
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8164
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8165
    iget-object v3, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8166
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 8169
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8171
    nop

    .line 8172
    return-void

    .line 8169
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8171
    throw v2
.end method

.method public blacklist updateServiceGroup(Landroid/app/IServiceConnection;II)V
    .registers 9
    .param p1, "connection"    # Landroid/app/IServiceConnection;
    .param p2, "group"    # I
    .param p3, "importance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6559
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6560
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6562
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6564
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6565
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6566
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6567
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6570
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6572
    nop

    .line 6573
    return-void

    .line 6570
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6572
    throw v2
.end method

.method public blacklist waitForBroadcastBarrier()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10432
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10433
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10435
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10436
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10437
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 10440
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10442
    nop

    .line 10443
    return-void

    .line 10440
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10442
    throw v2
.end method

.method public blacklist waitForBroadcastIdle()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10418
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10419
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10421
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10422
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10423
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 10426
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10428
    nop

    .line 10429
    return-void

    .line 10426
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10428
    throw v2
.end method

.method public greylist-max-o waitForNetworkStateUpdate(J)V
    .registers 8
    .param p1, "procStateSeq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9757
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9758
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9760
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9761
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 9762
    iget-object v2, p0, Landroid/app/IActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9763
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9766
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9768
    nop

    .line 9769
    return-void

    .line 9766
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9768
    throw v2
.end method

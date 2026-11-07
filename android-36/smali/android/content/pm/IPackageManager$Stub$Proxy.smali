.class Landroid/content/pm/IPackageManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager$Stub;
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

    .line 4738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4739
    iput-object p1, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 4740
    return-void
.end method

.method static synthetic blacklist lambda$getSystemSharedLibraryNamesAndPaths$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 5
    .param p0, "_reply"    # Landroid/os/Parcel;
    .param p1, "_result"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 6837
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 6839
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6840
    .local v1, "v":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6841
    return-void
.end method

.method static synthetic blacklist lambda$notifyDexLoad$1(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "_data"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 6989
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6990
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6991
    return-void
.end method


# virtual methods
.method public blacklist activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4961
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4962
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4965
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4966
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4967
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4968
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4969
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4970
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4971
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4972
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 4975
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4977
    nop

    .line 4978
    return v3

    .line 4975
    .end local v3    # "_result":Z
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4977
    throw v2
.end method

.method public greylist-max-o addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V
    .registers 11
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;
    .param p2, "ownerPackage"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "targetUserId"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6040
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6041
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6043
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6044
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6045
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6046
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6047
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6048
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6049
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x42

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6050
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 6053
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6055
    nop

    .line 6056
    return-void

    .line 6053
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6055
    throw v2
.end method

.method public greylist-max-o addPermission(Landroid/content/pm/PermissionInfo;)Z
    .registers 7
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8508
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8509
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8512
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8513
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8514
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8515
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8516
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 8519
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8521
    nop

    .line 8522
    return v3

    .line 8519
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8521
    throw v2
.end method

.method public greylist-max-o addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .registers 7
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8526
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8527
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8530
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8531
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8532
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8533
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8534
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 8537
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8539
    nop

    .line 8540
    return v3

    .line 8537
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8539
    throw v2
.end method

.method public greylist-max-o addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "activity"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5991
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5992
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5994
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5995
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5996
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5997
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5998
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5999
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6002
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6004
    nop

    .line 6005
    return-void

    .line 6002
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6004
    throw v2
.end method

.method public blacklist addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)V
    .registers 12
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I
    .param p6, "removeExisting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5917
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5918
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5920
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5921
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5922
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5923
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 5924
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5925
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5926
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5927
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5928
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 5931
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5933
    nop

    .line 5934
    return-void

    .line 5931
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5933
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 4743
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5282
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5283
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5286
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5287
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5288
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5289
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5290
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5291
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5292
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5293
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 5296
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5298
    nop

    .line 5299
    return v3

    .line 5296
    .end local v3    # "_result":Z
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5298
    throw v2
.end method

.method public blacklist canPackageQuery(Ljava/lang/String;[Ljava/lang/String;I)[Z
    .registers 9
    .param p1, "sourcePackageName"    # Ljava/lang/String;
    .param p2, "targetPackageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8866
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8867
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8870
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8871
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8872
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 8873
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8874
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8875
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8876
    invoke-virtual {v1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 8879
    .end local v2    # "_status":Z
    .local v3, "_result":[Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8881
    nop

    .line 8882
    return-object v3

    .line 8879
    .end local v3    # "_result":[Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8881
    throw v2
.end method

.method public greylist-max-o canRequestPackageInstalls(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7946
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7947
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7950
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7951
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7952
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7953
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7954
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7955
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 7958
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7960
    nop

    .line 7961
    return v3

    .line 7958
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7960
    throw v2
.end method

.method public greylist-max-o canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4884
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4885
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4888
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4889
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4890
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4891
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4892
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 4895
    .end local v2    # "_status":Z
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4897
    nop

    .line 4898
    return-object v3

    .line 4895
    .end local v3    # "_result":[Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4897
    throw v2
.end method

.method public greylist-max-o checkPackageStartable(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4751
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4752
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4754
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4755
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4756
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4757
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4758
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4761
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4763
    nop

    .line 4764
    return-void

    .line 4761
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4763
    throw v2
.end method

.method public greylist-max-o checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8559
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8560
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8563
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8564
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8565
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8566
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8567
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8568
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8569
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 8572
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8574
    nop

    .line 8575
    return v3

    .line 8572
    .end local v3    # "_result":I
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8574
    throw v2
.end method

.method public blacklist checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5060
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5061
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5064
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5065
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5066
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5067
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5068
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5069
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5070
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 5073
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5075
    nop

    .line 5076
    return v3

    .line 5073
    .end local v3    # "_result":I
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5075
    throw v2
.end method

.method public greylist checkUidPermission(Ljava/lang/String;I)I
    .registers 8
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8601
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8602
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8605
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8606
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8607
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8608
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8609
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8610
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 8613
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8615
    nop

    .line 8616
    return v3

    .line 8613
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8615
    throw v2
.end method

.method public greylist-max-o checkUidSignatures(II)I
    .registers 8
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5080
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5081
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5084
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5085
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5086
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5087
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5088
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5089
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 5092
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5094
    nop

    .line 5095
    return v3

    .line 5092
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5094
    throw v2
.end method

.method public greylist-max-o clearApplicationProfileData(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6763
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6764
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6766
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6767
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6768
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6769
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 6772
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6774
    nop

    .line 6775
    return-void

    .line 6772
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6774
    throw v2
.end method

.method public greylist-max-o clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6741
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6742
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6744
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6745
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6746
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6747
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6748
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6749
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6752
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6754
    nop

    .line 6755
    return-void

    .line 6752
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6754
    throw v2
.end method

.method public greylist-max-o clearCrossProfileIntentFilters(ILjava/lang/String;)V
    .registers 8
    .param p1, "sourceUserId"    # I
    .param p2, "ownerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6081
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6082
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6084
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6085
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6086
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6087
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6088
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6091
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6093
    nop

    .line 6094
    return-void

    .line 6091
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6093
    throw v2
.end method

.method public greylist-max-o clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6008
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6009
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6011
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6012
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6013
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6014
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6015
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6018
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6020
    nop

    .line 6021
    return-void

    .line 6018
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6020
    throw v2
.end method

.method public greylist-max-o clearPackagePreferredActivities(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5956
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5957
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5959
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5960
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5961
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5962
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 5965
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5967
    nop

    .line 5968
    return-void

    .line 5965
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5967
    throw v2
.end method

.method public blacklist clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)V
    .registers 8
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6024
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6025
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6027
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6028
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6029
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6030
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6031
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6034
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6036
    nop

    .line 6037
    return-void

    .line 6034
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6036
    throw v2
.end method

.method public greylist-max-o currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4866
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4867
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4870
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4871
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4872
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4873
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4874
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 4877
    .end local v2    # "_status":Z
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4879
    nop

    .line 4880
    return-object v3

    .line 4877
    .end local v3    # "_result":[Ljava/lang/String;
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4879
    throw v2
.end method

.method public greylist-max-o deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6695
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6696
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6698
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6700
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6701
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6702
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6705
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6707
    nop

    .line 6708
    return-void

    .line 6705
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6707
    throw v2
.end method

.method public greylist-max-o deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6718
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6719
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6721
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6722
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6723
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6724
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6725
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6726
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6729
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6731
    nop

    .line 6732
    return-void

    .line 6729
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6731
    throw v2
.end method

.method public blacklist deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .registers 9
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5808
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5809
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5811
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5812
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5813
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5814
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5815
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5816
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 5819
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5821
    nop

    .line 5822
    return-void

    .line 5819
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5821
    throw v2
.end method

.method public greylist-max-o deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .param p4, "userId"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5756
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5757
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5759
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5761
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5762
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5763
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5764
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5765
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5766
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 5769
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5771
    nop

    .line 5772
    return-void

    .line 5769
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5771
    throw v2
.end method

.method public greylist-max-o deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    .registers 10
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5783
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5784
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5786
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5787
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5788
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5789
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5790
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5791
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5792
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 5795
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5797
    nop

    .line 5798
    return-void

    .line 5795
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5797
    throw v2
.end method

.method public greylist-max-o deletePreloadsFileCache()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7965
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7966
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7968
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7969
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7970
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 7973
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7975
    nop

    .line 7976
    return-void

    .line 7973
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7975
    throw v2
.end method

.method public greylist-max-o enterSafeMode()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6906
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6907
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6909
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6910
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6911
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 6914
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6916
    nop

    .line 6917
    return-void

    .line 6914
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6916
    throw v2
.end method

.method public greylist-max-o extendVerificationTimeout(IIJ)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "verificationCodeAtTimeout"    # I
    .param p3, "millisecondsToDelay"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7260
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7261
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7263
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7264
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7265
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7266
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 7267
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7268
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 7271
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7273
    nop

    .line 7274
    return-void

    .line 7271
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7273
    throw v2
.end method

.method public greylist-max-o findPersistentPreferredActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5263
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5264
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5267
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5268
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5269
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5270
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5271
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5272
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 5275
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5277
    nop

    .line 5278
    return-object v3

    .line 5275
    .end local v3    # "_result":Landroid/content/pm/ResolveInfo;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5277
    throw v2
.end method

.method public greylist-max-o finishPackageInstall(IZ)V
    .registers 8
    .param p1, "token"    # I
    .param p2, "didLaunch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5691
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5692
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5694
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5695
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5696
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5697
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5698
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5701
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5703
    nop

    .line 5704
    return-void

    .line 5701
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5703
    throw v2
.end method

.method public greylist-max-o flushPackageRestrictionsAsUser(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6576
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6577
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6579
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6580
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6581
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6582
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 6585
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6587
    nop

    .line 6588
    return-void

    .line 6585
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6587
    throw v2
.end method

.method public greylist-max-o freeStorage(Ljava/lang/String;JILandroid/content/IntentSender;)V
    .registers 11
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J
    .param p4, "storageFlags"    # I
    .param p5, "pi"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6671
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6672
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6674
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6676
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 6677
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6678
    const/4 v2, 0x0

    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6679
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x60

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6680
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 6683
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6685
    nop

    .line 6686
    return-void

    .line 6683
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6685
    throw v2
.end method

.method public greylist-max-o freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V
    .registers 11
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J
    .param p4, "storageFlags"    # I
    .param p5, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6632
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6633
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6635
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6637
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 6638
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6639
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6640
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6641
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 6644
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6646
    nop

    .line 6647
    return-void

    .line 6644
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6646
    throw v2
.end method

.method public blacklist getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4941
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4942
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4945
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4946
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4947
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4948
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4949
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4950
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4951
    sget-object v3, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 4954
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4956
    nop

    .line 4957
    return-object v3

    .line 4954
    .end local v3    # "_result":Landroid/content/pm/ActivityInfo;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4956
    throw v2
.end method

.method public blacklist getAllApexDirectories()Ljava/util/List;
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

    .line 9083
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9084
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9087
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9088
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9089
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9090
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 9093
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9095
    nop

    .line 9096
    return-object v3

    .line 9093
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9095
    throw v2
.end method

.method public greylist-max-o getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7355
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

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
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7360
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7361
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7362
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7363
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 7366
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7368
    nop

    .line 7369
    return-object v3

    .line 7366
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7368
    throw v2
.end method

.method public greylist-max-o getAllPackages()Ljava/util/List;
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

    .line 5099
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5100
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5103
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5104
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5105
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5106
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 5109
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5111
    nop

    .line 5112
    return-object v3

    .line 5109
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5111
    throw v2
.end method

.method public blacklist getAppMetadataFd(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5457
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5458
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5461
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5462
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5463
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5464
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5465
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5466
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 5469
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5471
    nop

    .line 5472
    return-object v3

    .line 5469
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5471
    throw v2
.end method

.method public blacklist getAppMetadataSource(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8994
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8995
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8998
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8999
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9000
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9001
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9002
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9003
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 9006
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9008
    nop

    .line 9009
    return v3

    .line 9006
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9008
    throw v2
.end method

.method public blacklist getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 8
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8470
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8471
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8474
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8475
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8476
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8477
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8478
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8479
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 8482
    .end local v2    # "_status":Z
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8484
    nop

    .line 8485
    return-object v3

    .line 8482
    .end local v3    # "_result":[Ljava/lang/String;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8484
    throw v2
.end method

.method public blacklist getAppPredictionServicePackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8233
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8238
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8239
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8240
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 8243
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8245
    nop

    .line 8246
    return-object v3

    .line 8243
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8245
    throw v2
.end method

.method public greylist-max-o getApplicationEnabledSetting(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6535
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6536
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6539
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6541
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6542
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6543
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6544
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 6547
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6549
    nop

    .line 6550
    return v3

    .line 6547
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6549
    throw v2
.end method

.method public greylist-max-o getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7462
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7463
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7466
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7467
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7468
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7469
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x87

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7470
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7471
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 7474
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7476
    nop

    .line 7477
    return v3

    .line 7474
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7476
    throw v2
.end method

.method public blacklist getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4902
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4903
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4906
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4907
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4908
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4909
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4910
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4911
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4912
    sget-object v3, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 4915
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4917
    nop

    .line 4918
    return-object v3

    .line 4915
    .end local v3    # "_result":Landroid/content/pm/ApplicationInfo;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4917
    throw v2
.end method

.method public blacklist getArchivedAppIcon(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "callingPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8955
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8956
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8959
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8960
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8961
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8962
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8963
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8964
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8965
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 8968
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8970
    nop

    .line 8971
    return-object v3

    .line 8968
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8970
    throw v2
.end method

.method public blacklist getArchivedPackage(Ljava/lang/String;I)Landroid/content/pm/ArchivedPackageParcel;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8936
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8937
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8940
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8941
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8942
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8943
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8944
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8945
    sget-object v3, Landroid/content/pm/ArchivedPackageParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ArchivedPackageParcel;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 8948
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ArchivedPackageParcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8950
    nop

    .line 8951
    return-object v3

    .line 8948
    .end local v3    # "_result":Landroid/content/pm/ArchivedPackageParcel;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8950
    throw v2
.end method

.method public greylist-max-o getArtManager()Landroid/content/pm/dex/IArtManager;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8049
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8050
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8053
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8054
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8055
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8056
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/dex/IArtManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/dex/IArtManager;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 8059
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/dex/IArtManager;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8061
    nop

    .line 8062
    return-object v3

    .line 8059
    .end local v3    # "_result":Landroid/content/pm/dex/IArtManager;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8061
    throw v2
.end method

.method public blacklist getAttentionServicePackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8182
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8183
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8187
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xae

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8188
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8189
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 8192
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8194
    nop

    .line 8195
    return-object v3

    .line 8192
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8194
    throw v2
.end method

.method public greylist-max-o getBlockUninstallForUser(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7554
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7555
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7558
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7560
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7561
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7562
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7563
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 7566
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7568
    nop

    .line 7569
    return v3

    .line 7566
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7568
    throw v2
.end method

.method public greylist-max-o getChangedPackages(II)Landroid/content/pm/ChangedPackages;
    .registers 8
    .param p1, "sequenceNumber"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7850
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7851
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7854
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7855
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7856
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7857
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7858
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7859
    sget-object v3, Landroid/content/pm/ChangedPackages;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ChangedPackages;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 7862
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ChangedPackages;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7864
    nop

    .line 7865
    return-object v3

    .line 7862
    .end local v3    # "_result":Landroid/content/pm/ChangedPackages;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7864
    throw v2
.end method

.method public greylist-max-o getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6495
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6496
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6499
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6500
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6501
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6502
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x59

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6503
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6504
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 6507
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6509
    nop

    .line 6510
    return v3

    .line 6507
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6509
    throw v2
.end method

.method public blacklist getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7926
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7927
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7930
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7931
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7932
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 7933
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7934
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7935
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7936
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 7939
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7941
    nop

    .line 7942
    return-object v3

    .line 7939
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7941
    throw v2
.end method

.method public greylist-max-o getDefaultAppsBackup(I)[B
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6292
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6293
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6296
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6298
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6299
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6300
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 6303
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6305
    nop

    .line 6306
    return-object v3

    .line 6303
    .end local v3    # "_result":[B
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6305
    throw v2
.end method

.method public blacklist getDefaultTextClassifierPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8148
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8149
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8152
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8153
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xac

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8154
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8155
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 8158
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8160
    nop

    .line 8161
    return-object v3

    .line 8158
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8160
    throw v2
.end method

.method public blacklist getDomainVerificationAgent(I)Landroid/content/ComponentName;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9013
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9014
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9017
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9018
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9019
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9020
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9021
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 9024
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9026
    nop

    .line 9027
    return-object v3

    .line 9024
    .end local v3    # "_result":Landroid/content/ComponentName;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9026
    throw v2
.end method

.method public blacklist getDomainVerificationBackup(I)[B
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6326
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6327
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6330
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6331
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6332
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6333
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6334
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 6337
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6339
    nop

    .line 6340
    return-object v3

    .line 6337
    .end local v3    # "_result":[B
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6339
    throw v2
.end method

.method public greylist-max-o getFlagsForUid(I)I
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5188
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5192
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5193
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5194
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5195
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5196
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5199
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5201
    nop

    .line 5202
    return v3

    .line 5199
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5201
    throw v2
.end method

.method public greylist-max-o getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8089
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8090
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8093
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8094
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8095
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8096
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8097
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8098
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 8101
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8103
    nop

    .line 8104
    return-object v3

    .line 8101
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8103
    throw v2
.end method

.method public blacklist getHoldLockToken()Landroid/os/IBinder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8778
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8779
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8782
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8783
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8784
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8785
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 8788
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8790
    nop

    .line 8791
    return-object v3

    .line 8788
    .end local v3    # "_result":Landroid/os/IBinder;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8790
    throw v2
.end method

.method public greylist-max-o getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6364
    .local p1, "outHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6365
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6368
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6369
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6370
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6371
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 6372
    .local v3, "_result":Landroid/content/ComponentName;
    sget-object v4, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 6375
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6377
    nop

    .line 6378
    return-object v3

    .line 6375
    .end local v3    # "_result":Landroid/content/ComponentName;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6377
    throw v2
.end method

.method public blacklist getIncidentReportApproverPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8284
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8285
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8288
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8289
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8290
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8291
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 8294
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8296
    nop

    .line 8297
    return-object v3

    .line 8294
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8296
    throw v2
.end method

.method public blacklist getInitialNonStoppedSystemPackages()Ljava/util/List;
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

    .line 6889
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

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
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6894
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6895
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6896
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 6899
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6901
    nop

    .line 6902
    return-object v3

    .line 6899
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6901
    throw v2
.end method

.method public greylist getInstallLocation()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7205
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7206
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7209
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7210
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7211
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7212
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 7215
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7217
    nop

    .line 7218
    return v3

    .line 7215
    .end local v3    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7217
    throw v2
.end method

.method public greylist-max-o getInstallReason(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7887
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7888
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7891
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7892
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7893
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7894
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7895
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7896
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 7899
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7901
    nop

    .line 7902
    return v3

    .line 7899
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7901
    throw v2
.end method

.method public blacklist getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5843
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5844
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5847
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5848
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5849
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5850
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5851
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5852
    sget-object v3, Landroid/content/pm/InstallSourceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/InstallSourceInfo;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 5855
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/InstallSourceInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5857
    nop

    .line 5858
    return-object v3

    .line 5855
    .end local v3    # "_result":Landroid/content/pm/InstallSourceInfo;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5857
    throw v2
.end method

.method public blacklist getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5508
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5509
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5512
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5513
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 5514
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5515
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5516
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5517
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 5520
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5522
    nop

    .line 5523
    return-object v3

    .line 5520
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5522
    throw v2
.end method

.method public blacklist getInstalledModules(I)Ljava/util/List;
    .registers 7
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8334
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8335
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8338
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8339
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8340
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8341
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8342
    sget-object v3, Landroid/content/pm/ModuleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 8345
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8347
    nop

    .line 8348
    return-object v3

    .line 8345
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8347
    throw v2
.end method

.method public blacklist getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5438
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5439
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5442
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5443
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 5444
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5445
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5446
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5447
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 5450
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5452
    nop

    .line 5453
    return-object v3

    .line 5450
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5452
    throw v2
.end method

.method public greylist-max-o getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5825
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5826
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5829
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5830
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5831
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5832
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5833
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5836
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5838
    nop

    .line 5839
    return-object v3

    .line 5836
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5838
    throw v2
.end method

.method public greylist-max-o getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8030
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8031
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8034
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8035
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8036
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8037
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8038
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8039
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 8042
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8044
    nop

    .line 8045
    return-object v3

    .line 8042
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8044
    throw v2
.end method

.method public greylist-max-o getInstantAppCookie(Ljava/lang/String;I)[B
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7700
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7701
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7704
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7705
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7706
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7707
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x94

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7708
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7709
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 7712
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7714
    nop

    .line 7715
    return-object v3

    .line 7712
    .end local v3    # "_result":[B
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7714
    throw v2
.end method

.method public greylist-max-o getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7739
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7740
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7743
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7744
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7745
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7746
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x96

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7747
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7748
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 7751
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7753
    nop

    .line 7754
    return-object v3

    .line 7751
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7753
    throw v2
.end method

.method public greylist-max-o getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8013
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8014
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8017
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8018
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8019
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8020
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 8023
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8025
    nop

    .line 8026
    return-object v3

    .line 8023
    .end local v3    # "_result":Landroid/content/ComponentName;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8025
    throw v2
.end method

.method public greylist-max-o getInstantAppResolverComponent()Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7979
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7980
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7983
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7984
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7985
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7986
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 7989
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7991
    nop

    .line 7992
    return-object v3

    .line 7989
    .end local v3    # "_result":Landroid/content/ComponentName;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7991
    throw v2
.end method

.method public greylist-max-o getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7996
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7997
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8000
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8001
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8002
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8003
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 8006
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8008
    nop

    .line 8009
    return-object v3

    .line 8006
    .end local v3    # "_result":Landroid/content/ComponentName;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8008
    throw v2
.end method

.method public greylist-max-o getInstantApps(I)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7682
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7683
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7686
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7687
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7688
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x93

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7689
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7690
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 7693
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7695
    nop

    .line 7696
    return-object v3

    .line 7693
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7695
    throw v2
.end method

.method public blacklist getInstrumentationInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/InstrumentationInfo;
    .registers 9
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5651
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5652
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5655
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5656
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5657
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5658
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5659
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5660
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5661
    sget-object v3, Landroid/content/pm/InstrumentationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/InstrumentationInfo;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 5664
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/InstrumentationInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5666
    nop

    .line 5667
    return-object v3

    .line 5664
    .end local v3    # "_result":Landroid/content/pm/InstrumentationInfo;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5666
    throw v2
.end method

.method public greylist-max-o getIntentFilterVerifications(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7337
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7338
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7341
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7343
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7344
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7345
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 7348
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7350
    nop

    .line 7351
    return-object v3

    .line 7348
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7350
    throw v2
.end method

.method public greylist-max-o getIntentVerificationStatus(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7296
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7297
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7300
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7302
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7303
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7304
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7305
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 7308
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7310
    nop

    .line 7311
    return v3

    .line 7308
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7310
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 4747
    const-string v0, "android.content.pm.IPackageManager"

    return-object v0
.end method

.method public greylist-max-o getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7573
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7574
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7577
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7578
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7579
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7580
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7581
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7582
    sget-object v3, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/KeySet;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 7585
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/KeySet;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7587
    nop

    .line 7588
    return-object v3

    .line 7585
    .end local v3    # "_result":Landroid/content/pm/KeySet;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7587
    throw v2
.end method

.method public greylist getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5877
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5878
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5881
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5882
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5883
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5884
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5885
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x39

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5886
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5887
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 5890
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5892
    nop

    .line 5893
    return-object v3

    .line 5890
    .end local v3    # "_result":Landroid/content/pm/ResolveInfo;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5892
    throw v2
.end method

.method public blacklist getLaunchIntentSenderForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8441
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8442
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8445
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8446
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8447
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8448
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8449
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8450
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8451
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8452
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 8455
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/IntentSender;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8457
    nop

    .line 8458
    return-object v3

    .line 8455
    .end local v3    # "_result":Landroid/content/IntentSender;
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8457
    throw v2
.end method

.method public blacklist getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
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

    .line 8709
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8710
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8713
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8714
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8715
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8716
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8717
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8718
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 8721
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8723
    nop

    .line 8724
    return-object v3

    .line 8721
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8723
    throw v2
.end method

.method public blacklist getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8352
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8353
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8356
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8357
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8358
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8359
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8360
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8361
    sget-object v3, Landroid/content/pm/ModuleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ModuleInfo;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 8364
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ModuleInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8366
    nop

    .line 8367
    return-object v3

    .line 8364
    .end local v3    # "_result":Landroid/content/pm/ModuleInfo;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8366
    throw v2
.end method

.method public greylist-max-o getMoveStatus(I)I
    .registers 7
    .param p1, "moveId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7102
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7103
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7108
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7109
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7110
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 7113
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7115
    nop

    .line 7116
    return v3

    .line 7113
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7115
    throw v2
.end method

.method public greylist-max-o getNameForUid(I)Ljava/lang/String;
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5134
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5139
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5140
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5141
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5142
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5145
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5147
    nop

    .line 5148
    return-object v3

    .line 5145
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5147
    throw v2
.end method

.method public greylist-max-o getNamesForUids([I)[Ljava/lang/String;
    .registers 7
    .param p1, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5152
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5153
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5156
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5157
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5158
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5159
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5160
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5163
    .end local v2    # "_status":Z
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5165
    nop

    .line 5166
    return-object v3

    .line 5163
    .end local v3    # "_result":[Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5165
    throw v2
.end method

.method public blacklist getPackageGids(Ljava/lang/String;JI)[I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4846
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4847
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4850
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4851
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4852
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4853
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4854
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4855
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4856
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 4859
    .end local v2    # "_status":Z
    .local v3, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4861
    nop

    .line 4862
    return-object v3

    .line 4859
    .end local v3    # "_result":[I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4861
    throw v2
.end method

.method public blacklist getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4786
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4790
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4791
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4792
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4793
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4794
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4795
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4796
    sget-object v3, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 4799
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4801
    nop

    .line 4802
    return-object v3

    .line 4799
    .end local v3    # "_result":Landroid/content/pm/PackageInfo;
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4801
    throw v2
.end method

.method public blacklist getPackageInfoVersioned(Landroid/content/pm/VersionedPackage;JI)Landroid/content/pm/PackageInfo;
    .registers 10
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4806
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4807
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4810
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4811
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4812
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4813
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4814
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4815
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4816
    sget-object v3, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 4819
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4821
    nop

    .line 4822
    return-object v3

    .line 4819
    .end local v3    # "_result":Landroid/content/pm/PackageInfo;
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4821
    throw v2
.end method

.method public greylist-max-o getPackageInstaller()Landroid/content/pm/IPackageInstaller;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7517
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7518
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7521
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7522
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7523
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7524
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageInstaller$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstaller;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 7527
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/IPackageInstaller;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7529
    nop

    .line 7530
    return-object v3

    .line 7527
    .end local v3    # "_result":Landroid/content/pm/IPackageInstaller;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7529
    throw v2
.end method

.method public greylist-max-o getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageStatsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6786
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6789
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6790
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6791
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6792
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6793
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6794
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6797
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6799
    nop

    .line 6800
    return-void

    .line 6797
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6799
    throw v2
.end method

.method public blacklist getPackageUid(Ljava/lang/String;JI)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4826
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4827
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4830
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4831
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4832
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4833
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4834
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4835
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4836
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 4839
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4841
    nop

    .line 4842
    return v3

    .line 4839
    .end local v3    # "_result":I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4841
    throw v2
.end method

.method public greylist getPackagesForUid(I)[Ljava/lang/String;
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5116
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5117
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5120
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5121
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5122
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5123
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5124
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5127
    .end local v2    # "_status":Z
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5129
    nop

    .line 5130
    return-object v3

    .line 5127
    .end local v3    # "_result":[Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5129
    throw v2
.end method

.method public blacklist getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5482
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5483
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5486
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5487
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5488
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5489
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5490
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5491
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5492
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 5495
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5497
    nop

    .line 5498
    return-object v3

    .line 5495
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5497
    throw v2
.end method

.method public blacklist getPageSizeCompatWarningMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9065
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9066
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9069
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9070
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9071
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9072
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9073
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 9076
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9078
    nop

    .line 9079
    return-object v3

    .line 9076
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9078
    throw v2
.end method

.method public greylist-max-o getPermissionControllerPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7648
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7649
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7652
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7653
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x91

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7654
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7655
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 7658
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7660
    nop

    .line 7661
    return-object v3

    .line 7658
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7660
    throw v2
.end method

.method public greylist-max-o getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8489
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8490
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8493
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8494
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8495
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8496
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8497
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8498
    sget-object v3, Landroid/content/pm/PermissionGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionGroupInfo;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 8501
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8503
    nop

    .line 8504
    return-object v3

    .line 8501
    .end local v3    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8503
    throw v2
.end method

.method public greylist-max-o getPersistentApplications(I)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5533
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5534
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5537
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5538
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5539
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5540
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5541
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 5544
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5546
    nop

    .line 5547
    return-object v3

    .line 5544
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5546
    throw v2
.end method

.method public greylist-max-o getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .registers 9
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5971
    .local p1, "outFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5972
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5975
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5976
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5977
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5978
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5979
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5980
    .local v3, "_result":I
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 5981
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p2, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 5984
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5986
    nop

    .line 5987
    return v3

    .line 5984
    .end local v3    # "_result":I
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5986
    throw v2
.end method

.method public greylist-max-o getPreferredActivityBackup(I)[B
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6258
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6259
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6262
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6264
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6265
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6266
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 6269
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6271
    nop

    .line 6272
    return-object v3

    .line 6269
    .end local v3    # "_result":[B
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6271
    throw v2
.end method

.method public greylist-max-o getPrivateFlagsForUid(I)I
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5206
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5207
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5210
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5211
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5212
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5213
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5214
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5217
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5219
    nop

    .line 5220
    return v3

    .line 5217
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5219
    throw v2
.end method

.method public blacklist getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;
    .registers 10
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8811
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8812
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8815
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8816
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8817
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8818
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8819
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8820
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8821
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8822
    sget-object v3, Landroid/content/pm/PackageManager$Property;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManager$Property;
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 8825
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/PackageManager$Property;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8827
    nop

    .line 8828
    return-object v3

    .line 8825
    .end local v3    # "_result":Landroid/content/pm/PackageManager$Property;
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8827
    throw v2
.end method

.method public blacklist getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;
    .registers 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5022
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5023
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5026
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5027
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5028
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5029
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5030
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5031
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5032
    sget-object v3, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 5035
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5037
    nop

    .line 5038
    return-object v3

    .line 5035
    .end local v3    # "_result":Landroid/content/pm/ProviderInfo;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5037
    throw v2
.end method

.method public blacklist getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4982
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4983
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4986
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4987
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4988
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4989
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4990
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4991
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4992
    sget-object v3, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 4995
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4997
    nop

    .line 4998
    return-object v3

    .line 4995
    .end local v3    # "_result":Landroid/content/pm/ActivityInfo;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4997
    throw v2
.end method

.method public blacklist getRotationResolverPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8199
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8200
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8203
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8204
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8205
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8206
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 8209
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8211
    nop

    .line 8212
    return-object v3

    .line 8209
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8211
    throw v2
.end method

.method public blacklist getRuntimePermissionsVersion(I)I
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8371
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8372
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8375
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8376
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8377
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8378
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8379
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 8382
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8384
    nop

    .line 8385
    return v3

    .line 8382
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8384
    throw v2
.end method

.method public blacklist getSdkSandboxPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7665
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7666
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7669
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7670
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x92

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7671
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7672
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 7675
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7677
    nop

    .line 7678
    return-object v3

    .line 7675
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7677
    throw v2
.end method

.method public blacklist getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;
    .registers 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5002
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5003
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5006
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5007
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5008
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5009
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5010
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5011
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5012
    sget-object v3, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ServiceInfo;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 5015
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ServiceInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5017
    nop

    .line 5018
    return-object v3

    .line 5015
    .end local v3    # "_result":Landroid/content/pm/ServiceInfo;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5017
    throw v2
.end method

.method public greylist-max-o getServicesSystemSharedLibraryPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7816
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7817
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7820
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7821
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7822
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7823
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 7826
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7828
    nop

    .line 7829
    return-object v3

    .line 7826
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7828
    throw v2
.end method

.method public blacklist getSetupWizardPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8267
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8268
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8271
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8272
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8273
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8274
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 8277
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8279
    nop

    .line 8280
    return-object v3

    .line 8277
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8279
    throw v2
.end method

.method public blacklist getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7906
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7907
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7910
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7911
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7912
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 7913
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7914
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7915
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7916
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 7919
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7921
    nop

    .line 7922
    return-object v3

    .line 7919
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7921
    throw v2
.end method

.method public greylist-max-o getSharedSystemSharedLibraryPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7833
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7834
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7837
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7838
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7839
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7840
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 7843
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7845
    nop

    .line 7846
    return-object v3

    .line 7843
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7845
    throw v2
.end method

.method public greylist-max-o getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7592
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7593
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7596
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7597
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7598
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7599
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7600
    sget-object v3, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/KeySet;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 7603
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/KeySet;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7605
    nop

    .line 7606
    return-object v3

    .line 7603
    .end local v3    # "_result":Landroid/content/pm/KeySet;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7605
    throw v2
.end method

.method public blacklist getSplashScreenTheme(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8637
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8638
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8641
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8642
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8643
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8644
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8645
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8646
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 8649
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8651
    nop

    .line 8652
    return-object v3

    .line 8649
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8651
    throw v2
.end method

.method public blacklist getSuspendedPackageAppExtras(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6219
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6220
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6223
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6224
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6225
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6226
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6227
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6228
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 6231
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6233
    nop

    .line 6234
    return-object v3

    .line 6231
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6233
    throw v2
.end method

.method public blacklist getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6238
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6239
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6242
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6244
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6245
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6246
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6247
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 6250
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6252
    nop

    .line 6253
    return-object v3

    .line 6250
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6252
    throw v2
.end method

.method public greylist-max-o getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6853
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6854
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6857
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6858
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6859
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6860
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 6863
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6865
    nop

    .line 6866
    return-object v3

    .line 6863
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6865
    throw v2
.end method

.method public blacklist getSystemCaptionsServicePackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8250
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8254
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8255
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8256
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8257
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 8260
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8262
    nop

    .line 8263
    return-object v3

    .line 8260
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8262
    throw v2
.end method

.method public greylist getSystemSharedLibraryNames()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6808
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6809
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6812
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6813
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6814
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6815
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 6818
    .end local v2    # "_status":Z
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6820
    nop

    .line 6821
    return-object v3

    .line 6818
    .end local v3    # "_result":[Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6820
    throw v2
.end method

.method public blacklist getSystemSharedLibraryNamesAndPaths()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6826
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6827
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6830
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6831
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6832
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6834
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6835
    .local v3, "N":I
    if-gez v3, :cond_25

    const/4 v5, 0x0

    goto :goto_2a

    :cond_25
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 6836
    .local v5, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2a
    invoke-static {v4, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v6, Landroid/content/pm/IPackageManager$Stub$Proxy$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, v5}, Landroid/content/pm/IPackageManager$Stub$Proxy$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v4, v6}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_3e

    .line 6845
    .end local v2    # "_status":Z
    .end local v3    # "N":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6847
    nop

    .line 6848
    return-object v5

    .line 6845
    .end local v5    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_3e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6847
    throw v2
.end method

.method public greylist-max-o getSystemTextClassifierPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8165
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8166
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8169
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8170
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xad

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8171
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8172
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 8175
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8177
    nop

    .line 8178
    return-object v3

    .line 8175
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8177
    throw v2
.end method

.method public blacklist getTargetSdkVersion(Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4923
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4924
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4927
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4928
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4929
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4930
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4931
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 4934
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4936
    nop

    .line 4937
    return v3

    .line 4934
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4936
    throw v2
.end method

.method public greylist-max-o getUidForSharedUser(Ljava/lang/String;)I
    .registers 7
    .param p1, "sharedUserName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5170
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5171
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5174
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5176
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5177
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5178
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5181
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5183
    nop

    .line 5184
    return v3

    .line 5181
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5183
    throw v2
.end method

.method public blacklist getUnsuspendablePackagesForUser([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6143
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6144
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6147
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6148
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 6149
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6150
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6151
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6152
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 6155
    .end local v2    # "_status":Z
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6157
    nop

    .line 6158
    return-object v3

    .line 6155
    .end local v3    # "_result":[Ljava/lang/String;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6157
    throw v2
.end method

.method public blacklist getUserMinAspectRatio(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8673
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8674
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8677
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8679
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8680
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8681
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8682
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 8685
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8687
    nop

    .line 8688
    return v3

    .line 8685
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8687
    throw v2
.end method

.method public greylist-max-o getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7373
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7374
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7377
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7378
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x82

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7379
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7380
    sget-object v3, Landroid/content/pm/VerifierDeviceIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 7383
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/VerifierDeviceIdentity;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7385
    nop

    .line 7386
    return-object v3

    .line 7383
    .end local v3    # "_result":Landroid/content/pm/VerifierDeviceIdentity;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7385
    throw v2
.end method

.method public blacklist getWellbeingPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8216
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8217
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8220
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8221
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8222
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8223
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 8226
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8228
    nop

    .line 8229
    return-object v3

    .line 8226
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8228
    throw v2
.end method

.method public greylist-max-o grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8579
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8580
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8582
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8583
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8584
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8585
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8586
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8587
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 8590
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8592
    nop

    .line 8593
    return-void

    .line 8590
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8592
    throw v2
.end method

.method public greylist-max-o hasSigningCertificate(Ljava/lang/String;[BI)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "signingCertificate"    # [B
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8108
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8109
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8112
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8113
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8114
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 8115
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8116
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8117
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8118
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 8121
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8123
    nop

    .line 8124
    return v3

    .line 8121
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8123
    throw v2
.end method

.method public greylist-max-o hasSystemFeature(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6870
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6871
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6874
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6875
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6876
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6877
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6878
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6879
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 6882
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6884
    nop

    .line 6885
    return v3

    .line 6882
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6884
    throw v2
.end method

.method public greylist-max-o hasSystemUidErrors()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6937
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6938
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6941
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6942
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6943
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6944
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 6947
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6949
    nop

    .line 6950
    return v3

    .line 6947
    .end local v3    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6949
    throw v2
.end method

.method public greylist-max-o hasUidSigningCertificate(I[BI)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "signingCertificate"    # [B
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8128
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8129
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8132
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8134
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 8135
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8136
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xab

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8137
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8138
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 8141
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8143
    nop

    .line 8144
    return v3

    .line 8141
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8143
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

    .line 8795
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8796
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8798
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8799
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8800
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8801
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8802
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 8805
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8807
    nop

    .line 8808
    return-void

    .line 8805
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8807
    throw v2
.end method

.method public blacklist installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "installFlags"    # I
    .param p4, "installReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7222
    .local p5, "whiteListedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7223
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7226
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7227
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7228
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7229
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7230
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7231
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7232
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7233
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7234
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 7237
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7239
    nop

    .line 7240
    return v3

    .line 7237
    .end local v3    # "_result":I
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7239
    throw v2
.end method

.method public blacklist isAppArchivable(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8975
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8976
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8979
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8980
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8981
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8982
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xda

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8983
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8984
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 8987
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8989
    nop

    .line 8990
    return v3

    .line 8987
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8989
    throw v2
.end method

.method public blacklist isAutoRevokeWhitelisted(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8728
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8729
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8732
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8733
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8734
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8735
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8736
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 8739
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8741
    nop

    .line 8742
    return v3

    .line 8739
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8741
    throw v2
.end method

.method public blacklist isDeviceUpgrading()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7407
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7411
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7412
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x84

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7413
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7414
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 7417
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7419
    nop

    .line 7420
    return v3

    .line 7417
    .end local v3    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7419
    throw v2
.end method

.method public greylist-max-o isFirstBoot()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7390
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7395
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7396
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7397
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 7400
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7402
    nop

    .line 7403
    return v3

    .line 7400
    .end local v3    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7402
    throw v2
.end method

.method public greylist-max-o isInstantApp(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7758
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7759
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7762
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7764
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7765
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x97

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7766
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7767
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 7770
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7772
    nop

    .line 7773
    return v3

    .line 7770
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7772
    throw v2
.end method

.method public greylist-max-o isPackageAvailable(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4767
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4768
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4771
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4772
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4773
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4774
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4775
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4776
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 4779
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4781
    nop

    .line 4782
    return v3

    .line 4779
    .end local v3    # "_result":Z
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4781
    throw v2
.end method

.method public greylist-max-o isPackageDeviceAdminOnAnyUser(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7869
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7870
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7873
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7874
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7875
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7876
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7877
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 7880
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7882
    nop

    .line 7883
    return v3

    .line 7880
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7882
    throw v2
.end method

.method public blacklist isPackageQuarantinedForUser(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6181
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6182
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6185
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6186
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6187
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6188
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6189
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6190
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 6193
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6195
    nop

    .line 6196
    return v3

    .line 6193
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6195
    throw v2
.end method

.method public greylist-max-o isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7610
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7611
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7614
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7615
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7616
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7617
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7618
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7619
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 7622
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7624
    nop

    .line 7625
    return v3

    .line 7622
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7624
    throw v2
.end method

.method public greylist-max-o isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7629
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7630
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7633
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7634
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7635
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7636
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x90

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7637
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7638
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 7641
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7643
    nop

    .line 7644
    return v3

    .line 7641
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7643
    throw v2
.end method

.method public greylist-max-o isPackageStateProtected(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8301
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8302
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8305
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8306
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8307
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8308
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8309
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8310
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

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
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8315
    throw v2
.end method

.method public blacklist isPackageStoppedForUser(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6200
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6201
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6204
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6206
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6207
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6208
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6209
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 6212
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6214
    nop

    .line 6215
    return v3

    .line 6212
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6214
    throw v2
.end method

.method public greylist-max-o isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6162
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6163
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6166
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6167
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6168
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6169
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6170
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6171
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 6174
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6176
    nop

    .line 6177
    return v3

    .line 6174
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6176
    throw v2
.end method

.method public blacklist isPageSizeCompatEnabled(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9047
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9048
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9051
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9052
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9053
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xde

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9054
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9055
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 9058
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9060
    nop

    .line 9061
    return v3

    .line 9058
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9060
    throw v2
.end method

.method public greylist-max-o isProtectedBroadcast(Ljava/lang/String;)Z
    .registers 7
    .param p1, "actionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5042
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5043
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5046
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5047
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5048
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5049
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5050
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5053
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5055
    nop

    .line 5056
    return v3

    .line 5053
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5055
    throw v2
.end method

.method public greylist-max-o isSafeMode()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6920
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6921
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6924
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6925
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6926
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6927
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 6930
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6932
    nop

    .line 6933
    return v3

    .line 6930
    .end local v3    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6932
    throw v2
.end method

.method public greylist-max-o isStorageLow()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7425
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7426
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7429
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7430
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7431
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7432
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 7435
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7437
    nop

    .line 7438
    return v3

    .line 7435
    .end local v3    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7437
    throw v2
.end method

.method public greylist-max-o isUidPrivileged(I)Z
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5224
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5225
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5228
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5229
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5230
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5231
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5232
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5235
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5237
    nop

    .line 5238
    return v3

    .line 5235
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5237
    throw v2
.end method

.method public blacklist logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "seinfo"    # Ljava/lang/String;
    .param p5, "apkFile"    # Ljava/lang/String;
    .param p6, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6555
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6556
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6558
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6560
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6561
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6562
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6563
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6564
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 6565
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6566
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 6569
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6571
    nop

    .line 6572
    return-void

    .line 6569
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6571
    throw v2
.end method

.method public blacklist makeProviderVisible(ILjava/lang/String;)V
    .registers 8
    .param p1, "recipientAppId"    # I
    .param p2, "visibleAuthority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8746
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8747
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8749
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8750
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8751
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8752
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8753
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 8756
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8758
    nop

    .line 8759
    return-void

    .line 8756
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8758
    throw v2
.end method

.method public blacklist makeUidVisible(II)V
    .registers 8
    .param p1, "recipientAppId"    # I
    .param p2, "visibleUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8762
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8763
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8765
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8766
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8767
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8768
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xce

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8769
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 8772
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8774
    nop

    .line 8775
    return-void

    .line 8772
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8774
    throw v2
.end method

.method public greylist-max-o movePackage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7150
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7151
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7154
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7156
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7157
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7158
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7159
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 7162
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7164
    nop

    .line 7165
    return v3

    .line 7162
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7164
    throw v2
.end method

.method public greylist-max-o movePrimaryStorage(Ljava/lang/String;)I
    .registers 7
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7169
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7170
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7173
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7175
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7176
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7177
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 7180
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7182
    nop

    .line 7183
    return v3

    .line 7180
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7182
    throw v2
.end method

.method public blacklist notifyDexLoad(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 9
    .param p1, "loadingPackageName"    # Ljava/lang/String;
    .param p3, "loaderIsa"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6980
    .local p2, "classLoaderContextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6982
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6983
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6984
    if-nez p2, :cond_17

    .line 6985
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 6987
    :cond_17
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6988
    new-instance v1, Landroid/content/pm/IPackageManager$Stub$Proxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/content/pm/IPackageManager$Stub$Proxy$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 6993
    :goto_26
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6994
    iget-object v1, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x6f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_37

    .line 6997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6998
    nop

    .line 6999
    return-void

    .line 6997
    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6998
    throw v1
.end method

.method public greylist-max-o notifyPackageUse(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6959
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6961
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6962
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6963
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6964
    iget-object v1, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x6e

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 6967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6968
    nop

    .line 6969
    return-void

    .line 6967
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6968
    throw v1
.end method

.method public blacklist notifyPackagesReplacedReceived([Ljava/lang/String;)V
    .registers 7
    .param p1, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8405
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8406
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8408
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8409
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 8410
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8411
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 8414
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8416
    nop

    .line 8417
    return-void

    .line 8414
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8416
    throw v2
.end method

.method public blacklist overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;II)V
    .registers 10
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "nonLocalizedLabel"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6412
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6413
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6415
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6416
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6417
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6418
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6419
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6420
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6421
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 6424
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6426
    nop

    .line 6427
    return-void

    .line 6424
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6426
    throw v2
.end method

.method public greylist-max-o performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "checkProfiles"    # Z
    .param p3, "targetCompilerFilter"    # Ljava/lang/String;
    .param p4, "force"    # Z
    .param p5, "bootComplete"    # Z
    .param p6, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7052
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7053
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7056
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7057
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7058
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7059
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7060
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7061
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7062
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7063
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7064
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7065
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_3b

    .line 7068
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7070
    nop

    .line 7071
    return v3

    .line 7068
    .end local v3    # "_result":Z
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7070
    throw v2
.end method

.method public greylist-max-o performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetCompilerFilter"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7082
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7083
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7086
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7087
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7088
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7089
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7090
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7091
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7092
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 7095
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7097
    nop

    .line 7098
    return v3

    .line 7095
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7097
    throw v2
.end method

.method public blacklist queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # J
    .param p5, "metaDataKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5630
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5631
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5634
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5635
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5636
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5637
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5638
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5639
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5640
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5641
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 5644
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5646
    nop

    .line 5647
    return-object v3

    .line 5644
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5646
    throw v2
.end method

.method public blacklist queryInstrumentationAsUser(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5671
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5672
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5675
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5676
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5677
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5678
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5679
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5680
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5681
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 5684
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5686
    nop

    .line 5687
    return-object v3

    .line 5684
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5686
    throw v2
.end method

.method public blacklist queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5303
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5304
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5307
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5308
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5309
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5310
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5311
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5312
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5313
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5314
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 5317
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5319
    nop

    .line 5320
    return-object v3

    .line 5317
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5319
    throw v2
.end method

.method public blacklist queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 14
    .param p1, "caller"    # Landroid/content/ComponentName;
    .param p2, "specifics"    # [Landroid/content/Intent;
    .param p3, "specificTypes"    # [Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "flags"    # J
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5324
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5325
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5328
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5329
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5330
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 5331
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5332
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5333
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5334
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 5335
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 5336
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5337
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5338
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_42

    .line 5341
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5343
    nop

    .line 5344
    return-object v3

    .line 5341
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5343
    throw v2
.end method

.method public blacklist queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5411
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5412
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5415
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5416
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5417
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5418
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5419
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5420
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5421
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5422
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 5425
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5427
    nop

    .line 5428
    return-object v3

    .line 5425
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5427
    throw v2
.end method

.method public blacklist queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5348
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5352
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5353
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5354
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5355
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5356
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5357
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5358
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5359
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 5362
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5364
    nop

    .line 5365
    return-object v3

    .line 5362
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5364
    throw v2
.end method

.method public blacklist queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5390
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5395
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5396
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5397
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5398
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5399
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5400
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5401
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 5404
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5406
    nop

    .line 5407
    return-object v3

    .line 5404
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5406
    throw v2
.end method

.method public blacklist queryProperty(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "componentType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8832
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8833
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8836
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8837
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8838
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8839
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8840
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8841
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 8844
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8846
    nop

    .line 8847
    return-object v3

    .line 8844
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8846
    throw v2
.end method

.method public greylist-max-o querySyncProviders(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5612
    .local p1, "outNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "outInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5613
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5615
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5616
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5617
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 5618
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5619
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5620
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 5621
    sget-object v3, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 5624
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5626
    nop

    .line 5627
    return-void

    .line 5624
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5626
    throw v2
.end method

.method public greylist-max-o registerDexModule(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/IDexModuleRegisterCallback;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dexModulePath"    # Ljava/lang/String;
    .param p3, "isSharedModule"    # Z
    .param p4, "callback"    # Landroid/content/pm/IDexModuleRegisterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7031
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7033
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7034
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7035
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7036
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7037
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7038
    iget-object v1, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x70

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 7041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7042
    nop

    .line 7043
    return-void

    .line 7041
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7042
    throw v1
.end method

.method public greylist-max-o registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    .registers 7
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7120
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7121
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7123
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7124
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7125
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7126
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 7129
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7131
    nop

    .line 7132
    return-void

    .line 7129
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7131
    throw v2
.end method

.method public blacklist registerPackageMonitorCallback(Landroid/os/IRemoteCallback;I)V
    .registers 8
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8905
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8906
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8908
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8909
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8910
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8911
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8912
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 8915
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8917
    nop

    .line 8918
    return-void

    .line 8915
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8917
    throw v2
.end method

.method public blacklist relinquishUpdateOwnership(Ljava/lang/String;)V
    .registers 7
    .param p1, "targetPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5723
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5724
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5726
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5727
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5728
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5729
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 5732
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5734
    nop

    .line 5735
    return-void

    .line 5732
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5734
    throw v2
.end method

.method public blacklist removeCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)Z
    .registers 11
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;
    .param p2, "ownerPackage"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "targetUserId"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6059
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6060
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6063
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6064
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6065
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6066
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6067
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6068
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6069
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x43

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6070
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6071
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 6074
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6076
    nop

    .line 6077
    return v3

    .line 6074
    .end local v3    # "_result":Z
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6076
    throw v2
.end method

.method public greylist-max-o removePermission(Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8544
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8545
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8547
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8548
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8549
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8550
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 8553
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8555
    nop

    .line 8556
    return-void

    .line 8553
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8555
    throw v2
.end method

.method public greylist-max-o replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5937
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5938
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5940
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5941
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5942
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5943
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 5944
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5945
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5946
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5947
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 5950
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5952
    nop

    .line 5953
    return-void

    .line 5950
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5952
    throw v2
.end method

.method public blacklist requestPackageChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeSplits"    # Z
    .param p3, "optional"    # I
    .param p4, "required"    # I
    .param p5, "trustedInstallers"    # Ljava/util/List;
    .param p6, "onChecksumsReadyListener"    # Landroid/content/pm/IOnChecksumsReadyListener;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8420
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8421
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8423
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8425
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8426
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8427
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8428
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 8429
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8430
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 8431
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8432
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_3a

    .line 8435
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8437
    nop

    .line 8438
    return-void

    .line 8435
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8437
    throw v2
.end method

.method public greylist-max-o resetApplicationPreferences(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5862
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

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
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5866
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5867
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5868
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 5871
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5873
    nop

    .line 5874
    return-void

    .line 5871
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5873
    throw v2
.end method

.method public blacklist resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5551
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5552
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5555
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5556
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5557
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5558
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5559
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5560
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5561
    sget-object v3, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 5564
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5566
    nop

    .line 5567
    return-object v3

    .line 5564
    .end local v3    # "_result":Landroid/content/pm/ProviderInfo;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5566
    throw v2
.end method

.method public blacklist resolveContentProviderForUid(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
    .registers 11
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5583
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5584
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5587
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5588
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5589
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5590
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5591
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5592
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5593
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5594
    sget-object v3, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 5597
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5599
    nop

    .line 5600
    return-object v3

    .line 5597
    .end local v3    # "_result":Landroid/content/pm/ProviderInfo;
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5599
    throw v2
.end method

.method public blacklist resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5242
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5243
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5246
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5247
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5248
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5249
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5250
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5251
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5252
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5253
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 5256
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5258
    nop

    .line 5259
    return-object v3

    .line 5256
    .end local v3    # "_result":Landroid/content/pm/ResolveInfo;
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5258
    throw v2
.end method

.method public blacklist resolveService(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5369
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5370
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5373
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5374
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5375
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5376
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5377
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5378
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5379
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5380
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 5383
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5385
    nop

    .line 5386
    return-object v3

    .line 5383
    .end local v3    # "_result":Landroid/content/pm/ResolveInfo;
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5385
    throw v2
.end method

.method public greylist-max-o restoreDefaultApps([BI)V
    .registers 8
    .param p1, "backup"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6310
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6311
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6313
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6314
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6315
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6316
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6317
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6320
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6322
    nop

    .line 6323
    return-void

    .line 6320
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6322
    throw v2
.end method

.method public blacklist restoreDomainVerification([BI)V
    .registers 8
    .param p1, "backup"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6344
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6345
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6347
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6349
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6350
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6351
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6354
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6356
    nop

    .line 6357
    return-void

    .line 6354
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6356
    throw v2
.end method

.method public blacklist restoreLabelAndIcon(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6440
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6441
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6443
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6444
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6445
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6446
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x56

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6447
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6450
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6452
    nop

    .line 6453
    return-void

    .line 6450
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6452
    throw v2
.end method

.method public greylist-max-o restorePreferredActivities([BI)V
    .registers 8
    .param p1, "backup"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6276
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6277
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6279
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6280
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6281
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6282
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6283
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6286
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6288
    nop

    .line 6289
    return-void

    .line 6286
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6288
    throw v2
.end method

.method public blacklist sendDeviceCustomizationReadyBroadcast()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8320
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8321
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8323
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8324
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8325
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 8328
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8330
    nop

    .line 8331
    return-void

    .line 8328
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8330
    throw v2
.end method

.method public greylist-max-o setApplicationCategoryHint(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "categoryHint"    # I
    .param p3, "callerPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5738
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5739
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5741
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5742
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5743
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5744
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5745
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5746
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 5749
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5751
    nop

    .line 5752
    return-void

    .line 5749
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5751
    throw v2
.end method

.method public greylist-max-o setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6515
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6516
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6518
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6519
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6520
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6521
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6522
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6523
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6524
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6525
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 6528
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6530
    nop

    .line 6531
    return-void

    .line 6528
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6530
    throw v2
.end method

.method public greylist-max-o setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7442
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7443
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7446
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7447
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7448
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7449
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7450
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7451
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7452
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 7455
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7457
    nop

    .line 7458
    return v3

    .line 7455
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7457
    throw v2
.end method

.method public greylist-max-o setBlockUninstallForUser(Ljava/lang/String;ZI)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "blockUninstall"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7534
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7535
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7538
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7539
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7540
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7541
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7542
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7543
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7544
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 7547
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7549
    nop

    .line 7550
    return v3

    .line 7547
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7549
    throw v2
.end method

.method public blacklist setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V
    .registers 11
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6457
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6458
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6460
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6461
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6462
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6463
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6464
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6465
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6466
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x57

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6467
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 6470
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6472
    nop

    .line 6473
    return-void

    .line 6470
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6472
    throw v2
.end method

.method public blacklist setComponentEnabledSettings(Ljava/util/List;ILjava/lang/String;)V
    .registers 9
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$ComponentEnabledSetting;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6477
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6478
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6480
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6481
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 6482
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6483
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6484
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x58

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6485
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6488
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6490
    nop

    .line 6491
    return-void

    .line 6488
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6490
    throw v2
.end method

.method public blacklist setDistractingPackageRestrictionsAsUser([Ljava/lang/String;II)[Ljava/lang/String;
    .registers 9
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "restrictionFlags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6097
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6098
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6101
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6102
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 6103
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6104
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6105
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6106
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6107
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 6110
    .end local v2    # "_status":Z
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6112
    nop

    .line 6113
    return-object v3

    .line 6110
    .end local v3    # "_result":[Ljava/lang/String;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6112
    throw v2
.end method

.method public greylist-max-o setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "warning"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8066
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8067
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8069
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8070
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8071
    const/4 v2, 0x0

    if-eqz p2, :cond_1f

    .line 8072
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8073
    invoke-static {p2, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_22

    .line 8076
    :cond_1f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8078
    :goto_22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8079
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8080
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 8083
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8085
    nop

    .line 8086
    return-void

    .line 8083
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8085
    throw v2
.end method

.method public greylist-max-o setHomeActivity(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6382
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6383
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6385
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6386
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6387
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6388
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x54

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6389
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6392
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6394
    nop

    .line 6395
    return-void

    .line 6392
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6394
    throw v2
.end method

.method public greylist-max-o setInstallLocation(I)Z
    .registers 7
    .param p1, "loc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7187
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7188
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7191
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7192
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7193
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7194
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7195
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 7198
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7200
    nop

    .line 7201
    return v3

    .line 7198
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7200
    throw v2
.end method

.method public greylist-max-o setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5707
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5708
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5710
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5711
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5712
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5713
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5714
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5717
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5719
    nop

    .line 5720
    return-void

    .line 5717
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5719
    throw v2
.end method

.method public greylist-max-o setInstantAppCookie(Ljava/lang/String;[BI)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cookie"    # [B
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7719
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7720
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7723
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7724
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7725
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7726
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7727
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x95

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7728
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7729
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 7732
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7734
    nop

    .line 7735
    return v3

    .line 7732
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7734
    throw v2
.end method

.method public blacklist setKeepUninstalledPackages(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8851
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8852
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8854
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8855
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8856
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8857
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 8860
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8862
    nop

    .line 8863
    return-void

    .line 8860
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8862
    throw v2
.end method

.method public greylist-max-o setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "filter"    # Landroid/content/IntentFilter;
    .param p5, "match"    # I
    .param p6, "activity"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5897
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5898
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5900
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5901
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5902
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5903
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5904
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5905
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5906
    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5907
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5908
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 5911
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5913
    nop

    .line 5914
    return-void

    .line 5911
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5913
    throw v2
.end method

.method public blacklist setMimeGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8620
    .local p3, "mimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8621
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8623
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8625
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8626
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8627
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8628
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 8631
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8633
    nop

    .line 8634
    return-void

    .line 8631
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8633
    throw v2
.end method

.method public greylist-max-o setPackageStoppedState(Ljava/lang/String;ZI)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stopped"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6595
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6596
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6598
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6599
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6600
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6601
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6602
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6603
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6606
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6608
    nop

    .line 6609
    return-void

    .line 6606
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6608
    throw v2
.end method

.method public blacklist setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;ILjava/lang/String;II)[Ljava/lang/String;
    .registers 15
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "appExtras"    # Landroid/os/PersistableBundle;
    .param p4, "launcherExtras"    # Landroid/os/PersistableBundle;
    .param p5, "dialogInfo"    # Landroid/content/pm/SuspendDialogInfo;
    .param p6, "flags"    # I
    .param p7, "suspendingPackage"    # Ljava/lang/String;
    .param p8, "suspendingUserId"    # I
    .param p9, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6117
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

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
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 6123
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6124
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6125
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6126
    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6127
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 6128
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6129
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 6130
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 6131
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x46

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6132
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6133
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_44

    .line 6136
    .end local v2    # "_status":Z
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6138
    nop

    .line 6139
    return-object v3

    .line 6136
    .end local v3    # "_result":[Ljava/lang/String;
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6138
    throw v2
.end method

.method public blacklist setPageSizeAppCompatFlagsSettingsOverride(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9031
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9032
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9034
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9035
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9036
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9037
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9038
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9041
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9043
    nop

    .line 9044
    return-void

    .line 9041
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9043
    throw v2
.end method

.method public greylist-max-o setRequiredForSystemUser(Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "systemUserApp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7777
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7778
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7781
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7782
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7783
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7784
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x98

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7785
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7786
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 7789
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7791
    nop

    .line 7792
    return v3

    .line 7789
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7791
    throw v2
.end method

.method public blacklist setRuntimePermissionsVersion(II)V
    .registers 8
    .param p1, "version"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8389
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8390
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8392
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8393
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8394
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8395
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xba

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8396
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 8399
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8401
    nop

    .line 8402
    return-void

    .line 8399
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8401
    throw v2
.end method

.method public blacklist setSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "themeName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8656
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8657
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8659
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8660
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8661
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8662
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8663
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8664
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 8667
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8669
    nop

    .line 8670
    return-void

    .line 8667
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8669
    throw v2
.end method

.method public blacklist setSystemAppHiddenUntilInstalled(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7481
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7482
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7484
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7485
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7486
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7487
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7488
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 7491
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7493
    nop

    .line 7494
    return-void

    .line 7491
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7493
    throw v2
.end method

.method public blacklist setSystemAppInstallState(Ljava/lang/String;ZI)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installed"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7497
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7498
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7501
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7502
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7503
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7504
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7505
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x89

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7506
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7507
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 7510
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7512
    nop

    .line 7513
    return v3

    .line 7510
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7512
    throw v2
.end method

.method public greylist-max-o setUpdateAvailable(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updateAvaialble"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7800
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7801
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7803
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7804
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7805
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7806
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x99

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7807
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 7810
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7812
    nop

    .line 7813
    return-void

    .line 7810
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7812
    throw v2
.end method

.method public blacklist setUserMinAspectRatio(Ljava/lang/String;II)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "aspectRatio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8692
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8693
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8695
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8696
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8697
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8698
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8699
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xca

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8700
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 8703
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8705
    nop

    .line 8706
    return-void

    .line 8703
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8705
    throw v2
.end method

.method public greylist-max-o unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    .registers 7
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7135
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7136
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7139
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7140
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x75

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7141
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 7144
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7146
    nop

    .line 7147
    return-void

    .line 7144
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7146
    throw v2
.end method

.method public blacklist unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8921
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8922
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8924
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8925
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8926
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8927
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 8930
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8932
    nop

    .line 8933
    return-void

    .line 8930
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8932
    throw v2
.end method

.method public greylist-max-o updateIntentVerificationStatus(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7316
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7317
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7320
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7323
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7324
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7325
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7326
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 7329
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7331
    nop

    .line 7332
    return v3

    .line 7329
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7331
    throw v2
.end method

.method public greylist-max-o verifyIntentFilter(IILjava/util/List;)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "verificationCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7278
    .local p3, "failedDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7279
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7281
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7282
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7283
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7284
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7285
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7286
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 7289
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7291
    nop

    .line 7292
    return-void

    .line 7289
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7291
    throw v2
.end method

.method public greylist-max-o verifyPendingInstall(II)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "verificationCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7244
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 7245
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7247
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7248
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7249
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7250
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7251
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 7254
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7256
    nop

    .line 7257
    return-void

    .line 7254
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7256
    throw v2
.end method

.method public blacklist waitForHandler(JZ)Z
    .registers 9
    .param p1, "timeoutMillis"    # J
    .param p3, "forBackgroundHandler"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8886
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8887
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8890
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8891
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8892
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8893
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8894
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8895
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 8898
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8900
    nop

    .line 8901
    return v3

    .line 8898
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8900
    throw v2
.end method

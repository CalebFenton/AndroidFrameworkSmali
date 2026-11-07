.class Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1169
    iput-object p1, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1170
    return-void
.end method


# virtual methods
.method public blacklist addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J
    .registers 9
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2095
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2096
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2099
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2100
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2101
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2102
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2103
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2104
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2105
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 2108
    .end local v2    # "_status":Z
    .local v3, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2110
    nop

    .line 2111
    return-wide v3

    .line 2108
    .end local v3    # "_result":J
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2110
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1173
    iget-object v0, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 9
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1327
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1328
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1331
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1332
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1333
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1334
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1335
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1336
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1337
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 1340
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1342
    nop

    .line 1343
    return-object v3

    .line 1340
    .end local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1342
    throw v2
.end method

.method public greylist-max-o closeSession(Ljava/lang/String;)V
    .registers 7
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1959
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1960
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1962
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1963
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1964
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1965
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1968
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1970
    nop

    .line 1971
    return-void

    .line 1968
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1970
    throw v2
.end method

.method public greylist-max-o generateKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1709
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1710
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1713
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1714
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1715
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1716
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1717
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1720
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1722
    nop

    .line 1723
    return-object v3

    .line 1720
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1722
    throw v2
.end method

.method public blacklist generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "metadata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1727
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1728
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1731
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1733
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1734
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1735
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1736
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 1739
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1741
    nop

    .line 1742
    return-object v3

    .line 1739
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1741
    throw v2
.end method

.method public greylist-max-o getBoolean(Ljava/lang/String;ZI)Z
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1232
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1233
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1236
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1239
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1241
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1242
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 1245
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1247
    nop

    .line 1248
    return v3

    .line 1245
    .end local v3    # "_result":Z
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1247
    throw v2
.end method

.method public blacklist getCredentialType(I)I
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1422
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1423
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1426
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1427
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1428
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1429
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1430
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1433
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1435
    nop

    .line 1436
    return v3

    .line 1433
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1435
    throw v2
.end method

.method public blacklist getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .registers 8
    .param p1, "currentCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1476
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1477
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1480
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1481
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1482
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1483
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1484
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1485
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 1488
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1490
    nop

    .line 1491
    return-object v3

    .line 1488
    .end local v3    # "_result":[B
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1490
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1177
    const-string v0, "com.android.internal.widget.ILockSettings"

    return-object v0
.end method

.method public greylist-max-o getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1785
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1786
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1789
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1790
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1791
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1792
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1796
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1798
    nop

    .line 1799
    return-object v3

    .line 1796
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1798
    throw v2
.end method

.method public greylist-max-o getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1692
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1693
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1696
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1697
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1698
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1699
    sget-object v3, Landroid/security/keystore/recovery/KeyChainSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/keystore/recovery/KeyChainSnapshot;
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 1702
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/security/keystore/recovery/KeyChainSnapshot;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1704
    nop

    .line 1705
    return-object v3

    .line 1702
    .end local v3    # "_result":Landroid/security/keystore/recovery/KeyChainSnapshot;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1704
    throw v2
.end method

.method public greylist-max-o getLong(Ljava/lang/String;JI)J
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1252
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1259
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1261
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1262
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 1265
    .end local v2    # "_status":Z
    .local v3, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1267
    nop

    .line 1268
    return-wide v3

    .line 1265
    .end local v3    # "_result":J
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1267
    throw v2
.end method

.method public blacklist getPinLength(I)I
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1440
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1441
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1444
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1446
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1447
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1448
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1451
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1453
    nop

    .line 1454
    return v3

    .line 1451
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1453
    throw v2
.end method

.method public greylist-max-o getRecoverySecretTypes()[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1897
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1898
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1901
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1902
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1903
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1904
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 1907
    .end local v2    # "_status":Z
    .local v3, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1909
    nop

    .line 1910
    return-object v3

    .line 1907
    .end local v3    # "_result":[I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1909
    throw v2
.end method

.method public greylist-max-o getRecoveryStatus()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1864
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1865
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1868
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1869
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1870
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1871
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1872
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 1875
    .end local v2    # "_status":Z
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1877
    nop

    .line 1878
    return-object v4

    .line 1875
    .end local v4    # "_result":Ljava/util/Map;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1877
    throw v2
.end method

.method public greylist-max-o getSeparateProfileChallengeEnabled(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1512
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1513
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1516
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1518
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1519
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1520
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1523
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1525
    nop

    .line 1526
    return v3

    .line 1523
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1525
    throw v2
.end method

.method public greylist-max-o getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1272
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1273
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1276
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1280
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1281
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1282
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 1285
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1287
    nop

    .line 1288
    return-object v3

    .line 1285
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1287
    throw v2
.end method

.method public greylist-max-o getStrongAuthForUser(I)I
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1636
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1637
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1640
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1641
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1642
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1643
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1644
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1647
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1649
    nop

    .line 1650
    return v3

    .line 1647
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1649
    throw v2
.end method

.method public blacklist hasPendingEscrowToken(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1654
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1655
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1658
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1659
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1660
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1661
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1662
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1665
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1667
    nop

    .line 1668
    return v3

    .line 1665
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1667
    throw v2
.end method

.method public blacklist hasSecureLockScreen()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2009
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2010
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2013
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2014
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2015
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2016
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 2019
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2021
    nop

    .line 2022
    return v3

    .line 2019
    .end local v3    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2021
    throw v2
.end method

.method public greylist-max-o importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1746
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1747
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1750
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1751
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1752
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1753
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1754
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1755
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 1758
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1760
    nop

    .line 1761
    return-object v3

    .line 1758
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1760
    throw v2
.end method

.method public blacklist importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyBytes"    # [B
    .param p3, "metadata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1765
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1766
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1769
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1770
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1771
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1772
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1773
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1774
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1775
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1778
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1780
    nop

    .line 1781
    return-object v3

    .line 1778
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1780
    throw v2
.end method

.method public greylist-max-o initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .registers 9
    .param p1, "rootCertificateAlias"    # Ljava/lang/String;
    .param p2, "recoveryServiceCertFile"    # [B
    .param p3, "recoveryServiceSigFile"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1675
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1676
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1678
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1679
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1680
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1681
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1682
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1683
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1686
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1688
    nop

    .line 1689
    return-void

    .line 1686
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1688
    throw v2
.end method

.method public blacklist isWeakEscrowTokenActive(JI)Z
    .registers 9
    .param p1, "handle"    # J
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2134
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2139
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2140
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2141
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2142
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2143
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 2146
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2148
    nop

    .line 2149
    return v3

    .line 2146
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2148
    throw v2
.end method

.method public blacklist isWeakEscrowTokenValid(J[BI)Z
    .registers 10
    .param p1, "handle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2153
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2154
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2157
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2158
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2159
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2160
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2161
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2162
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2163
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 2166
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2168
    nop

    .line 2169
    return v3

    .line 2166
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2168
    throw v2
.end method

.method public greylist-max-o recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .registers 9
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "recoveryKeyBlob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1938
    .local p3, "applicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1939
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1942
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1944
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1945
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1946
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1947
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1948
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1949
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_3a

    .line 1952
    .end local v2    # "_status":Z
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1954
    nop

    .line 1955
    return-object v4

    .line 1952
    .end local v4    # "_result":Ljava/util/Map;
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1954
    throw v2
.end method

.method public blacklist refreshStoredPinLength(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1458
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1459
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1462
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1464
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1465
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1466
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1469
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1471
    nop

    .line 1472
    return v3

    .line 1469
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1471
    throw v2
.end method

.method public greylist-max-o registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 7
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1530
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1531
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1533
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1535
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1536
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1539
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1541
    nop

    .line 1542
    return-void

    .line 1539
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1541
    throw v2
.end method

.method public blacklist registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 7
    .param p1, "listener"    # Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2059
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2060
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2063
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2064
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2065
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2066
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2067
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 2070
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2072
    nop

    .line 2073
    return v3

    .line 2070
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2072
    throw v2
.end method

.method public blacklist removeCachedUnifiedChallenge(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2044
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2045
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2047
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2048
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2049
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2050
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 2053
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2055
    nop

    .line 2056
    return-void

    .line 2053
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2055
    throw v2
.end method

.method public blacklist removeGatekeeperPasswordHandle(J)V
    .registers 8
    .param p1, "gatekeeperPasswordHandle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1407
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1411
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1412
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1413
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1416
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1418
    nop

    .line 1419
    return-void

    .line 1416
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1418
    throw v2
.end method

.method public greylist-max-o removeKey(Ljava/lang/String;)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1803
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1804
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1806
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1807
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1808
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1809
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1812
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1814
    nop

    .line 1815
    return-void

    .line 1812
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1814
    throw v2
.end method

.method public blacklist removeWeakEscrowToken(JI)Z
    .registers 9
    .param p1, "handle"    # J
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2115
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2116
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2119
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2120
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2121
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2122
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2123
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2124
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 2127
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2129
    nop

    .line 2130
    return v3

    .line 2127
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2129
    throw v2
.end method

.method public blacklist reportSuccessfulBiometricUnlock(ZI)V
    .registers 8
    .param p1, "isStrongBiometric"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1576
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1577
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1579
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1581
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1582
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1583
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1586
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1588
    nop

    .line 1589
    return-void

    .line 1586
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1588
    throw v2
.end method

.method public greylist-max-o requireStrongAuth(II)V
    .registers 8
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1560
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1561
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1563
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1564
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1565
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1566
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1567
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1570
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1572
    nop

    .line 1573
    return-void

    .line 1570
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1572
    throw v2
.end method

.method public greylist-max-o resetKeyStore(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1312
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1313
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1315
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1317
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1318
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1321
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1323
    nop

    .line 1324
    return-void

    .line 1321
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1323
    throw v2
.end method

.method public blacklist scheduleNonStrongBiometricIdleTimeout(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1592
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1593
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1595
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1597
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1598
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1601
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1603
    nop

    .line 1604
    return-void

    .line 1601
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1603
    throw v2
.end method

.method public greylist-max-o setBoolean(Ljava/lang/String;ZI)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1181
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1182
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1184
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1187
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1189
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 1192
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1194
    nop

    .line 1195
    return-void

    .line 1192
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1194
    throw v2
.end method

.method public blacklist setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    .registers 9
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1292
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1293
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1296
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1297
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1298
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1299
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1301
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1302
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 1305
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1307
    nop

    .line 1308
    return v3

    .line 1305
    .end local v3    # "_result":Z
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1307
    throw v2
.end method

.method public greylist-max-o setLong(Ljava/lang/String;JI)V
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1198
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1204
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1205
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1206
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 1209
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1211
    nop

    .line 1212
    return-void

    .line 1209
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1211
    throw v2
.end method

.method public greylist-max-o setRecoverySecretTypes([I)V
    .registers 7
    .param p1, "secretTypes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1882
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1883
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1885
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1886
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1887
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1888
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1891
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1893
    nop

    .line 1894
    return-void

    .line 1891
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1893
    throw v2
.end method

.method public greylist-max-o setRecoveryStatus(Ljava/lang/String;I)V
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1848
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1849
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1851
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1852
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1853
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1854
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1855
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1858
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1860
    nop

    .line 1861
    return-void

    .line 1858
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1860
    throw v2
.end method

.method public blacklist setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .param p3, "managedUserPassword"    # Lcom/android/internal/widget/LockscreenCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1495
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1496
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1498
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1501
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1502
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1503
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1506
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1508
    nop

    .line 1509
    return-void

    .line 1506
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1508
    throw v2
.end method

.method public greylist-max-o setServerParams([B)V
    .registers 7
    .param p1, "serverParams"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1833
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1834
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1836
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1837
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1838
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1839
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1842
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1844
    nop

    .line 1845
    return-void

    .line 1842
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1844
    throw v2
.end method

.method public greylist-max-o setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1818
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1819
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1821
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1822
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1823
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1824
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1827
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1829
    nop

    .line 1830
    return-void

    .line 1827
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1829
    throw v2
.end method

.method public greylist-max-o setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1215
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1216
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1218
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1223
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 1226
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1228
    nop

    .line 1229
    return-void

    .line 1226
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1228
    throw v2
.end method

.method public greylist-max-o startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .registers 12
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "rootCertificateAlias"    # Ljava/lang/String;
    .param p3, "verifierCertPath"    # Landroid/security/keystore/recovery/RecoveryCertPath;
    .param p4, "vaultParams"    # [B
    .param p5, "vaultChallenge"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/security/keystore/recovery/RecoveryCertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1914
    .local p6, "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1915
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1918
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1920
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1921
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1922
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1923
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1924
    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1925
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1926
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1927
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_3b

    .line 1930
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1932
    nop

    .line 1933
    return-object v3

    .line 1930
    .end local v3    # "_result":[B
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1932
    throw v2
.end method

.method public blacklist startRemoteLockscreenValidation()Landroid/app/RemoteLockscreenValidationSession;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1974
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1975
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1978
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1979
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1980
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1981
    sget-object v3, Landroid/app/RemoteLockscreenValidationSession;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RemoteLockscreenValidationSession;
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 1984
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/app/RemoteLockscreenValidationSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1986
    nop

    .line 1987
    return-object v3

    .line 1984
    .end local v3    # "_result":Landroid/app/RemoteLockscreenValidationSession;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1986
    throw v2
.end method

.method public greylist-max-o systemReady()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1607
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1608
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1610
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1611
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1612
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 1615
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1617
    nop

    .line 1618
    return-void

    .line 1615
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1617
    throw v2
.end method

.method public blacklist tryUnlockWithCachedUnifiedChallenge(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2026
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2027
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2030
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2031
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2032
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2033
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2034
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 2037
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2039
    nop

    .line 2040
    return v3

    .line 2037
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2039
    throw v2
.end method

.method public blacklist unlockUserKeyIfUnsecured(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2173
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2174
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2178
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2179
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 2182
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2184
    nop

    .line 2185
    return-void

    .line 2182
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2184
    throw v2
.end method

.method public greylist-max-o unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 7
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1545
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1548
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1550
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1551
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1554
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1556
    nop

    .line 1557
    return-void

    .line 1554
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1556
    throw v2
.end method

.method public blacklist unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 7
    .param p1, "listener"    # Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2077
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2078
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2081
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2082
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2083
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2084
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2085
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 2088
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2090
    nop

    .line 2091
    return v3

    .line 2088
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2090
    throw v2
.end method

.method public greylist-max-o userPresent(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1621
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1622
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1624
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1625
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1626
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1627
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1630
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1632
    nop

    .line 1633
    return-void

    .line 1630
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1632
    throw v2
.end method

.method public blacklist validateRemoteLockscreen([B)Landroid/app/RemoteLockscreenValidationResult;
    .registers 7
    .param p1, "encryptedCredential"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1991
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1992
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1995
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1996
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1997
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1998
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1999
    sget-object v3, Landroid/app/RemoteLockscreenValidationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RemoteLockscreenValidationResult;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 2002
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/app/RemoteLockscreenValidationResult;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2004
    nop

    .line 2005
    return-object v3

    .line 2002
    .end local v3    # "_result":Landroid/app/RemoteLockscreenValidationResult;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2004
    throw v2
.end method

.method public blacklist verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 9
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1347
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1348
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1351
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1352
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1353
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1354
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1355
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1356
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1357
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 1360
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1362
    nop

    .line 1363
    return-object v3

    .line 1360
    .end local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1362
    throw v2
.end method

.method public blacklist verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 11
    .param p1, "gatekeeperPasswordHandle"    # J
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1387
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1388
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1391
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1393
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1394
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1396
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1397
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 1400
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1402
    nop

    .line 1403
    return-object v3

    .line 1400
    .end local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1402
    throw v2
.end method

.method public blacklist verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 9
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1367
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1368
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1371
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1372
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1373
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1374
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1375
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1376
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1377
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 1380
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1382
    nop

    .line 1383
    return-object v3

    .line 1380
    .end local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1382
    throw v2
.end method

.method public blacklist writeRepairModeCredential(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2188
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2192
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2194
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2195
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2196
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 2199
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2201
    nop

    .line 2202
    return v3

    .line 2199
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2201
    throw v2
.end method

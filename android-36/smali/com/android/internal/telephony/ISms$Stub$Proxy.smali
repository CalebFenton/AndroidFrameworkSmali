.class Lcom/android/internal/telephony/ISms$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms$Stub;
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

    .line 1369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1370
    iput-object p1, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1371
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1374
    iget-object v0, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist checkSmsShortCodeDestination(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "subId"    # I
    .param p2, "callingApk"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "destAddress"    # Ljava/lang/String;
    .param p5, "countryIso"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2397
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2401
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2402
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2403
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2404
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2405
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2406
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2407
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2408
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2409
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 2412
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2414
    nop

    .line 2415
    return v3

    .line 2412
    .end local v3    # "_result":I
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2414
    throw v2
.end method

.method public blacklist clearStorageMonitorMemoryStatusOverride(I)V
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2377
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2378
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2380
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2382
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2383
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 2386
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2388
    nop

    .line 2389
    return-void

    .line 2386
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2388
    throw v2
.end method

.method public greylist-max-o copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z
    .registers 11
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .param p5, "smsc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1448
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1449
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1452
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1454
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1455
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1456
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1457
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1458
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1459
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1460
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 1463
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1465
    nop

    .line 1466
    return v3

    .line 1463
    .end local v3    # "_result":Z
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1465
    throw v2
.end method

.method public greylist-max-o createAppSpecificSmsToken(ILjava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 9
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2293
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2294
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2297
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2298
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2299
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2300
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2301
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2302
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2303
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 2306
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2308
    nop

    .line 2309
    return-object v3

    .line 2306
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2308
    throw v2
.end method

.method public blacklist createAppSpecificSmsTokenWithPackageInfo(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 10
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "prefixes"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2325
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2326
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2329
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2331
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2332
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2333
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2334
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2335
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2336
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 2339
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2341
    nop

    .line 2342
    return-object v3

    .line 2339
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2341
    throw v2
.end method

.method public greylist-max-o disableCellBroadcastForSubscriber(III)Z
    .registers 9
    .param p1, "subId"    # I
    .param p2, "messageIdentifier"    # I
    .param p3, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1850
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1851
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1854
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1855
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1856
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1857
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1858
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1859
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1860
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1863
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1865
    nop

    .line 1866
    return v3

    .line 1863
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1865
    throw v2
.end method

.method public greylist-max-o disableCellBroadcastRangeForSubscriber(IIII)Z
    .registers 10
    .param p1, "subId"    # I
    .param p2, "startMessageId"    # I
    .param p3, "endMessageId"    # I
    .param p4, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1929
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1930
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1933
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1935
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1936
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1937
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1939
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1940
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 1943
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1945
    nop

    .line 1946
    return v3

    .line 1943
    .end local v3    # "_result":Z
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1945
    throw v2
.end method

.method public greylist-max-o enableCellBroadcastForSubscriber(III)Z
    .registers 9
    .param p1, "subId"    # I
    .param p2, "messageIdentifier"    # I
    .param p3, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1813
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1814
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1817
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1819
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1820
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1821
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1822
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1823
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1826
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1828
    nop

    .line 1829
    return v3

    .line 1826
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1828
    throw v2
.end method

.method public greylist-max-o enableCellBroadcastRangeForSubscriber(IIII)Z
    .registers 10
    .param p1, "subId"    # I
    .param p2, "startMessageId"    # I
    .param p3, "endMessageId"    # I
    .param p4, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1889
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1890
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1893
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1894
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1895
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1896
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1897
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1898
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1899
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1900
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 1903
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1905
    nop

    .line 1906
    return v3

    .line 1903
    .end local v3    # "_result":Z
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1905
    throw v2
.end method

.method public greylist-max-o getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1387
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

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
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1394
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1395
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1396
    sget-object v3, Lcom/android/internal/telephony/SmsRawData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 1399
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1401
    nop

    .line 1402
    return-object v3

    .line 1399
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1401
    throw v2
.end method

.method public blacklist getCarrierConfigValuesForSubscriber(I)Landroid/os/Bundle;
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2265
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2266
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2269
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2271
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2272
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2273
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 2276
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2278
    nop

    .line 2279
    return-object v3

    .line 2276
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2278
    throw v2
.end method

.method public greylist-max-o getImsSmsFormatForSubscriber(I)Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2117
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2121
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2123
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2124
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2125
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 2128
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2130
    nop

    .line 2131
    return-object v3

    .line 2128
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2130
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1378
    const-string v0, "com.android.internal.telephony.ISms"

    return-object v0
.end method

.method public greylist-max-o getPreferredSmsSubscription()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2090
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2091
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2094
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2095
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2096
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2097
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 2100
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2102
    nop

    .line 2103
    return v3

    .line 2100
    .end local v3    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2102
    throw v2
.end method

.method public greylist-max-o getPremiumSmsPermission(Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1954
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1955
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1958
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1959
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1960
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1961
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1962
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1965
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1967
    nop

    .line 1968
    return v3

    .line 1965
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1967
    throw v2
.end method

.method public greylist-max-o getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I
    .registers 8
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1976
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1977
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1980
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1982
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1983
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1984
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1985
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 1988
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1990
    nop

    .line 1991
    return v3

    .line 1988
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1990
    throw v2
.end method

.method public blacklist getSmsCapacityOnIccForSubscriber(I)I
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2479
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2480
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2483
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2485
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2486
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2487
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 2490
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2492
    nop

    .line 2493
    return v3

    .line 2490
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2492
    throw v2
.end method

.method public blacklist getSmscAddressFromIccEfForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2426
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2427
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2430
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2431
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2432
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2433
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2434
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 2438
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2440
    nop

    .line 2441
    return-object v3

    .line 2438
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2440
    throw v2
.end method

.method public blacklist getWapMessageSize(Ljava/lang/String;)J
    .registers 7
    .param p1, "locationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2534
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2535
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2538
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2539
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2540
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2541
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2542
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 2545
    .end local v2    # "_status":Z
    .local v3, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2547
    nop

    .line 2548
    return-wide v3

    .line 2545
    .end local v3    # "_result":J
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2547
    throw v2
.end method

.method public greylist-max-o injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 10
    .param p1, "subId"    # I
    .param p2, "pdu"    # [B
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "receivedIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1655
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1656
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1658
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1659
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1660
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1661
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1662
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1663
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1664
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 1667
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1669
    nop

    .line 1670
    return-void

    .line 1667
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1669
    throw v2
.end method

.method public greylist-max-o isImsSmsSupportedForSubscriber(I)Z
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2044
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2045
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2048
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2049
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2050
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2051
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2052
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 2055
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2057
    nop

    .line 2058
    return v3

    .line 2055
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2057
    throw v2
.end method

.method public greylist-max-o isSMSPromptEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2139
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2140
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2143
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2144
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2145
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2146
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 2149
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2151
    nop

    .line 2152
    return v3

    .line 2149
    .end local v3    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2151
    throw v2
.end method

.method public greylist-max-o isSmsSimPickActivityNeeded(I)Z
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2068
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2069
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2072
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2074
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2075
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2076
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 2079
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2081
    nop

    .line 2082
    return v3

    .line 2079
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2081
    throw v2
.end method

.method public blacklist resetAllCellBroadcastRanges(I)Z
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2505
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2506
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2509
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2510
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2511
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2512
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2513
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 2516
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2518
    nop

    .line 2519
    return v3

    .line 2516
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2518
    throw v2
.end method

.method public blacklist sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 15
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingattributionTag"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "destPort"    # I
    .param p7, "data"    # [B
    .param p8, "sentIntent"    # Landroid/app/PendingIntent;
    .param p9, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1494
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1495
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1499
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1502
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1504
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1505
    const/4 v2, 0x0

    invoke-virtual {v0, p8, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1506
    invoke-virtual {v0, p9, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1507
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1508
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_3f

    .line 1511
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1513
    nop

    .line 1514
    return-void

    .line 1511
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1513
    throw v2
.end method

.method public blacklist sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V
    .registers 28
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "destinationAddress"    # Ljava/lang/String;
    .param p5, "scAddress"    # Ljava/lang/String;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .param p10, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1702
    .local p6, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 1703
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1705
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1706
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_7f

    .line 1707
    move-object/from16 v4, p2

    :try_start_18
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_7b

    .line 1708
    move-object/from16 v5, p3

    :try_start_1d
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_77

    .line 1709
    move-object/from16 v6, p4

    :try_start_22
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_73

    .line 1710
    move-object/from16 v7, p5

    :try_start_27
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_6f

    .line 1711
    move-object/from16 v8, p6

    :try_start_2c
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_6b

    .line 1712
    const/4 v0, 0x0

    move-object/from16 v9, p7

    :try_start_32
    invoke-virtual {v1, v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_67

    .line 1713
    move-object/from16 v10, p8

    :try_start_37
    invoke-virtual {v1, v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_63

    .line 1714
    move/from16 v11, p9

    :try_start_3c
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_5f

    .line 1715
    move-wide/from16 v12, p10

    :try_start_41
    invoke-virtual {v1, v12, v13}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_5b

    .line 1716
    move-object/from16 v14, p0

    :try_start_46
    iget-object v15, v14, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    invoke-interface {v15, v3, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1717
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_59

    .line 1720
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1722
    nop

    .line 1723
    return-void

    .line 1720
    :catchall_59
    move-exception v0

    goto :goto_94

    :catchall_5b
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_94

    :catchall_5f
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_92

    :catchall_63
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_90

    :catchall_67
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8e

    :catchall_6b
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8c

    :catchall_6f
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8a

    :catchall_73
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_88

    :catchall_77
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_86

    :catchall_7b
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_84

    :catchall_7f
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p2

    :goto_84
    move-object/from16 v5, p3

    :goto_86
    move-object/from16 v6, p4

    :goto_88
    move-object/from16 v7, p5

    :goto_8a
    move-object/from16 v8, p6

    :goto_8c
    move-object/from16 v9, p7

    :goto_8e
    move-object/from16 v10, p8

    :goto_90
    move/from16 v11, p9

    :goto_92
    move-wide/from16 v12, p10

    :goto_94
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1722
    throw v0
.end method

.method public blacklist sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    .registers 29
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "destinationAddress"    # Ljava/lang/String;
    .param p5, "scAddress"    # Ljava/lang/String;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .param p10, "priority"    # I
    .param p11, "expectMore"    # Z
    .param p12, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZIZI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1770
    .local p6, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 1771
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1773
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1774
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1775
    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_8e

    .line 1776
    move-object/from16 v5, p3

    :try_start_1d
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_8a

    .line 1777
    move-object/from16 v6, p4

    :try_start_22
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_86

    .line 1778
    move-object/from16 v7, p5

    :try_start_27
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_82

    .line 1779
    move-object/from16 v8, p6

    :try_start_2c
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_7e

    .line 1780
    const/4 v0, 0x0

    move-object/from16 v9, p7

    :try_start_32
    invoke-virtual {v1, v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_7a

    .line 1781
    move-object/from16 v10, p8

    :try_start_37
    invoke-virtual {v1, v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_76

    .line 1782
    move/from16 v11, p9

    :try_start_3c
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_72

    .line 1783
    move/from16 v12, p10

    :try_start_41
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_6e

    .line 1784
    move/from16 v13, p11

    :try_start_46
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_6a

    .line 1785
    move/from16 v14, p12

    :try_start_4b
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_66

    .line 1786
    move-object/from16 v15, p0

    :try_start_50
    iget-object v0, v15, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1787
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_5c
    .catchall {:try_start_50 .. :try_end_5c} :catchall_64

    .line 1790
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1792
    nop

    .line 1793
    return-void

    .line 1790
    :catchall_64
    move-exception v0

    goto :goto_a5

    :catchall_66
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_a5

    :catchall_6a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_a3

    :catchall_6e
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_a1

    :catchall_72
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_9f

    :catchall_76
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_9d

    :catchall_7a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_9b

    :catchall_7e
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_99

    :catchall_82
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_97

    :catchall_86
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_95

    :catchall_8a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_93

    :catchall_8e
    move-exception v0

    move-object/from16 v15, p0

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
    move-object/from16 v10, p8

    :goto_9d
    move/from16 v11, p9

    :goto_9f
    move/from16 v12, p10

    :goto_a1
    move/from16 v13, p11

    :goto_a3
    move/from16 v14, p12

    :goto_a5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1792
    throw v0
.end method

.method public blacklist sendStoredMultipartText(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 13
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributeTag"    # Ljava/lang/String;
    .param p4, "messageUri"    # Landroid/net/Uri;
    .param p5, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2239
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2240
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2242
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2244
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2245
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2246
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2247
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2248
    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2249
    invoke-virtual {v0, p7, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2250
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2251
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_3a

    .line 2254
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2256
    nop

    .line 2257
    return-void

    .line 2254
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2256
    throw v2
.end method

.method public blacklist sendStoredText(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 13
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "messageUri"    # Landroid/net/Uri;
    .param p5, "scAddress"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2184
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2185
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2187
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2189
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2190
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2191
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2192
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2194
    invoke-virtual {v0, p7, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2195
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2196
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_3a

    .line 2199
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2201
    nop

    .line 2202
    return-void

    .line 2199
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2201
    throw v2
.end method

.method public blacklist sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    .registers 28
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .param p10, "messageId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1547
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 1548
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1550
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1551
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_7e

    .line 1552
    move-object/from16 v4, p2

    :try_start_18
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_7a

    .line 1553
    move-object/from16 v5, p3

    :try_start_1d
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_76

    .line 1554
    move-object/from16 v6, p4

    :try_start_22
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_72

    .line 1555
    move-object/from16 v7, p5

    :try_start_27
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_6e

    .line 1556
    move-object/from16 v8, p6

    :try_start_2c
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_6a

    .line 1557
    const/4 v0, 0x0

    move-object/from16 v9, p7

    :try_start_32
    invoke-virtual {v1, v9, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_66

    .line 1558
    move-object/from16 v10, p8

    :try_start_37
    invoke-virtual {v1, v10, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_62

    .line 1559
    move/from16 v11, p9

    :try_start_3c
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_5e

    .line 1560
    move-wide/from16 v12, p10

    :try_start_41
    invoke-virtual {v1, v12, v13}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_5a

    .line 1561
    move-object/from16 v14, p0

    :try_start_46
    iget-object v15, v14, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-interface {v15, v3, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1562
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_58

    .line 1565
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1567
    nop

    .line 1568
    return-void

    .line 1565
    :catchall_58
    move-exception v0

    goto :goto_93

    :catchall_5a
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_93

    :catchall_5e
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_91

    :catchall_62
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8f

    :catchall_66
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8d

    :catchall_6a
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8b

    :catchall_6e
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_89

    :catchall_72
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_87

    :catchall_76
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_85

    :catchall_7a
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_83

    :catchall_7e
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p2

    :goto_83
    move-object/from16 v5, p3

    :goto_85
    move-object/from16 v6, p4

    :goto_87
    move-object/from16 v7, p5

    :goto_89
    move-object/from16 v8, p6

    :goto_8b
    move-object/from16 v9, p7

    :goto_8d
    move-object/from16 v10, p8

    :goto_8f
    move/from16 v11, p9

    :goto_91
    move-wide/from16 v12, p10

    :goto_93
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1567
    throw v0
.end method

.method public blacklist sendTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .registers 29
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .param p10, "priority"    # I
    .param p11, "expectMore"    # Z
    .param p12, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1617
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 1618
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1620
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1621
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1622
    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_8d

    .line 1623
    move-object/from16 v5, p3

    :try_start_1d
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_89

    .line 1624
    move-object/from16 v6, p4

    :try_start_22
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_85

    .line 1625
    move-object/from16 v7, p5

    :try_start_27
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_81

    .line 1626
    move-object/from16 v8, p6

    :try_start_2c
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_7d

    .line 1627
    const/4 v0, 0x0

    move-object/from16 v9, p7

    :try_start_32
    invoke-virtual {v1, v9, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_79

    .line 1628
    move-object/from16 v10, p8

    :try_start_37
    invoke-virtual {v1, v10, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_75

    .line 1629
    move/from16 v11, p9

    :try_start_3c
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_71

    .line 1630
    move/from16 v12, p10

    :try_start_41
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_6d

    .line 1631
    move/from16 v13, p11

    :try_start_46
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_69

    .line 1632
    move/from16 v14, p12

    :try_start_4b
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_65

    .line 1633
    move-object/from16 v15, p0

    :try_start_50
    iget-object v0, v15, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1634
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_63

    .line 1637
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1639
    nop

    .line 1640
    return-void

    .line 1637
    :catchall_63
    move-exception v0

    goto :goto_a4

    :catchall_65
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_a4

    :catchall_69
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_a2

    :catchall_6d
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_a0

    :catchall_71
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_9e

    :catchall_75
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_9c

    :catchall_79
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_9a

    :catchall_7d
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_98

    :catchall_81
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_96

    :catchall_85
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_94

    :catchall_89
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_92

    :catchall_8d
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v5, p3

    :goto_92
    move-object/from16 v6, p4

    :goto_94
    move-object/from16 v7, p5

    :goto_96
    move-object/from16 v8, p6

    :goto_98
    move-object/from16 v9, p7

    :goto_9a
    move-object/from16 v10, p8

    :goto_9c
    move/from16 v11, p9

    :goto_9e
    move/from16 v12, p10

    :goto_a0
    move/from16 v13, p11

    :goto_a2
    move/from16 v14, p12

    :goto_a4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1639
    throw v0
.end method

.method public greylist-max-o setPremiumSmsPermission(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1999
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2000
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2002
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2003
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2004
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2005
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2006
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2009
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2011
    nop

    .line 2012
    return-void

    .line 2009
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2011
    throw v2
.end method

.method public greylist-max-o setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V
    .registers 9
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2019
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2020
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2022
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2023
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2024
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2025
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2026
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2027
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2030
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2032
    nop

    .line 2033
    return-void

    .line 2030
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2032
    throw v2
.end method

.method public blacklist setSmscAddressOnIccEfForSubscriber(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 9
    .param p1, "smsc"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2453
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2454
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2457
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2459
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2460
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2461
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2462
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2463
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 2466
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2468
    nop

    .line 2469
    return v3

    .line 2466
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2468
    throw v2
.end method

.method public blacklist setStorageMonitorMemoryStatusOverride(IZ)V
    .registers 8
    .param p1, "subId"    # I
    .param p2, "isStorageAvailable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2354
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2355
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2360
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2361
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2364
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2366
    nop

    .line 2367
    return-void

    .line 2364
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2366
    throw v2
.end method

.method public greylist-max-o updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    .registers 11
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "messageIndex"    # I
    .param p4, "newStatus"    # I
    .param p5, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1417
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1421
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1422
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1423
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1425
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1426
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1427
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1428
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1429
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 1432
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1434
    nop

    .line 1435
    return v3

    .line 1432
    .end local v3    # "_result":Z
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1434
    throw v2
.end method

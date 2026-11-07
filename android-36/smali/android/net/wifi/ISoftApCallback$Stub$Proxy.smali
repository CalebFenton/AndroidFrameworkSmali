.class Landroid/net/wifi/ISoftApCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISoftApCallback.java"

# interfaces
.implements Landroid/net/wifi/ISoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ISoftApCallback$Stub;
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

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Landroid/net/wifi/ISoftApCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 223
    return-void
.end method

.method static synthetic blacklist lambda$onConnectedClientsOrInfoChanged$0(Landroid/os/Parcel;Ljava/lang/String;Landroid/net/wifi/SoftApInfo;)V
    .registers 4
    .param p0, "_data"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/net/wifi/SoftApInfo;

    .line 268
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 270
    return-void
.end method

.method static synthetic blacklist lambda$onConnectedClientsOrInfoChanged$1(Landroid/os/Parcel;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p0, "_data"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/util/List;

    .line 277
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/net/wifi/ISoftApCallback$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 279
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/net/wifi/ISoftApCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 230
    const-string v0, "android.net.wifi.ISoftApCallback"

    return-object v0
.end method

.method public blacklist onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V
    .registers 8
    .param p1, "client"    # Landroid/net/wifi/WifiClient;
    .param p2, "blockedReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 316
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.ISoftApCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 317
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 318
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-object v1, p0, Landroid/net/wifi/ISoftApCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 323
    nop

    .line 324
    return-void

    .line 322
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 323
    throw v1
.end method

.method public blacklist onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V
    .registers 7
    .param p1, "capability"    # Landroid/net/wifi/SoftApCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 298
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.ISoftApCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 300
    iget-object v1, p0, Landroid/net/wifi/ISoftApCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    nop

    .line 305
    return-void

    .line 303
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    throw v1
.end method

.method public blacklist onClientsDisconnected(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V
    .registers 8
    .param p1, "info"    # Landroid/net/wifi/SoftApInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/SoftApInfo;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    .local p2, "clients":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 335
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.ISoftApCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 336
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 337
    invoke-static {v0, p2, v1}, Landroid/net/wifi/ISoftApCallback$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 338
    iget-object v1, p0, Landroid/net/wifi/ISoftApCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 342
    nop

    .line 343
    return-void

    .line 341
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 342
    throw v1
.end method

.method public blacklist onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;ZZ)V
    .registers 10
    .param p3, "isBridged"    # Z
    .param p4, "isRegistration"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/SoftApInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;>;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    .local p1, "infos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/SoftApInfo;>;"
    .local p2, "clients":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/net/wifi/WifiClient;>;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 262
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.ISoftApCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 263
    const/4 v1, -0x1

    if-nez p1, :cond_10

    .line 264
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 266
    :cond_10
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    new-instance v2, Landroid/net/wifi/ISoftApCallback$Stub$Proxy$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/net/wifi/ISoftApCallback$Stub$Proxy$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {p1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 272
    :goto_1f
    if-nez p2, :cond_25

    .line 273
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    .line 275
    :cond_25
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    new-instance v1, Landroid/net/wifi/ISoftApCallback$Stub$Proxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/net/wifi/ISoftApCallback$Stub$Proxy$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 281
    :goto_34
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 282
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 283
    iget-object v1, p0, Landroid/net/wifi/ISoftApCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_47

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    nop

    .line 288
    return-void

    .line 286
    :catchall_47
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    throw v1
.end method

.method public blacklist onStateChanged(Landroid/net/wifi/SoftApState;)V
    .registers 6
    .param p1, "state"    # Landroid/net/wifi/SoftApState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 242
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.ISoftApCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 243
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 244
    iget-object v1, p0, Landroid/net/wifi/ISoftApCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    nop

    .line 249
    return-void

    .line 247
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    throw v1
.end method

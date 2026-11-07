.class Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMDnsEventListener.java"

# interfaces
.implements Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mCachedHash:Ljava/lang/String;

.field private blacklist mCachedVersion:I

.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->mCachedVersion:I

    .line 142
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 139
    iput-object p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 149
    sget-object v0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 230
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 232
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3e

    .line 234
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    sget-object v2, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 236
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_32

    .line 239
    .end local v2    # "_status":Z
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    goto :goto_3a

    .line 239
    .end local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    throw v2

    .line 243
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3a
    :goto_3a
    iget-object v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-object v0

    .line 229
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    iget v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_34

    .line 214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 215
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 217
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    sget-object v2, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 219
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->mCachedVersion:I
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_2c

    .line 222
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 224
    goto :goto_34

    .line 222
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 224
    throw v2

    .line 226
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_34
    :goto_34
    iget v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist onGettingServiceAddressStatus(Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;)V
    .registers 7
    .param p1, "status"    # Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 200
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 201
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 202
    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_25

    .line 203
    .local v1, "_status":Z
    if-eqz v1, :cond_1d

    .line 208
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 209
    nop

    .line 210
    return-void

    .line 204
    .restart local v1    # "_status":Z
    :cond_1d
    :try_start_1d
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onGettingServiceAddressStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;
    .end local p1    # "status":Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    throw v2
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    .line 208
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;
    .restart local p1    # "status":Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 209
    throw v1
.end method

.method public blacklist onServiceDiscoveryStatus(Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;)V
    .registers 7
    .param p1, "status"    # Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 170
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 172
    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_25

    .line 173
    .local v1, "_status":Z
    if-eqz v1, :cond_1d

    .line 178
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    nop

    .line 180
    return-void

    .line 174
    .restart local v1    # "_status":Z
    :cond_1d
    :try_start_1d
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onServiceDiscoveryStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;
    .end local p1    # "status":Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    throw v2
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    .line 178
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;
    .restart local p1    # "status":Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    throw v1
.end method

.method public blacklist onServiceRegistrationStatus(Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;)V
    .registers 6
    .param p1, "status"    # Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 155
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 157
    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_24

    .line 158
    .local v1, "_status":Z
    if-eqz v1, :cond_1c

    .line 163
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    nop

    .line 165
    return-void

    .line 159
    .restart local v1    # "_status":Z
    :cond_1c
    :try_start_1c
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onServiceRegistrationStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;
    .end local p1    # "status":Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;
    throw v2
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    .line 163
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;
    .restart local p1    # "status":Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    throw v1
.end method

.method public blacklist onServiceResolutionStatus(Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;)V
    .registers 7
    .param p1, "status"    # Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 185
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 187
    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_25

    .line 188
    .local v1, "_status":Z
    if-eqz v1, :cond_1d

    .line 193
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 194
    nop

    .line 195
    return-void

    .line 189
    .restart local v1    # "_status":Z
    :cond_1d
    :try_start_1d
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onServiceResolutionStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;
    .end local p1    # "status":Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    throw v2
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    .line 193
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;
    .restart local p1    # "status":Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 194
    throw v1
.end method

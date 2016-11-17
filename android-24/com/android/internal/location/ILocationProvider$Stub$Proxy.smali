.class Lcom/android/internal/location/ILocationProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILocationProvider.java"

# interfaces
.implements Lcom/android/internal/location/ILocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/ILocationProvider$Stub;
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
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 157
    iput-object p1, p0, Lcom/android/internal/location/ILocationProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 155
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/location/ILocationProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public disable()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 184
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.location.ILocationProvider"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 187
    iget-object v2, p0, Lcom/android/internal/location/ILocationProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x2

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 181
    return-void

    #@1f
    .line 190
    :catchall_0
    move-exception v2

    #@20
    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 190
    throw v2
.end method

.method public enable()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 170
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 172
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.location.ILocationProvider"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 173
    iget-object v2, p0, Lcom/android/internal/location/ILocationProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x1

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 167
    return-void

    #@1f
    .line 176
    :catchall_0
    move-exception v2

    #@20
    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 176
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 165
    const-string/jumbo v0, "com.android.internal.location.ILocationProvider"

    #@3
    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 228
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 231
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.location.ILocationProvider"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 232
    iget-object v3, p0, Lcom/android/internal/location/ILocationProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 234
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 235
    sget-object v3, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Lcom/android/internal/location/ProviderProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 242
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 245
    return-object v2

    #@2d
    .line 238
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Lcom/android/internal/location/ProviderProperties;
    goto :goto_0

    #@2f
    .line 241
    .end local v2    # "_result":Lcom/android/internal/location/ProviderProperties;
    :catchall_0
    move-exception v3

    #@30
    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 241
    throw v3
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 250
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.location.ILocationProvider"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 254
    iget-object v3, p0, Lcom/android/internal/location/ILocationProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v2

    #@1c
    .line 257
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 258
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 262
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 265
    return v2

    #@2c
    .line 261
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2d
    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 261
    throw v3
.end method

.method public getStatusUpdateTime()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 273
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.location.ILocationProvider"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 274
    iget-object v4, p0, Lcom/android/internal/location/ILocationProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v5, 0x6

    #@11
    const/4 v6, 0x0

    #@12
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-wide v2

    #@1c
    .line 279
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 282
    return-wide v2

    #@23
    .line 278
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@24
    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 278
    throw v4
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 287
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 290
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.location.ILocationProvider"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 292
    if-eqz p2, :cond_1

    #@13
    .line 293
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 294
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 299
    :goto_0
    iget-object v3, p0, Lcom/android/internal/location/ILocationProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x7

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 301
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_2

    #@2b
    const/4 v2, 0x1

    #@2c
    .line 302
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_0

    #@32
    .line 303
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 307
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 310
    return v2

    #@3c
    .line 297
    .end local v2    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    #@3d
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    goto :goto_0

    #@41
    .line 306
    :catchall_0
    move-exception v3

    #@42
    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 306
    throw v3

    #@49
    .line 301
    :cond_2
    const/4 v2, 0x0

    #@4a
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 198
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 200
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.location.ILocationProvider"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 201
    if-eqz p1, :cond_0

    #@10
    .line 202
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 203
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Lcom/android/internal/location/ProviderRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 208
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 209
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 210
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 215
    :goto_1
    iget-object v2, p0, Lcom/android/internal/location/ILocationProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/4 v3, 0x3

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 195
    return-void

    #@33
    .line 206
    :cond_0
    const/4 v2, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 218
    :catchall_0
    move-exception v2

    #@39
    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 218
    throw v2

    #@40
    .line 213
    :cond_1
    const/4 v2, 0x0

    #@41
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    goto :goto_1
.end method

.class Landroid/app/trust/ITrustManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITrustManager.java"

# interfaces
.implements Landroid/app/trust/ITrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/ITrustManager$Stub;
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
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 142
    iput-object p1, p0, Landroid/app/trust/ITrustManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 140
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/app/trust/ITrustManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 150
    const-string/jumbo v0, "android.app.trust.ITrustManager"

    #@3
    return-object v0
.end method

.method public hasUserAuthenticatedSinceBoot(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 281
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 284
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.trust.ITrustManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 285
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 286
    iget-object v3, p0, Landroid/app/trust/ITrustManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x9

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 291
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 294
    return v2

    #@2a
    .line 288
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 290
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 290
    throw v3
.end method

.method public isDeviceLocked(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 245
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 248
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.trust.ITrustManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 250
    iget-object v3, p0, Landroid/app/trust/ITrustManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x7

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    const/4 v2, 0x1

    #@22
    .line 255
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 258
    return v2

    #@29
    .line 252
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 254
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 254
    throw v3
.end method

.method public isDeviceSecure(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 266
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.trust.ITrustManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 268
    iget-object v3, p0, Landroid/app/trust/ITrustManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x8

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 273
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 276
    return v2

    #@2a
    .line 270
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 272
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 272
    throw v3
.end method

.method public registerTrustListener(Landroid/app/trust/ITrustListener;)V
    .locals 5
    .param p1, "trustListener"    # Landroid/app/trust/ITrustListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 201
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 203
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.trust.ITrustManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 204
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 205
    iget-object v2, p0, Landroid/app/trust/ITrustManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x4

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 198
    return-void

    #@29
    .line 208
    :catchall_0
    move-exception v2

    #@2a
    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 208
    throw v2
.end method

.method public reportEnabledTrustAgentsChanged(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 171
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 173
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.trust.ITrustManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 175
    iget-object v2, p0, Landroid/app/trust/ITrustManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x2

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 176
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 168
    return-void

    #@22
    .line 178
    :catchall_0
    move-exception v2

    #@23
    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 178
    throw v2
.end method

.method public reportKeyguardShowingChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 231
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 233
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.trust.ITrustManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 234
    iget-object v2, p0, Landroid/app/trust/ITrustManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x6

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 228
    return-void

    #@1f
    .line 237
    :catchall_0
    move-exception v2

    #@20
    .line 238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 237
    throw v2
.end method

.method public reportRequireCredentialEntry(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 186
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 188
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.trust.ITrustManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 189
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 190
    iget-object v2, p0, Landroid/app/trust/ITrustManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x3

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 183
    return-void

    #@22
    .line 193
    :catchall_0
    move-exception v2

    #@23
    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 193
    throw v2
.end method

.method public reportUnlockAttempt(ZI)V
    .locals 5
    .param p1, "successful"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 155
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 157
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.trust.ITrustManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 158
    if-eqz p1, :cond_0

    #@12
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 159
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 160
    iget-object v2, p0, Landroid/app/trust/ITrustManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 152
    return-void

    #@29
    :cond_0
    move v2, v3

    #@2a
    .line 158
    goto :goto_0

    #@2b
    .line 163
    :catchall_0
    move-exception v2

    #@2c
    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 163
    throw v2
.end method

.method public unregisterTrustListener(Landroid/app/trust/ITrustListener;)V
    .locals 5
    .param p1, "trustListener"    # Landroid/app/trust/ITrustListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 216
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 218
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.trust.ITrustManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 219
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 220
    iget-object v2, p0, Landroid/app/trust/ITrustManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x5

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 213
    return-void

    #@29
    .line 223
    :catchall_0
    move-exception v2

    #@2a
    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 223
    throw v2
.end method

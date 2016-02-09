.class Landroid/media/IRemoteControlDisplay$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRemoteControlDisplay.java"

# interfaces
.implements Landroid/media/IRemoteControlDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRemoteControlDisplay$Stub;
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
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 164
    iput-object p1, p0, Landroid/media/IRemoteControlDisplay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 162
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Landroid/media/IRemoteControlDisplay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 172
    const-string/jumbo v0, "android.media.IRemoteControlDisplay"

    #@3
    return-object v0
.end method

.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "generationId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;
    .param p3, "artwork"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 329
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.IRemoteControlDisplay"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 331
    if-eqz p2, :cond_0

    #@f
    .line 332
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 333
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 338
    :goto_0
    if-eqz p3, :cond_1

    #@19
    .line 339
    const/4 v1, 0x1

    #@1a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 340
    const/4 v1, 0x0

    #@1e
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 345
    :goto_1
    iget-object v1, p0, Landroid/media/IRemoteControlDisplay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/4 v2, 0x7

    #@24
    const/4 v3, 0x0

    #@25
    const/4 v4, 0x1

    #@26
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 325
    return-void

    #@2d
    .line 336
    :cond_0
    const/4 v1, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 347
    :catchall_0
    move-exception v1

    #@33
    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 347
    throw v1

    #@37
    .line 343
    :cond_1
    const/4 v1, 0x0

    #@38
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_1
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "generationId"    # I
    .param p2, "artwork"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 307
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.IRemoteControlDisplay"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 309
    if-eqz p2, :cond_0

    #@f
    .line 310
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 311
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 316
    :goto_0
    iget-object v1, p0, Landroid/media/IRemoteControlDisplay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x6

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 303
    return-void

    #@23
    .line 314
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 318
    :catchall_0
    move-exception v1

    #@29
    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 318
    throw v1
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .locals 5
    .param p1, "clientGeneration"    # I
    .param p2, "clientMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 186
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IRemoteControlDisplay"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 187
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 188
    if-eqz p2, :cond_0

    #@11
    .line 189
    const/4 v3, 0x1

    #@12
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 190
    const/4 v3, 0x0

    #@16
    invoke-virtual {p2, v0, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 195
    :goto_0
    if-eqz p3, :cond_1

    #@1b
    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 196
    iget-object v1, p0, Landroid/media/IRemoteControlDisplay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v2, 0x1

    #@21
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x1

    #@23
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 182
    return-void

    #@2a
    .line 193
    :cond_0
    const/4 v3, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 198
    :catchall_0
    move-exception v1

    #@30
    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 198
    throw v1

    #@34
    :cond_1
    move v1, v2

    #@35
    .line 195
    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 210
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.IRemoteControlDisplay"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 211
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 212
    iget-object v1, p0, Landroid/media/IRemoteControlDisplay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x2

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 206
    return-void

    #@1c
    .line 211
    :cond_0
    const/4 v1, 0x0

    #@1d
    goto :goto_0

    #@1e
    .line 214
    :catchall_0
    move-exception v1

    #@1f
    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 214
    throw v1
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "generationId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;
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
    .line 288
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.IRemoteControlDisplay"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 290
    if-eqz p2, :cond_0

    #@f
    .line 291
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 292
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 297
    :goto_0
    iget-object v1, p0, Landroid/media/IRemoteControlDisplay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x5

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 284
    return-void

    #@23
    .line 295
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 299
    :catchall_0
    move-exception v1

    #@29
    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 299
    throw v1
.end method

.method public setPlaybackState(IIJJF)V
    .locals 5
    .param p1, "generationId"    # I
    .param p2, "state"    # I
    .param p3, "stateChangeTimeMs"    # J
    .param p5, "currentPosMs"    # J
    .param p7, "speed"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 249
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.IRemoteControlDisplay"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 250
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 251
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 252
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    #@13
    .line 253
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    #@16
    .line 254
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeFloat(F)V

    #@19
    .line 255
    iget-object v1, p0, Landroid/media/IRemoteControlDisplay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1b
    const/4 v2, 0x3

    #@1c
    const/4 v3, 0x0

    #@1d
    const/4 v4, 0x1

    #@1e
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 245
    return-void

    #@25
    .line 257
    :catchall_0
    move-exception v1

    #@26
    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 257
    throw v1
.end method

.method public setTransportControlInfo(III)V
    .locals 5
    .param p1, "generationId"    # I
    .param p2, "transportControlFlags"    # I
    .param p3, "posCapabilities"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 274
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.IRemoteControlDisplay"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 276
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 277
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 278
    iget-object v1, p0, Landroid/media/IRemoteControlDisplay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/4 v2, 0x4

    #@16
    const/4 v3, 0x0

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 270
    return-void

    #@1f
    .line 280
    :catchall_0
    move-exception v1

    #@20
    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 280
    throw v1
.end method

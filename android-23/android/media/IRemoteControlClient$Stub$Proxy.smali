.class Landroid/media/IRemoteControlClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRemoteControlClient.java"

# interfaces
.implements Landroid/media/IRemoteControlClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRemoteControlClient$Stub;
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
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 169
    iput-object p1, p0, Landroid/media/IRemoteControlClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 167
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Landroid/media/IRemoteControlClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public enableRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 293
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IRemoteControlClient"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 294
    if-eqz p1, :cond_0

    #@e
    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 295
    if-eqz p2, :cond_1

    #@17
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 296
    iget-object v1, p0, Landroid/media/IRemoteControlClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v2, 0x8

    #@1e
    const/4 v3, 0x0

    #@1f
    const/4 v4, 0x1

    #@20
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 289
    return-void

    #@27
    .line 295
    :cond_1
    const/4 v1, 0x0

    #@28
    goto :goto_0

    #@29
    .line 298
    :catchall_0
    move-exception v1

    #@2a
    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 298
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 177
    const-string/jumbo v0, "android.media.IRemoteControlClient"

    #@3
    return-object v0
.end method

.method public informationRequestForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 211
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.IRemoteControlClient"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 212
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 213
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 214
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 215
    iget-object v1, p0, Landroid/media/IRemoteControlClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v2, 0x2

    #@1d
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 207
    return-void

    #@26
    .line 217
    :catchall_0
    move-exception v1

    #@27
    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 217
    throw v1
.end method

.method public onInformationRequested(II)V
    .locals 5
    .param p1, "generationId"    # I
    .param p2, "infoFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 193
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.IRemoteControlClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 195
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 196
    iget-object v1, p0, Landroid/media/IRemoteControlClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 189
    return-void

    #@1c
    .line 198
    :catchall_0
    move-exception v1

    #@1d
    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 198
    throw v1
.end method

.method public plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 240
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.IRemoteControlClient"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 241
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 242
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 243
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 244
    iget-object v1, p0, Landroid/media/IRemoteControlClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v2, 0x4

    #@1d
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 236
    return-void

    #@26
    .line 246
    :catchall_0
    move-exception v1

    #@27
    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 246
    throw v1
.end method

.method public seekTo(IJ)V
    .locals 6
    .param p1, "clientGeneration"    # I
    .param p2, "timeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 306
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.IRemoteControlClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 307
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 308
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@10
    .line 309
    iget-object v1, p0, Landroid/media/IRemoteControlClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0x9

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 302
    return-void

    #@1d
    .line 311
    :catchall_0
    move-exception v1

    #@1e
    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 311
    throw v1
.end method

.method public setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 266
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.IRemoteControlClient"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 267
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 268
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 269
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 270
    iget-object v1, p0, Landroid/media/IRemoteControlClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v2, 0x6

    #@1d
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 262
    return-void

    #@26
    .line 272
    :catchall_0
    move-exception v1

    #@27
    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 272
    throw v1
.end method

.method public setCurrentClientGenerationId(I)V
    .locals 5
    .param p1, "clientGeneration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 228
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.IRemoteControlClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 229
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 230
    iget-object v1, p0, Landroid/media/IRemoteControlClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x3

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 224
    return-void

    #@19
    .line 232
    :catchall_0
    move-exception v1

    #@1a
    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 232
    throw v1
.end method

.method public setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 280
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IRemoteControlClient"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 281
    if-eqz p1, :cond_0

    #@e
    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 282
    if-eqz p2, :cond_1

    #@17
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 283
    iget-object v1, p0, Landroid/media/IRemoteControlClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v2, 0x7

    #@1d
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 276
    return-void

    #@26
    .line 282
    :cond_1
    const/4 v1, 0x0

    #@27
    goto :goto_0

    #@28
    .line 285
    :catchall_0
    move-exception v1

    #@29
    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 285
    throw v1
.end method

.method public unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 254
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.IRemoteControlClient"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 255
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 256
    iget-object v1, p0, Landroid/media/IRemoteControlClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x5

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 250
    return-void

    #@20
    .line 258
    :catchall_0
    move-exception v1

    #@21
    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 258
    throw v1
.end method

.method public updateMetadata(IILandroid/media/Rating;)V
    .locals 5
    .param p1, "clientGeneration"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Landroid/media/Rating;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 319
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.IRemoteControlClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 320
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 321
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 322
    if-eqz p3, :cond_0

    #@12
    .line 323
    const/4 v1, 0x1

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 324
    const/4 v1, 0x0

    #@17
    invoke-virtual {p3, v0, v1}, Landroid/media/Rating;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 329
    :goto_0
    iget-object v1, p0, Landroid/media/IRemoteControlClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v2, 0xa

    #@1e
    const/4 v3, 0x0

    #@1f
    const/4 v4, 0x1

    #@20
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 315
    return-void

    #@27
    .line 327
    :cond_0
    const/4 v1, 0x0

    #@28
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    goto :goto_0

    #@2c
    .line 331
    :catchall_0
    move-exception v1

    #@2d
    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 331
    throw v1
.end method

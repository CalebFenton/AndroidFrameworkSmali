.class Landroid/media/IRingtonePlayer$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRingtonePlayer.java"

# interfaces
.implements Landroid/media/IRingtonePlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRingtonePlayer$Stub;
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
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 188
    iput-object p1, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 186
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 196
    const-string/jumbo v0, "android.media.IRingtonePlayer"

    #@3
    return-object v0
.end method

.method public getTitle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 335
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 338
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IRingtonePlayer"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 339
    if-eqz p1, :cond_0

    #@10
    .line 340
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 341
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 346
    :goto_0
    iget-object v3, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x7

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result-object v2

    #@26
    .line 351
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 354
    return-object v2

    #@2d
    .line 344
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 350
    :catchall_0
    move-exception v3

    #@33
    .line 351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 350
    throw v3
.end method

.method public isPlaying(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
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
    .line 248
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 251
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IRingtonePlayer"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 252
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 253
    iget-object v3, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x3

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 255
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
    .line 258
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 261
    return v2

    #@29
    .line 255
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 257
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 257
    throw v3
.end method

.method public openRingtone(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 359
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 362
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IRingtonePlayer"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 363
    if-eqz p1, :cond_0

    #@10
    .line 364
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 365
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 370
    :goto_0
    iget-object v3, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x8

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 371
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 373
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 380
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 383
    return-object v2

    #@38
    .line 368
    :cond_0
    const/4 v3, 0x0

    #@39
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 379
    :catchall_0
    move-exception v3

    #@3e
    .line 380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 379
    throw v3

    #@45
    .line 376
    :cond_1
    const/4 v2, 0x0

    #@46
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_1
.end method

.method public play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "aa"    # Landroid/media/AudioAttributes;
    .param p4, "volume"    # F
    .param p5, "looping"    # Z
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
    .line 201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 202
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 204
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.media.IRingtonePlayer"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@13
    .line 206
    if-eqz p2, :cond_0

    #@15
    .line 207
    const/4 v4, 0x1

    #@16
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 208
    const/4 v4, 0x0

    #@1a
    invoke-virtual {p2, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    .line 213
    :goto_0
    if-eqz p3, :cond_1

    #@1f
    .line 214
    const/4 v4, 0x1

    #@20
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 215
    const/4 v4, 0x0

    #@24
    invoke-virtual {p3, v0, v4}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    #@27
    .line 220
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    #@2a
    .line 221
    if-eqz p5, :cond_2

    #@2c
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 222
    iget-object v2, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@31
    const/4 v3, 0x1

    #@32
    const/4 v4, 0x0

    #@33
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@36
    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 199
    return-void

    #@40
    .line 211
    :cond_0
    const/4 v4, 0x0

    #@41
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 225
    :catchall_0
    move-exception v2

    #@46
    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 225
    throw v2

    #@4d
    .line 218
    :cond_1
    const/4 v4, 0x0

    #@4e
    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_1

    #@52
    :cond_2
    move v2, v3

    #@53
    .line 221
    goto :goto_2
.end method

.method public playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "looping"    # Z
    .param p4, "aa"    # Landroid/media/AudioAttributes;
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
    .line 283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 284
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 286
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.media.IRingtonePlayer"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 287
    if-eqz p1, :cond_0

    #@12
    .line 288
    const/4 v4, 0x1

    #@13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 289
    const/4 v4, 0x0

    #@17
    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 294
    :goto_0
    if-eqz p2, :cond_1

    #@1c
    .line 295
    const/4 v4, 0x1

    #@1d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 296
    const/4 v4, 0x0

    #@21
    invoke-virtual {p2, v0, v4}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 301
    :goto_1
    if-eqz p3, :cond_2

    #@26
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 302
    if-eqz p4, :cond_3

    #@2b
    .line 303
    const/4 v2, 0x1

    #@2c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 304
    const/4 v2, 0x0

    #@30
    invoke-virtual {p4, v0, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    #@33
    .line 309
    :goto_3
    iget-object v2, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@35
    const/4 v3, 0x5

    #@36
    const/4 v4, 0x0

    #@37
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3a
    .line 310
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 281
    return-void

    #@44
    .line 292
    :cond_0
    const/4 v4, 0x0

    #@45
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    goto :goto_0

    #@49
    .line 312
    :catchall_0
    move-exception v2

    #@4a
    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@50
    .line 312
    throw v2

    #@51
    .line 299
    :cond_1
    const/4 v4, 0x0

    #@52
    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    goto :goto_1

    #@56
    :cond_2
    move v2, v3

    #@57
    .line 301
    goto :goto_2

    #@58
    .line 307
    :cond_3
    const/4 v2, 0x0

    #@59
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    goto :goto_3
.end method

.method public setPlaybackProperties(Landroid/os/IBinder;FZ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "volume"    # F
    .param p3, "looping"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 266
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 268
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IRingtonePlayer"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 270
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@15
    .line 271
    if-eqz p3, :cond_0

    #@17
    const/4 v2, 0x1

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 272
    iget-object v2, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x4

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 273
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 263
    return-void

    #@2c
    .line 275
    :catchall_0
    move-exception v2

    #@2d
    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 275
    throw v2
.end method

.method public stop(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 233
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 235
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.IRingtonePlayer"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 237
    iget-object v2, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x2

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 238
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 230
    return-void

    #@22
    .line 240
    :catchall_0
    move-exception v2

    #@23
    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 240
    throw v2
.end method

.method public stopAsync()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 320
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 322
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.IRingtonePlayer"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 323
    iget-object v2, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x6

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 317
    return-void

    #@1f
    .line 326
    :catchall_0
    move-exception v2

    #@20
    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 326
    throw v2
.end method

.class Lcom/android/ims/internal/IImsConfig$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsConfig.java"

# interfaces
.implements Lcom/android/ims/internal/IImsConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsConfig$Stub;
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
    iput-object p1, p0, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    iget-object v0, p0, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 5
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 287
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsConfig"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 289
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 290
    if-eqz p3, :cond_0

    #@13
    invoke-interface {p3}, Lcom/android/ims/ImsConfigListener;->asBinder()Landroid/os/IBinder;

    #@16
    move-result-object v1

    #@17
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 291
    iget-object v1, p0, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v2, 0x5

    #@1d
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 283
    return-void

    #@26
    .line 293
    :catchall_0
    move-exception v1

    #@27
    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 293
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 165
    const-string/jumbo v0, "com.android.ims.internal.IImsConfig"

    #@3
    return-object v0
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 6
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 202
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsConfig"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 207
    iget-object v3, p0, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x2

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 212
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 215
    return-object v2

    #@26
    .line 211
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@27
    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 211
    throw v3
.end method

.method public getProvisionedValue(I)I
    .locals 6
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 177
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 180
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsConfig"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 181
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 182
    iget-object v3, p0, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 187
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 190
    return v2

    #@26
    .line 186
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 186
    throw v3
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 357
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsConfig"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 358
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Lcom/android/ims/ImsConfigListener;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 359
    iget-object v1, p0, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0x8

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 353
    return-void

    #@21
    .line 361
    :catchall_0
    move-exception v1

    #@22
    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 361
    throw v1
.end method

.method public getVolteProvisioned()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 332
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 335
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsConfig"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 336
    iget-object v3, p0, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x7

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    const/4 v2, 0x1

    #@1f
    .line 341
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 344
    return v2

    #@26
    .line 338
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 340
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 340
    throw v3
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 5
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 312
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsConfig"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 313
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 314
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 315
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 316
    if-eqz p4, :cond_0

    #@16
    invoke-interface {p4}, Lcom/android/ims/ImsConfigListener;->asBinder()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1d
    .line 317
    iget-object v1, p0, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/4 v2, 0x6

    #@20
    const/4 v3, 0x0

    #@21
    const/4 v4, 0x1

    #@22
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 308
    return-void

    #@29
    .line 319
    :catchall_0
    move-exception v1

    #@2a
    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 319
    throw v1
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 6
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 257
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 260
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsConfig"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 261
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 262
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 263
    iget-object v3, p0, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x4

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 265
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v2

    #@22
    .line 268
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 271
    return v2

    #@29
    .line 267
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2a
    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 267
    throw v3
.end method

.method public setProvisionedValue(II)I
    .locals 6
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 229
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 232
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsConfig"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 234
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 235
    iget-object v3, p0, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x3

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v2

    #@22
    .line 240
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 243
    return v2

    #@29
    .line 239
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2a
    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 239
    throw v3
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .locals 5
    .param p1, "quality"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 378
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsConfig"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 379
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 380
    if-eqz p2, :cond_0

    #@10
    invoke-interface {p2}, Lcom/android/ims/ImsConfigListener;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 381
    iget-object v1, p0, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v2, 0x9

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x1

    #@1d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 374
    return-void

    #@24
    .line 383
    :catchall_0
    move-exception v1

    #@25
    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 383
    throw v1
.end method

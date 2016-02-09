.class Lcom/android/ims/internal/IImsUt$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsUt.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUt$Stub;
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
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 235
    iput-object p1, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 233
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsUt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 254
    iget-object v2, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x1

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 248
    return-void

    #@1f
    .line 257
    :catchall_0
    move-exception v2

    #@20
    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 257
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 243
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@3
    return-object v0
.end method

.method public queryCLIP()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 351
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 354
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsUt"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 355
    iget-object v3, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x6

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 360
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 363
    return v2

    #@23
    .line 359
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 359
    throw v3
.end method

.method public queryCLIR()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsUt"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 335
    iget-object v3, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 340
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 343
    return v2

    #@23
    .line 339
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 339
    throw v3
.end method

.method public queryCOLP()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsUt"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 395
    iget-object v3, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 400
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 403
    return v2

    #@24
    .line 399
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 399
    throw v3
.end method

.method public queryCOLR()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 371
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 374
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsUt"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 375
    iget-object v3, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x7

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 380
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 383
    return v2

    #@23
    .line 379
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 379
    throw v3
.end method

.method public queryCallBarring(I)I
    .locals 6
    .param p1, "cbType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 268
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 271
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsUt"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 272
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 273
    iget-object v3, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x2

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 278
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 281
    return v2

    #@26
    .line 277
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 277
    throw v3
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 6
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 292
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsUt"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 293
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 294
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 295
    iget-object v3, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x3

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v2

    #@22
    .line 300
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 303
    return v2

    #@29
    .line 299
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2a
    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 299
    throw v3
.end method

.method public queryCallWaiting()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 311
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 314
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsUt"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 315
    iget-object v3, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 320
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 323
    return v2

    #@23
    .line 319
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 319
    throw v3
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/ims/internal/IImsUtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 592
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 594
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsUt"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 595
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsUtListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 596
    iget-object v2, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x11

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 597
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 589
    return-void

    #@2a
    .line 599
    :catchall_0
    move-exception v2

    #@2b
    .line 600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 599
    throw v2
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 6
    .param p1, "ssInfo"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 411
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 414
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsUt"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 415
    if-eqz p1, :cond_0

    #@10
    .line 416
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 417
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 422
    :goto_0
    iget-object v3, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x9

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 423
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 427
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 430
    return v2

    #@2e
    .line 420
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@2f
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 426
    :catchall_0
    move-exception v3

    #@34
    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 426
    throw v3
.end method

.method public updateCLIP(Z)I
    .locals 6
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 529
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 532
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.ims.internal.IImsUt"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 533
    if-eqz p1, :cond_0

    #@11
    const/4 v3, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 534
    iget-object v3, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0xe

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 535
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v2

    #@24
    .line 539
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 542
    return v2

    #@2b
    .line 538
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2c
    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 538
    throw v3
.end method

.method public updateCLIR(I)I
    .locals 6
    .param p1, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 508
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsUt"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 513
    iget-object v3, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xd

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 515
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 518
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 521
    return v2

    #@27
    .line 517
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 517
    throw v3
.end method

.method public updateCOLP(Z)I
    .locals 6
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 571
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 574
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.ims.internal.IImsUt"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 575
    if-eqz p1, :cond_0

    #@11
    const/4 v3, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 576
    iget-object v3, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0x10

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 577
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 578
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v2

    #@24
    .line 581
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 584
    return v2

    #@2b
    .line 580
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2c
    .line 581
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 580
    throw v3
.end method

.method public updateCOLR(I)I
    .locals 6
    .param p1, "presentation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 550
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 553
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsUt"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 554
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 555
    iget-object v3, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xf

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 560
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 563
    return v2

    #@27
    .line 559
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 560
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 559
    throw v3
.end method

.method public updateCallBarring(IZ[Ljava/lang/String;)I
    .locals 6
    .param p1, "cbType"    # I
    .param p2, "enable"    # Z
    .param p3, "barrList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 438
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 441
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.ims.internal.IImsUt"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 442
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 443
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 444
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1b
    .line 445
    iget-object v3, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0xa

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v2

    #@2a
    .line 450
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 453
    return v2

    #@31
    .line 449
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@32
    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 449
    throw v3
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 6
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 461
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 464
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsUt"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 466
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 467
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 468
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 469
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 470
    iget-object v3, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/16 v4, 0xb

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result v2

    #@2c
    .line 475
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 478
    return v2

    #@33
    .line 474
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@34
    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 474
    throw v3
.end method

.method public updateCallWaiting(ZI)I
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 486
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 489
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.ims.internal.IImsUt"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 490
    if-eqz p1, :cond_0

    #@11
    const/4 v3, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 491
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 492
    iget-object v3, p0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xc

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 493
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 497
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 500
    return v2

    #@2e
    .line 496
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2f
    .line 497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 496
    throw v3
.end method

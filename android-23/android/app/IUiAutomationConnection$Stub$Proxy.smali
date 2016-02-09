.class Landroid/app/IUiAutomationConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUiAutomationConnection.java"

# interfaces
.implements Landroid/app/IUiAutomationConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiAutomationConnection$Stub;
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
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 192
    iput-object p1, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 190
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public clearWindowAnimationFrameStats()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 342
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 344
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IUiAutomationConnection"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 345
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x8

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 339
    return-void

    #@20
    .line 348
    :catchall_0
    move-exception v2

    #@21
    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 348
    throw v2
.end method

.method public clearWindowContentFrameStats(I)Z
    .locals 6
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 301
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 304
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IUiAutomationConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 305
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 306
    iget-object v3, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x6

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 308
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
    .line 311
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 314
    return v2

    #@29
    .line 308
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 310
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 310
    throw v3
.end method

.method public connect(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 5
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 205
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 207
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IUiAutomationConnection"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 208
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 209
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 210
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 202
    return-void

    #@29
    .line 212
    :catchall_0
    move-exception v2

    #@2a
    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 212
    throw v2
.end method

.method public disconnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 220
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 222
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IUiAutomationConnection"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 223
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x2

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 217
    return-void

    #@1f
    .line 226
    :catchall_0
    move-exception v2

    #@20
    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 226
    throw v2
.end method

.method public executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 378
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 380
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IUiAutomationConnection"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 382
    if-eqz p2, :cond_0

    #@13
    .line 383
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 384
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 389
    :goto_0
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xa

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 375
    return-void

    #@2d
    .line 387
    :cond_0
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 392
    :catchall_0
    move-exception v2

    #@33
    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 392
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 200
    const-string/jumbo v0, "android.app.IUiAutomationConnection"

    #@3
    return-object v0
.end method

.method public getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 356
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 359
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IUiAutomationConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 360
    iget-object v3, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x9

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 361
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 363
    sget-object v3, Landroid/view/WindowAnimationFrameStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/view/WindowAnimationFrameStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 370
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 373
    return-object v2

    #@2e
    .line 366
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/view/WindowAnimationFrameStats;
    goto :goto_0

    #@30
    .line 369
    .end local v2    # "_result":Landroid/view/WindowAnimationFrameStats;
    :catchall_0
    move-exception v3

    #@31
    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 369
    throw v3
.end method

.method public getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .locals 6
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 319
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 322
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IUiAutomationConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 324
    iget-object v3, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x7

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 326
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 327
    sget-object v3, Landroid/view/WindowContentFrameStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/view/WindowContentFrameStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 334
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 337
    return-object v2

    #@30
    .line 330
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/view/WindowContentFrameStats;
    goto :goto_0

    #@32
    .line 333
    .end local v2    # "_result":Landroid/view/WindowContentFrameStats;
    :catchall_0
    move-exception v3

    #@33
    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 333
    throw v3
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.app.IUiAutomationConnection"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 238
    if-eqz p1, :cond_0

    #@12
    .line 239
    const/4 v5, 0x1

    #@13
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 240
    const/4 v5, 0x0

    #@17
    invoke-virtual {p1, v0, v5}, Landroid/view/InputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 245
    :goto_0
    if-eqz p2, :cond_1

    #@1c
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 246
    iget-object v3, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/4 v4, 0x3

    #@22
    const/4 v5, 0x0

    #@23
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_2

    #@2f
    const/4 v2, 0x1

    #@30
    .line 251
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 254
    return v2

    #@37
    .line 243
    .end local v2    # "_result":Z
    :cond_0
    const/4 v5, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 250
    :catchall_0
    move-exception v3

    #@3d
    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 250
    throw v3

    #@44
    :cond_1
    move v3, v4

    #@45
    .line 245
    goto :goto_1

    #@46
    .line 248
    :cond_2
    const/4 v2, 0x0

    #@47
    .restart local v2    # "_result":Z
    goto :goto_2
.end method

.method public setRotation(I)Z
    .locals 6
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 259
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 262
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IUiAutomationConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 264
    iget-object v3, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x4

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 266
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
    .line 269
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 272
    return v2

    #@29
    .line 266
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 268
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 268
    throw v3
.end method

.method public shutdown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 403
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.app.IUiAutomationConnection"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 404
    iget-object v1, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0xb

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 399
    return-void

    #@17
    .line 406
    :catchall_0
    move-exception v1

    #@18
    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 406
    throw v1
.end method

.method public takeScreenshot(II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 277
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 280
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IUiAutomationConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 281
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 282
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 283
    iget-object v3, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x5

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 285
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 286
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 293
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 296
    return-object v2

    #@33
    .line 289
    :cond_0
    const/4 v2, 0x0

    #@34
    .local v2, "_result":Landroid/graphics/Bitmap;
    goto :goto_0

    #@35
    .line 292
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    #@36
    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 292
    throw v3
.end method

.class Landroid/app/IBackupAgent$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBackupAgent.java"

# interfaces
.implements Landroid/app/IBackupAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IBackupAgent$Stub;
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
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 191
    iput-object p1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 189
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .locals 5
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "token"    # I
    .param p5, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 226
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IBackupAgent"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 227
    if-eqz p1, :cond_1

    #@d
    .line 228
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 229
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 234
    :goto_0
    if-eqz p2, :cond_2

    #@17
    .line 235
    const/4 v2, 0x1

    #@18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 236
    const/4 v2, 0x0

    #@1c
    invoke-virtual {p2, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f
    .line 241
    :goto_1
    if-eqz p3, :cond_3

    #@21
    .line 242
    const/4 v2, 0x1

    #@22
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 243
    const/4 v2, 0x0

    #@26
    invoke-virtual {p3, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@29
    .line 248
    :goto_2
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 249
    if-eqz p5, :cond_0

    #@2e
    invoke-interface {p5}, Landroid/app/backup/IBackupManager;->asBinder()Landroid/os/IBinder;

    #@31
    move-result-object v1

    #@32
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@35
    .line 250
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@37
    const/4 v2, 0x1

    #@38
    const/4 v3, 0x0

    #@39
    const/4 v4, 0x1

    #@3a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 222
    return-void

    #@41
    .line 232
    :cond_1
    const/4 v2, 0x0

    #@42
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 252
    :catchall_0
    move-exception v1

    #@47
    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 252
    throw v1

    #@4b
    .line 239
    :cond_2
    const/4 v2, 0x0

    #@4c
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    goto :goto_1

    #@50
    .line 246
    :cond_3
    const/4 v2, 0x0

    #@51
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@54
    goto :goto_2
.end method

.method public doFullBackup(Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .locals 5
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "token"    # I
    .param p3, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 328
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IBackupAgent"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 329
    if-eqz p1, :cond_1

    #@d
    .line 330
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 331
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 336
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 337
    if-eqz p3, :cond_0

    #@1a
    invoke-interface {p3}, Landroid/app/backup/IBackupManager;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v1

    #@1e
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 338
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/4 v2, 0x3

    #@24
    const/4 v3, 0x0

    #@25
    const/4 v4, 0x1

    #@26
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 324
    return-void

    #@2d
    .line 334
    :cond_1
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 340
    :catchall_0
    move-exception v1

    #@33
    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 340
    throw v1
.end method

.method public doMeasureFullBackup(ILandroid/app/backup/IBackupManager;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 351
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IBackupAgent"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 352
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 353
    if-eqz p2, :cond_0

    #@10
    invoke-interface {p2}, Landroid/app/backup/IBackupManager;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 354
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x4

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 347
    return-void

    #@23
    .line 356
    :catchall_0
    move-exception v1

    #@24
    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 356
    throw v1
.end method

.method public doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .locals 5
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "token"    # I
    .param p5, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 283
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IBackupAgent"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 284
    if-eqz p1, :cond_1

    #@d
    .line 285
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 286
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 291
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 292
    if-eqz p3, :cond_2

    #@1a
    .line 293
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 294
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p3, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 299
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 300
    if-eqz p5, :cond_0

    #@27
    invoke-interface {p5}, Landroid/app/backup/IBackupManager;->asBinder()Landroid/os/IBinder;

    #@2a
    move-result-object v1

    #@2b
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2e
    .line 301
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@30
    const/4 v2, 0x2

    #@31
    const/4 v3, 0x0

    #@32
    const/4 v4, 0x1

    #@33
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 279
    return-void

    #@3a
    .line 289
    :cond_1
    const/4 v2, 0x0

    #@3b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 303
    :catchall_0
    move-exception v1

    #@40
    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 303
    throw v1

    #@44
    .line 297
    :cond_2
    const/4 v2, 0x0

    #@45
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    goto :goto_1
.end method

.method public doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .locals 7
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .param p11, "token"    # I
    .param p12, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v2

    #@4
    .line 385
    .local v2, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IBackupAgent"

    #@7
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 386
    if-eqz p1, :cond_0

    #@c
    .line 387
    const/4 v3, 0x1

    #@d
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 388
    const/4 v3, 0x0

    #@11
    invoke-virtual {p1, v2, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 393
    :goto_0
    invoke-virtual {v2, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@17
    .line 394
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 395
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 396
    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 397
    invoke-virtual {v2, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    #@23
    .line 398
    move-wide/from16 v0, p9

    #@25
    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@28
    .line 399
    move/from16 v0, p11

    #@2a
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 400
    if-eqz p12, :cond_1

    #@2f
    invoke-interface/range {p12 .. p12}, Landroid/app/backup/IBackupManager;->asBinder()Landroid/os/IBinder;

    #@32
    move-result-object v3

    #@33
    :goto_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@36
    .line 401
    iget-object v3, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@38
    const/4 v4, 0x5

    #@39
    const/4 v5, 0x0

    #@3a
    const/4 v6, 0x1

    #@3b
    invoke-interface {v3, v4, v2, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 404
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 381
    return-void

    #@42
    .line 391
    :cond_0
    const/4 v3, 0x0

    #@43
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    goto :goto_0

    #@47
    .line 403
    :catchall_0
    move-exception v3

    #@48
    .line 404
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 403
    throw v3

    #@4c
    .line 400
    :cond_1
    const/4 v3, 0x0

    #@4d
    goto :goto_1
.end method

.method public doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 424
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IBackupAgent"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 425
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 426
    if-eqz p2, :cond_0

    #@10
    invoke-interface {p2}, Landroid/app/backup/IBackupManager;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 427
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 420
    return-void

    #@23
    .line 429
    :catchall_0
    move-exception v1

    #@24
    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 429
    throw v1
.end method

.method public fail(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 444
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.app.IBackupAgent"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 445
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 446
    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x7

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 440
    return-void

    #@19
    .line 448
    :catchall_0
    move-exception v1

    #@1a
    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 448
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 199
    const-string/jumbo v0, "android.app.IBackupAgent"

    #@3
    return-object v0
.end method

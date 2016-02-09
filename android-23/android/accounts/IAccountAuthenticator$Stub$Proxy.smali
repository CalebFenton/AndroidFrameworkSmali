.class Landroid/accounts/IAccountAuthenticator$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccountAuthenticator.java"

# interfaces
.implements Landroid/accounts/IAccountAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/IAccountAuthenticator$Stub;
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
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 237
    iput-object p1, p0, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 235
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;
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
    const-string/jumbo v2, "android.accounts.IAccountAuthenticator"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 255
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/accounts/IAccountAuthenticatorResponse;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 256
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 257
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 258
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1d
    .line 259
    if-eqz p5, :cond_1

    #@1f
    .line 260
    const/4 v1, 0x1

    #@20
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 261
    const/4 v1, 0x0

    #@24
    invoke-virtual {p5, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@27
    .line 266
    :goto_0
    iget-object v1, p0, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v2, 0x1

    #@2a
    const/4 v3, 0x0

    #@2b
    const/4 v4, 0x1

    #@2c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 250
    return-void

    #@33
    .line 264
    :cond_1
    const/4 v1, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 268
    :catchall_0
    move-exception v1

    #@39
    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 268
    throw v1
.end method

.method public addAccountFromCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "accountCredentials"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 469
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accounts.IAccountAuthenticator"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 470
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/accounts/IAccountAuthenticatorResponse;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 471
    if-eqz p2, :cond_1

    #@16
    .line 472
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 473
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 478
    :goto_0
    if-eqz p3, :cond_2

    #@20
    .line 479
    const/4 v1, 0x1

    #@21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 480
    const/4 v1, 0x0

    #@25
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@28
    .line 485
    :goto_1
    iget-object v1, p0, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/16 v2, 0xa

    #@2c
    const/4 v3, 0x0

    #@2d
    const/4 v4, 0x1

    #@2e
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 465
    return-void

    #@35
    .line 476
    :cond_1
    const/4 v1, 0x0

    #@36
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 487
    :catchall_0
    move-exception v1

    #@3b
    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 487
    throw v1

    #@3f
    .line 483
    :cond_2
    const/4 v1, 0x0

    #@40
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    goto :goto_1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public confirmCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 279
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accounts.IAccountAuthenticator"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 280
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/accounts/IAccountAuthenticatorResponse;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 281
    if-eqz p2, :cond_1

    #@16
    .line 282
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 283
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 288
    :goto_0
    if-eqz p3, :cond_2

    #@20
    .line 289
    const/4 v1, 0x1

    #@21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 290
    const/4 v1, 0x0

    #@25
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@28
    .line 295
    :goto_1
    iget-object v1, p0, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/4 v2, 0x2

    #@2b
    const/4 v3, 0x0

    #@2c
    const/4 v4, 0x1

    #@2d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 275
    return-void

    #@34
    .line 286
    :cond_1
    const/4 v1, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 297
    :catchall_0
    move-exception v1

    #@3a
    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 297
    throw v1

    #@3e
    .line 293
    :cond_2
    const/4 v1, 0x0

    #@3f
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    goto :goto_1
.end method

.method public editProperties(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 384
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accounts.IAccountAuthenticator"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 385
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/accounts/IAccountAuthenticatorResponse;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 386
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 387
    iget-object v1, p0, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 380
    return-void

    #@23
    .line 389
    :catchall_0
    move-exception v1

    #@24
    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 389
    throw v1
.end method

.method public getAccountCredentialsForCloning(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 446
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accounts.IAccountAuthenticator"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 447
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/accounts/IAccountAuthenticatorResponse;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 448
    if-eqz p2, :cond_1

    #@16
    .line 449
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 450
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 455
    :goto_0
    iget-object v1, p0, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v2, 0x9

    #@22
    const/4 v3, 0x0

    #@23
    const/4 v4, 0x1

    #@24
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 442
    return-void

    #@2b
    .line 453
    :cond_1
    const/4 v1, 0x0

    #@2c
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 457
    :catchall_0
    move-exception v1

    #@31
    .line 458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 457
    throw v1
.end method

.method public getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
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
    const-string/jumbo v2, "android.accounts.IAccountAuthenticator"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 425
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/accounts/IAccountAuthenticatorResponse;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 426
    if-eqz p2, :cond_1

    #@16
    .line 427
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 428
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 433
    :goto_0
    iget-object v1, p0, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v2, 0x8

    #@22
    const/4 v3, 0x0

    #@23
    const/4 v4, 0x1

    #@24
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 420
    return-void

    #@2b
    .line 431
    :cond_1
    const/4 v1, 0x0

    #@2c
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 435
    :catchall_0
    move-exception v1

    #@31
    .line 436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 435
    throw v1
.end method

.method public getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 308
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accounts.IAccountAuthenticator"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 309
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/accounts/IAccountAuthenticatorResponse;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 310
    if-eqz p2, :cond_1

    #@16
    .line 311
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 312
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 317
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 318
    if-eqz p4, :cond_2

    #@23
    .line 319
    const/4 v1, 0x1

    #@24
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 320
    const/4 v1, 0x0

    #@28
    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    .line 325
    :goto_1
    iget-object v1, p0, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/4 v2, 0x3

    #@2e
    const/4 v3, 0x0

    #@2f
    const/4 v4, 0x1

    #@30
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 304
    return-void

    #@37
    .line 315
    :cond_1
    const/4 v1, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 327
    :catchall_0
    move-exception v1

    #@3d
    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 327
    throw v1

    #@41
    .line 323
    :cond_2
    const/4 v1, 0x0

    #@42
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    goto :goto_1
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 338
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accounts.IAccountAuthenticator"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 339
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/accounts/IAccountAuthenticatorResponse;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 340
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 341
    iget-object v1, p0, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 334
    return-void

    #@23
    .line 343
    :catchall_0
    move-exception v1

    #@24
    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 343
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 245
    const-string/jumbo v0, "android.accounts.IAccountAuthenticator"

    #@3
    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "features"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 401
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accounts.IAccountAuthenticator"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 402
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/accounts/IAccountAuthenticatorResponse;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 403
    if-eqz p2, :cond_1

    #@16
    .line 404
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 405
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 410
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@21
    .line 411
    iget-object v1, p0, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 397
    return-void

    #@2d
    .line 408
    :cond_1
    const/4 v1, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 413
    :catchall_0
    move-exception v1

    #@33
    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 413
    throw v1
.end method

.method public updateCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 354
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accounts.IAccountAuthenticator"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 355
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/accounts/IAccountAuthenticatorResponse;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 356
    if-eqz p2, :cond_1

    #@16
    .line 357
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 358
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 363
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 364
    if-eqz p4, :cond_2

    #@23
    .line 365
    const/4 v1, 0x1

    #@24
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 366
    const/4 v1, 0x0

    #@28
    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    .line 371
    :goto_1
    iget-object v1, p0, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/4 v2, 0x5

    #@2e
    const/4 v3, 0x0

    #@2f
    const/4 v4, 0x1

    #@30
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 350
    return-void

    #@37
    .line 361
    :cond_1
    const/4 v1, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 373
    :catchall_0
    move-exception v1

    #@3d
    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 373
    throw v1

    #@41
    .line 369
    :cond_2
    const/4 v1, 0x0

    #@42
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    goto :goto_1
.end method

.class public Landroid/content/om/OverlayManager;
.super Ljava/lang/Object;
.source "OverlayManager.java"


# static fields
.field public static final blacklist SELF_TARGETING_OVERLAY:J = 0xc4615ffL

.field private static final blacklist THROW_SECURITY_EXCEPTIONS:J = 0x8c83e9aL


# instance fields
.field private final blacklist mOverlayManagerImpl:Lcom/android/internal/content/om/OverlayManagerImpl;

.field private final blacklist mService:Landroid/content/om/IOverlayManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 146
    nop

    .line 147
    const-string/jumbo v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 146
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/om/OverlayManager;-><init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V

    .line 148
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/om/IOverlayManager;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p2, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    .line 140
    new-instance v0, Lcom/android/internal/content/om/OverlayManagerImpl;

    invoke-direct {v0, p1}, Lcom/android/internal/content/om/OverlayManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/content/om/OverlayManager;->mOverlayManagerImpl:Lcom/android/internal/content/om/OverlayManagerImpl;

    .line 141
    return-void
.end method

.method private blacklist commitToSystemServer(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 4
    .param p1, "transaction"    # Landroid/content/om/OverlayManagerTransaction;

    .line 363
    :try_start_0
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    invoke-interface {v0, p1}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 366
    nop

    .line 367
    return-void

    .line 364
    :catch_7
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist rethrowSecurityException(Ljava/lang/SecurityException;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/SecurityException;

    .line 413
    const-wide/32 v0, 0x8c83e9a

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_f

    .line 414
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 416
    :cond_f
    throw p1
.end method


# virtual methods
.method public whitelist commit(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 4
    .param p1, "transaction"    # Landroid/content/om/OverlayManagerTransaction;

    .line 381
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction;->isSelfTargeting()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    .line 383
    invoke-interface {v0}, Landroid/content/om/IOverlayManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_17

    .line 392
    :cond_13
    invoke-direct {p0, p1}, Landroid/content/om/OverlayManager;->commitToSystemServer(Landroid/content/om/OverlayManagerTransaction;)V

    .line 393
    return-void

    .line 385
    :cond_17
    :goto_17
    :try_start_17
    invoke-virtual {p0, p1}, Landroid/content/om/OverlayManager;->commitSelfTarget(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_1a} :catch_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1c

    .line 388
    nop

    .line 389
    return-void

    .line 386
    :catch_1c
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist commitSelfTarget(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 4
    .param p1, "transaction"    # Landroid/content/om/OverlayManagerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mOverlayManagerImpl:Lcom/android/internal/content/om/OverlayManagerImpl;

    monitor-enter v0

    .line 434
    :try_start_3
    iget-object v1, p0, Landroid/content/om/OverlayManager;->mOverlayManagerImpl:Lcom/android/internal/content/om/OverlayManagerImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/content/om/OverlayManagerImpl;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 435
    monitor-exit v0

    .line 436
    return-void

    .line 435
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist enableWithConstraints(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayConstraint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 247
    .local p3, "constraints":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayConstraint;>;"
    :try_start_0
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Landroid/content/om/IOverlayManager;->enableWithConstraints(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 254
    goto :goto_1f

    .line 248
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "enableWithConstraints failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/om/OverlayManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "constraints":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayConstraint;>;"
    throw v0
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_15} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_15

    .line 252
    .restart local p0    # "this":Landroid/content/om/OverlayManager;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "user":Landroid/os/UserHandle;
    .restart local p3    # "constraints":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayConstraint;>;"
    :catch_15
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 250
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-direct {p0, v0}, Landroid/content/om/OverlayManager;->rethrowSecurityException(Ljava/lang/SecurityException;)V

    .line 254
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1f
    nop

    .line 255
    return-void
.end method

.method public blacklist getOverlayInfo(Landroid/content/om/OverlayIdentifier;Landroid/os/UserHandle;)Landroid/content/om/OverlayInfo;
    .registers 5
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 292
    :try_start_0
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/om/IOverlayManager;->getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 293
    :catch_b
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOverlayInfo(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/om/OverlayInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 273
    :try_start_0
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 274
    :catch_b
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOverlayInfosForTarget(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mOverlayManagerImpl:Lcom/android/internal/content/om/OverlayManagerImpl;

    monitor-enter v0

    .line 448
    :try_start_3
    iget-object v1, p0, Landroid/content/om/OverlayManager;->mOverlayManagerImpl:Lcom/android/internal/content/om/OverlayManagerImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/content/om/OverlayManagerImpl;->getOverlayInfosForTarget(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 449
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist getOverlayInfosForTarget(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 319
    :try_start_0
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 320
    :catch_b
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist invalidateCachesForOverlay(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 340
    :try_start_0
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/om/IOverlayManager;->invalidateCachesForOverlay(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 343
    nop

    .line 344
    return-void

    .line 341
    :catch_b
    move-exception v0

    .line 342
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setEnabled(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 210
    :try_start_0
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 217
    goto :goto_20

    .line 211
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setEnabled failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/om/OverlayManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "user":Landroid/os/UserHandle;
    throw v0
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_16} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_16

    .line 215
    .restart local p0    # "this":Landroid/content/om/OverlayManager;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "user":Landroid/os/UserHandle;
    :catch_16
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 213
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1c
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-direct {p0, v0}, Landroid/content/om/OverlayManager;->rethrowSecurityException(Ljava/lang/SecurityException;)V

    .line 217
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_20
    nop

    .line 218
    return-void
.end method

.method public whitelist setEnabledExclusiveInCategory(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 175
    :try_start_0
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 182
    goto :goto_20

    .line 176
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setEnabledExclusiveInCategory failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/om/OverlayManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "user":Landroid/os/UserHandle;
    throw v0
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_16} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_16

    .line 180
    .restart local p0    # "this":Landroid/content/om/OverlayManager;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "user":Landroid/os/UserHandle;
    :catch_16
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 178
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1c
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-direct {p0, v0}, Landroid/content/om/OverlayManager;->rethrowSecurityException(Ljava/lang/SecurityException;)V

    .line 182
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_20
    nop

    .line 183
    return-void
.end method

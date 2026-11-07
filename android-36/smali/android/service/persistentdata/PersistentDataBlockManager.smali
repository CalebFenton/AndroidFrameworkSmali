.class public Landroid/service/persistentdata/PersistentDataBlockManager;
.super Ljava/lang/Object;
.source "PersistentDataBlockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/persistentdata/PersistentDataBlockManager$FlashLockState;
    }
.end annotation


# static fields
.field public static final whitelist FLASH_LOCK_LOCKED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLASH_LOCK_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLASH_LOCK_UNLOCKED:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o sService:Landroid/service/persistentdata/IPersistentDataBlockService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const-class v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/persistentdata/PersistentDataBlockManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/service/persistentdata/IPersistentDataBlockService;)V
    .registers 2
    .param p1, "service"    # Landroid/service/persistentdata/IPersistentDataBlockService;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist deactivateFactoryResetProtection([B)Z
    .registers 4
    .param p1, "secret"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 283
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0, p1}, Landroid/service/persistentdata/IPersistentDataBlockService;->deactivateFactoryResetProtection([B)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 284
    :catch_7
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDataBlockSize()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->getDataBlockSize()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 139
    :catch_7
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getFlashLockState()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 235
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->getFlashLockState()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 236
    :catch_7
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMaximumDataBlockSize()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 155
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->getMaximumDataBlockSize()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 156
    :catch_7
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOemUnlockEnabled()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->getOemUnlockEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 213
    :catch_7
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPersistentDataPackageName()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 251
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->getPersistentDataPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 252
    :catch_7
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isFactoryResetProtectionActive()Z
    .registers 3

    .line 265
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->isFactoryResetProtectionActive()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 266
    :catch_7
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist read()[B
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 121
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->read()[B

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 122
    :catch_7
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setFactoryResetProtectionSecret([B)Z
    .registers 4
    .param p1, "secret"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 320
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0, p1}, Landroid/service/persistentdata/IPersistentDataBlockService;->setFactoryResetProtectionSecret([B)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 321
    :catch_7
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setOemUnlockEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0, p1}, Landroid/service/persistentdata/IPersistentDataBlockService;->setOemUnlockEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 194
    nop

    .line 195
    return-void

    .line 192
    :catch_7
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist wipe()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 173
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->wipe()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 176
    nop

    .line 177
    return-void

    .line 174
    :catch_7
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist write([B)I
    .registers 4
    .param p1, "data"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 106
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0, p1}, Landroid/service/persistentdata/IPersistentDataBlockService;->write([B)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 107
    :catch_7
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

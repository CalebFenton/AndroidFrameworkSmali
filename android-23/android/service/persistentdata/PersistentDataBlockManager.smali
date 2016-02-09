.class public Landroid/service/persistentdata/PersistentDataBlockManager;
.super Ljava/lang/Object;
.source "PersistentDataBlockManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private sService:Landroid/service/persistentdata/IPersistentDataBlockService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 43
    const-class v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/service/persistentdata/PersistentDataBlockManager;->TAG:Ljava/lang/String;

    #@8
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/service/persistentdata/IPersistentDataBlockService;)V
    .locals 0
    .param p1, "service"    # Landroid/service/persistentdata/IPersistentDataBlockService;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    iput-object p1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    #@5
    .line 46
    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    sget-object v0, Landroid/service/persistentdata/PersistentDataBlockManager;->TAG:Ljava/lang/String;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Remote exception while "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 143
    return-void
.end method


# virtual methods
.method public getDataBlockSize()I
    .locals 2

    #@0
    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    #@2
    invoke-interface {v1}, Landroid/service/persistentdata/IPersistentDataBlockService;->getDataBlockSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 88
    :catch_0
    move-exception v0

    #@8
    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "getting data block size"

    #@b
    invoke-direct {p0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->onError(Ljava/lang/String;)V

    #@e
    .line 90
    const/4 v1, -0x1

    #@f
    return v1
.end method

.method public getMaximumDataBlockSize()J
    .locals 4

    #@0
    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    #@2
    invoke-interface {v1}, Landroid/service/persistentdata/IPersistentDataBlockService;->getMaximumDataBlockSize()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-wide v2

    #@6
    return-wide v2

    #@7
    .line 102
    :catch_0
    move-exception v0

    #@8
    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "getting maximum data block size"

    #@b
    invoke-direct {p0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->onError(Ljava/lang/String;)V

    #@e
    .line 104
    const-wide/16 v2, -0x1

    #@10
    return-wide v2
.end method

.method public getOemUnlockEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    #@2
    invoke-interface {v1}, Landroid/service/persistentdata/IPersistentDataBlockService;->getOemUnlockEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 137
    :catch_0
    move-exception v0

    #@8
    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "getting OEM unlock enabled bit"

    #@b
    invoke-direct {p0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->onError(Ljava/lang/String;)V

    #@e
    .line 139
    const/4 v1, 0x0

    #@f
    return v1
.end method

.method public read()[B
    .locals 2

    #@0
    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    #@2
    invoke-interface {v1}, Landroid/service/persistentdata/IPersistentDataBlockService;->read()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 74
    :catch_0
    move-exception v0

    #@8
    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "reading data"

    #@b
    invoke-direct {p0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->onError(Ljava/lang/String;)V

    #@e
    .line 76
    const/4 v1, 0x0

    #@f
    return-object v1
.end method

.method public setOemUnlockEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    #@2
    invoke-interface {v1, p1}, Landroid/service/persistentdata/IPersistentDataBlockService;->setOemUnlockEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 123
    :goto_0
    return-void

    #@6
    .line 126
    :catch_0
    move-exception v0

    #@7
    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "setting OEM unlock enabled to "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {p0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->onError(Ljava/lang/String;)V

    #@1e
    goto :goto_0
.end method

.method public wipe()V
    .locals 2

    #@0
    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    #@2
    invoke-interface {v1}, Landroid/service/persistentdata/IPersistentDataBlockService;->wipe()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 112
    :goto_0
    return-void

    #@6
    .line 115
    :catch_0
    move-exception v0

    #@7
    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "wiping persistent partition"

    #@a
    invoke-direct {p0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->onError(Ljava/lang/String;)V

    #@d
    goto :goto_0
.end method

.method public write([B)I
    .locals 2
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 61
    :try_start_0
    iget-object v1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    #@2
    invoke-interface {v1, p1}, Landroid/service/persistentdata/IPersistentDataBlockService;->write([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 62
    :catch_0
    move-exception v0

    #@8
    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "writing data"

    #@b
    invoke-direct {p0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->onError(Ljava/lang/String;)V

    #@e
    .line 64
    const/4 v1, -0x1

    #@f
    return v1
.end method

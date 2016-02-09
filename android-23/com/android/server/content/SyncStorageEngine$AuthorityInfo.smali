.class public Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorityInfo"
.end annotation


# static fields
.field public static final NOT_INITIALIZED:I = -0x1

.field public static final NOT_SYNCABLE:I = 0x0

.field public static final SYNCABLE:I = 0x1

.field public static final SYNCABLE_NOT_INITIALIZED:I = 0x2


# instance fields
.field backoffDelay:J

.field backoffTime:J

.field delayUntil:J

.field enabled:Z

.field final ident:I

.field final periodicSyncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation
.end field

.field syncable:I

.field final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V
    .locals 4
    .param p1, "toCopy"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@0
    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 348
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@5
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@7
    .line 349
    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@9
    iput v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@b
    .line 350
    iget-boolean v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@d
    iput-boolean v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@f
    .line 351
    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@11
    iput v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@13
    .line 352
    iget-wide v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@15
    iput-wide v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@17
    .line 353
    iget-wide v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@19
    iput-wide v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@1b
    .line 354
    iget-wide v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    #@1d
    iput-wide v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    #@1f
    .line 355
    new-instance v2, Ljava/util/ArrayList;

    #@21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@26
    .line 356
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@28
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v1

    #@2c
    .local v1, "sync$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_0

    #@32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroid/content/PeriodicSync;

    #@38
    .line 358
    .local v0, "sync":Landroid/content/PeriodicSync;
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@3a
    new-instance v3, Landroid/content/PeriodicSync;

    #@3c
    invoke-direct {v3, v0}, Landroid/content/PeriodicSync;-><init>(Landroid/content/PeriodicSync;)V

    #@3f
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@42
    goto :goto_0

    #@43
    .line 347
    .end local v0    # "sync":Landroid/content/PeriodicSync;
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V
    .locals 2
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "id"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 363
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@6
    .line 364
    iput p2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@8
    .line 365
    iget-boolean v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 366
    const/4 v0, 0x0

    #@d
    .line 365
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@f
    .line 368
    iget-boolean v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 369
    iput v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@15
    .line 371
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@1c
    .line 372
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->defaultInitialisation()V

    #@1f
    .line 362
    return-void

    #@20
    :cond_1
    move v0, v1

    #@21
    .line 366
    goto :goto_0
.end method

.method private defaultInitialisation()V
    .locals 8

    #@0
    .prologue
    const-wide/32 v4, 0x15180

    #@3
    const-wide/16 v2, -0x1

    #@5
    .line 376
    const/4 v1, -0x1

    #@6
    iput v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@8
    .line 377
    iput-wide v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@a
    .line 378
    iput-wide v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@c
    .line 381
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@e
    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 383
    new-instance v0, Landroid/content/PeriodicSync;

    #@14
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@16
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@18
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1a
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@1c
    .line 384
    new-instance v3, Landroid/os/Bundle;

    #@1e
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@21
    .line 386
    invoke-static {v4, v5}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    #@24
    move-result-wide v6

    #@25
    .line 383
    invoke-direct/range {v0 .. v7}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    #@28
    .line 387
    .local v0, "defaultSync":Landroid/content/PeriodicSync;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 375
    .end local v0    # "defaultSync":Landroid/content/PeriodicSync;
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ", enabled="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, ", syncable="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string/jumbo v1, ", backoff="

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 394
    iget-wide v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@2e
    .line 393
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 394
    const-string/jumbo v1, ", delay="

    #@35
    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 394
    iget-wide v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    #@3b
    .line 393
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    return-object v0
.end method

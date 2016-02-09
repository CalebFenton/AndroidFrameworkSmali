.class Landroid/app/ActivityView$ActivityContainerWrapper;
.super Ljava/lang/Object;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityContainerWrapper"
.end annotation


# instance fields
.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mIActivityContainer:Landroid/app/IActivityContainer;

.field mOpened:Z


# direct methods
.method constructor <init>(Landroid/app/IActivityContainer;)V
    .locals 2
    .param p1, "container"    # Landroid/app/IActivityContainer;

    #@0
    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 388
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 392
    iput-object p1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    #@b
    .line 393
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mOpened:Z

    #@e
    .line 394
    iget-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    #@10
    const-string/jumbo v1, "release"

    #@13
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@16
    .line 391
    return-void
.end method


# virtual methods
.method attachToDisplay(I)V
    .locals 2
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 399
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    #@2
    invoke-interface {v1, p1}, Landroid/app/IActivityContainer;->attachToDisplay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 397
    :goto_0
    return-void

    #@6
    .line 400
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 460
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 461
    iget-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 462
    invoke-virtual {p0}, Landroid/app/ActivityView$ActivityContainerWrapper;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 465
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@f
    .line 457
    return-void

    #@10
    .line 464
    :catchall_0
    move-exception v0

    #@11
    .line 465
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@14
    .line 464
    throw v0
.end method

.method getDisplayId()I
    .locals 2

    #@0
    .prologue
    .line 428
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    #@2
    invoke-interface {v1}, Landroid/app/IActivityContainer;->getDisplayId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 429
    :catch_0
    move-exception v0

    #@8
    .line 430
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@9
    return v1
.end method

.method injectEvent(Landroid/view/InputEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 436
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    #@2
    invoke-interface {v1, p1}, Landroid/app/IActivityContainer;->injectEvent(Landroid/view/InputEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 437
    :catch_0
    move-exception v0

    #@8
    .line 438
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method release()V
    .locals 3

    #@0
    .prologue
    .line 443
    iget-object v2, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    #@2
    monitor-enter v2

    #@3
    .line 444
    :try_start_0
    iget-boolean v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mOpened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 447
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    #@9
    invoke-interface {v1}, Landroid/app/IActivityContainer;->release()V

    #@c
    .line 448
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    #@e
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    .line 451
    :goto_0
    const/4 v1, 0x0

    #@12
    :try_start_2
    iput-boolean v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mOpened:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@14
    :cond_0
    monitor-exit v2

    #@15
    .line 442
    return-void

    #@16
    .line 443
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1

    #@19
    .line 449
    :catch_0
    move-exception v0

    #@1a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method setSurface(Landroid/view/Surface;III)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IActivityContainer;->setSurface(Landroid/view/Surface;III)V

    #@5
    .line 405
    return-void
.end method

.method startActivity(Landroid/content/Intent;)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 411
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    #@2
    invoke-interface {v1, p1}, Landroid/app/IActivityContainer;->startActivity(Landroid/content/Intent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 412
    :catch_0
    move-exception v0

    #@8
    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "ActivityView: Unable to startActivity. "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1
.end method

.method startActivityIntentSender(Landroid/content/IIntentSender;)I
    .locals 4
    .param p1, "intentSender"    # Landroid/content/IIntentSender;

    #@0
    .prologue
    .line 419
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    #@2
    invoke-interface {v1, p1}, Landroid/app/IActivityContainer;->startActivityIntentSender(Landroid/content/IIntentSender;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 420
    :catch_0
    move-exception v0

    #@8
    .line 421
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "ActivityView: Unable to startActivity from IntentSender. "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 421
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1
.end method

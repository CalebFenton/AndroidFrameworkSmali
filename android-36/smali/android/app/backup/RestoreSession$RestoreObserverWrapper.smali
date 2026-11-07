.class Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
.super Landroid/app/backup/IRestoreObserver$Stub;
.source "RestoreSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/RestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreObserverWrapper"
.end annotation


# static fields
.field static final greylist-max-o MSG_RESTORE_FINISHED:I = 0x3

.field static final greylist-max-o MSG_RESTORE_SETS_AVAILABLE:I = 0x4

.field static final greylist-max-o MSG_RESTORE_STARTING:I = 0x1

.field static final greylist-max-o MSG_UPDATE:I = 0x2


# instance fields
.field final greylist-max-o mAppObserver:Landroid/app/backup/RestoreObserver;

.field final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appObserver"    # Landroid/app/backup/RestoreObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 351
    invoke-direct {p0}, Landroid/app/backup/IRestoreObserver$Stub;-><init>()V

    .line 352
    new-instance v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;-><init>(Landroid/app/backup/RestoreSession$RestoreObserverWrapper;Landroid/os/Looper;Landroid/app/backup/RestoreSession;)V

    iput-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mHandler:Landroid/os/Handler;

    .line 371
    iput-object p3, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    .line 372
    return-void
.end method


# virtual methods
.method public greylist-max-o onUpdate(ILjava/lang/String;)V
    .registers 7
    .param p1, "nowBeingRestored"    # I
    .param p2, "currentPackage"    # Ljava/lang/String;

    .line 386
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mHandler:Landroid/os/Handler;

    .line 387
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 386
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 388
    return-void
.end method

.method public greylist-max-o restoreFinished(I)V
    .registers 6
    .param p1, "error"    # I

    .line 391
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mHandler:Landroid/os/Handler;

    .line 392
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 393
    return-void
.end method

.method public greylist-max-o restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    .registers 5
    .param p1, "result"    # [Landroid/app/backup/RestoreSet;

    .line 376
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mHandler:Landroid/os/Handler;

    .line 377
    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 376
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 378
    return-void
.end method

.method public greylist-max-o restoreStarting(I)V
    .registers 6
    .param p1, "numPackages"    # I

    .line 381
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mHandler:Landroid/os/Handler;

    .line 382
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 381
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    return-void
.end method

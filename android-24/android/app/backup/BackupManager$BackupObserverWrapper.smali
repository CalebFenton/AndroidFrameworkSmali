.class Landroid/app/backup/BackupManager$BackupObserverWrapper;
.super Landroid/app/backup/IBackupObserver$Stub;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupObserverWrapper"
.end annotation


# static fields
.field static final MSG_FINISHED:I = 0x3

.field static final MSG_RESULT:I = 0x2

.field static final MSG_UPDATE:I = 0x1


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mObserver:Landroid/app/backup/BackupObserver;

.field final synthetic this$0:Landroid/app/backup/BackupManager;


# direct methods
.method constructor <init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/BackupObserver;)V
    .locals 2
    .param p1, "this$0"    # Landroid/app/backup/BackupManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observer"    # Landroid/app/backup/BackupObserver;

    #@0
    .prologue
    .line 507
    iput-object p1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->this$0:Landroid/app/backup/BackupManager;

    #@2
    invoke-direct {p0}, Landroid/app/backup/IBackupObserver$Stub;-><init>()V

    #@5
    .line 508
    new-instance v0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;

    #@7
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@a
    move-result-object v1

    #@b
    invoke-direct {v0, p0, v1}, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;-><init>(Landroid/app/backup/BackupManager$BackupObserverWrapper;Landroid/os/Looper;)V

    #@e
    iput-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    #@10
    .line 529
    iput-object p3, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mObserver:Landroid/app/backup/BackupObserver;

    #@12
    .line 507
    return-void
.end method


# virtual methods
.method public backupFinished(I)V
    .locals 4
    .param p1, "status"    # I

    #@0
    .prologue
    .line 547
    iget-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    #@2
    .line 548
    iget-object v1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    #@4
    const/4 v2, 0x3

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    .line 547
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@d
    .line 546
    return-void
.end method

.method public onResult(Ljava/lang/String;I)V
    .locals 4
    .param p1, "currentPackage"    # Ljava/lang/String;
    .param p2, "status"    # I

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    #@2
    .line 542
    iget-object v1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    #@4
    const/4 v2, 0x2

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    .line 541
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@d
    .line 540
    return-void
.end method

.method public onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .locals 4
    .param p1, "currentPackage"    # Ljava/lang/String;
    .param p2, "backupProgress"    # Landroid/app/backup/BackupProgress;

    #@0
    .prologue
    .line 535
    iget-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    #@2
    .line 536
    iget-object v1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    #@4
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@7
    move-result-object v2

    #@8
    const/4 v3, 0x1

    #@9
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v1

    #@d
    .line 535
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@10
    .line 534
    return-void
.end method

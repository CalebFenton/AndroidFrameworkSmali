.class Landroid/app/backup/BackupManager$BackupObserverWrapper$1;
.super Landroid/os/Handler;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/backup/BackupManager$BackupObserverWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/BackupObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;


# direct methods
.method constructor <init>(Landroid/app/backup/BackupManager$BackupObserverWrapper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/backup/BackupManager$BackupObserverWrapper;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 516
    iput-object p1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 519
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 532
    const-string/jumbo v1, "BackupManager"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Unknown message: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 518
    :goto_0
    return-void

    #@20
    .line 522
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@22
    check-cast v0, Landroid/util/Pair;

    #@24
    .line 523
    .local v0, "obj":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/app/backup/BackupProgress;>;"
    iget-object v1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

    #@26
    iget-object v3, v1, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mObserver:Landroid/app/backup/BackupObserver;

    #@28
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2a
    check-cast v1, Ljava/lang/String;

    #@2c
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2e
    check-cast v2, Landroid/app/backup/BackupProgress;

    #@30
    invoke-virtual {v3, v1, v2}, Landroid/app/backup/BackupObserver;->onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    #@33
    goto :goto_0

    #@34
    .line 526
    .end local v0    # "obj":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/app/backup/BackupProgress;>;"
    :pswitch_1
    iget-object v1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

    #@36
    iget-object v2, v1, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mObserver:Landroid/app/backup/BackupObserver;

    #@38
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a
    check-cast v1, Ljava/lang/String;

    #@3c
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@3e
    invoke-virtual {v2, v1, v3}, Landroid/app/backup/BackupObserver;->onResult(Ljava/lang/String;I)V

    #@41
    goto :goto_0

    #@42
    .line 529
    :pswitch_2
    iget-object v1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

    #@44
    iget-object v1, v1, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mObserver:Landroid/app/backup/BackupObserver;

    #@46
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@48
    invoke-virtual {v1, v2}, Landroid/app/backup/BackupObserver;->backupFinished(I)V

    #@4b
    goto :goto_0

    #@4c
    .line 519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
.super Landroid/app/backup/IRestoreObserver$Stub;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/bmgr/Bmgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreObserver"
.end annotation


# instance fields
.field done:Z

.field sets:[Landroid/app/backup/RestoreSet;

.field final synthetic this$0:Lcom/android/commands/bmgr/Bmgr;


# direct methods
.method constructor <init>(Lcom/android/commands/bmgr/Bmgr;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/commands/bmgr/Bmgr;

    #@0
    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->this$0:Lcom/android/commands/bmgr/Bmgr;

    #@2
    invoke-direct {p0}, Landroid/app/backup/IRestoreObserver$Stub;-><init>()V

    #@5
    .line 310
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    #@8
    .line 308
    return-void
.end method


# virtual methods
.method public onUpdate(ILjava/lang/String;)V
    .locals 3
    .param p1, "nowBeingRestored"    # I
    .param p2, "currentPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 325
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "onUpdate: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " = "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24
    .line 324
    return-void
.end method

.method public restoreFinished(I)V
    .locals 3
    .param p1, "error"    # I

    #@0
    .prologue
    .line 329
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "restoreFinished: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19
    .line 330
    monitor-enter p0

    #@1a
    .line 331
    const/4 v0, 0x1

    #@1b
    :try_start_0
    iput-boolean v0, p0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->done:Z

    #@1d
    .line 332
    invoke-virtual {p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit p0

    #@21
    .line 328
    return-void

    #@22
    .line 330
    :catchall_0
    move-exception v0

    #@23
    monitor-exit p0

    #@24
    throw v0
.end method

.method public restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    .locals 1
    .param p1, "result"    # [Landroid/app/backup/RestoreSet;

    #@0
    .prologue
    .line 313
    monitor-enter p0

    #@1
    .line 314
    :try_start_0
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    #@3
    .line 315
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->done:Z

    #@6
    .line 316
    invoke-virtual {p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 312
    return-void

    #@b
    .line 313
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public restoreStarting(I)V
    .locals 3
    .param p1, "numPackages"    # I

    #@0
    .prologue
    .line 321
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "restoreStarting: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " packages"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20
    .line 320
    return-void
.end method

.method public waitForCompletion()V
    .locals 2

    #@0
    .prologue
    .line 339
    monitor-enter p0

    #@1
    .line 340
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v1, :cond_0

    #@5
    .line 342
    :try_start_1
    invoke-virtual {p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8
    goto :goto_0

    #@9
    .line 343
    :catch_0
    move-exception v0

    #@a
    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_0

    #@b
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0

    #@c
    .line 336
    return-void

    #@d
    .line 339
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1
.end method

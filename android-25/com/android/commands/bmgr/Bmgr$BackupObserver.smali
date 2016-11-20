.class Lcom/android/commands/bmgr/Bmgr$BackupObserver;
.super Landroid/app/backup/IBackupObserver$Stub;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/bmgr/Bmgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackupObserver"
.end annotation


# instance fields
.field done:Z

.field final synthetic this$0:Lcom/android/commands/bmgr/Bmgr;


# direct methods
.method constructor <init>(Lcom/android/commands/bmgr/Bmgr;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/commands/bmgr/Bmgr;

    #@0
    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr$BackupObserver;->this$0:Lcom/android/commands/bmgr/Bmgr;

    #@2
    invoke-direct {p0}, Landroid/app/backup/IBackupObserver$Stub;-><init>()V

    #@5
    .line 212
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/commands/bmgr/Bmgr$BackupObserver;->done:Z

    #@8
    .line 211
    return-void
.end method


# virtual methods
.method public backupFinished(I)V
    .locals 3
    .param p1, "status"    # I

    #@0
    .prologue
    .line 229
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Backup finished with result: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 230
    invoke-static {p1}, Lcom/android/commands/bmgr/Bmgr;->-wrap0(I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 231
    monitor-enter p0

    #@1e
    .line 232
    const/4 v0, 0x1

    #@1f
    :try_start_0
    iput-boolean v0, p0, Lcom/android/commands/bmgr/Bmgr$BackupObserver;->done:Z

    #@21
    .line 233
    invoke-virtual {p0}, Lcom/android/commands/bmgr/Bmgr$BackupObserver;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit p0

    #@25
    .line 228
    return-void

    #@26
    .line 231
    :catchall_0
    move-exception v0

    #@27
    monitor-exit p0

    #@28
    throw v0
.end method

.method public onResult(Ljava/lang/String;I)V
    .locals 3
    .param p1, "currentPackage"    # Ljava/lang/String;
    .param p2, "status"    # I

    #@0
    .prologue
    .line 223
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Package "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " with result: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 224
    invoke-static {p2}, Lcom/android/commands/bmgr/Bmgr;->-wrap0(I)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 222
    return-void
.end method

.method public onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .locals 4
    .param p1, "currentPackage"    # Ljava/lang/String;
    .param p2, "backupProgress"    # Landroid/app/backup/BackupProgress;

    #@0
    .prologue
    .line 216
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Package "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " with progress: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget-wide v2, p2, Landroid/app/backup/BackupProgress;->bytesTransferred:J

    #@1b
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 218
    const-string/jumbo v2, "/"

    #@22
    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 218
    iget-wide v2, p2, Landroid/app/backup/BackupProgress;->bytesExpected:J

    #@28
    .line 217
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 216
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@33
    .line 215
    return-void
.end method

.method public waitForCompletion()V
    .locals 2

    #@0
    .prologue
    .line 240
    monitor-enter p0

    #@1
    .line 241
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/commands/bmgr/Bmgr$BackupObserver;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v1, :cond_0

    #@5
    .line 243
    :try_start_1
    invoke-virtual {p0}, Lcom/android/commands/bmgr/Bmgr$BackupObserver;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8
    goto :goto_0

    #@9
    .line 244
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
    .line 237
    return-void

    #@d
    .line 240
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1
.end method

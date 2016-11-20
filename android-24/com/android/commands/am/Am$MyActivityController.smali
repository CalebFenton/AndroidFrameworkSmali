.class Lcom/android/commands/am/Am$MyActivityController;
.super Landroid/app/IActivityController$Stub;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/am/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyActivityController"
.end annotation


# static fields
.field static final RESULT_ANR_DIALOG:I = 0x0

.field static final RESULT_ANR_KILL:I = 0x1

.field static final RESULT_ANR_WAIT:I = 0x1

.field static final RESULT_CRASH_DIALOG:I = 0x0

.field static final RESULT_CRASH_KILL:I = 0x1

.field static final RESULT_DEFAULT:I = 0x0

.field static final RESULT_EARLY_ANR_CONTINUE:I = 0x0

.field static final RESULT_EARLY_ANR_KILL:I = 0x1

.field static final STATE_ANR:I = 0x3

.field static final STATE_CRASHED:I = 0x1

.field static final STATE_EARLY_ANR:I = 0x2

.field static final STATE_NORMAL:I


# instance fields
.field final mGdbPort:Ljava/lang/String;

.field mGdbProcess:Ljava/lang/Process;

.field mGdbThread:Ljava/lang/Thread;

.field mGotGdbPrint:Z

.field final mMonkey:Z

.field mResult:I

.field mState:I

.field final synthetic this$0:Lcom/android/commands/am/Am;


# direct methods
.method constructor <init>(Lcom/android/commands/am/Am;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/am/Am;
    .param p2, "gdbPort"    # Ljava/lang/String;
    .param p3, "monkey"    # Z

    #@0
    .prologue
    .line 1285
    iput-object p1, p0, Lcom/android/commands/am/Am$MyActivityController;->this$0:Lcom/android/commands/am/Am;

    #@2
    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    #@5
    .line 1286
    iput-object p2, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbPort:Ljava/lang/String;

    #@7
    .line 1287
    iput-boolean p3, p0, Lcom/android/commands/am/Am$MyActivityController;->mMonkey:Z

    #@9
    .line 1285
    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1292
    monitor-enter p0

    #@1
    .line 1293
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "** Activity resuming: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 1295
    const/4 v0, 0x1

    #@1c
    return v0

    #@1d
    .line 1292
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1300
    monitor-enter p0

    #@1
    .line 1301
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "** Activity starting: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 1303
    const/4 v0, 0x1

    #@1c
    return v0

    #@1d
    .line 1300
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "timeMillis"    # J
    .param p7, "stackTrace"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1309
    monitor-enter p0

    #@2
    .line 1310
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4
    const-string/jumbo v3, "** ERROR: PROCESS CRASHED"

    #@7
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a
    .line 1311
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "processName: "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@23
    .line 1312
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@25
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v4, "processPid: "

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3c
    .line 1313
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3e
    new-instance v3, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v4, "shortMsg: "

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@55
    .line 1314
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@57
    new-instance v3, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v4, "longMsg: "

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6e
    .line 1315
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@70
    new-instance v3, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v4, "timeMillis: "

    #@78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@87
    .line 1316
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@89
    const-string/jumbo v3, "stack:"

    #@8c
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8f
    .line 1317
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@91
    invoke-virtual {v2, p7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@94
    .line 1318
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@96
    const-string/jumbo v3, "#"

    #@99
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9c
    .line 1319
    const/4 v2, 0x1

    #@9d
    invoke-virtual {p0, p2, v2}, Lcom/android/commands/am/Am$MyActivityController;->waitControllerLocked(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a0
    move-result v0

    #@a1
    .line 1320
    .local v0, "result":I
    if-ne v0, v1, :cond_0

    #@a3
    const/4 v1, 0x0

    #@a4
    :cond_0
    monitor-exit p0

    #@a5
    return v1

    #@a6
    .line 1309
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    #@a7
    monitor-exit p0

    #@a8
    throw v1
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "annotation"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1326
    monitor-enter p0

    #@1
    .line 1327
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3
    const-string/jumbo v2, "** ERROR: EARLY PROCESS NOT RESPONDING"

    #@6
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9
    .line 1328
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "processName: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    .line 1329
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@24
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "processPid: "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b
    .line 1330
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3d
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v3, "annotation: "

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@54
    .line 1331
    const/4 v1, 0x2

    #@55
    invoke-virtual {p0, p2, v1}, Lcom/android/commands/am/Am$MyActivityController;->waitControllerLocked(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    move-result v0

    #@59
    .line 1332
    .local v0, "result":I
    const/4 v1, 0x1

    #@5a
    if-ne v0, v1, :cond_0

    #@5c
    const/4 v1, -0x1

    #@5d
    monitor-exit p0

    #@5e
    return v1

    #@5f
    .line 1333
    :cond_0
    const/4 v1, 0x0

    #@60
    monitor-exit p0

    #@61
    return v1

    #@62
    .line 1326
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    #@63
    monitor-exit p0

    #@64
    throw v1
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processStats"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1339
    monitor-enter p0

    #@2
    .line 1340
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4
    const-string/jumbo v2, "** ERROR: PROCESS NOT RESPONDING"

    #@7
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a
    .line 1341
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "processName: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@23
    .line 1342
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@25
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v3, "processPid: "

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3c
    .line 1343
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3e
    const-string/jumbo v2, "processStats:"

    #@41
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@44
    .line 1344
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@46
    invoke-virtual {v1, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@49
    .line 1345
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4b
    const-string/jumbo v2, "#"

    #@4e
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@51
    .line 1346
    const/4 v1, 0x3

    #@52
    invoke-virtual {p0, p2, v1}, Lcom/android/commands/am/Am$MyActivityController;->waitControllerLocked(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    move-result v0

    #@56
    .line 1347
    .local v0, "result":I
    if-ne v0, v4, :cond_0

    #@58
    const/4 v1, -0x1

    #@59
    monitor-exit p0

    #@5a
    return v1

    #@5b
    .line 1348
    :cond_0
    if-ne v0, v4, :cond_1

    #@5d
    monitor-exit p0

    #@5e
    return v4

    #@5f
    .line 1349
    :cond_1
    const/4 v1, 0x0

    #@60
    monitor-exit p0

    #@61
    return v1

    #@62
    .line 1339
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    #@63
    monitor-exit p0

    #@64
    throw v1
.end method

.method killGdbLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1365
    const/4 v0, 0x0

    #@2
    iput-boolean v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mGotGdbPrint:Z

    #@4
    .line 1366
    iget-object v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1367
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a
    const-string/jumbo v1, "Stopping gdbserver"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10
    .line 1368
    iget-object v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    #@12
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    #@15
    .line 1369
    iput-object v2, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    #@17
    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 1372
    iget-object v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    #@1d
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@20
    .line 1373
    iput-object v2, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    #@22
    .line 1364
    :cond_1
    return-void
.end method

.method printMessageForState()V
    .locals 2

    #@0
    .prologue
    .line 1459
    iget v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1480
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7
    const-string/jumbo v1, "(q)uit: finish monitoring"

    #@a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d
    .line 1458
    return-void

    #@e
    .line 1461
    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10
    const-string/jumbo v1, "Monitoring activity manager...  available commands:"

    #@13
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@16
    goto :goto_0

    #@17
    .line 1464
    :pswitch_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@19
    const-string/jumbo v1, "Waiting after crash...  available commands:"

    #@1c
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f
    .line 1465
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@21
    const-string/jumbo v1, "(c)ontinue: show crash dialog"

    #@24
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@27
    .line 1466
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@29
    const-string/jumbo v1, "(k)ill: immediately kill app"

    #@2c
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2f
    goto :goto_0

    #@30
    .line 1469
    :pswitch_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@32
    const-string/jumbo v1, "Waiting after early ANR...  available commands:"

    #@35
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 1470
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3a
    const-string/jumbo v1, "(c)ontinue: standard ANR processing"

    #@3d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 1471
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@42
    const-string/jumbo v1, "(k)ill: immediately kill app"

    #@45
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    goto :goto_0

    #@49
    .line 1474
    :pswitch_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4b
    const-string/jumbo v1, "Waiting after ANR...  available commands:"

    #@4e
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@51
    .line 1475
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@53
    const-string/jumbo v1, "(c)ontinue: show ANR dialog"

    #@56
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@59
    .line 1476
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5b
    const-string/jumbo v1, "(k)ill: immediately kill app"

    #@5e
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@61
    .line 1477
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@63
    const-string/jumbo v1, "(w)ait: wait some more"

    #@66
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@69
    goto :goto_0

    #@6a
    .line 1459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method resumeController(I)V
    .locals 1
    .param p1, "result"    # I

    #@0
    .prologue
    .line 1451
    monitor-enter p0

    #@1
    .line 1452
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    #@4
    .line 1453
    iput p1, p0, Lcom/android/commands/am/Am$MyActivityController;->mResult:I

    #@6
    .line 1454
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 1450
    return-void

    #@b
    .line 1451
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method run()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 1485
    :try_start_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->printMessageForState()V

    #@5
    .line 1487
    iget-object v5, p0, Lcom/android/commands/am/Am$MyActivityController;->this$0:Lcom/android/commands/am/Am;

    #@7
    invoke-static {v5}, Lcom/android/commands/am/Am;->-get0(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;

    #@a
    move-result-object v5

    #@b
    iget-boolean v6, p0, Lcom/android/commands/am/Am$MyActivityController;->mMonkey:Z

    #@d
    invoke-interface {v5, p0, v6}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    #@10
    .line 1488
    const/4 v5, 0x0

    #@11
    iput v5, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    #@13
    .line 1490
    new-instance v1, Ljava/io/InputStreamReader;

    #@15
    sget-object v5, Ljava/lang/System;->in:Ljava/io/InputStream;

    #@17
    invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@1a
    .line 1491
    .local v1, "converter":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    #@1c
    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@1f
    .line 1494
    .local v3, "in":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@25
    .line 1495
    const/4 v0, 0x1

    #@26
    .line 1496
    .local v0, "addNewline":Z
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@29
    move-result v5

    #@2a
    if-gtz v5, :cond_1

    #@2c
    .line 1497
    const/4 v0, 0x0

    #@2d
    .line 1531
    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 1532
    if-eqz v0, :cond_0

    #@30
    .line 1533
    :try_start_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@32
    const-string/jumbo v6, ""

    #@35
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 1535
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->printMessageForState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3b
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 1539
    .end local v0    # "addNewline":Z
    .end local v1    # "converter":Ljava/io/InputStreamReader;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@3e
    .line 1540
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@41
    .line 1542
    iget-object v5, p0, Lcom/android/commands/am/Am$MyActivityController;->this$0:Lcom/android/commands/am/Am;

    #@43
    invoke-static {v5}, Lcom/android/commands/am/Am;->-get0(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;

    #@46
    move-result-object v5

    #@47
    iget-boolean v6, p0, Lcom/android/commands/am/Am$MyActivityController;->mMonkey:Z

    #@49
    invoke-interface {v5, v9, v6}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    #@4c
    .line 1483
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    #@4d
    .line 1498
    .restart local v0    # "addNewline":Z
    .restart local v1    # "converter":Ljava/io/InputStreamReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    :try_start_4
    const-string/jumbo v5, "q"

    #@50
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v5

    #@54
    if-nez v5, :cond_2

    #@56
    const-string/jumbo v5, "quit"

    #@59
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v5

    #@5d
    if-eqz v5, :cond_4

    #@5f
    .line 1499
    :cond_2
    const/4 v5, 0x0

    #@60
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@63
    .line 1542
    .end local v0    # "addNewline":Z
    :cond_3
    iget-object v5, p0, Lcom/android/commands/am/Am$MyActivityController;->this$0:Lcom/android/commands/am/Am;

    #@65
    invoke-static {v5}, Lcom/android/commands/am/Am;->-get0(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;

    #@68
    move-result-object v5

    #@69
    iget-boolean v6, p0, Lcom/android/commands/am/Am$MyActivityController;->mMonkey:Z

    #@6b
    invoke-interface {v5, v9, v6}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    #@6e
    goto :goto_2

    #@6f
    .line 1501
    .restart local v0    # "addNewline":Z
    :cond_4
    :try_start_5
    iget v5, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    #@71
    if-ne v5, v8, :cond_9

    #@73
    .line 1502
    const-string/jumbo v5, "c"

    #@76
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v5

    #@7a
    if-nez v5, :cond_5

    #@7c
    const-string/jumbo v5, "continue"

    #@7f
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82
    move-result v5

    #@83
    if-eqz v5, :cond_6

    #@85
    .line 1503
    :cond_5
    const/4 v5, 0x0

    #@86
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@89
    goto :goto_1

    #@8a
    .line 1541
    .end local v0    # "addNewline":Z
    .end local v1    # "converter":Ljava/io/InputStreamReader;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@8b
    .line 1542
    iget-object v6, p0, Lcom/android/commands/am/Am$MyActivityController;->this$0:Lcom/android/commands/am/Am;

    #@8d
    invoke-static {v6}, Lcom/android/commands/am/Am;->-get0(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;

    #@90
    move-result-object v6

    #@91
    iget-boolean v7, p0, Lcom/android/commands/am/Am$MyActivityController;->mMonkey:Z

    #@93
    invoke-interface {v6, v9, v7}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    #@96
    .line 1541
    throw v5

    #@97
    .line 1504
    .restart local v0    # "addNewline":Z
    .restart local v1    # "converter":Ljava/io/InputStreamReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_6
    :try_start_6
    const-string/jumbo v5, "k"

    #@9a
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v5

    #@9e
    if-nez v5, :cond_7

    #@a0
    const-string/jumbo v5, "kill"

    #@a3
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v5

    #@a7
    if-eqz v5, :cond_8

    #@a9
    .line 1505
    :cond_7
    const/4 v5, 0x1

    #@aa
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    #@ad
    goto :goto_1

    #@ae
    .line 1507
    :cond_8
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b0
    new-instance v6, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v7, "Invalid command: "

    #@b8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v6

    #@bc
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v6

    #@c0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v6

    #@c4
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c7
    goto/16 :goto_1

    #@c9
    .line 1509
    :cond_9
    iget v5, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    #@cb
    const/4 v6, 0x3

    #@cc
    if-ne v5, v6, :cond_10

    #@ce
    .line 1510
    const-string/jumbo v5, "c"

    #@d1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d4
    move-result v5

    #@d5
    if-nez v5, :cond_a

    #@d7
    const-string/jumbo v5, "continue"

    #@da
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dd
    move-result v5

    #@de
    if-eqz v5, :cond_b

    #@e0
    .line 1511
    :cond_a
    const/4 v5, 0x0

    #@e1
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    #@e4
    goto/16 :goto_1

    #@e6
    .line 1512
    :cond_b
    const-string/jumbo v5, "k"

    #@e9
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ec
    move-result v5

    #@ed
    if-nez v5, :cond_c

    #@ef
    const-string/jumbo v5, "kill"

    #@f2
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f5
    move-result v5

    #@f6
    if-eqz v5, :cond_d

    #@f8
    .line 1513
    :cond_c
    const/4 v5, 0x1

    #@f9
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    #@fc
    goto/16 :goto_1

    #@fe
    .line 1514
    :cond_d
    const-string/jumbo v5, "w"

    #@101
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@104
    move-result v5

    #@105
    if-nez v5, :cond_e

    #@107
    const-string/jumbo v5, "wait"

    #@10a
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10d
    move-result v5

    #@10e
    if-eqz v5, :cond_f

    #@110
    .line 1515
    :cond_e
    const/4 v5, 0x1

    #@111
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    #@114
    goto/16 :goto_1

    #@116
    .line 1517
    :cond_f
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@118
    new-instance v6, Ljava/lang/StringBuilder;

    #@11a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@11d
    const-string/jumbo v7, "Invalid command: "

    #@120
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v6

    #@124
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v6

    #@128
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12b
    move-result-object v6

    #@12c
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@12f
    goto/16 :goto_1

    #@131
    .line 1519
    :cond_10
    iget v5, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    #@133
    const/4 v6, 0x2

    #@134
    if-ne v5, v6, :cond_15

    #@136
    .line 1520
    const-string/jumbo v5, "c"

    #@139
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13c
    move-result v5

    #@13d
    if-nez v5, :cond_11

    #@13f
    const-string/jumbo v5, "continue"

    #@142
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@145
    move-result v5

    #@146
    if-eqz v5, :cond_12

    #@148
    .line 1521
    :cond_11
    const/4 v5, 0x0

    #@149
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    #@14c
    goto/16 :goto_1

    #@14e
    .line 1522
    :cond_12
    const-string/jumbo v5, "k"

    #@151
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@154
    move-result v5

    #@155
    if-nez v5, :cond_13

    #@157
    const-string/jumbo v5, "kill"

    #@15a
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15d
    move-result v5

    #@15e
    if-eqz v5, :cond_14

    #@160
    .line 1523
    :cond_13
    const/4 v5, 0x1

    #@161
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    #@164
    goto/16 :goto_1

    #@166
    .line 1525
    :cond_14
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@168
    new-instance v6, Ljava/lang/StringBuilder;

    #@16a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@16d
    const-string/jumbo v7, "Invalid command: "

    #@170
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v6

    #@174
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v6

    #@178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17b
    move-result-object v6

    #@17c
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@17f
    goto/16 :goto_1

    #@181
    .line 1528
    :cond_15
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@183
    new-instance v6, Ljava/lang/StringBuilder;

    #@185
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@188
    const-string/jumbo v7, "Invalid command: "

    #@18b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v6

    #@18f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v6

    #@193
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@196
    move-result-object v6

    #@197
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19a
    goto/16 :goto_1

    #@19c
    .line 1531
    :catchall_1
    move-exception v5

    #@19d
    monitor-exit p0

    #@19e
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1355
    monitor-enter p0

    #@1
    .line 1356
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3
    const-string/jumbo v1, "** ERROR: PROCESS NOT RESPONDING"

    #@6
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9
    .line 1357
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "message: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    .line 1358
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@24
    const-string/jumbo v1, "#"

    #@27
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2a
    .line 1359
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2c
    const-string/jumbo v1, "Allowing system to die."

    #@2f
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 1360
    const/4 v0, -0x1

    #@33
    monitor-exit p0

    #@34
    return v0

    #@35
    .line 1355
    :catchall_0
    move-exception v0

    #@36
    monitor-exit p0

    #@37
    throw v0
.end method

.method waitControllerLocked(II)I
    .locals 7
    .param p1, "pid"    # I
    .param p2, "state"    # I

    #@0
    .prologue
    .line 1378
    iget-object v3, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbPort:Ljava/lang/String;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 1379
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->killGdbLocked()V

    #@7
    .line 1382
    :try_start_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9
    new-instance v4, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v5, "Starting gdbserver on port "

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    iget-object v5, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbPort:Ljava/lang/String;

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    .line 1383
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@24
    const-string/jumbo v4, "Do the following:"

    #@27
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2a
    .line 1384
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2c
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "  adb forward tcp:"

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    iget-object v5, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbPort:Ljava/lang/String;

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    const-string/jumbo v5, " tcp:"

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    iget-object v5, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbPort:Ljava/lang/String;

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@52
    .line 1385
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@54
    new-instance v4, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v5, "  gdbclient app_process :"

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    iget-object v5, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbPort:Ljava/lang/String;

    #@62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6d
    .line 1387
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@70
    move-result-object v3

    #@71
    const/4 v4, 0x4

    #@72
    new-array v4, v4, [Ljava/lang/String;

    #@74
    .line 1388
    const-string/jumbo v5, "gdbserver"

    #@77
    const/4 v6, 0x0

    #@78
    aput-object v5, v4, v6

    #@7a
    new-instance v5, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v6, ":"

    #@82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v5

    #@86
    iget-object v6, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbPort:Ljava/lang/String;

    #@88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v5

    #@8c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v5

    #@90
    const/4 v6, 0x1

    #@91
    aput-object v5, v4, v6

    #@93
    const-string/jumbo v5, "--attach"

    #@96
    const/4 v6, 0x2

    #@97
    aput-object v5, v4, v6

    #@99
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@9c
    move-result-object v5

    #@9d
    const/4 v6, 0x3

    #@9e
    aput-object v5, v4, v6

    #@a0
    .line 1387
    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    #@a3
    move-result-object v3

    #@a4
    iput-object v3, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    #@a6
    .line 1390
    new-instance v0, Ljava/io/InputStreamReader;

    #@a8
    .line 1391
    iget-object v3, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    #@aa
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    #@ad
    move-result-object v3

    #@ae
    .line 1390
    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@b1
    .line 1392
    .local v0, "converter":Ljava/io/InputStreamReader;
    new-instance v3, Lcom/android/commands/am/Am$MyActivityController$1;

    #@b3
    invoke-direct {v3, p0, v0}, Lcom/android/commands/am/Am$MyActivityController$1;-><init>(Lcom/android/commands/am/Am$MyActivityController;Ljava/io/InputStreamReader;)V

    #@b6
    iput-object v3, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    #@b8
    .line 1421
    iget-object v3, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    #@ba
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    #@bd
    .line 1425
    const-wide/16 v4, 0x1f4

    #@bf
    :try_start_1
    invoke-virtual {p0, v4, v5}, Lcom/android/commands/am/Am$MyActivityController;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@c2
    .line 1434
    .end local v0    # "converter":Ljava/io/InputStreamReader;
    :cond_0
    :goto_0
    iput p2, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    #@c4
    .line 1435
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c6
    const-string/jumbo v4, ""

    #@c9
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@cc
    .line 1436
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->printMessageForState()V

    #@cf
    .line 1438
    :goto_1
    iget v3, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    #@d1
    if-eqz v3, :cond_1

    #@d3
    .line 1440
    :try_start_2
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    #@d6
    goto :goto_1

    #@d7
    .line 1441
    :catch_0
    move-exception v2

    #@d8
    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    #@d9
    .line 1426
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "converter":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    #@da
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@db
    .line 1429
    .end local v0    # "converter":Ljava/io/InputStreamReader;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    #@dc
    .line 1430
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@de
    new-instance v4, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v5, "Failure starting gdbserver: "

    #@e6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v4

    #@ea
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v4

    #@ee
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v4

    #@f2
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f5
    .line 1431
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->killGdbLocked()V

    #@f8
    goto :goto_0

    #@f9
    .line 1445
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->killGdbLocked()V

    #@fc
    .line 1447
    iget v3, p0, Lcom/android/commands/am/Am$MyActivityController;->mResult:I

    #@fe
    return v3
.end method

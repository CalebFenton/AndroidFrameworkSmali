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

.field mResult:I

.field mState:I

.field final synthetic this$0:Lcom/android/commands/am/Am;


# direct methods
.method constructor <init>(Lcom/android/commands/am/Am;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/am/Am;
    .param p2, "gdbPort"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1391
    iput-object p1, p0, Lcom/android/commands/am/Am$MyActivityController;->this$0:Lcom/android/commands/am/Am;

    #@2
    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    #@5
    .line 1392
    iput-object p2, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbPort:Ljava/lang/String;

    #@7
    .line 1391
    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1397
    monitor-enter p0

    #@1
    .line 1398
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
    .line 1400
    const/4 v0, 0x1

    #@1c
    return v0

    #@1d
    .line 1397
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
    .line 1405
    monitor-enter p0

    #@1
    .line 1406
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
    .line 1408
    const/4 v0, 0x1

    #@1c
    return v0

    #@1d
    .line 1405
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
    .line 1414
    monitor-enter p0

    #@2
    .line 1415
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4
    const-string/jumbo v3, "** ERROR: PROCESS CRASHED"

    #@7
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a
    .line 1416
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
    .line 1417
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
    .line 1418
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
    .line 1419
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
    .line 1420
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
    .line 1421
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@89
    const-string/jumbo v3, "stack:"

    #@8c
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8f
    .line 1422
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@91
    invoke-virtual {v2, p7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@94
    .line 1423
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@96
    const-string/jumbo v3, "#"

    #@99
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9c
    .line 1424
    const/4 v2, 0x1

    #@9d
    invoke-virtual {p0, p2, v2}, Lcom/android/commands/am/Am$MyActivityController;->waitControllerLocked(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a0
    move-result v0

    #@a1
    .line 1425
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
    .line 1414
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
    .line 1431
    monitor-enter p0

    #@1
    .line 1432
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3
    const-string/jumbo v2, "** ERROR: EARLY PROCESS NOT RESPONDING"

    #@6
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9
    .line 1433
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
    .line 1434
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
    .line 1435
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
    .line 1436
    const/4 v1, 0x2

    #@55
    invoke-virtual {p0, p2, v1}, Lcom/android/commands/am/Am$MyActivityController;->waitControllerLocked(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    move-result v0

    #@59
    .line 1437
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
    .line 1438
    :cond_0
    const/4 v1, 0x0

    #@60
    monitor-exit p0

    #@61
    return v1

    #@62
    .line 1431
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
    .line 1444
    monitor-enter p0

    #@2
    .line 1445
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4
    const-string/jumbo v2, "** ERROR: PROCESS NOT RESPONDING"

    #@7
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a
    .line 1446
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
    .line 1447
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
    .line 1448
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3e
    const-string/jumbo v2, "processStats:"

    #@41
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@44
    .line 1449
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@46
    invoke-virtual {v1, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@49
    .line 1450
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4b
    const-string/jumbo v2, "#"

    #@4e
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@51
    .line 1451
    const/4 v1, 0x3

    #@52
    invoke-virtual {p0, p2, v1}, Lcom/android/commands/am/Am$MyActivityController;->waitControllerLocked(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    move-result v0

    #@56
    .line 1452
    .local v0, "result":I
    if-ne v0, v4, :cond_0

    #@58
    const/4 v1, -0x1

    #@59
    monitor-exit p0

    #@5a
    return v1

    #@5b
    .line 1453
    :cond_0
    if-ne v0, v4, :cond_1

    #@5d
    monitor-exit p0

    #@5e
    return v4

    #@5f
    .line 1454
    :cond_1
    const/4 v1, 0x0

    #@60
    monitor-exit p0

    #@61
    return v1

    #@62
    .line 1444
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
    .line 1470
    const/4 v0, 0x0

    #@2
    iput-boolean v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mGotGdbPrint:Z

    #@4
    .line 1471
    iget-object v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1472
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a
    const-string/jumbo v1, "Stopping gdbserver"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10
    .line 1473
    iget-object v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    #@12
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    #@15
    .line 1474
    iput-object v2, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    #@17
    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 1477
    iget-object v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    #@1d
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@20
    .line 1478
    iput-object v2, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    #@22
    .line 1469
    :cond_1
    return-void
.end method

.method printMessageForState()V
    .locals 2

    #@0
    .prologue
    .line 1564
    iget v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1585
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7
    const-string/jumbo v1, "(q)uit: finish monitoring"

    #@a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d
    .line 1563
    return-void

    #@e
    .line 1566
    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10
    const-string/jumbo v1, "Monitoring activity manager...  available commands:"

    #@13
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@16
    goto :goto_0

    #@17
    .line 1569
    :pswitch_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@19
    const-string/jumbo v1, "Waiting after crash...  available commands:"

    #@1c
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f
    .line 1570
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@21
    const-string/jumbo v1, "(c)ontinue: show crash dialog"

    #@24
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@27
    .line 1571
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@29
    const-string/jumbo v1, "(k)ill: immediately kill app"

    #@2c
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2f
    goto :goto_0

    #@30
    .line 1574
    :pswitch_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@32
    const-string/jumbo v1, "Waiting after early ANR...  available commands:"

    #@35
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 1575
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3a
    const-string/jumbo v1, "(c)ontinue: standard ANR processing"

    #@3d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 1576
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@42
    const-string/jumbo v1, "(k)ill: immediately kill app"

    #@45
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    goto :goto_0

    #@49
    .line 1579
    :pswitch_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4b
    const-string/jumbo v1, "Waiting after ANR...  available commands:"

    #@4e
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@51
    .line 1580
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@53
    const-string/jumbo v1, "(c)ontinue: show ANR dialog"

    #@56
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@59
    .line 1581
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5b
    const-string/jumbo v1, "(k)ill: immediately kill app"

    #@5e
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@61
    .line 1582
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@63
    const-string/jumbo v1, "(w)ait: wait some more"

    #@66
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@69
    goto :goto_0

    #@6a
    .line 1564
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
    .line 1556
    monitor-enter p0

    #@1
    .line 1557
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    #@4
    .line 1558
    iput p1, p0, Lcom/android/commands/am/Am$MyActivityController;->mResult:I

    #@6
    .line 1559
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 1555
    return-void

    #@b
    .line 1556
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
    .line 1590
    :try_start_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->printMessageForState()V

    #@5
    .line 1592
    iget-object v5, p0, Lcom/android/commands/am/Am$MyActivityController;->this$0:Lcom/android/commands/am/Am;

    #@7
    invoke-static {v5}, Lcom/android/commands/am/Am;->-get0(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;

    #@a
    move-result-object v5

    #@b
    invoke-interface {v5, p0}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    #@e
    .line 1593
    const/4 v5, 0x0

    #@f
    iput v5, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    #@11
    .line 1595
    new-instance v1, Ljava/io/InputStreamReader;

    #@13
    sget-object v5, Ljava/lang/System;->in:Ljava/io/InputStream;

    #@15
    invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@18
    .line 1596
    .local v1, "converter":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    #@1a
    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@1d
    .line 1599
    .local v3, "in":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@23
    .line 1600
    const/4 v0, 0x1

    #@24
    .line 1601
    .local v0, "addNewline":Z
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@27
    move-result v5

    #@28
    if-gtz v5, :cond_1

    #@2a
    .line 1602
    const/4 v0, 0x0

    #@2b
    .line 1636
    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 1637
    if-eqz v0, :cond_0

    #@2e
    .line 1638
    :try_start_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@30
    const-string/jumbo v6, ""

    #@33
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@36
    .line 1640
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->printMessageForState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@39
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 1644
    .end local v0    # "addNewline":Z
    .end local v1    # "converter":Ljava/io/InputStreamReader;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@3c
    .line 1645
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3f
    .line 1647
    iget-object v5, p0, Lcom/android/commands/am/Am$MyActivityController;->this$0:Lcom/android/commands/am/Am;

    #@41
    invoke-static {v5}, Lcom/android/commands/am/Am;->-get0(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;

    #@44
    move-result-object v5

    #@45
    invoke-interface {v5, v9}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    #@48
    .line 1588
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    #@49
    .line 1603
    .restart local v0    # "addNewline":Z
    .restart local v1    # "converter":Ljava/io/InputStreamReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    :try_start_4
    const-string/jumbo v5, "q"

    #@4c
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v5

    #@50
    if-nez v5, :cond_2

    #@52
    const-string/jumbo v5, "quit"

    #@55
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v5

    #@59
    if-eqz v5, :cond_4

    #@5b
    .line 1604
    :cond_2
    const/4 v5, 0x0

    #@5c
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5f
    .line 1647
    .end local v0    # "addNewline":Z
    :cond_3
    iget-object v5, p0, Lcom/android/commands/am/Am$MyActivityController;->this$0:Lcom/android/commands/am/Am;

    #@61
    invoke-static {v5}, Lcom/android/commands/am/Am;->-get0(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;

    #@64
    move-result-object v5

    #@65
    invoke-interface {v5, v9}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    #@68
    goto :goto_2

    #@69
    .line 1606
    .restart local v0    # "addNewline":Z
    :cond_4
    :try_start_5
    iget v5, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    #@6b
    if-ne v5, v8, :cond_9

    #@6d
    .line 1607
    const-string/jumbo v5, "c"

    #@70
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v5

    #@74
    if-nez v5, :cond_5

    #@76
    const-string/jumbo v5, "continue"

    #@79
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v5

    #@7d
    if-eqz v5, :cond_6

    #@7f
    .line 1608
    :cond_5
    const/4 v5, 0x0

    #@80
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@83
    goto :goto_1

    #@84
    .line 1646
    .end local v0    # "addNewline":Z
    .end local v1    # "converter":Ljava/io/InputStreamReader;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@85
    .line 1647
    iget-object v6, p0, Lcom/android/commands/am/Am$MyActivityController;->this$0:Lcom/android/commands/am/Am;

    #@87
    invoke-static {v6}, Lcom/android/commands/am/Am;->-get0(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;

    #@8a
    move-result-object v6

    #@8b
    invoke-interface {v6, v9}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    #@8e
    .line 1646
    throw v5

    #@8f
    .line 1609
    .restart local v0    # "addNewline":Z
    .restart local v1    # "converter":Ljava/io/InputStreamReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_6
    :try_start_6
    const-string/jumbo v5, "k"

    #@92
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v5

    #@96
    if-nez v5, :cond_7

    #@98
    const-string/jumbo v5, "kill"

    #@9b
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9e
    move-result v5

    #@9f
    if-eqz v5, :cond_8

    #@a1
    .line 1610
    :cond_7
    const/4 v5, 0x1

    #@a2
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    #@a5
    goto :goto_1

    #@a6
    .line 1612
    :cond_8
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a8
    new-instance v6, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v7, "Invalid command: "

    #@b0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v6

    #@b4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v6

    #@b8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v6

    #@bc
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@bf
    goto/16 :goto_1

    #@c1
    .line 1614
    :cond_9
    iget v5, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    #@c3
    const/4 v6, 0x3

    #@c4
    if-ne v5, v6, :cond_10

    #@c6
    .line 1615
    const-string/jumbo v5, "c"

    #@c9
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cc
    move-result v5

    #@cd
    if-nez v5, :cond_a

    #@cf
    const-string/jumbo v5, "continue"

    #@d2
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d5
    move-result v5

    #@d6
    if-eqz v5, :cond_b

    #@d8
    .line 1616
    :cond_a
    const/4 v5, 0x0

    #@d9
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    #@dc
    goto/16 :goto_1

    #@de
    .line 1617
    :cond_b
    const-string/jumbo v5, "k"

    #@e1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e4
    move-result v5

    #@e5
    if-nez v5, :cond_c

    #@e7
    const-string/jumbo v5, "kill"

    #@ea
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ed
    move-result v5

    #@ee
    if-eqz v5, :cond_d

    #@f0
    .line 1618
    :cond_c
    const/4 v5, 0x1

    #@f1
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    #@f4
    goto/16 :goto_1

    #@f6
    .line 1619
    :cond_d
    const-string/jumbo v5, "w"

    #@f9
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fc
    move-result v5

    #@fd
    if-nez v5, :cond_e

    #@ff
    const-string/jumbo v5, "wait"

    #@102
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@105
    move-result v5

    #@106
    if-eqz v5, :cond_f

    #@108
    .line 1620
    :cond_e
    const/4 v5, 0x1

    #@109
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    #@10c
    goto/16 :goto_1

    #@10e
    .line 1622
    :cond_f
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@110
    new-instance v6, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string/jumbo v7, "Invalid command: "

    #@118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v6

    #@11c
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v6

    #@120
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@123
    move-result-object v6

    #@124
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@127
    goto/16 :goto_1

    #@129
    .line 1624
    :cond_10
    iget v5, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    #@12b
    const/4 v6, 0x2

    #@12c
    if-ne v5, v6, :cond_15

    #@12e
    .line 1625
    const-string/jumbo v5, "c"

    #@131
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@134
    move-result v5

    #@135
    if-nez v5, :cond_11

    #@137
    const-string/jumbo v5, "continue"

    #@13a
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13d
    move-result v5

    #@13e
    if-eqz v5, :cond_12

    #@140
    .line 1626
    :cond_11
    const/4 v5, 0x0

    #@141
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    #@144
    goto/16 :goto_1

    #@146
    .line 1627
    :cond_12
    const-string/jumbo v5, "k"

    #@149
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14c
    move-result v5

    #@14d
    if-nez v5, :cond_13

    #@14f
    const-string/jumbo v5, "kill"

    #@152
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@155
    move-result v5

    #@156
    if-eqz v5, :cond_14

    #@158
    .line 1628
    :cond_13
    const/4 v5, 0x1

    #@159
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    #@15c
    goto/16 :goto_1

    #@15e
    .line 1630
    :cond_14
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@160
    new-instance v6, Ljava/lang/StringBuilder;

    #@162
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@165
    const-string/jumbo v7, "Invalid command: "

    #@168
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v6

    #@16c
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v6

    #@170
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@173
    move-result-object v6

    #@174
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@177
    goto/16 :goto_1

    #@179
    .line 1633
    :cond_15
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@17b
    new-instance v6, Ljava/lang/StringBuilder;

    #@17d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@180
    const-string/jumbo v7, "Invalid command: "

    #@183
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v6

    #@187
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v6

    #@18b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18e
    move-result-object v6

    #@18f
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@192
    goto/16 :goto_1

    #@194
    .line 1636
    :catchall_1
    move-exception v5

    #@195
    monitor-exit p0

    #@196
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
    .line 1460
    monitor-enter p0

    #@1
    .line 1461
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3
    const-string/jumbo v1, "** ERROR: PROCESS NOT RESPONDING"

    #@6
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9
    .line 1462
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
    .line 1463
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@24
    const-string/jumbo v1, "#"

    #@27
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2a
    .line 1464
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2c
    const-string/jumbo v1, "Allowing system to die."

    #@2f
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 1465
    const/4 v0, -0x1

    #@33
    monitor-exit p0

    #@34
    return v0

    #@35
    .line 1460
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
    .line 1483
    iget-object v3, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbPort:Ljava/lang/String;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 1484
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->killGdbLocked()V

    #@7
    .line 1487
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
    .line 1488
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@24
    const-string/jumbo v4, "Do the following:"

    #@27
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2a
    .line 1489
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
    .line 1490
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
    .line 1492
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@70
    move-result-object v3

    #@71
    const/4 v4, 0x4

    #@72
    new-array v4, v4, [Ljava/lang/String;

    #@74
    .line 1493
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
    .line 1492
    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    #@a3
    move-result-object v3

    #@a4
    iput-object v3, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    #@a6
    .line 1495
    new-instance v0, Ljava/io/InputStreamReader;

    #@a8
    .line 1496
    iget-object v3, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    #@aa
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    #@ad
    move-result-object v3

    #@ae
    .line 1495
    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@b1
    .line 1497
    .local v0, "converter":Ljava/io/InputStreamReader;
    new-instance v3, Lcom/android/commands/am/Am$MyActivityController$1;

    #@b3
    invoke-direct {v3, p0, v0}, Lcom/android/commands/am/Am$MyActivityController$1;-><init>(Lcom/android/commands/am/Am$MyActivityController;Ljava/io/InputStreamReader;)V

    #@b6
    iput-object v3, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    #@b8
    .line 1526
    iget-object v3, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    #@ba
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    #@bd
    .line 1530
    const-wide/16 v4, 0x1f4

    #@bf
    :try_start_1
    invoke-virtual {p0, v4, v5}, Lcom/android/commands/am/Am$MyActivityController;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@c2
    .line 1539
    .end local v0    # "converter":Ljava/io/InputStreamReader;
    :cond_0
    :goto_0
    iput p2, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    #@c4
    .line 1540
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c6
    const-string/jumbo v4, ""

    #@c9
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@cc
    .line 1541
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->printMessageForState()V

    #@cf
    .line 1543
    :goto_1
    iget v3, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    #@d1
    if-eqz v3, :cond_1

    #@d3
    .line 1545
    :try_start_2
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    #@d6
    goto :goto_1

    #@d7
    .line 1546
    :catch_0
    move-exception v2

    #@d8
    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    #@d9
    .line 1531
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "converter":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    #@da
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@db
    .line 1534
    .end local v0    # "converter":Ljava/io/InputStreamReader;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    #@dc
    .line 1535
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
    .line 1536
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->killGdbLocked()V

    #@f8
    goto :goto_0

    #@f9
    .line 1550
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->killGdbLocked()V

    #@fc
    .line 1552
    iget v3, p0, Lcom/android/commands/am/Am$MyActivityController;->mResult:I

    #@fe
    return v3
.end method

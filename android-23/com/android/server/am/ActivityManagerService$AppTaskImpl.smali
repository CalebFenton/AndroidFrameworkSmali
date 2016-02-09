.class Lcom/android/server/am/ActivityManagerService$AppTaskImpl;
.super Landroid/app/IAppTask$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppTaskImpl"
.end annotation


# instance fields
.field private mCallingUid:I

.field private mTaskId:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "taskId"    # I
    .param p3, "callingUid"    # I

    #@0
    .prologue
    .line 20540
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-direct {p0}, Landroid/app/IAppTask$Stub;-><init>()V

    #@5
    .line 20541
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    #@7
    .line 20542
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mCallingUid:I

    #@9
    .line 20540
    return-void
.end method

.method private checkCaller()V
    .locals 3

    #@0
    .prologue
    .line 20546
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mCallingUid:I

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v1

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 20547
    new-instance v0, Ljava/lang/SecurityException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Caller "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mCallingUid:I

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 20548
    const-string/jumbo v2, " does not match caller of getAppTasks(): "

    #@1f
    .line 20547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 20548
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@26
    move-result v2

    #@27
    .line 20547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 20545
    :cond_0
    return-void
.end method


# virtual methods
.method public finishAndRemoveTask()V
    .locals 6

    #@0
    .prologue
    .line 20554
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    #@3
    .line 20556
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5
    monitor-enter v3

    #@6
    .line 20557
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    move-result-wide v0

    #@a
    .line 20559
    .local v0, "origId":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@c
    iget v4, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    #@e
    const/4 v5, 0x0

    #@f
    invoke-static {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->-wrap2(Lcom/android/server/am/ActivityManagerService;IZ)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_0

    #@15
    .line 20560
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v5, "Unable to find task ID "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    iget v5, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 20562
    :catchall_0
    move-exception v2

    #@32
    .line 20563
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 20562
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@36
    .line 20556
    .end local v0    # "origId":J
    :catchall_1
    move-exception v2

    #@37
    monitor-exit v3

    #@38
    throw v2

    #@39
    .line 20563
    .restart local v0    # "origId":J
    :cond_0
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3c
    monitor-exit v3

    #@3d
    .line 20553
    return-void
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 7

    #@0
    .prologue
    .line 20570
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    #@3
    .line 20572
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5
    monitor-enter v4

    #@6
    .line 20573
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    move-result-wide v0

    #@a
    .line 20575
    .local v0, "origId":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@c
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@e
    iget v5, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    #@10
    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    #@13
    move-result-object v2

    #@14
    .line 20576
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v2, :cond_0

    #@16
    .line 20577
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v5, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v6, "Unable to find task ID "

    #@20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    iget v6, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 20580
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v3

    #@33
    .line 20581
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 20580
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@37
    .line 20572
    .end local v0    # "origId":J
    :catchall_1
    move-exception v3

    #@38
    monitor-exit v4

    #@39
    throw v3

    #@3a
    .line 20579
    .restart local v0    # "origId":J
    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3c
    invoke-static {v3, v2}, Lcom/android/server/am/ActivityManagerService;->-wrap0(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3f
    move-result-object v3

    #@40
    .line 20581
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@43
    monitor-exit v4

    #@44
    .line 20579
    return-object v3
.end method

.method public moveToFront()V
    .locals 3

    #@0
    .prologue
    .line 20588
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    #@3
    .line 20590
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5
    iget v1, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecentsInner(ILandroid/os/Bundle;)I

    #@b
    .line 20587
    return-void
.end method

.method public setExcludeFromRecents(Z)V
    .locals 8
    .param p1, "exclude"    # Z

    #@0
    .prologue
    .line 20618
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    #@3
    .line 20620
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5
    monitor-enter v5

    #@6
    .line 20621
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    move-result-wide v2

    #@a
    .line 20623
    .local v2, "origId":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@c
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@e
    iget v6, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    #@10
    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    #@13
    move-result-object v1

    #@14
    .line 20624
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v1, :cond_0

    #@16
    .line 20625
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v6, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v7, "Unable to find task ID "

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    iget v7, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    #@26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 20634
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v4

    #@33
    .line 20635
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 20634
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@37
    .line 20620
    .end local v2    # "origId":J
    :catchall_1
    move-exception v4

    #@38
    monitor-exit v5

    #@39
    throw v4

    #@3a
    .line 20627
    .restart local v1    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "origId":J
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    #@3d
    move-result-object v0

    #@3e
    .line 20628
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_1

    #@40
    .line 20629
    const/high16 v4, 0x800000

    #@42
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@45
    .line 20635
    :goto_0
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@48
    monitor-exit v5

    #@49
    .line 20617
    return-void

    #@4a
    .line 20631
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    #@4d
    move-result v4

    #@4e
    .line 20632
    const v6, -0x800001

    #@51
    .line 20631
    and-int/2addr v4, v6

    #@52
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@55
    goto :goto_0
.end method

.method public startActivity(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 21
    .param p1, "whoThread"    # Landroid/os/IBinder;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 20596
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    #@3
    .line 20598
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@6
    move-result v18

    #@7
    .line 20601
    .local v18, "callingUser":I
    move-object/from16 v0, p0

    #@9
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b
    monitor-enter v3

    #@c
    .line 20602
    :try_start_0
    move-object/from16 v0, p0

    #@e
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@10
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@12
    move-object/from16 v0, p0

    #@14
    iget v4, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    #@16
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    #@19
    move-result-object v20

    #@1a
    .line 20603
    .local v20, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v20, :cond_0

    #@1c
    .line 20604
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1e
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v5, "Unable to find task ID "

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    move-object/from16 v0, p0

    #@2c
    iget v5, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 20601
    .end local v20    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v3

    #@3c
    throw v1

    #@3d
    .line 20606
    .restart local v20    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@40
    move-result-object v2

    #@41
    .line 20607
    .local v2, "appThread":Landroid/app/IApplicationThread;
    if-nez v2, :cond_1

    #@43
    .line 20608
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@45
    new-instance v4, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v5, "Bad app thread "

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    :cond_1
    monitor-exit v3

    #@5e
    .line 20611
    move-object/from16 v0, p0

    #@60
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@62
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@64
    const/4 v3, -0x1

    #@65
    .line 20612
    const/4 v7, 0x0

    #@66
    const/4 v8, 0x0

    #@67
    const/4 v9, 0x0

    #@68
    const/4 v10, 0x0

    #@69
    const/4 v11, 0x0

    #@6a
    const/4 v12, 0x0

    #@6b
    const/4 v13, 0x0

    #@6c
    const/4 v14, 0x0

    #@6d
    .line 20613
    const/4 v15, 0x0

    #@6e
    const/16 v17, 0x0

    #@70
    const/16 v19, 0x0

    #@72
    move-object/from16 v4, p2

    #@74
    move-object/from16 v5, p3

    #@76
    move-object/from16 v6, p4

    #@78
    move-object/from16 v16, p5

    #@7a
    .line 20611
    invoke-virtual/range {v1 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I

    #@7d
    move-result v1

    #@7e
    return v1
.end method

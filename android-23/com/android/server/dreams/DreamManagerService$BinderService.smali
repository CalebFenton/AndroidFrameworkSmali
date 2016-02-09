.class final Lcom/android/server/dreams/DreamManagerService$BinderService;
.super Landroid/service/dreams/IDreamManager$Stub;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;

    #@0
    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    invoke-direct {p0}, Landroid/service/dreams/IDreamManager$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public awaken()V
    .locals 4

    #@0
    .prologue
    .line 570
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    const-string/jumbo v3, "android.permission.WRITE_DREAM_STATE"

    #@5
    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->-wrap4(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    #@8
    .line 572
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v0

    #@c
    .line 574
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@e
    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap8(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 576
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 569
    return-void

    #@15
    .line 575
    :catchall_0
    move-exception v2

    #@16
    .line 576
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 575
    throw v2
.end method

.method public dream()V
    .locals 4

    #@0
    .prologue
    .line 534
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    const-string/jumbo v3, "android.permission.WRITE_DREAM_STATE"

    #@5
    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->-wrap4(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    #@8
    .line 536
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v0

    #@c
    .line 538
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@e
    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap9(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 540
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 533
    return-void

    #@15
    .line 539
    :catchall_0
    move-exception v2

    #@16
    .line 540
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 539
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 465
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-get0(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "android.permission.DUMP"

    #@9
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Permission Denial: can\'t dump DreamManager from from pid="

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 468
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v3

    #@1f
    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 469
    const-string/jumbo v3, ", uid="

    #@26
    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 469
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v3

    #@2e
    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 470
    return-void

    #@3a
    .line 473
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3d
    move-result-wide v0

    #@3e
    .line 475
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@40
    invoke-static {v2, p2}, Lcom/android/server/dreams/DreamManagerService;->-wrap6(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 477
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@46
    .line 464
    return-void

    #@47
    .line 476
    :catchall_0
    move-exception v2

    #@48
    .line 477
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4b
    .line 476
    throw v2
.end method

.method public finishSelf(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immediate"    # Z

    #@0
    .prologue
    .line 583
    if-nez p1, :cond_0

    #@2
    .line 584
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "token must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 587
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 589
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@11
    invoke-static {v2, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->-wrap7(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 591
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 581
    return-void

    #@18
    .line 590
    :catchall_0
    move-exception v2

    #@19
    .line 591
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 590
    throw v2
.end method

.method public getDefaultDreamComponent()Landroid/content/ComponentName;
    .locals 5

    #@0
    .prologue
    .line 509
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    const-string/jumbo v4, "android.permission.READ_DREAM_STATE"

    #@5
    invoke-static {v3, v4}, Lcom/android/server/dreams/DreamManagerService;->-wrap4(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    #@8
    .line 511
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@b
    move-result v2

    #@c
    .line 512
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v0

    #@10
    .line 514
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@12
    invoke-static {v3, v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap1(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v3

    #@16
    .line 516
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 514
    return-object v3

    #@1a
    .line 515
    :catchall_0
    move-exception v3

    #@1b
    .line 516
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 515
    throw v3
.end method

.method public getDreamComponents()[Landroid/content/ComponentName;
    .locals 5

    #@0
    .prologue
    .line 483
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    const-string/jumbo v4, "android.permission.READ_DREAM_STATE"

    #@5
    invoke-static {v3, v4}, Lcom/android/server/dreams/DreamManagerService;->-wrap4(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    #@8
    .line 485
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@b
    move-result v2

    #@c
    .line 486
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v0

    #@10
    .line 488
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@12
    invoke-static {v3, v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap0(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v3

    #@16
    .line 490
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 488
    return-object v3

    #@1a
    .line 489
    :catchall_0
    move-exception v3

    #@1b
    .line 490
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 489
    throw v3
.end method

.method public isDreaming()Z
    .locals 4

    #@0
    .prologue
    .line 522
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    const-string/jumbo v3, "android.permission.READ_DREAM_STATE"

    #@5
    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->-wrap4(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    #@8
    .line 524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v0

    #@c
    .line 526
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@e
    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap3(Lcom/android/server/dreams/DreamManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v2

    #@12
    .line 528
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 526
    return v2

    #@16
    .line 527
    :catchall_0
    move-exception v2

    #@17
    .line 528
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 527
    throw v2
.end method

.method public setDreamComponents([Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "componentNames"    # [Landroid/content/ComponentName;

    #@0
    .prologue
    .line 496
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    const-string/jumbo v4, "android.permission.WRITE_DREAM_STATE"

    #@5
    invoke-static {v3, v4}, Lcom/android/server/dreams/DreamManagerService;->-wrap4(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    #@8
    .line 498
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@b
    move-result v2

    #@c
    .line 499
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v0

    #@10
    .line 501
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@12
    invoke-static {v3, v2, p1}, Lcom/android/server/dreams/DreamManagerService;->-wrap10(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 503
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 495
    return-void

    #@19
    .line 502
    :catchall_0
    move-exception v3

    #@1a
    .line 503
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 502
    throw v3
.end method

.method public startDozing(Landroid/os/IBinder;II)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screenState"    # I
    .param p3, "screenBrightness"    # I

    #@0
    .prologue
    .line 598
    if-nez p1, :cond_0

    #@2
    .line 599
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "token must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 602
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 604
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@11
    invoke-static {v2, p1, p2, p3}, Lcom/android/server/dreams/DreamManagerService;->-wrap11(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 606
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 596
    return-void

    #@18
    .line 605
    :catchall_0
    move-exception v2

    #@19
    .line 606
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 605
    throw v2
.end method

.method public stopDozing(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 613
    if-nez p1, :cond_0

    #@2
    .line 614
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "token must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 617
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 619
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@11
    invoke-static {v2, p1}, Lcom/android/server/dreams/DreamManagerService;->-wrap13(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 621
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 611
    return-void

    #@18
    .line 620
    :catchall_0
    move-exception v2

    #@19
    .line 621
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 620
    throw v2
.end method

.method public testDream(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "dream"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 546
    if-nez p1, :cond_0

    #@2
    .line 547
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "dream must not be null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 549
    :cond_0
    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@d
    const-string/jumbo v5, "android.permission.WRITE_DREAM_STATE"

    #@10
    invoke-static {v4, v5}, Lcom/android/server/dreams/DreamManagerService;->-wrap4(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    #@13
    .line 551
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@16
    move-result v0

    #@17
    .line 552
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@1a
    move-result v1

    #@1b
    .line 553
    .local v1, "currentUserId":I
    if-eq v0, v1, :cond_1

    #@1d
    .line 555
    const-string/jumbo v4, "DreamManagerService"

    #@20
    new-instance v5, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v6, "Aborted attempt to start a test dream while a different  user is active: callingUserId="

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    .line 557
    const-string/jumbo v6, ", currentUserId="

    #@33
    .line 555
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 558
    return-void

    #@43
    .line 560
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@46
    move-result-wide v2

    #@47
    .line 562
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@49
    invoke-static {v4, p1, v0}, Lcom/android/server/dreams/DreamManagerService;->-wrap16(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .line 564
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 545
    return-void

    #@50
    .line 563
    :catchall_0
    move-exception v4

    #@51
    .line 564
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@54
    .line 563
    throw v4
.end method

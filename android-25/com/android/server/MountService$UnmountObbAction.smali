.class Lcom/android/server/MountService$UnmountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountObbAction"
.end annotation


# instance fields
.field private final mForceUnmount:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;
    .param p3, "force"    # Z

    #@0
    .prologue
    .line 3520
    iput-object p1, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #@2
    .line 3521
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    #@5
    .line 3522
    iput-boolean p3, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    #@7
    .line 3520
    return-void
.end method


# virtual methods
.method public handleError()V
    .locals 1

    #@0
    .prologue
    .line 3580
    const/16 v0, 0x14

    #@2
    invoke-virtual {p0, v0}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    #@5
    .line 3579
    return-void
.end method

.method public handleExecute()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    .line 3527
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #@3
    invoke-static {v5}, Lcom/android/server/MountService;->-wrap16(Lcom/android/server/MountService;)V

    #@6
    .line 3528
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #@8
    invoke-static {v5}, Lcom/android/server/MountService;->-wrap17(Lcom/android/server/MountService;)V

    #@b
    .line 3531
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #@d
    invoke-static {v5}, Lcom/android/server/MountService;->-get9(Lcom/android/server/MountService;)Ljava/util/Map;

    #@10
    move-result-object v6

    #@11
    monitor-enter v6

    #@12
    .line 3532
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #@14
    invoke-static {v5}, Lcom/android/server/MountService;->-get10(Lcom/android/server/MountService;)Ljava/util/Map;

    #@17
    move-result-object v5

    #@18
    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@1a
    iget-object v7, v7, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    #@1c
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Lcom/android/server/MountService$ObbState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .local v3, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v6

    #@23
    .line 3535
    if-nez v3, :cond_0

    #@25
    .line 3536
    const/16 v5, 0x17

    #@27
    invoke-virtual {p0, v5}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    #@2a
    .line 3537
    return-void

    #@2b
    .line 3531
    .end local v3    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v5

    #@2c
    monitor-exit v6

    #@2d
    throw v5

    #@2e
    .line 3540
    .restart local v3    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_0
    iget v5, v3, Lcom/android/server/MountService$ObbState;->ownerGid:I

    #@30
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@32
    iget v6, v6, Lcom/android/server/MountService$ObbState;->ownerGid:I

    #@34
    if-eq v5, v6, :cond_1

    #@36
    .line 3541
    const-string/jumbo v5, "MountService"

    #@39
    new-instance v6, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v7, "Permission denied attempting to unmount OBB "

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    iget-object v7, v3, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    #@47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    .line 3542
    const-string/jumbo v7, " (owned by GID "

    #@4e
    .line 3541
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    .line 3542
    iget v7, v3, Lcom/android/server/MountService$ObbState;->ownerGid:I

    #@54
    .line 3541
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    .line 3542
    const-string/jumbo v7, ")"

    #@5b
    .line 3541
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v6

    #@63
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 3543
    const/16 v5, 0x19

    #@68
    invoke-virtual {p0, v5}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    #@6b
    .line 3544
    return-void

    #@6c
    .line 3547
    :cond_1
    const/4 v4, 0x0

    #@6d
    .line 3549
    .local v4, "rc":I
    :try_start_1
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    #@6f
    const-string/jumbo v5, "obb"

    #@72
    const/4 v6, 0x2

    #@73
    new-array v6, v6, [Ljava/lang/Object;

    #@75
    const-string/jumbo v7, "unmount"

    #@78
    const/4 v8, 0x0

    #@79
    aput-object v7, v6, v8

    #@7b
    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@7d
    iget-object v7, v7, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    #@7f
    const/4 v8, 0x1

    #@80
    aput-object v7, v6, v8

    #@82
    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@85
    .line 3550
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    iget-boolean v5, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    #@87
    if-eqz v5, :cond_2

    #@89
    .line 3551
    const-string/jumbo v5, "force"

    #@8c
    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@8f
    .line 3553
    :cond_2
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #@91
    invoke-static {v5}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    #@94
    move-result-object v5

    #@95
    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    #@98
    .line 3566
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v4, :cond_5

    #@9a
    .line 3567
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #@9c
    invoke-static {v5}, Lcom/android/server/MountService;->-get9(Lcom/android/server/MountService;)Ljava/util/Map;

    #@9f
    move-result-object v6

    #@a0
    monitor-enter v6

    #@a1
    .line 3568
    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #@a3
    invoke-static {v5, v3}, Lcom/android/server/MountService;->-wrap12(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@a6
    monitor-exit v6

    #@a7
    .line 3571
    invoke-virtual {p0, v9}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    #@aa
    .line 3526
    :goto_1
    return-void

    #@ab
    .line 3554
    :catch_0
    move-exception v2

    #@ac
    .line 3555
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@af
    move-result v1

    #@b0
    .line 3556
    .local v1, "code":I
    const/16 v5, 0x195

    #@b2
    if-ne v1, v5, :cond_3

    #@b4
    .line 3557
    const/4 v4, -0x7

    #@b5
    goto :goto_0

    #@b6
    .line 3558
    :cond_3
    const/16 v5, 0x196

    #@b8
    if-ne v1, v5, :cond_4

    #@ba
    .line 3560
    const/4 v4, 0x0

    #@bb
    goto :goto_0

    #@bc
    .line 3562
    :cond_4
    const/4 v4, -0x1

    #@bd
    goto :goto_0

    #@be
    .line 3567
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v5

    #@bf
    monitor-exit v6

    #@c0
    throw v5

    #@c1
    .line 3573
    :cond_5
    const-string/jumbo v5, "MountService"

    #@c4
    new-instance v6, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    const-string/jumbo v7, "Could not unmount OBB: "

    #@cc
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v6

    #@d0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v6

    #@d4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v6

    #@d8
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@db
    .line 3574
    const/16 v5, 0x16

    #@dd
    invoke-virtual {p0, v5}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    #@e0
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 3585
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3586
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UnmountObbAction{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 3587
    iget-object v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    .line 3588
    const-string/jumbo v1, ",force="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 3589
    iget-boolean v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b
    .line 3590
    const/16 v1, 0x7d

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 3591
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    return-object v1
.end method

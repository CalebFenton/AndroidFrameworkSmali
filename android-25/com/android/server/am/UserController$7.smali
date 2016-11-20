.class Lcom/android/server/am/UserController$7;
.super Landroid/os/IRemoteCallback$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$newUserId:I

.field final synthetic val$oldUserId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;

.field final synthetic val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;Landroid/util/ArraySet;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/UserController;
    .param p3, "val$name"    # Ljava/lang/String;
    .param p4, "val$waitingCallbacksCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p5, "val$uss"    # Lcom/android/server/am/UserState;
    .param p6, "val$oldUserId"    # I
    .param p7, "val$newUserId"    # I

    #@0
    .prologue
    .line 1095
    .local p2, "val$curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    #@2
    iput-object p2, p0, Lcom/android/server/am/UserController$7;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    #@4
    iput-object p3, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    #@6
    iput-object p4, p0, Lcom/android/server/am/UserController$7;->val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    iput-object p5, p0, Lcom/android/server/am/UserController$7;->val$uss:Lcom/android/server/am/UserState;

    #@a
    iput p6, p0, Lcom/android/server/am/UserController$7;->val$oldUserId:I

    #@c
    iput p7, p0, Lcom/android/server/am/UserController$7;->val$newUserId:I

    #@e
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    #@11
    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    #@2
    invoke-static {v0}, Lcom/android/server/am/UserController;->-get2(Lcom/android/server/am/UserController;)Lcom/android/server/am/ActivityManagerService;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@a
    .line 1100
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    #@c
    .line 1101
    iget-object v2, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    #@e
    invoke-static {v2}, Lcom/android/server/am/UserController;->-get0(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v2

    #@12
    .line 1100
    if-eq v0, v2, :cond_0

    #@14
    monitor-exit v1

    #@15
    .line 1098
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@18
    .line 1102
    return-void

    #@19
    .line 1104
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    #@1b
    iget-object v2, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    #@1d
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@20
    .line 1106
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_1

    #@28
    .line 1107
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    #@2a
    iget-object v2, p0, Lcom/android/server/am/UserController$7;->val$uss:Lcom/android/server/am/UserState;

    #@2c
    iget v3, p0, Lcom/android/server/am/UserController$7;->val$oldUserId:I

    #@2e
    iget v4, p0, Lcom/android/server/am/UserController$7;->val$newUserId:I

    #@30
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    :cond_1
    monitor-exit v1

    #@34
    .line 1098
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@37
    .line 1097
    return-void

    #@38
    .line 1098
    :catchall_0
    move-exception v0

    #@39
    monitor-exit v1

    #@3a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@3d
    throw v0
.end method

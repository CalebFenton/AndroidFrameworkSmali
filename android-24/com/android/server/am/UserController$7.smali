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
.field mCount:I

.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$newUserId:I

.field final synthetic val$observerCount:I

.field final synthetic val$oldUserId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/UserController;
    .param p2, "val$observerCount"    # I
    .param p3, "val$uss"    # Lcom/android/server/am/UserState;
    .param p4, "val$oldUserId"    # I
    .param p5, "val$newUserId"    # I

    #@0
    .prologue
    .line 1051
    iput-object p1, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    #@2
    iput p2, p0, Lcom/android/server/am/UserController$7;->val$observerCount:I

    #@4
    iput-object p3, p0, Lcom/android/server/am/UserController$7;->val$uss:Lcom/android/server/am/UserState;

    #@6
    iput p4, p0, Lcom/android/server/am/UserController$7;->val$oldUserId:I

    #@8
    iput p5, p0, Lcom/android/server/am/UserController$7;->val$newUserId:I

    #@a
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    #@d
    .line 1052
    const/4 v0, 0x0

    #@e
    iput v0, p0, Lcom/android/server/am/UserController$7;->mCount:I

    #@10
    .line 1051
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
    .line 1055
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    #@2
    invoke-static {v0}, Lcom/android/server/am/UserController;->-get1(Lcom/android/server/am/UserController;)Lcom/android/server/am/ActivityManagerService;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@a
    .line 1056
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    #@c
    iget-object v0, v0, Lcom/android/server/am/UserController;->mCurUserSwitchCallback:Ljava/lang/Object;

    #@e
    if-ne v0, p0, :cond_0

    #@10
    .line 1057
    iget v0, p0, Lcom/android/server/am/UserController$7;->mCount:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Lcom/android/server/am/UserController$7;->mCount:I

    #@16
    .line 1058
    iget v0, p0, Lcom/android/server/am/UserController$7;->mCount:I

    #@18
    iget v2, p0, Lcom/android/server/am/UserController$7;->val$observerCount:I

    #@1a
    if-ne v0, v2, :cond_0

    #@1c
    .line 1059
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    #@1e
    iget-object v2, p0, Lcom/android/server/am/UserController$7;->val$uss:Lcom/android/server/am/UserState;

    #@20
    iget v3, p0, Lcom/android/server/am/UserController$7;->val$oldUserId:I

    #@22
    iget v4, p0, Lcom/android/server/am/UserController$7;->val$newUserId:I

    #@24
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    :cond_0
    monitor-exit v1

    #@28
    .line 1055
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2b
    .line 1054
    return-void

    #@2c
    .line 1055
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@31
    throw v0
.end method

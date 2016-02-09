.class Lcom/android/server/wm/Task;
.super Ljava/lang/Object;
.source "Task.java"


# instance fields
.field final mAppTokens:Lcom/android/server/wm/AppTokenList;

.field mDeferRemoval:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mStack:Lcom/android/server/wm/TaskStack;

.field final mTaskId:I

.field final mUserId:I


# direct methods
.method constructor <init>(ILcom/android/server/wm/TaskStack;ILcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "userId"    # I
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    #@5
    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@a
    .line 31
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    #@d
    .line 35
    iput p1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    #@f
    .line 36
    iput-object p2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@11
    .line 37
    iput p3, p0, Lcom/android/server/wm/Task;->mUserId:I

    #@13
    .line 38
    iput-object p4, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    #@15
    .line 34
    return-void
.end method


# virtual methods
.method addAppToken(ILcom/android/server/wm/AppWindowToken;)V
    .locals 3
    .param p1, "addPos"    # I
    .param p2, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    #@0
    .prologue
    .line 46
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    #@5
    move-result v0

    #@6
    .line 47
    .local v0, "lastPos":I
    if-lt p1, v0, :cond_1

    #@8
    .line 48
    move p1, v0

    #@9
    .line 57
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@b
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/AppTokenList;->add(ILjava/lang/Object;)V

    #@e
    .line 58
    iput-object p0, p2, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@10
    .line 59
    const/4 v2, 0x0

    #@11
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    #@13
    .line 45
    return-void

    #@14
    .line 50
    :cond_1
    const/4 v1, 0x0

    #@15
    .local v1, "pos":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@17
    if-ge v1, p1, :cond_0

    #@19
    .line 51
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@1b
    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    #@21
    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 53
    add-int/lit8 p1, p1, 0x1

    #@27
    .line 50
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method moveTaskToStack(Lcom/android/server/wm/TaskStack;Z)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"    # Z

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 77
    return-void

    #@5
    .line 81
    :cond_0
    const/4 v0, 0x2

    #@6
    new-array v0, v0, [Ljava/lang/Object;

    #@8
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    const-string/jumbo v1, "moveTask"

    #@14
    const/4 v2, 0x1

    #@15
    aput-object v1, v0, v2

    #@17
    const/16 v1, 0x791b

    #@19
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@1c
    .line 82
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 83
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@22
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    #@25
    .line 85
    :cond_1
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    #@28
    .line 75
    return-void
.end method

.method removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 4
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 89
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    .line 90
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@9
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 91
    const/4 v1, 0x2

    #@10
    new-array v1, v1, [Ljava/lang/Object;

    #@12
    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    #@14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v2

    #@18
    aput-object v2, v1, v3

    #@1a
    .line 92
    const-string/jumbo v2, "removeAppToken: last token"

    #@1d
    const/4 v3, 0x1

    #@1e
    aput-object v2, v1, v3

    #@20
    .line 91
    const/16 v2, 0x791b

    #@22
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@25
    .line 93
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 94
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeLocked()V

    #@2c
    .line 97
    :cond_0
    const/4 v1, 0x0

    #@2d
    iput-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@2f
    .line 101
    return v0
.end method

.method removeLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 63
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@4
    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@c
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 65
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    #@14
    .line 66
    return-void

    #@15
    .line 69
    :cond_0
    const/4 v0, 0x2

    #@16
    new-array v0, v0, [Ljava/lang/Object;

    #@18
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    #@1a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v1

    #@1e
    aput-object v1, v0, v2

    #@20
    const-string/jumbo v1, "removeTask"

    #@23
    aput-object v1, v0, v3

    #@25
    const/16 v1, 0x791b

    #@27
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@2a
    .line 70
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    #@2c
    .line 71
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@2e
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    #@31
    .line 72
    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    #@33
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    #@35
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    #@37
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    #@3a
    .line 62
    return-void
.end method

.method setSendingToBottom(Z)V
    .locals 2
    .param p1, "toBottom"    # Z

    #@0
    .prologue
    .line 105
    const/4 v0, 0x0

    #@1
    .local v0, "appTokenNdx":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@3
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 106
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@b
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    #@11
    iput-boolean p1, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    #@13
    .line 105
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 104
    :cond_0
    return-void
.end method

.method showForAllUsers()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 111
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@3
    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    #@6
    move-result v0

    #@7
    .line 112
    .local v0, "tokensCount":I
    if-eqz v0, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@b
    add-int/lit8 v2, v0, -0x1

    #@d
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    #@13
    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    #@15
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{taskId="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " appTokens="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, " mdr="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, "}"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.class public Landroid/view/HandlerActionQueue;
.super Ljava/lang/Object;
.source "HandlerActionQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HandlerActionQueue$HandlerAction;
    }
.end annotation


# instance fields
.field private mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

.field private mCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public executeActions(Landroid/os/Handler;)V
    .locals 8
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 83
    monitor-enter p0

    #@1
    .line 84
    :try_start_0
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    #@3
    .line 85
    .local v0, "actions":[Landroid/view/HandlerActionQueue$HandlerAction;
    const/4 v3, 0x0

    #@4
    .local v3, "i":I
    iget v1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    #@6
    .local v1, "count":I
    :goto_0
    if-ge v3, v1, :cond_0

    #@8
    .line 86
    aget-object v2, v0, v3

    #@a
    .line 87
    .local v2, "handlerAction":Landroid/view/HandlerActionQueue$HandlerAction;
    iget-object v4, v2, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    #@c
    iget-wide v6, v2, Landroid/view/HandlerActionQueue$HandlerAction;->delay:J

    #@e
    invoke-virtual {p1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@11
    .line 85
    add-int/lit8 v3, v3, 0x1

    #@13
    goto :goto_0

    #@14
    .line 90
    .end local v2    # "handlerAction":Landroid/view/HandlerActionQueue$HandlerAction;
    :cond_0
    const/4 v4, 0x0

    #@15
    iput-object v4, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    #@17
    .line 91
    const/4 v4, 0x0

    #@18
    iput v4, p0, Landroid/view/HandlerActionQueue;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 82
    return-void

    #@1c
    .line 83
    .end local v0    # "actions":[Landroid/view/HandlerActionQueue$HandlerAction;
    .end local v1    # "count":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@1d
    monitor-exit p0

    #@1e
    throw v4
.end method

.method public getDelay(I)J
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 107
    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 108
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 110
    :cond_0
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    #@c
    aget-object v0, v0, p1

    #@e
    iget-wide v0, v0, Landroid/view/HandlerActionQueue$HandlerAction;->delay:J

    #@10
    return-wide v0
.end method

.method public getRunnable(I)Ljava/lang/Runnable;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 100
    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 101
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 103
    :cond_0
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    #@c
    aget-object v0, v0, p1

    #@e
    iget-object v0, v0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    #@10
    return-object v0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 35
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/HandlerActionQueue;->postDelayed(Ljava/lang/Runnable;J)V

    #@5
    .line 34
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    #@0
    .prologue
    .line 39
    new-instance v0, Landroid/view/HandlerActionQueue$HandlerAction;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/view/HandlerActionQueue$HandlerAction;-><init>(Ljava/lang/Runnable;J)V

    #@5
    .line 41
    .local v0, "handlerAction":Landroid/view/HandlerActionQueue$HandlerAction;
    monitor-enter p0

    #@6
    .line 42
    :try_start_0
    iget-object v1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 43
    const/4 v1, 0x4

    #@b
    new-array v1, v1, [Landroid/view/HandlerActionQueue$HandlerAction;

    #@d
    iput-object v1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    #@f
    .line 45
    :cond_0
    iget-object v1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    #@11
    iget v2, p0, Landroid/view/HandlerActionQueue;->mCount:I

    #@13
    invoke-static {v1, v2, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, [Landroid/view/HandlerActionQueue$HandlerAction;

    #@19
    iput-object v1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    #@1b
    .line 46
    iget v1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    iput v1, p0, Landroid/view/HandlerActionQueue;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 38
    return-void

    #@23
    .line 41
    :catchall_0
    move-exception v1

    #@24
    monitor-exit p0

    #@25
    throw v1
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 51
    monitor-enter p0

    #@1
    .line 52
    :try_start_0
    iget v1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    #@3
    .line 53
    .local v1, "count":I
    const/4 v3, 0x0

    #@4
    .line 55
    .local v3, "j":I
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    #@6
    .line 56
    .local v0, "actions":[Landroid/view/HandlerActionQueue$HandlerAction;
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@9
    .line 57
    aget-object v4, v0, v2

    #@b
    invoke-virtual {v4, p1}, Landroid/view/HandlerActionQueue$HandlerAction;->matches(Ljava/lang/Runnable;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 56
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 63
    :cond_0
    if-eq v3, v2, :cond_1

    #@16
    .line 66
    aget-object v4, v0, v2

    #@18
    aput-object v4, v0, v3

    #@1a
    .line 69
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@1c
    goto :goto_1

    #@1d
    .line 73
    :cond_2
    iput v3, p0, Landroid/view/HandlerActionQueue;->mCount:I

    #@1f
    .line 76
    :goto_2
    if-ge v3, v1, :cond_3

    #@21
    .line 77
    const/4 v4, 0x0

    #@22
    aput-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 76
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_2

    #@27
    :cond_3
    monitor-exit p0

    #@28
    .line 50
    return-void

    #@29
    .line 51
    .end local v0    # "actions":[Landroid/view/HandlerActionQueue$HandlerAction;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    :catchall_0
    move-exception v4

    #@2a
    monitor-exit p0

    #@2b
    throw v4
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 96
    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    #@2
    return v0
.end method

.class public Landroid/app/servertransaction/TransactionExecutor;
.super Ljava/lang/Object;
.source "TransactionExecutor.java"


# static fields
.field private static final greylist-max-o DEBUG_RESOLVER:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TransactionExecutor"


# instance fields
.field private final greylist-max-o mHelper:Landroid/app/servertransaction/TransactionExecutorHelper;

.field private final greylist-max-o mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

.field private final greylist-max-o mTransactionHandler:Landroid/app/ClientTransactionHandler;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/app/ClientTransactionHandler;)V
    .registers 3
    .param p1, "clientTransactionHandler"    # Landroid/app/ClientTransactionHandler;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/app/servertransaction/PendingTransactionActions;

    invoke-direct {v0}, Landroid/app/servertransaction/PendingTransactionActions;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    .line 58
    new-instance v0, Landroid/app/servertransaction/TransactionExecutorHelper;

    invoke-direct {v0}, Landroid/app/servertransaction/TransactionExecutorHelper;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/TransactionExecutor;->mHelper:Landroid/app/servertransaction/TransactionExecutorHelper;

    .line 62
    iput-object p1, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    .line 63
    return-void
.end method

.method private blacklist cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;IZLandroid/app/servertransaction/ClientTransaction;)V
    .registers 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finish"    # I
    .param p3, "excludeLastState"    # Z
    .param p4, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 186
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    .line 193
    .local v0, "start":I
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutor;->mHelper:Landroid/app/servertransaction/TransactionExecutorHelper;

    invoke-virtual {v1, v0, p2, p3}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecyclePath(IIZ)Landroid/util/IntArray;

    move-result-object v1

    .line 194
    .local v1, "path":Landroid/util/IntArray;
    invoke-direct {p0, p1, v1, p4}, Landroid/app/servertransaction/TransactionExecutor;->performLifecycleSequence(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/util/IntArray;Landroid/app/servertransaction/ClientTransaction;)V

    .line 195
    return-void
.end method

.method private blacklist executeLifecycleItem(Landroid/app/servertransaction/ClientTransaction;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    .registers 7
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .param p2, "lifecycleItem"    # Landroid/app/servertransaction/ActivityLifecycleItem;

    .line 148
    invoke-virtual {p2}, Landroid/app/servertransaction/ActivityLifecycleItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 149
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v1, v0}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    .line 156
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v1, :cond_20

    .line 157
    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v2}, Landroid/app/ClientTransactionHandler;->getActivitiesToBeDestroyed()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_1f

    .line 159
    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {p2, v2, v3}, Landroid/app/servertransaction/ActivityLifecycleItem;->postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 162
    :cond_1f
    return-void

    .line 166
    :cond_20
    invoke-virtual {p2}, Landroid/app/servertransaction/ActivityLifecycleItem;->getTargetState()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, p1}, Landroid/app/servertransaction/TransactionExecutor;->cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;IZLandroid/app/servertransaction/ClientTransaction;)V

    .line 169
    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {p2, v2, v3}, Landroid/app/servertransaction/ActivityLifecycleItem;->execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 170
    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {p2, v2, v3}, Landroid/app/servertransaction/ActivityLifecycleItem;->postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 171
    return-void
.end method

.method private blacklist executeNonLifecycleItem(Landroid/app/servertransaction/ClientTransaction;Landroid/app/servertransaction/ClientTransactionItem;Z)V
    .registers 10
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .param p2, "item"    # Landroid/app/servertransaction/ClientTransactionItem;
    .param p3, "shouldExcludeLastLifecycleState"    # Z

    .line 111
    invoke-virtual {p2}, Landroid/app/servertransaction/ClientTransactionItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 112
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v1, v0}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    .line 114
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_33

    if-nez v1, :cond_33

    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    .line 115
    invoke-virtual {v2}, Landroid/app/ClientTransactionHandler;->getActivitiesToBeDestroyed()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip pre-destroyed transaction item:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TransactionExecutor"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 123
    :cond_33
    invoke-virtual {p2}, Landroid/app/servertransaction/ClientTransactionItem;->getPostExecutionState()I

    move-result v2

    .line 125
    .local v2, "postExecutionState":I
    invoke-virtual {p2}, Landroid/app/servertransaction/ClientTransactionItem;->shouldHaveDefinedPreExecutionState()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_49

    .line 126
    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mHelper:Landroid/app/servertransaction/TransactionExecutorHelper;

    invoke-virtual {v3, v1, v2}, Landroid/app/servertransaction/TransactionExecutorHelper;->getClosestPreExecutionState(Landroid/app/ActivityThread$ActivityClientRecord;I)I

    move-result v3

    .line 128
    .local v3, "closestPreExecutionState":I
    if-eq v3, v4, :cond_49

    .line 129
    invoke-virtual {p0, v1, v3, p1}, Landroid/app/servertransaction/TransactionExecutor;->cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;ILandroid/app/servertransaction/ClientTransaction;)V

    .line 133
    .end local v3    # "closestPreExecutionState":I
    :cond_49
    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v5, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {p2, v3, v5}, Landroid/app/servertransaction/ClientTransactionItem;->execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 135
    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v5, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {p2, v3, v5}, Landroid/app/servertransaction/ClientTransactionItem;->postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 136
    if-nez v1, :cond_5f

    .line 138
    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v3, v0}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    .line 141
    :cond_5f
    if-eq v2, v4, :cond_66

    if-eqz v1, :cond_66

    .line 142
    invoke-direct {p0, v1, v2, p3, p1}, Landroid/app/servertransaction/TransactionExecutor;->cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;IZLandroid/app/servertransaction/ClientTransaction;)V

    .line 144
    :cond_66
    return-void
.end method

.method private blacklist performLifecycleSequence(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/util/IntArray;Landroid/app/servertransaction/ClientTransaction;)V
    .registers 14
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "path"    # Landroid/util/IntArray;
    .param p3, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 200
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v7

    .line 201
    .local v7, "size":I
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_6
    if-ge v8, v7, :cond_8a

    .line 202
    invoke-virtual {p2, v8}, Landroid/util/IntArray;->get(I)I

    move-result v9

    .line 208
    .local v9, "state":I
    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch v9, :pswitch_data_8c

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected lifecycle state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :pswitch_2a
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, v2}, Landroid/app/ClientTransactionHandler;->performRestartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 240
    goto :goto_86

    .line 234
    :pswitch_30
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performLifecycleSequence. cycling to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v7, -0x1

    .line 236
    invoke-virtual {p2, v4}, Landroid/util/IntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-virtual {v0, p1, v2, v2, v3}, Landroid/app/ClientTransactionHandler;->handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V

    .line 237
    goto :goto_86

    .line 229
    :pswitch_50
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    const-string v4, "LIFECYCLER_STOP_ACTIVITY"

    invoke-virtual {v0, p1, v3, v2, v4}, Landroid/app/ClientTransactionHandler;->handleStopActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V

    .line 232
    goto :goto_86

    .line 223
    :pswitch_5a
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v5, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    const-string v6, "LIFECYCLER_PAUSE_ACTIVITY"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/ClientTransactionHandler;->handlePauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZZLandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V

    .line 227
    goto :goto_86

    .line 218
    :pswitch_68
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    const/4 v4, 0x0

    const-string v5, "LIFECYCLER_RESUME_ACTIVITY"

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/ClientTransactionHandler;->handleResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZZLjava/lang/String;)V

    .line 221
    goto :goto_86

    .line 214
    :pswitch_75
    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v2, p1, v3, v0}, Landroid/app/ClientTransactionHandler;->handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 216
    goto :goto_86

    .line 210
    :pswitch_7d
    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    const/4 v4, -0x1

    invoke-virtual {v2, p1, v3, v4, v0}, Landroid/app/ClientTransactionHandler;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ILandroid/content/Intent;)Landroid/app/Activity;

    .line 212
    nop

    .line 201
    :goto_86
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 245
    .end local v8    # "i":I
    .end local v9    # "state":I
    :cond_8a
    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_75
        :pswitch_68
        :pswitch_5a
        :pswitch_50
        :pswitch_30
        :pswitch_2a
    .end packed-switch
.end method


# virtual methods
.method public blacklist cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;ILandroid/app/servertransaction/ClientTransaction;)V
    .registers 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finish"    # I
    .param p3, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/app/servertransaction/TransactionExecutor;->cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;IZLandroid/app/servertransaction/ClientTransaction;)V

    .line 177
    return-void
.end method

.method public greylist-max-o execute(Landroid/app/servertransaction/ClientTransaction;)V
    .registers 8
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 78
    const-string v0, "clientTransactionExecuted"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 80
    :try_start_7
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/TransactionExecutor;->executeTransactionItems(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_16
    .catchall {:try_start_7 .. :try_end_a} :catchall_14

    .line 86
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 87
    nop

    .line 89
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v0}, Landroid/app/servertransaction/PendingTransactionActions;->clear()V

    .line 91
    return-void

    .line 86
    :catchall_14
    move-exception v0

    goto :goto_37

    .line 81
    :catch_16
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    :try_start_17
    const-string v3, "TransactionExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to execute the transaction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    .line 83
    invoke-static {p1, v5}, Landroid/app/servertransaction/TransactionExecutorHelper;->transactionToString(Landroid/app/servertransaction/ClientTransaction;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    nop

    .end local p0    # "this":Landroid/app/servertransaction/TransactionExecutor;
    .end local p1    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    throw v0
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_14

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/app/servertransaction/TransactionExecutor;
    .restart local p1    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    :goto_37
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 87
    throw v0
.end method

.method public blacklist executeTransactionItems(Landroid/app/servertransaction/ClientTransaction;)V
    .registers 7
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 96
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getTransactionItems()Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/servertransaction/ClientTransactionItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 98
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_29

    .line 99
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/servertransaction/ClientTransactionItem;

    .line 100
    .local v3, "item":Landroid/app/servertransaction/ClientTransactionItem;
    invoke-virtual {v3}, Landroid/app/servertransaction/ClientTransactionItem;->isActivityLifecycleItem()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 101
    move-object v4, v3

    check-cast v4, Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-direct {p0, p1, v4}, Landroid/app/servertransaction/TransactionExecutor;->executeLifecycleItem(Landroid/app/servertransaction/ClientTransaction;Landroid/app/servertransaction/ActivityLifecycleItem;)V

    goto :goto_26

    .line 103
    :cond_1e
    nop

    .line 104
    invoke-static {v0, v2}, Landroid/app/servertransaction/TransactionExecutorHelper;->shouldExcludeLastLifecycleState(Ljava/util/List;I)Z

    move-result v4

    .line 103
    invoke-direct {p0, p1, v3, v4}, Landroid/app/servertransaction/TransactionExecutor;->executeNonLifecycleItem(Landroid/app/servertransaction/ClientTransaction;Landroid/app/servertransaction/ClientTransactionItem;Z)V

    .line 98
    .end local v3    # "item":Landroid/app/servertransaction/ClientTransactionItem;
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 107
    .end local v2    # "i":I
    :cond_29
    return-void
.end method

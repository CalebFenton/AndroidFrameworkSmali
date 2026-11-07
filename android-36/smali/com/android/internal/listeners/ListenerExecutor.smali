.class public interface abstract Lcom/android/internal/listeners/ListenerExecutor;
.super Ljava/lang/Object;
.source "ListenerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;,
        Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;
    }
.end annotation


# direct methods
.method public static synthetic blacklist lambda$executeSafely$0(Ljava/lang/Object;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V
    .registers 7
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "listenerSupplier"    # Ljava/util/function/Supplier;
    .param p2, "operation"    # Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .param p3, "failureCallback"    # Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;

    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, "success":Z
    :try_start_1
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_b

    .line 127
    invoke-interface {p2, p0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->operate(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_14
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    .line 128
    const/4 v0, 0x1

    .line 140
    :cond_b
    :goto_b
    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    .line 141
    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    .line 142
    goto :goto_22

    .line 140
    :catchall_12
    move-exception v1

    goto :goto_27

    .line 130
    :catch_14
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    :try_start_15
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_23

    .line 134
    invoke-interface {p2, v1}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onFailure(Ljava/lang/Exception;)V

    .line 135
    if-eqz p3, :cond_b

    .line 136
    invoke-interface {p3, p2, v1}, Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;->onFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V

    goto :goto_b

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_22
    return-void

    .line 132
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_23
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    .end local v0    # "success":Z
    .end local p0    # "listener":Ljava/lang/Object;
    .end local p1    # "listenerSupplier":Ljava/util/function/Supplier;
    .end local p2    # "operation":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .end local p3    # "failureCallback":Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;
    throw v2
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_12

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "success":Z
    .restart local p0    # "listener":Ljava/lang/Object;
    .restart local p1    # "listenerSupplier":Ljava/util/function/Supplier;
    .restart local p2    # "operation":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .restart local p3    # "failureCallback":Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;
    :goto_27
    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    .line 141
    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    .line 142
    throw v1
.end method


# virtual methods
.method public blacklist executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener:Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier<",
            "TT",
            "Listener;",
            ">;",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p2, "listenerSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TTListener;>;"
    .local p3, "operation":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<TTListener;>;"
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/internal/listeners/ListenerExecutor;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    .line 95
    return-void
.end method

.method public blacklist executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V
    .registers 10
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener:Ljava/lang/Object;",
            "T",
            "ListenerOperation::Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;>(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier<",
            "TT",
            "Listener;",
            ">;TT",
            "ListenerOperation;",
            "Lcom/android/internal/listeners/ListenerExecutor$FailureCallback<",
            "TT",
            "ListenerOperation;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p2, "listenerSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TTListener;>;"
    .local p3, "operation":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "TTListenerOperation;"
    .local p4, "failureCallback":Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;, "Lcom/android/internal/listeners/ListenerExecutor$FailureCallback<TTListenerOperation;>;"
    if-nez p3, :cond_3

    .line 110
    return-void

    .line 113
    :cond_3
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "listener":Ljava/lang/Object;, "TTListener;"
    if-nez v0, :cond_a

    .line 115
    return-void

    .line 118
    :cond_a
    const/4 v1, 0x0

    .line 119
    .local v1, "executing":Z
    const/4 v2, 0x0

    .line 121
    .local v2, "preexecute":Z
    const/4 v3, 0x0

    :try_start_d
    invoke-interface {p3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPreExecute()V

    .line 122
    const/4 v2, 0x1

    .line 123
    new-instance v4, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, p2, p3, p4}, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    invoke-interface {p1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_25

    .line 144
    const/4 v1, 0x1

    .line 146
    if-nez v1, :cond_24

    .line 147
    if-eqz v2, :cond_21

    .line 148
    invoke-interface {p3, v3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    .line 150
    :cond_21
    invoke-interface {p3, v3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    .line 153
    :cond_24
    return-void

    .line 146
    :catchall_25
    move-exception v4

    if-nez v1, :cond_30

    .line 147
    if-eqz v2, :cond_2d

    .line 148
    invoke-interface {p3, v3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    .line 150
    :cond_2d
    invoke-interface {p3, v3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    .line 152
    :cond_30
    throw v4
.end method

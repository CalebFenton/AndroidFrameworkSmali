.class Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;
.super Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionlessHandwritingCallbackProxy"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    .line 5106
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;-><init>()V

    .line 5095
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mLock:Ljava/lang/Object;

    .line 5107
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5108
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mCallback:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    .line 5109
    return-void
.end method

.method static synthetic blacklist lambda$onError$2(Landroid/view/inputmethod/ConnectionlessHandwritingCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .param p1, "errorCode"    # I

    .line 5153
    invoke-interface {p0, p1}, Landroid/view/inputmethod/ConnectionlessHandwritingCallback;->onError(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    .line 5127
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/inputmethod/ConnectionlessHandwritingCallback;->onError(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$1(Landroid/view/inputmethod/ConnectionlessHandwritingCallback;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "callback"    # Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 5131
    invoke-interface {p0, p1}, Landroid/view/inputmethod/ConnectionlessHandwritingCallback;->onResult(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .registers 7
    .param p1, "errorCode"    # I

    .line 5142
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5143
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mCallback:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    if-nez v1, :cond_c

    goto :goto_2c

    .line 5146
    :cond_c
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5147
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mCallback:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    .line 5148
    .local v2, "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5149
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mCallback:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    .line 5150
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_2e

    .line 5151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 5153
    .local v3, "identity":J
    :try_start_1a
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, p1}, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/ConnectionlessHandwritingCallback;I)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_27

    .line 5155
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5156
    nop

    .line 5157
    return-void

    .line 5155
    :catchall_27
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5156
    throw v0

    .line 5144
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .end local v3    # "identity":J
    :cond_2c
    :goto_2c
    :try_start_2c
    monitor-exit v0

    return-void

    .line 5150
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public blacklist onResult(Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 5115
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5116
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mCallback:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    if-nez v1, :cond_c

    goto :goto_3b

    .line 5119
    :cond_c
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5120
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mCallback:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    .line 5121
    .local v2, "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5122
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mCallback:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    .line 5123
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_3d

    .line 5124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 5126
    .local v3, "identity":J
    :try_start_1a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 5127
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2}, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_31

    .line 5131
    :cond_29
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v0, v2, p1}, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/ConnectionlessHandwritingCallback;Ljava/lang/CharSequence;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_36

    .line 5134
    :goto_31
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5135
    nop

    .line 5136
    return-void

    .line 5134
    :catchall_36
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5135
    throw v0

    .line 5117
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .end local v3    # "identity":J
    :cond_3b
    :goto_3b
    :try_start_3b
    monitor-exit v0

    return-void

    .line 5123
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3d

    throw v1
.end method

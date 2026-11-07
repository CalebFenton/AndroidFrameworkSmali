.class public Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
.super Ljava/lang/Object;
.source "SafeOneTimeExecuteAppFunctionCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SafeOneTimeExecuteApp"


# instance fields
.field private final blacklist mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

.field private final blacklist mCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

.field private final blacklist mExecutionStartTimeAfterBindMillis:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor blacklist <init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;-><init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;)V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/app/appfunctions/IExecuteAppFunctionCallback;
    .param p2, "completionCallback"    # Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mExecutionStartTimeAfterBindMillis:Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    iput-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    .line 54
    iput-object p2, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

    .line 55
    return-void
.end method


# virtual methods
.method public blacklist disable()V
    .registers 3

    .line 98
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    return-void
.end method

.method public blacklist onError(Landroid/app/appfunctions/AppFunctionException;)V
    .registers 6
    .param p1, "error"    # Landroid/app/appfunctions/AppFunctionException;

    .line 77
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v1, "SafeOneTimeExecuteApp"

    if-nez v0, :cond_12

    .line 78
    const-string v0, "Ignore subsequent calls to onResult/onError()"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 82
    :cond_12
    :try_start_12
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    invoke-interface {v0, p1}, Landroid/app/appfunctions/IExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 83
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

    if-eqz v0, :cond_26

    .line 84
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

    iget-object v2, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mExecutionStartTimeAfterBindMillis:Ljava/util/concurrent/atomic/AtomicLong;

    .line 85
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 84
    invoke-interface {v0, p1, v2, v3}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;->finalizeOnError(Landroid/app/appfunctions/AppFunctionException;J)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_26} :catch_27

    .line 90
    :cond_26
    goto :goto_2d

    .line 87
    :catch_27
    move-exception v0

    .line 89
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "Failed to invoke the callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2d
    return-void
.end method

.method public blacklist onResult(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .registers 6
    .param p1, "result"    # Landroid/app/appfunctions/ExecuteAppFunctionResponse;

    .line 59
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v1, "SafeOneTimeExecuteApp"

    if-nez v0, :cond_12

    .line 60
    const-string v0, "Ignore subsequent calls to onResult/onError()"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 64
    :cond_12
    :try_start_12
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    invoke-interface {v0, p1}, Landroid/app/appfunctions/IExecuteAppFunctionCallback;->onSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V

    .line 65
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

    if-eqz v0, :cond_26

    .line 66
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

    iget-object v2, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mExecutionStartTimeAfterBindMillis:Ljava/util/concurrent/atomic/AtomicLong;

    .line 67
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 66
    invoke-interface {v0, p1, v2, v3}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;->finalizeOnSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;J)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_26} :catch_27

    .line 72
    :cond_26
    goto :goto_2d

    .line 69
    :catch_27
    move-exception v0

    .line 71
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "Failed to invoke the callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2d
    return-void
.end method

.method public blacklist setExecutionStartTimeAfterBindMillis(J)V
    .registers 6
    .param p1, "executionStartTimeAfterBindMillis"    # J

    .line 106
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mExecutionStartTimeAfterBindMillis:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_11

    .line 108
    const-string v0, "SafeOneTimeExecuteApp"

    const-string v1, "Ignore subsequent calls to setExecutionStartTimeAfterBindMillis()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_11
    return-void
.end method

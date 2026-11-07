.class final Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;
.super Ljava/lang/Object;
.source "InputMethodPrivilegedOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OpsHolder"
.end annotation


# instance fields
.field private blacklist mPrivOps:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;-><init>()V

    return-void
.end method

.method private static blacklist getCallerMethodName()Ljava/lang/String;
    .registers 3

    .line 75
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 76
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_f

    .line 77
    const-string v1, "<bottom of call stack>"

    return-object v1

    .line 79
    :cond_f
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized blacklist getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    .registers 4

    monitor-enter p0

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->mPrivOps:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    if-nez v0, :cond_21

    .line 86
    const-string v0, "InputMethodPrivilegedOperations"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getCallerMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is ignored. Call it within attachToken() and InputMethodService.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local p0    # "this":Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;
    :cond_21
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->mPrivOps:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v0

    .line 84
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public declared-synchronized blacklist set(Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V
    .registers 5
    .param p1, "privOps"    # Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->mPrivOps:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    if-nez v0, :cond_9

    .line 65
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->mPrivOps:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_22

    .line 66
    monitor-exit p0

    return-void

    .line 61
    .end local p0    # "this":Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IInputMethodPrivilegedOperations must be set at most once. privOps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    .end local p1    # "privOps":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    :catchall_22
    move-exception p1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_22

    throw p1
.end method

.class Landroid/app/appfunctions/AppFunctionManager$1;
.super Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;
.source "AppFunctionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/appfunctions/AppFunctionManager;->executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/app/appfunctions/AppFunctionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/appfunctions/AppFunctionManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 184
    iput-object p2, p0, Landroid/app/appfunctions/AppFunctionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/appfunctions/AppFunctionManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onError$2(Landroid/os/OutcomeReceiver;Landroid/app/appfunctions/AppFunctionException;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "exception"    # Landroid/app/appfunctions/AppFunctionException;

    .line 203
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/OutcomeReceiver;Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "result"    # Landroid/app/appfunctions/ExecuteAppFunctionResponse;

    .line 188
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$1(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V
    .registers 5
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Ljava/lang/RuntimeException;

    .line 194
    new-instance v0, Landroid/app/appfunctions/AppFunctionException;

    .line 197
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-direct {v0, v2, v1}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 194
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/app/appfunctions/AppFunctionException;)V
    .registers 5
    .param p1, "exception"    # Landroid/app/appfunctions/AppFunctionException;

    .line 203
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/app/appfunctions/AppFunctionManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/app/appfunctions/AppFunctionManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/app/appfunctions/AppFunctionException;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method public blacklist onSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .registers 6
    .param p1, "result"    # Landroid/app/appfunctions/ExecuteAppFunctionResponse;

    .line 188
    :try_start_0
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/app/appfunctions/AppFunctionManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/app/appfunctions/AppFunctionManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_d

    .line 198
    goto :goto_1a

    .line 189
    :catch_d
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/app/appfunctions/AppFunctionManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v3, Landroid/app/appfunctions/AppFunctionManager$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v0}, Landroid/app/appfunctions/AppFunctionManager$1$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 199
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1a
    return-void
.end method

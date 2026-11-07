.class abstract Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;
.super Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ExceptionHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$aF4mry-24jc2g2wYIMDQPGIBMbc(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;Ljava/lang/RuntimeException;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;->lambda$cleanUpAndQuit$0(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1203
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;-><init>(Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;)V

    return-void
.end method

.method private synthetic blacklist lambda$cleanUpAndQuit$0(Ljava/lang/RuntimeException;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/RuntimeException;

    .line 1211
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSessionCallback(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/net/ipsec/ike/IkeSessionCallback;

    move-result-object v0

    invoke-static {p1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/ipsec/ike/IkeSessionCallback;->onClosedWithException(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1212
    return-void
.end method


# virtual methods
.method protected blacklist cleanUpAndQuit(Ljava/lang/RuntimeException;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/RuntimeException;

    .line 1207
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mcloseAllSaRecords(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Z)V

    .line 1209
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;Ljava/lang/RuntimeException;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 1214
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {p1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->recordMetricsEvent_sessionTerminated(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1215
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected exception in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getCurrentStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1216
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->quitSessionNow()V

    .line 1217
    return-void
.end method

.method protected blacklist getCmdString(I)Ljava/lang/String;
    .registers 3
    .param p1, "cmd"    # I

    .line 1221
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$sfgetCMD_TO_STR()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

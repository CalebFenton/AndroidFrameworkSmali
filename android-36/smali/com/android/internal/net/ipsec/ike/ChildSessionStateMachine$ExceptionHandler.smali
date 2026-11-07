.class abstract Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;
.super Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ExceptionHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$DXM-hzgGG_HVIe3hDRxBOHvF9t8(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;Ljava/lang/RuntimeException;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;->lambda$cleanUpAndQuit$0(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 726
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;-><init>(Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;)V

    return-void
.end method

.method private synthetic blacklist lambda$cleanUpAndQuit$0(Ljava/lang/RuntimeException;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/RuntimeException;

    .line 736
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmUserCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Landroid/net/ipsec/ike/ChildSessionCallback;

    move-result-object v0

    invoke-static {p1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/ipsec/ike/ChildSessionCallback;->onClosedWithException(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 737
    return-void
.end method


# virtual methods
.method protected blacklist cleanUpAndQuit(Ljava/lang/RuntimeException;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/RuntimeException;

    .line 732
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$mcloseAllSaRecords(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Z)V

    .line 734
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;Ljava/lang/RuntimeException;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 739
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {p1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->recordMetricsEvent_sessionTerminated(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 740
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected exception in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->getCurrentStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 741
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->quitSessionNow()V

    .line 742
    return-void
.end method

.method protected blacklist getCmdString(I)Ljava/lang/String;
    .registers 3
    .param p1, "cmd"    # I

    .line 746
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$sfgetCMD_TO_STR()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

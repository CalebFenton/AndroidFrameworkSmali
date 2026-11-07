.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;
.super Landroid/os/Handler;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TempFailureHandler"
.end annotation


# static fields
.field private static final blacklist TEMP_FAILURE_RETRY_TIMEOUT:I = 0x1


# instance fields
.field private blacklist mTempFailureReceived:Z

.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$gO9nR1CI7OOyKpRbNUdRFwsSTQ0(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;Ljava/io/IOException;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->lambda$handleMessage$0(Ljava/io/IOException;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1020
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    .line 1021
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1018
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->mTempFailureReceived:Z

    .line 1022
    return-void
.end method

.method private synthetic blacklist lambda$handleMessage$0(Ljava/io/IOException;)V
    .registers 4
    .param p1, "error"    # Ljava/io/IOException;

    .line 1033
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSessionCallback(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/net/ipsec/ike/IkeSessionCallback;

    move-result-object v0

    invoke-static {p1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/ipsec/ike/IkeSessionCallback;->onClosedWithException(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1034
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1026
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 1027
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Kept receiving TEMPORARY_FAILURE error. State information is out of sync."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v0, "error":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 1035
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v2, "Fatal error"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1037
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mcloseAllSaRecords(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Z)V

    .line 1039
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->recordMetricsEvent_sessionTerminated(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1040
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->quitSessionNow()V

    .line 1041
    .end local v0    # "error":Ljava/io/IOException;
    goto :goto_4c

    .line 1042
    :cond_32
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message.what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logWtf(Ljava/lang/String;)V

    .line 1044
    :goto_4c
    return-void
.end method

.method public blacklist handleTempFailure()V
    .registers 4

    .line 1052
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v1, "TempFailureHandler: Receive TEMPORARY FAILURE"

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 1054
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->mTempFailureReceived:Z

    if-nez v0, :cond_13

    .line 1055
    sget-wide v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->TEMP_FAILURE_RETRY_TIMEOUT_MS:J

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1056
    iput-boolean v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->mTempFailureReceived:Z

    .line 1058
    :cond_13
    return-void
.end method

.method public blacklist reset()V
    .registers 3

    .line 1062
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v1, "TempFailureHandler: Reset Temporary failure retry timeout"

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 1063
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->removeMessages(I)V

    .line 1064
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->mTempFailureReceived:Z

    .line 1065
    return-void
.end method

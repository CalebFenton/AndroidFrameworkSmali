.class Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;
.super Landroid/service/euicc/IGetAvailableMemoryInBytesCallback$Stub;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

.field final synthetic blacklist val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$DiMqLl0RypjLwn7ufwvhGrVoydc(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;->lambda$onUnsupportedOperationException$1(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$S18AcTbDUKR2XNB4WnztI8lSOiE(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;J)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;->lambda$onSuccess$0(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;J)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 788
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    invoke-direct {p0}, Landroid/service/euicc/IGetAvailableMemoryInBytesCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onSuccess$0(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;J)V
    .registers 5

    .line 792
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetAvailableMemoryInBytesCommandCallback;

    .line 794
    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccConnector$GetAvailableMemoryInBytesCommandCallback;->onGetAvailableMemoryInBytesComplete(J)V

    .line 796
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$monCommandEnd(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onUnsupportedOperationException$1(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Ljava/lang/String;)V
    .registers 4

    .line 804
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetAvailableMemoryInBytesCommandCallback;

    .line 806
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/euicc/EuiccConnector$GetAvailableMemoryInBytesCommandCallback;->onUnsupportedOperationExceptionComplete(Ljava/lang/String;)V

    .line 808
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$monCommandEnd(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist onSuccess(J)V
    .registers 6

    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    new-instance v2, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;J)V

    const/4 p0, 0x6

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist onUnsupportedOperationException(Ljava/lang/String;)V
    .registers 5

    .line 803
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    new-instance v2, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Ljava/lang/String;)V

    const/4 p0, 0x6

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

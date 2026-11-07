.class Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1;
.super Landroid/service/euicc/IGetEidCallback$Stub;
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
.method public static synthetic blacklist $r8$lambda$IaEfhm9sDXxZV8g1Vhx6LT0ho9E(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1;->lambda$onSuccess$0(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Ljava/lang/String;)V

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

    .line 774
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    invoke-direct {p0}, Landroid/service/euicc/IGetEidCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onSuccess$0(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Ljava/lang/String;)V
    .registers 4

    .line 778
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetEidCommandCallback;

    .line 779
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/euicc/EuiccConnector$GetEidCommandCallback;->onGetEidComplete(Ljava/lang/String;)V

    .line 780
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$monCommandEnd(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist onSuccess(Ljava/lang/String;)V
    .registers 5

    .line 777
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    new-instance v2, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Ljava/lang/String;)V

    const/4 p0, 0x6

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

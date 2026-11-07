.class Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15;
.super Landroid/service/euicc/IOtaStatusChangedCallback$Stub;
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
.method public static synthetic blacklist $r8$lambda$Y4BdmiNykYbuYjziYGRIfo-YwYA(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V
    .registers 2

    .line 1019
    check-cast p0, Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;

    .line 1020
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;->onOtaStatusChanged(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bVegHc-jrw5iIoH1pSlByAuVEmY(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15;->lambda$onOtaStatusChanged$1(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V

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

    .line 1013
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    invoke-direct {p0}, Landroid/service/euicc/IOtaStatusChangedCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onOtaStatusChanged$1(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V
    .registers 4

    .line 1024
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;

    .line 1025
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;->onOtaStatusChanged(I)V

    .line 1026
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$monCommandEnd(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist onOtaStatusChanged(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-ne p1, v0, :cond_13

    .line 1018
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    new-instance v2, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void

    .line 1023
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

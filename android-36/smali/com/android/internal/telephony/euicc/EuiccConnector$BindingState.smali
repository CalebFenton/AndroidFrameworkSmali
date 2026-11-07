.class Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;
.super Lcom/android/internal/telephony/State;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindingState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 647
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 2

    .line 650
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$mcreateBinding(Lcom/android/internal/telephony/euicc/EuiccConnector;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 651
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mDisconnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 657
    :cond_10
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 2

    .line 663
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0
.end method

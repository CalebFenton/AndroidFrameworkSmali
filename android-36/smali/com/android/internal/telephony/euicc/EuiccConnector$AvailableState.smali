.class Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;
.super Lcom/android/internal/telephony/State;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvailableState"
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

    .line 625
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 3

    .line 628
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$smisEuiccCommand(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    .line 630
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mBindingState:Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

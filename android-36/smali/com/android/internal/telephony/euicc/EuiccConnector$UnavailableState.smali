.class Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;
.super Lcom/android/internal/telephony/State;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnavailableState"
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

    .line 596
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 4

    .line 599
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    .line 600
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$mfindBestComponent(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fputmSelectedComponent(Lcom/android/internal/telephony/euicc/EuiccConnector;Landroid/content/pm/ServiceInfo;)V

    .line 601
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmSelectedComponent(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 602
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v0, p1, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 603
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$mupdateSubscriptionInfoListForAllAccessibleEuiccs(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    goto :goto_32

    .line 604
    :cond_23
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-virtual {p1}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    if-eq p1, v0, :cond_32

    .line 605
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_32
    :goto_32
    return v1

    .line 608
    :cond_33
    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$smisEuiccCommand(I)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 609
    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$smgetCallback(Landroid/os/Message;)Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    move-result-object p0

    .line 610
    invoke-interface {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;->onEuiccServiceUnavailable()V

    return v1

    :cond_41
    const/4 p0, 0x0

    return p0
.end method

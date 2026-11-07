.class Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;
.super Lcom/android/internal/telephony/State;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectedState"
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

    .line 680
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 4

    .line 683
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const/4 v0, 0x2

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 9

    .line 688
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_17

    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/euicc/IEuiccService;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fputmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;Landroid/service/euicc/IEuiccService;)V

    .line 690
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mConnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return v2

    :cond_17
    const/4 v1, 0x0

    if-ne v0, v2, :cond_95

    .line 693
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$mfindBestComponent(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 694
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-nez v0, :cond_32

    .line 697
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmSelectedComponent(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_30

    :cond_2e
    :goto_2e
    move v3, v2

    goto :goto_5f

    :cond_30
    move v3, v1

    goto :goto_5f

    .line 702
    :cond_32
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmSelectedComponent(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_2e

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v5}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmSelectedComponent(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v6}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmSelectedComponent(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_2e

    :goto_5f
    if-eqz v0, :cond_6a

    .line 709
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 710
    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    move v1, v2

    :cond_6a
    if-eqz v3, :cond_6e

    if-eqz v1, :cond_94

    .line 712
    :cond_6e
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$munbind(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    .line 713
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fputmSelectedComponent(Lcom/android/internal/telephony/euicc/EuiccConnector;Landroid/content/pm/ServiceInfo;)V

    .line 714
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmSelectedComponent(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    if-nez p1, :cond_88

    .line 715
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v0, p1, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_8f

    .line 717
    :cond_88
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v0, p1, Lcom/android/internal/telephony/euicc/EuiccConnector;->mBindingState:Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 719
    :goto_8f
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$mupdateSubscriptionInfoListForAllAccessibleEuiccs(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    :cond_94
    return v2

    :cond_95
    const/4 v3, 0x2

    if-ne v0, v3, :cond_a5

    .line 723
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$munbind(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    .line 724
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return v2

    .line 726
    :cond_a5
    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$smisEuiccCommand(I)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 727
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    return v2

    :cond_b1
    return v1
.end method

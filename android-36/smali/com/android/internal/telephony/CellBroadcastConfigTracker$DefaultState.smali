.class Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;
.super Lcom/android/internal/telephony/State;
.source "CellBroadcastConfigTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellBroadcastConfigTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 5

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    .line 130
    invoke-virtual {v2}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method public blacklist exit()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailable(Landroid/os/Handler;)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForModemReset(Landroid/os/Handler;)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 139
    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 145
    invoke-static {}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultState message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$000(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    .line 148
    :cond_1e
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_32

    const/4 v0, 0x6

    if-eq p1, v0, :cond_6a

    .line 162
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    const-string p1, "unexpected message!"

    # invokes: Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$200(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    return v1

    .line 154
    :cond_32
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    iget v2, v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mSubId:I

    if-eq v2, p1, :cond_69

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubId changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    iget v3, v3, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$100(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    .line 157
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    iput p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mSubId:I

    .line 158
    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$mresetConfig(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)V

    :cond_69
    return v1

    .line 151
    :cond_6a
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$mresetConfig(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)V

    return v1
.end method

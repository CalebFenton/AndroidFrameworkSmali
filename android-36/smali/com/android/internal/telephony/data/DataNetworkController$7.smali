.class Lcom/android/internal/telephony/data/DataNetworkController$7;
.super Landroid/net/NetworkPolicyManager$SubscriptionCallback;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetworkController;->onRegisterAllEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetworkController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1064
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$7;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$SubscriptionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onSubscriptionOverride(III[I)V
    .registers 6

    .line 1074
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$7;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmSubId(Lcom/android/internal/telephony/data/DataNetworkController;)I

    move-result v0

    if-eq v0, p1, :cond_9

    return-void

    .line 1075
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$7;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const/16 p1, 0x17

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1076
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    .registers 4

    .line 1067
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$7;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmSubId(Lcom/android/internal/telephony/data/DataNetworkController;)I

    move-result v0

    if-eq v0, p1, :cond_9

    return-void

    .line 1068
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$7;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const/16 p1, 0x16

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

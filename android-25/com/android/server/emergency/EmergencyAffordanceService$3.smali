.class Lcom/android/server/emergency/EmergencyAffordanceService$3;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/emergency/EmergencyAffordanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/emergency/EmergencyAffordanceService;


# direct methods
.method constructor <init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    #@0
    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$3;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    #@2
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$3;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    #@2
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->-get0(Lcom/android/server/emergency/EmergencyAffordanceService;)Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 110
    return-void
.end method

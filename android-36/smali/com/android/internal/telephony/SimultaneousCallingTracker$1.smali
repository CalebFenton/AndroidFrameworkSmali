.class Lcom/android/internal/telephony/SimultaneousCallingTracker$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SimultaneousCallingTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimultaneousCallingTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SimultaneousCallingTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker$1;->this$0:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker$1;->this$0:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SimultaneousCallingTracker;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 210
    iget-object p0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker$1;->this$0:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SimultaneousCallingTracker;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_17
    return-void
.end method

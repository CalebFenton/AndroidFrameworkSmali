.class Lcom/android/internal/telephony/CarrierPrivilegesTracker$2;
.super Landroid/os/Handler;
.source "CarrierPrivilegesTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CarrierPrivilegesTracker;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 377
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1d

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$2;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 386
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 387
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 388
    invoke-virtual {p0}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result p1

    if-nez p1, :cond_2d

    .line 389
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$2;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-static {p0, p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$fputmCurrentHandler(Lcom/android/internal/telephony/CarrierPrivilegesTracker;Landroid/os/Handler;)V

    return-void

    .line 379
    :cond_1d
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$2;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$mhandleInitializeTracker(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)V

    .line 380
    invoke-virtual {p0}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result p1

    if-nez p1, :cond_2d

    .line 381
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$2;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-static {p0, p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$fputmCurrentHandler(Lcom/android/internal/telephony/CarrierPrivilegesTracker;Landroid/os/Handler;)V

    :cond_2d
    return-void
.end method

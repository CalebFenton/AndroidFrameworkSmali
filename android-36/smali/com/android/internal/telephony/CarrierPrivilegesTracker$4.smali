.class Lcom/android/internal/telephony/CarrierPrivilegesTracker$4;
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

.field final synthetic blacklist val$initializerThread:Landroid/os/HandlerThread;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierPrivilegesTracker;Landroid/os/Looper;Landroid/os/HandlerThread;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$4;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    iput-object p3, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$4;->val$initializerThread:Landroid/os/HandlerThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 418
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_22

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$4;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 428
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 429
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 430
    invoke-virtual {p0}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result p1

    if-nez p1, :cond_37

    .line 431
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$4;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-static {p1, p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$fputmCurrentHandler(Lcom/android/internal/telephony/CarrierPrivilegesTracker;Landroid/os/Handler;)V

    .line 432
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$4;->val$initializerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void

    .line 420
    :cond_22
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$4;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$mhandleInitializeTracker(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)V

    .line 421
    invoke-virtual {p0}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result p1

    if-nez p1, :cond_37

    .line 422
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$4;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-static {p1, p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$fputmCurrentHandler(Lcom/android/internal/telephony/CarrierPrivilegesTracker;Landroid/os/Handler;)V

    .line 423
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$4;->val$initializerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_37
    return-void
.end method

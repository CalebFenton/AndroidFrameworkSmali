.class Landroid/view/ViewRootImpl$6;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->maybeSendAppStartTimes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4628
    iput-object p1, p0, Landroid/view/ViewRootImpl$6;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 4631
    iget-object v0, p0, Landroid/view/ViewRootImpl$6;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmRenderThreadDrawStartTimeNs(Landroid/view/ViewRootImpl;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 4632
    return-void

    .line 4636
    :cond_d
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$6;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmRenderThreadDrawStartTimeNs(Landroid/view/ViewRootImpl;)J

    move-result-wide v1

    iget-object v3, p0, Landroid/view/ViewRootImpl$6;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmFirstFramePresentedTimeNs(Landroid/view/ViewRootImpl;)J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->reportStartInfoViewTimestamps(JJ)V

    .line 4638
    iget-object v0, p0, Landroid/view/ViewRootImpl$6;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmAppStartTimestampsSent(Landroid/view/ViewRootImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2a} :catch_2b

    .line 4642
    goto :goto_2c

    .line 4639
    :catch_2b
    move-exception v0

    .line 4643
    :goto_2c
    return-void
.end method

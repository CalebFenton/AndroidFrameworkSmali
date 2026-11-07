.class Landroid/view/ViewRootImpl$5;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->createSyncIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/view/SurfaceControl$TransactionStats;",
        ">;"
    }
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

    .line 4597
    iput-object p1, p0, Landroid/view/ViewRootImpl$5;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/view/SurfaceControl$TransactionStats;)V
    .registers 7
    .param p1, "transactionStats"    # Landroid/view/SurfaceControl$TransactionStats;

    .line 4600
    invoke-virtual {p1}, Landroid/view/SurfaceControl$TransactionStats;->getPresentFence()Landroid/hardware/SyncFence;

    move-result-object v0

    .line 4601
    .local v0, "presentFence":Landroid/hardware/SyncFence;
    invoke-virtual {v0}, Landroid/hardware/SyncFence;->awaitForever()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4602
    iget-object v1, p0, Landroid/view/ViewRootImpl$5;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmFirstFramePresentedTimeNs(Landroid/view/ViewRootImpl;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_24

    .line 4604
    iget-object v1, p0, Landroid/view/ViewRootImpl$5;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/hardware/SyncFence;->getSignalTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFirstFramePresentedTimeNs(Landroid/view/ViewRootImpl;J)V

    .line 4605
    iget-object v1, p0, Landroid/view/ViewRootImpl$5;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$mmaybeSendAppStartTimes(Landroid/view/ViewRootImpl;)V

    .line 4608
    :cond_24
    invoke-virtual {v0}, Landroid/hardware/SyncFence;->close()V

    .line 4609
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 4597
    check-cast p1, Landroid/view/SurfaceControl$TransactionStats;

    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$5;->accept(Landroid/view/SurfaceControl$TransactionStats;)V

    return-void
.end method

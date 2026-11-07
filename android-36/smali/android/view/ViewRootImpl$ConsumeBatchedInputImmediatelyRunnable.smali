.class final Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConsumeBatchedInputImmediatelyRunnable"
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

    .line 10763
    iput-object p1, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 10766
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    .line 10767
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;->this$0:Landroid/view/ViewRootImpl;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->doConsumeBatchedInput(J)Z

    .line 10768
    return-void
.end method

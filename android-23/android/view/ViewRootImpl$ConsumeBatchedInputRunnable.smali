.class final Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;
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
    name = "ConsumeBatchedInputRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 6045
    iput-object p1, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 6048
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    #@2
    iget-object v1, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    #@4
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@6
    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    #@9
    move-result-wide v2

    #@a
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewRootImpl;->doConsumeBatchedInput(J)V

    #@d
    .line 6047
    return-void
.end method

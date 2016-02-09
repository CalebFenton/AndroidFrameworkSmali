.class Landroid/view/ViewRootImpl$3;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->profileRendering(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 2379
    iput-object p1, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 4
    .param p1, "frameTimeNanos"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2382
    iget-object v0, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    #@3
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@5
    iget-object v1, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    #@7
    iget v1, v1, Landroid/view/ViewRootImpl;->mWidth:I

    #@9
    iget-object v2, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    #@b
    iget v2, v2, Landroid/view/ViewRootImpl;->mHeight:I

    #@d
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@10
    .line 2383
    iget-object v0, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    #@12
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@15
    .line 2384
    iget-object v0, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    #@17
    invoke-static {v0}, Landroid/view/ViewRootImpl;->-get1(Landroid/view/ViewRootImpl;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 2385
    iget-object v0, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    #@1f
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@21
    iget-object v1, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    #@23
    invoke-static {v1}, Landroid/view/ViewRootImpl;->-get0(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@2a
    .line 2381
    :cond_0
    return-void
.end method

.class Landroid/view/ViewRootImpl$8;
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

    .line 5291
    iput-object p1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist doFrame(J)V
    .registers 7
    .param p1, "frameTimeNanos"    # J

    .line 5294
    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmDirty(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget v1, v1, Landroid/view/ViewRootImpl;->mWidth:I

    iget-object v2, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget v2, v2, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 5295
    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 5296
    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmRenderProfilingEnabled(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 5297
    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmRenderProfiler(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 5299
    :cond_2c
    return-void
.end method

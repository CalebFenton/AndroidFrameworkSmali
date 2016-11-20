.class Landroid/animation/AnimationHandler$1;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/AnimationHandler;


# direct methods
.method constructor <init>(Landroid/animation/AnimationHandler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/animation/AnimationHandler;

    #@0
    .prologue
    .line 51
    iput-object p1, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

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
    .line 54
    iget-object v0, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    #@2
    iget-object v1, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    #@4
    invoke-static {v1}, Landroid/animation/AnimationHandler;->-wrap0(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v1}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->getFrameTime()J

    #@b
    move-result-wide v2

    #@c
    invoke-static {v0, v2, v3}, Landroid/animation/AnimationHandler;->-wrap2(Landroid/animation/AnimationHandler;J)V

    #@f
    .line 55
    iget-object v0, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    #@11
    invoke-static {v0}, Landroid/animation/AnimationHandler;->-get0(Landroid/animation/AnimationHandler;)Ljava/util/ArrayList;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v0

    #@19
    if-lez v0, :cond_0

    #@1b
    .line 56
    iget-object v0, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    #@1d
    invoke-static {v0}, Landroid/animation/AnimationHandler;->-wrap0(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    #@20
    move-result-object v0

    #@21
    invoke-interface {v0, p0}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@24
    .line 53
    :cond_0
    return-void
.end method

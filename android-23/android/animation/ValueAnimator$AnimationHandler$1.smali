.class Landroid/animation/ValueAnimator$AnimationHandler$1;
.super Ljava/lang/Object;
.source "ValueAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/ValueAnimator$AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/animation/ValueAnimator$AnimationHandler;


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/animation/ValueAnimator$AnimationHandler;

    #@0
    .prologue
    .line 797
    iput-object p1, p0, Landroid/animation/ValueAnimator$AnimationHandler$1;->this$1:Landroid/animation/ValueAnimator$AnimationHandler;

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
    .line 800
    iget-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler$1;->this$1:Landroid/animation/ValueAnimator$AnimationHandler;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator$AnimationHandler;->-set0(Landroid/animation/ValueAnimator$AnimationHandler;Z)Z

    #@6
    .line 801
    iget-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler$1;->this$1:Landroid/animation/ValueAnimator$AnimationHandler;

    #@8
    iget-object v1, p0, Landroid/animation/ValueAnimator$AnimationHandler$1;->this$1:Landroid/animation/ValueAnimator$AnimationHandler;

    #@a
    invoke-static {v1}, Landroid/animation/ValueAnimator$AnimationHandler;->-get0(Landroid/animation/ValueAnimator$AnimationHandler;)Landroid/view/Choreographer;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    #@11
    move-result-wide v2

    #@12
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator$AnimationHandler;->doAnimationFrame(J)V

    #@15
    .line 799
    return-void
.end method

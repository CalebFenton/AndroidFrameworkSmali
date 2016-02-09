.class Landroid/animation/StateListAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/StateListAnimator;->initAnimatorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/StateListAnimator;


# direct methods
.method constructor <init>(Landroid/animation/StateListAnimator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/animation/StateListAnimator;

    #@0
    .prologue
    .line 63
    iput-object p1, p0, Landroid/animation/StateListAnimator$1;->this$0:Landroid/animation/StateListAnimator;

    #@2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 66
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@4
    .line 67
    iget-object v0, p0, Landroid/animation/StateListAnimator$1;->this$0:Landroid/animation/StateListAnimator;

    #@6
    invoke-static {v0}, Landroid/animation/StateListAnimator;->-get0(Landroid/animation/StateListAnimator;)Landroid/animation/Animator;

    #@9
    move-result-object v0

    #@a
    if-ne v0, p1, :cond_0

    #@c
    .line 68
    iget-object v0, p0, Landroid/animation/StateListAnimator$1;->this$0:Landroid/animation/StateListAnimator;

    #@e
    invoke-static {v0, v1}, Landroid/animation/StateListAnimator;->-set1(Landroid/animation/StateListAnimator;Landroid/animation/Animator;)Landroid/animation/Animator;

    #@11
    .line 65
    :cond_0
    return-void
.end method

.class Landroid/app/ExitTransitionCoordinator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->fadeOutBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;

    #@0
    .prologue
    .line 294
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

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
    .line 297
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/app/ExitTransitionCoordinator;->-set0(Landroid/app/ExitTransitionCoordinator;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    #@6
    .line 298
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@8
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-get1(Landroid/app/ExitTransitionCoordinator;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 299
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@10
    const/4 v1, 0x1

    #@11
    invoke-static {v0, v1}, Landroid/app/ExitTransitionCoordinator;->-set1(Landroid/app/ExitTransitionCoordinator;Z)Z

    #@14
    .line 300
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@16
    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    #@19
    .line 296
    :cond_0
    return-void
.end method

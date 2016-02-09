.class Landroid/app/EnterTransitionCoordinator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EnterTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->startEnterTransition(Landroid/transition/Transition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/EnterTransitionCoordinator;

    #@0
    .prologue
    .line 520
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$8;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 523
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$8;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@2
    invoke-static {v0}, Landroid/app/EnterTransitionCoordinator;->-wrap1(Landroid/app/EnterTransitionCoordinator;)V

    #@5
    .line 522
    return-void
.end method

.class Landroid/app/EnterTransitionCoordinator$6;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "EnterTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;
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
    .line 434
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$6;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@2
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 442
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@3
    .line 443
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$6;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@5
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionComplete()V

    #@8
    .line 441
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$6;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@2
    invoke-static {v0}, Landroid/app/EnterTransitionCoordinator;->-wrap2(Landroid/app/EnterTransitionCoordinator;)V

    #@5
    .line 436
    return-void
.end method

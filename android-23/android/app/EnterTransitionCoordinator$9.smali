.class Landroid/app/EnterTransitionCoordinator$9;
.super Landroid/transition/Transition$TransitionListenerAdapter;
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
    .line 528
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$9;->this$0:Landroid/app/EnterTransitionCoordinator;

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
    .line 531
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@3
    .line 532
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$9;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@5
    invoke-static {v0}, Landroid/app/EnterTransitionCoordinator;->-wrap1(Landroid/app/EnterTransitionCoordinator;)V

    #@8
    .line 530
    return-void
.end method

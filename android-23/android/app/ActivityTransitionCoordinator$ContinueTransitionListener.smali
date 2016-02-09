.class public Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "ActivityTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContinueTransitionListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityTransitionCoordinator;


# direct methods
.method protected constructor <init>(Landroid/app/ActivityTransitionCoordinator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityTransitionCoordinator;

    #@0
    .prologue
    .line 913
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    #@2
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 4
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 916
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-static {v1, v2}, Landroid/app/ActivityTransitionCoordinator;->-set0(Landroid/app/ActivityTransitionCoordinator;Z)Z

    #@7
    .line 917
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    #@9
    invoke-static {v1}, Landroid/app/ActivityTransitionCoordinator;->-get0(Landroid/app/ActivityTransitionCoordinator;)Ljava/lang/Runnable;

    #@c
    move-result-object v0

    #@d
    .line 918
    .local v0, "pending":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    #@f
    invoke-static {v1, v3}, Landroid/app/ActivityTransitionCoordinator;->-set1(Landroid/app/ActivityTransitionCoordinator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    #@12
    .line 919
    if-eqz v0, :cond_0

    #@14
    .line 920
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    #@16
    invoke-virtual {v1, v0}, Landroid/app/ActivityTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    #@19
    .line 915
    :cond_0
    return-void
.end method

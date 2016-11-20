.class Landroid/app/BackStackRecord$2;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/BackStackRecord;->removeTargetedViewsFromTransitions(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/BackStackRecord;

.field final synthetic val$enterTransition:Landroid/transition/Transition;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Landroid/transition/Transition;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$hiddenViews:Ljava/util/ArrayList;

.field final synthetic val$nonExistingView:Landroid/view/View;

.field final synthetic val$overallTransition:Landroid/transition/Transition;

.field final synthetic val$sceneRoot:Landroid/view/ViewGroup;

.field final synthetic val$sharedElementTargets:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Landroid/app/BackStackRecord;Landroid/view/ViewGroup;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/BackStackRecord;
    .param p2, "val$sceneRoot"    # Landroid/view/ViewGroup;
    .param p3, "val$enterTransition"    # Landroid/transition/Transition;
    .param p5, "val$exitTransition"    # Landroid/transition/Transition;
    .param p7, "val$sharedElementTransition"    # Landroid/transition/Transition;
    .param p10, "val$overallTransition"    # Landroid/transition/Transition;
    .param p11, "val$nonExistingView"    # Landroid/view/View;

    #@0
    .prologue
    .line 1465
    .local p4, "val$enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "val$exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p8, "val$sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p9, "val$hiddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Landroid/app/BackStackRecord$2;->this$0:Landroid/app/BackStackRecord;

    #@2
    iput-object p2, p0, Landroid/app/BackStackRecord$2;->val$sceneRoot:Landroid/view/ViewGroup;

    #@4
    iput-object p3, p0, Landroid/app/BackStackRecord$2;->val$enterTransition:Landroid/transition/Transition;

    #@6
    iput-object p4, p0, Landroid/app/BackStackRecord$2;->val$enteringViews:Ljava/util/ArrayList;

    #@8
    iput-object p5, p0, Landroid/app/BackStackRecord$2;->val$exitTransition:Landroid/transition/Transition;

    #@a
    iput-object p6, p0, Landroid/app/BackStackRecord$2;->val$exitingViews:Ljava/util/ArrayList;

    #@c
    iput-object p7, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTransition:Landroid/transition/Transition;

    #@e
    iput-object p8, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@10
    iput-object p9, p0, Landroid/app/BackStackRecord$2;->val$hiddenViews:Ljava/util/ArrayList;

    #@12
    iput-object p10, p0, Landroid/app/BackStackRecord$2;->val$overallTransition:Landroid/transition/Transition;

    #@14
    iput-object p11, p0, Landroid/app/BackStackRecord$2;->val$nonExistingView:Landroid/view/View;

    #@16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@19
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1468
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$sceneRoot:Landroid/view/ViewGroup;

    #@3
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@a
    .line 1469
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$enterTransition:Landroid/transition/Transition;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1470
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$enterTransition:Landroid/transition/Transition;

    #@10
    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$enteringViews:Ljava/util/ArrayList;

    #@12
    invoke-static {v2, v3}, Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@15
    .line 1471
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$enterTransition:Landroid/transition/Transition;

    #@17
    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$exitTransition:Landroid/transition/Transition;

    #@19
    iget-object v4, p0, Landroid/app/BackStackRecord$2;->val$exitingViews:Ljava/util/ArrayList;

    #@1b
    invoke-static {v2, v3, v4, v5}, Landroid/app/BackStackRecord;->-wrap3(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    #@1e
    .line 1472
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$enterTransition:Landroid/transition/Transition;

    #@20
    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTransition:Landroid/transition/Transition;

    #@22
    iget-object v4, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@24
    invoke-static {v2, v3, v4, v5}, Landroid/app/BackStackRecord;->-wrap3(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    #@27
    .line 1475
    :cond_0
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$exitTransition:Landroid/transition/Transition;

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 1476
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$exitTransition:Landroid/transition/Transition;

    #@2d
    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$exitingViews:Ljava/util/ArrayList;

    #@2f
    invoke-static {v2, v3}, Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@32
    .line 1477
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$exitTransition:Landroid/transition/Transition;

    #@34
    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$enterTransition:Landroid/transition/Transition;

    #@36
    iget-object v4, p0, Landroid/app/BackStackRecord$2;->val$enteringViews:Ljava/util/ArrayList;

    #@38
    invoke-static {v2, v3, v4, v5}, Landroid/app/BackStackRecord;->-wrap3(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    #@3b
    .line 1478
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$exitTransition:Landroid/transition/Transition;

    #@3d
    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTransition:Landroid/transition/Transition;

    #@3f
    iget-object v4, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@41
    invoke-static {v2, v3, v4, v5}, Landroid/app/BackStackRecord;->-wrap3(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    #@44
    .line 1481
    :cond_1
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTransition:Landroid/transition/Transition;

    #@46
    if-eqz v2, :cond_2

    #@48
    .line 1482
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTransition:Landroid/transition/Transition;

    #@4a
    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@4c
    invoke-static {v2, v3}, Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@4f
    .line 1484
    :cond_2
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$hiddenViews:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@54
    move-result v1

    #@55
    .line 1485
    .local v1, "numViews":I
    const/4 v0, 0x0

    #@56
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@58
    .line 1486
    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$overallTransition:Landroid/transition/Transition;

    #@5a
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$hiddenViews:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object v2

    #@60
    check-cast v2, Landroid/view/View;

    #@62
    invoke-virtual {v3, v2, v5}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    #@65
    .line 1485
    add-int/lit8 v0, v0, 0x1

    #@67
    goto :goto_0

    #@68
    .line 1488
    :cond_3
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$overallTransition:Landroid/transition/Transition;

    #@6a
    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$nonExistingView:Landroid/view/View;

    #@6c
    invoke-virtual {v2, v3, v5}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    #@6f
    .line 1489
    const/4 v2, 0x1

    #@70
    return v2
.end method

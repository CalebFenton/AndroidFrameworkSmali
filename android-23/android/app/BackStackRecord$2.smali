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
    .line 1393
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
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1396
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$sceneRoot:Landroid/view/ViewGroup;

    #@3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@a
    .line 1397
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$enterTransition:Landroid/transition/Transition;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1398
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$enterTransition:Landroid/transition/Transition;

    #@10
    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$enteringViews:Ljava/util/ArrayList;

    #@12
    invoke-static {v2, v3}, Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@15
    .line 1400
    :cond_0
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$exitTransition:Landroid/transition/Transition;

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 1401
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$exitTransition:Landroid/transition/Transition;

    #@1b
    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$exitingViews:Ljava/util/ArrayList;

    #@1d
    invoke-static {v2, v3}, Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@20
    .line 1403
    :cond_1
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTransition:Landroid/transition/Transition;

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 1404
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTransition:Landroid/transition/Transition;

    #@26
    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@28
    invoke-static {v2, v3}, Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@2b
    .line 1406
    :cond_2
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$hiddenViews:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v1

    #@31
    .line 1407
    .local v1, "numViews":I
    const/4 v0, 0x0

    #@32
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@34
    .line 1408
    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$overallTransition:Landroid/transition/Transition;

    #@36
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$hiddenViews:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Landroid/view/View;

    #@3e
    invoke-virtual {v3, v2, v4}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    #@41
    .line 1407
    add-int/lit8 v0, v0, 0x1

    #@43
    goto :goto_0

    #@44
    .line 1410
    :cond_3
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$overallTransition:Landroid/transition/Transition;

    #@46
    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$nonExistingView:Landroid/view/View;

    #@48
    invoke-virtual {v2, v3, v4}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    #@4b
    .line 1411
    const/4 v2, 0x1

    #@4c
    return v2
.end method

.class Landroid/app/BackStackRecord$1;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/BackStackRecord;->addTransitionTargets(Landroid/app/BackStackRecord$TransitionState;Landroid/transition/Transition;Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;Ljava/util/ArrayList;ZLjava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/BackStackRecord;

.field final synthetic val$container:Landroid/view/View;

.field final synthetic val$enterTransition:Landroid/transition/Transition;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$hiddenFragmentViews:Ljava/util/ArrayList;

.field final synthetic val$inFragment:Landroid/app/Fragment;

.field final synthetic val$isBack:Z

.field final synthetic val$outFragment:Landroid/app/Fragment;

.field final synthetic val$overallTransition:Landroid/transition/Transition;

.field final synthetic val$sharedElementTargets:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Landroid/transition/TransitionSet;

.field final synthetic val$state:Landroid/app/BackStackRecord$TransitionState;


# direct methods
.method constructor <init>(Landroid/app/BackStackRecord;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/TransitionSet;Landroid/app/BackStackRecord$TransitionState;ZLjava/util/ArrayList;Landroid/app/Fragment;Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/BackStackRecord;
    .param p2, "val$container"    # Landroid/view/View;
    .param p3, "val$inFragment"    # Landroid/app/Fragment;
    .param p5, "val$overallTransition"    # Landroid/transition/Transition;
    .param p6, "val$sharedElementTransition"    # Landroid/transition/TransitionSet;
    .param p7, "val$state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p8, "val$isBack"    # Z
    .param p10, "val$outFragment"    # Landroid/app/Fragment;
    .param p11, "val$enterTransition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1091
    .local p4, "val$hiddenFragmentViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p9, "val$sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p12, "val$enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    #@2
    iput-object p2, p0, Landroid/app/BackStackRecord$1;->val$container:Landroid/view/View;

    #@4
    iput-object p3, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    #@6
    iput-object p4, p0, Landroid/app/BackStackRecord$1;->val$hiddenFragmentViews:Ljava/util/ArrayList;

    #@8
    iput-object p5, p0, Landroid/app/BackStackRecord$1;->val$overallTransition:Landroid/transition/Transition;

    #@a
    iput-object p6, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    #@c
    iput-object p7, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@e
    iput-boolean p8, p0, Landroid/app/BackStackRecord$1;->val$isBack:Z

    #@10
    iput-object p9, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@12
    iput-object p10, p0, Landroid/app/BackStackRecord$1;->val$outFragment:Landroid/app/Fragment;

    #@14
    iput-object p11, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    #@16
    iput-object p12, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    #@18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@1b
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    #@0
    .prologue
    .line 1094
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$container:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@9
    .line 1097
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1098
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    #@f
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$hiddenFragmentViews:Ljava/util/ArrayList;

    #@11
    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    #@13
    iget v2, v2, Landroid/app/Fragment;->mContainerId:I

    #@15
    .line 1099
    iget-object v3, p0, Landroid/app/BackStackRecord$1;->val$overallTransition:Landroid/transition/Transition;

    #@17
    .line 1098
    invoke-static {v0, v1, v2, v3}, Landroid/app/BackStackRecord;->-wrap2(Landroid/app/BackStackRecord;Ljava/util/ArrayList;ILandroid/transition/Transition;)V

    #@1a
    .line 1102
    :cond_0
    const/4 v5, 0x0

    #@1b
    .line 1103
    .local v5, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 1104
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    #@21
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@23
    iget-boolean v2, p0, Landroid/app/BackStackRecord$1;->val$isBack:Z

    #@25
    iget-object v3, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    #@27
    invoke-static {v0, v1, v2, v3}, Landroid/app/BackStackRecord;->-wrap0(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;ZLandroid/app/Fragment;)Landroid/util/ArrayMap;

    #@2a
    move-result-object v5

    #@2b
    .line 1105
    .local v5, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    #@2d
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@2f
    invoke-static {v0, v1}, Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@32
    .line 1106
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    #@34
    .line 1107
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@36
    iget-object v1, v1, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@38
    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@3a
    .line 1106
    invoke-static {v0, v1, v5, v2}, Landroid/app/BackStackRecord;->-wrap5(Landroid/transition/TransitionSet;Landroid/view/View;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    #@3d
    .line 1109
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    #@3f
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@41
    invoke-static {v0, v5, v1}, Landroid/app/BackStackRecord;->-wrap3(Landroid/app/BackStackRecord;Landroid/util/ArrayMap;Landroid/app/BackStackRecord$TransitionState;)V

    #@44
    .line 1111
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    #@46
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@48
    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    #@4a
    iget-object v3, p0, Landroid/app/BackStackRecord$1;->val$outFragment:Landroid/app/Fragment;

    #@4c
    iget-boolean v4, p0, Landroid/app/BackStackRecord$1;->val$isBack:Z

    #@4e
    invoke-static/range {v0 .. v5}, Landroid/app/BackStackRecord;->-wrap1(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;)V

    #@51
    .line 1115
    .end local v5    # "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_1
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    #@53
    if-eqz v0, :cond_4

    #@55
    .line 1116
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    #@57
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@59
    iget-object v1, v1, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@5b
    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@5e
    .line 1117
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    #@60
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    #@63
    move-result-object v6

    #@64
    .line 1118
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_3

    #@66
    .line 1119
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    #@68
    invoke-virtual {v6, v0}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    #@6b
    .line 1120
    if-eqz v5, :cond_2

    #@6d
    .line 1121
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    #@6f
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@76
    .line 1123
    :cond_2
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    #@78
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@7a
    iget-object v1, v1, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@7c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7f
    .line 1125
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    #@81
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    #@83
    invoke-static {v0, v1}, Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@86
    .line 1127
    :cond_3
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    #@88
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    #@8a
    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@8c
    invoke-static {v0, v1, v2}, Landroid/app/BackStackRecord;->-wrap4(Landroid/app/BackStackRecord;Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V

    #@8f
    .line 1129
    .end local v6    # "view":Landroid/view/View;
    :cond_4
    const/4 v0, 0x1

    #@90
    return v0
.end method

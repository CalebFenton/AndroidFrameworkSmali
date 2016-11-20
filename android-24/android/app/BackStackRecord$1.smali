.class Landroid/app/BackStackRecord$1;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/BackStackRecord;->addTransitionTargets(Landroid/app/BackStackRecord$TransitionState;Landroid/transition/Transition;Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;Ljava/util/ArrayList;ZLjava/util/ArrayList;)Ljava/util/ArrayList;
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

.field final synthetic val$exitTransition:Landroid/transition/Transition;

.field final synthetic val$hiddenFragmentViews:Ljava/util/ArrayList;

.field final synthetic val$inFragment:Landroid/app/Fragment;

.field final synthetic val$isBack:Z

.field final synthetic val$outFragment:Landroid/app/Fragment;

.field final synthetic val$overallTransition:Landroid/transition/Transition;

.field final synthetic val$sharedElementTargets:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Landroid/transition/TransitionSet;

.field final synthetic val$state:Landroid/app/BackStackRecord$TransitionState;


# direct methods
.method constructor <init>(Landroid/app/BackStackRecord;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/TransitionSet;Landroid/app/BackStackRecord$TransitionState;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/BackStackRecord;
    .param p2, "val$container"    # Landroid/view/View;
    .param p3, "val$inFragment"    # Landroid/app/Fragment;
    .param p5, "val$overallTransition"    # Landroid/transition/Transition;
    .param p6, "val$sharedElementTransition"    # Landroid/transition/TransitionSet;
    .param p7, "val$state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p8, "val$isBack"    # Z
    .param p10, "val$exitTransition"    # Landroid/transition/Transition;
    .param p11, "val$enterTransition"    # Landroid/transition/Transition;
    .param p12, "val$outFragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 1134
    .local p4, "val$hiddenFragmentViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p9, "val$sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p13, "val$enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
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
    iput-object p10, p0, Landroid/app/BackStackRecord$1;->val$exitTransition:Landroid/transition/Transition;

    #@14
    iput-object p11, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    #@16
    iput-object p12, p0, Landroid/app/BackStackRecord$1;->val$outFragment:Landroid/app/Fragment;

    #@18
    iput-object p13, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    #@1a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@1d
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 1137
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$container:Landroid/view/View;

    #@4
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@b
    .line 1140
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1141
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    #@11
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$hiddenFragmentViews:Ljava/util/ArrayList;

    #@13
    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    #@15
    iget v2, v2, Landroid/app/Fragment;->mContainerId:I

    #@17
    .line 1142
    iget-object v3, p0, Landroid/app/BackStackRecord$1;->val$overallTransition:Landroid/transition/Transition;

    #@19
    .line 1141
    invoke-static {v0, v1, v2, v3}, Landroid/app/BackStackRecord;->-wrap2(Landroid/app/BackStackRecord;Ljava/util/ArrayList;ILandroid/transition/Transition;)V

    #@1c
    .line 1145
    :cond_0
    const/4 v5, 0x0

    #@1d
    .line 1146
    .local v5, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 1147
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    #@23
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@25
    iget-boolean v2, p0, Landroid/app/BackStackRecord$1;->val$isBack:Z

    #@27
    iget-object v3, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    #@29
    invoke-static {v0, v1, v2, v3}, Landroid/app/BackStackRecord;->-wrap0(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;ZLandroid/app/Fragment;)Landroid/util/ArrayMap;

    #@2c
    move-result-object v5

    #@2d
    .line 1148
    .local v5, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    #@2f
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@31
    invoke-static {v0, v1}, Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@34
    .line 1150
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@36
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@38
    iget-object v1, v1, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@3a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@3d
    .line 1151
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$exitTransition:Landroid/transition/Transition;

    #@3f
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    #@41
    .line 1152
    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@43
    .line 1151
    invoke-static {v0, v1, v2, v4}, Landroid/app/BackStackRecord;->-wrap3(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    #@46
    .line 1153
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    #@48
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    #@4a
    .line 1154
    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@4c
    .line 1153
    invoke-static {v0, v1, v2, v4}, Landroid/app/BackStackRecord;->-wrap3(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    #@4f
    .line 1156
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    #@51
    .line 1157
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@53
    iget-object v1, v1, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@55
    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@57
    .line 1156
    invoke-static {v0, v1, v5, v2}, Landroid/app/BackStackRecord;->-wrap6(Landroid/transition/TransitionSet;Landroid/view/View;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    #@5a
    .line 1159
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    #@5c
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@5e
    invoke-static {v0, v5, v1}, Landroid/app/BackStackRecord;->-wrap4(Landroid/app/BackStackRecord;Landroid/util/ArrayMap;Landroid/app/BackStackRecord$TransitionState;)V

    #@61
    .line 1161
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    #@63
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@65
    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    #@67
    iget-object v3, p0, Landroid/app/BackStackRecord$1;->val$outFragment:Landroid/app/Fragment;

    #@69
    iget-boolean v4, p0, Landroid/app/BackStackRecord$1;->val$isBack:Z

    #@6b
    invoke-static/range {v0 .. v5}, Landroid/app/BackStackRecord;->-wrap1(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;)V

    #@6e
    .line 1165
    .end local v5    # "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_1
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    #@70
    if-eqz v0, :cond_4

    #@72
    .line 1166
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    #@74
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@76
    iget-object v1, v1, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@78
    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@7b
    .line 1167
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    #@7d
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    #@80
    move-result-object v6

    #@81
    .line 1168
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_3

    #@83
    .line 1169
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    #@85
    invoke-virtual {v6, v0}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    #@88
    .line 1170
    if-eqz v5, :cond_2

    #@8a
    .line 1171
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    #@8c
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@93
    .line 1173
    :cond_2
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    #@95
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@97
    iget-object v1, v1, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9c
    .line 1175
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    #@9e
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    #@a0
    invoke-static {v0, v1}, Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@a3
    .line 1177
    :cond_3
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    #@a5
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    #@a7
    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@a9
    invoke-static {v0, v1, v2}, Landroid/app/BackStackRecord;->-wrap5(Landroid/app/BackStackRecord;Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V

    #@ac
    .line 1180
    .end local v6    # "view":Landroid/view/View;
    :cond_4
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$exitTransition:Landroid/transition/Transition;

    #@ae
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    #@b0
    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    #@b2
    invoke-static {v0, v1, v2, v7}, Landroid/app/BackStackRecord;->-wrap3(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    #@b5
    .line 1181
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$exitTransition:Landroid/transition/Transition;

    #@b7
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    #@b9
    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@bb
    invoke-static {v0, v1, v2, v7}, Landroid/app/BackStackRecord;->-wrap3(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    #@be
    .line 1183
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    #@c0
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    #@c2
    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@c4
    invoke-static {v0, v1, v2, v7}, Landroid/app/BackStackRecord;->-wrap3(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    #@c7
    .line 1185
    return v7
.end method

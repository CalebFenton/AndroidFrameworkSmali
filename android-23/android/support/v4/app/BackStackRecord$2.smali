.class Landroid/support/v4/app/BackStackRecord$2;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/BackStackRecord;->prepareSharedElementTransition(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/BackStackRecord;

.field final synthetic val$inFragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$isBack:Z

.field final synthetic val$outFragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$sceneRoot:Landroid/view/View;

.field final synthetic val$sharedElementTargets:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Ljava/lang/Object;

.field final synthetic val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;


# direct methods
.method constructor <init>(Landroid/support/v4/app/BackStackRecord;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/BackStackRecord;
    .param p2, "val$sceneRoot"    # Landroid/view/View;
    .param p3, "val$sharedElementTransition"    # Ljava/lang/Object;
    .param p5, "val$state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p6, "val$isBack"    # Z
    .param p7, "val$inFragment"    # Landroid/support/v4/app/Fragment;
    .param p8, "val$outFragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 1234
    .local p4, "val$sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord$2;->this$0:Landroid/support/v4/app/BackStackRecord;

    #@2
    iput-object p2, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sceneRoot:Landroid/view/View;

    #@4
    iput-object p3, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTransition:Ljava/lang/Object;

    #@6
    iput-object p4, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@8
    iput-object p5, p0, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    #@a
    iput-boolean p6, p0, Landroid/support/v4/app/BackStackRecord$2;->val$isBack:Z

    #@c
    iput-object p7, p0, Landroid/support/v4/app/BackStackRecord$2;->val$inFragment:Landroid/support/v4/app/Fragment;

    #@e
    iput-object p8, p0, Landroid/support/v4/app/BackStackRecord$2;->val$outFragment:Landroid/support/v4/app/Fragment;

    #@10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@13
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    #@0
    .prologue
    .line 1237
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sceneRoot:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@9
    .line 1239
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTransition:Ljava/lang/Object;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1240
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTransition:Ljava/lang/Object;

    #@f
    .line 1241
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@11
    .line 1240
    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    #@14
    .line 1242
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@19
    .line 1244
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->this$0:Landroid/support/v4/app/BackStackRecord;

    #@1b
    .line 1245
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    #@1d
    iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord$2;->val$isBack:Z

    #@1f
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord$2;->val$inFragment:Landroid/support/v4/app/Fragment;

    #@21
    .line 1244
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/BackStackRecord;->-wrap0(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;

    #@24
    move-result-object v5

    #@25
    .line 1246
    .local v5, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTransition:Ljava/lang/Object;

    #@27
    .line 1247
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    #@29
    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@2b
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    #@2d
    .line 1246
    invoke-static {v0, v1, v5, v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V

    #@30
    .line 1249
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->this$0:Landroid/support/v4/app/BackStackRecord;

    #@32
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    #@34
    invoke-static {v0, v5, v1}, Landroid/support/v4/app/BackStackRecord;->-wrap3(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V

    #@37
    .line 1251
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->this$0:Landroid/support/v4/app/BackStackRecord;

    #@39
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    #@3b
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord$2;->val$inFragment:Landroid/support/v4/app/Fragment;

    #@3d
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord$2;->val$outFragment:Landroid/support/v4/app/Fragment;

    #@3f
    iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord$2;->val$isBack:Z

    #@41
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord;->-wrap1(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V

    #@44
    .line 1255
    .end local v5    # "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_0
    const/4 v0, 0x1

    #@45
    return v0
.end method

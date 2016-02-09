.class Landroid/widget/ActionMenuPresenter$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ActionMenuPresenter;->runItemAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;

.field final synthetic val$menuItemLayoutInfoPre:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;


# direct methods
.method constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;
    .param p2, "val$menuItemLayoutInfoPre"    # Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    #@0
    .prologue
    .line 373
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$4;->this$0:Landroid/widget/ActionMenuPresenter;

    #@2
    iput-object p2, p0, Landroid/widget/ActionMenuPresenter$4;->val$menuItemLayoutInfoPre:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    #@4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 376
    const/4 v0, 0x0

    #@1
    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$4;->this$0:Landroid/widget/ActionMenuPresenter;

    #@3
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get9(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@a
    move-result v1

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 377
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$4;->this$0:Landroid/widget/ActionMenuPresenter;

    #@f
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get9(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;

    #@12
    move-result-object v1

    #@13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    #@19
    iget-object v1, v1, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    #@1b
    if-ne v1, p1, :cond_1

    #@1d
    .line 378
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$4;->this$0:Landroid/widget/ActionMenuPresenter;

    #@1f
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get9(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@26
    .line 382
    :cond_0
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$4;->this$0:Landroid/widget/ActionMenuPresenter;

    #@28
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get3(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Landroid/view/ViewGroup;

    #@2e
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@31
    move-result-object v1

    #@32
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$4;->val$menuItemLayoutInfoPre:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    #@34
    iget-object v2, v2, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    #@36
    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    #@39
    .line 375
    return-void

    #@3a
    .line 376
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_0
.end method

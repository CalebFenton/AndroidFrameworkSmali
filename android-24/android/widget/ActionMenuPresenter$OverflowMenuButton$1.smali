.class Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;
.super Landroid/widget/ForwardingListener;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;


# direct methods
.method constructor <init>(Landroid/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/ActionMenuPresenter$OverflowMenuButton;
    .param p2, "$anonymous0"    # Landroid/view/View;

    #@0
    .prologue
    .line 848
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@2
    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    #@5
    return-void
.end method


# virtual methods
.method public getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 851
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@3
    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    #@5
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-get5(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowPopup;

    #@8
    move-result-object v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 852
    return-object v1

    #@c
    .line 855
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@e
    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    #@10
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-get5(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowPopup;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->getPopup()Lcom/android/internal/view/menu/MenuPopup;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    #@0
    .prologue
    .line 860
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@2
    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    #@4
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    #@7
    .line 861
    const/4 v0, 0x1

    #@8
    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    #@0
    .prologue
    .line 869
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@2
    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    #@4
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-get7(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 870
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 873
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@e
    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    #@10
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    #@13
    .line 874
    const/4 v0, 0x1

    #@14
    return v0
.end method

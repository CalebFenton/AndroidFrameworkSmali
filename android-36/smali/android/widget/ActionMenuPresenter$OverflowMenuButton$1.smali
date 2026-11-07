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
.field final synthetic blacklist this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

.field final synthetic blacklist val$this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Landroid/widget/ActionMenuPresenter;)V
    .registers 4
    .param p1, "this$1"    # Landroid/widget/ActionMenuPresenter$OverflowMenuButton;
    .param p2, "src"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 855
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iput-object p3, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->val$this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public blacklist getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
    .registers 2

    .line 858
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmOverflowPopup(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    if-nez v0, :cond_c

    .line 859
    const/4 v0, 0x0

    return-object v0

    .line 862
    :cond_c
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmOverflowPopup(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->getPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onForwardingStarted()Z
    .registers 2

    .line 867
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 868
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onForwardingStopped()Z
    .registers 2

    .line 876
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmPostedOpenRunnable(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 877
    const/4 v0, 0x0

    return v0

    .line 880
    :cond_c
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 881
    const/4 v0, 0x1

    return v0
.end method

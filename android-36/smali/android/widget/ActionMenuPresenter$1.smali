.class Landroid/widget/ActionMenuPresenter$1;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 103
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$1;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .registers 3

    .line 106
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$1;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$mcomputeMenuItemAnimationInfo(Landroid/widget/ActionMenuPresenter;Z)V

    .line 107
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$1;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$000(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 108
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$1;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-$$Nest$mrunItemAnimations(Landroid/widget/ActionMenuPresenter;)V

    .line 109
    const/4 v0, 0x1

    return v0
.end method

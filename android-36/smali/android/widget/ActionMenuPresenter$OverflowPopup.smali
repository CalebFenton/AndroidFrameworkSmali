.class Landroid/widget/ActionMenuPresenter$OverflowPopup;
.super Lcom/android/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .registers 12
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;
    .param p5, "overflowOnly"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 939
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 940
    const v5, 0x1010444

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    .end local p4    # "anchorView":Landroid/view/View;
    .end local p5    # "overflowOnly":Z
    .local v1, "context":Landroid/content/Context;
    .local v2, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    .local v3, "anchorView":Landroid/view/View;
    .local v4, "overflowOnly":Z
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 942
    const p2, 0x800005

    invoke-virtual {p0, p2}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->setGravity(I)V

    .line 943
    iget-object p1, p1, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 944
    return-void
.end method


# virtual methods
.method protected greylist-max-o onDismiss()V
    .registers 3

    .line 948
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$300(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 949
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$400(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 951
    :cond_11
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fputmOverflowPopup(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V

    .line 953
    invoke-super {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 954
    return-void
.end method

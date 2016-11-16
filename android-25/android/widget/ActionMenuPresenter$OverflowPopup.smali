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
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 6
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;
    .param p5, "overflowOnly"    # Z

    #@0
    .prologue
    .line 931
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/ActionMenuPresenter;

    #@2
    .line 934
    const v5, 0x1010444

    #@5
    move-object v0, p0

    #@6
    move-object v1, p2

    #@7
    move-object v2, p3

    #@8
    move-object v3, p4

    #@9
    move v4, p5

    #@a
    .line 933
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    #@d
    .line 935
    const v0, 0x800005

    #@10
    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->setGravity(I)V

    #@13
    .line 936
    iget-object v0, p1, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    #@15
    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@18
    .line 932
    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 941
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/ActionMenuPresenter;

    #@3
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-get2(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 942
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/ActionMenuPresenter;

    #@b
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-get2(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    #@12
    .line 944
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/ActionMenuPresenter;

    #@14
    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter;->-set1(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)Landroid/widget/ActionMenuPresenter$OverflowPopup;

    #@17
    .line 946
    invoke-super {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    #@1a
    .line 940
    return-void
.end method

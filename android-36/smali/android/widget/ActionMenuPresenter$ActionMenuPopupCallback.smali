.class Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;
.super Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPopupCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1022
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
    .registers 2

    .line 1025
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmActionButtonPopup(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmActionButtonPopup(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->getPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method

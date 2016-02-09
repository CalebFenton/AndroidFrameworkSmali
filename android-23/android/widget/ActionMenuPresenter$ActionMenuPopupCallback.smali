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
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/widget/ActionMenuPresenter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;

    #@0
    .prologue
    .line 1004
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    #@2
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/widget/ActionMenuPresenter;)V

    #@3
    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1007
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    #@3
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get0(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@6
    move-result-object v1

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    #@b
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-get0(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->getPopup()Landroid/widget/ListPopupWindow;

    #@12
    move-result-object v0

    #@13
    :cond_0
    return-object v0
.end method

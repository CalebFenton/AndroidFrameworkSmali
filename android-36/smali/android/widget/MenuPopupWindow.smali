.class public Landroid/widget/MenuPopupWindow;
.super Landroid/widget/ListPopupWindow;
.source "MenuPopupWindow.java"

# interfaces
.implements Landroid/widget/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MenuPopupWindow$MenuDropDownListView;
    }
.end annotation


# instance fields
.field private greylist-max-o mHoverListener:Landroid/widget/MenuItemHoverListener;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method


# virtual methods
.method greylist-max-o createDropDownListView(Landroid/content/Context;Z)Landroid/widget/DropDownListView;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .line 51
    new-instance v0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;

    invoke-direct {v0, p1, p2}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 52
    .local v0, "view":Landroid/widget/MenuPopupWindow$MenuDropDownListView;
    invoke-virtual {v0, p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setHoverListener(Landroid/widget/MenuItemHoverListener;)V

    .line 53
    return-object v0
.end method

.method public greylist-max-o onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 79
    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    if-eqz v0, :cond_9

    .line 80
    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/MenuItemHoverListener;->onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 82
    :cond_9
    return-void
.end method

.method public greylist-max-o onItemHoverExit(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 87
    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    if-eqz v0, :cond_9

    .line 88
    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/MenuItemHoverListener;->onItemHoverExit(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 90
    :cond_9
    return-void
.end method

.method public greylist-max-o setEnterTransition(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .line 57
    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 58
    return-void
.end method

.method public greylist-max-o setExitTransition(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .line 61
    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 62
    return-void
.end method

.method public greylist-max-o setHoverListener(Landroid/widget/MenuItemHoverListener;)V
    .registers 2
    .param p1, "hoverListener"    # Landroid/widget/MenuItemHoverListener;

    .line 65
    iput-object p1, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    .line 66
    return-void
.end method

.method public greylist-max-o setTouchModal(Z)V
    .registers 3
    .param p1, "touchModal"    # Z

    .line 73
    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    .line 74
    return-void
.end method

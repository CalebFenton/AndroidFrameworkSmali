.class public Landroid/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupMenu$OnDismissListener;,
        Landroid/widget/PopupMenu$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

.field private mDragListener:Landroid/view/View$OnTouchListener;

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private final mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method static synthetic -get0(Landroid/widget/PopupMenu;)Lcom/android/internal/view/menu/MenuPopupHelper;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    #@4
    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "gravity"    # I

    #@0
    .prologue
    .line 87
    const v4, 0x1010300

    #@3
    const/4 v5, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move v3, p3

    #@8
    invoke-direct/range {v0 .. v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    #@b
    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "gravity"    # I
    .param p4, "popupStyleAttr"    # I
    .param p5, "popupStyleRes"    # I

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 109
    iput-object p1, p0, Landroid/widget/PopupMenu;->mContext:Landroid/content/Context;

    #@5
    .line 110
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    #@7
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    #@a
    iput-object v0, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@c
    .line 111
    iget-object v0, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@e
    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@11
    .line 112
    iput-object p2, p0, Landroid/widget/PopupMenu;->mAnchor:Landroid/view/View;

    #@13
    .line 113
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper;

    #@15
    iget-object v2, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@17
    const/4 v4, 0x0

    #@18
    move-object v1, p1

    #@19
    move-object v3, p2

    #@1a
    move v5, p4

    #@1b
    move v6, p5

    #@1c
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    #@1f
    iput-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@21
    .line 114
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@23
    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/MenuPopupHelper;->setGravity(I)V

    #@26
    .line 115
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@28
    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@2b
    .line 108
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    #@5
    .line 225
    return-void
.end method

.method public getDragToOpenListener()Landroid/view/View$OnTouchListener;
    .locals 2

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Landroid/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 159
    new-instance v0, Landroid/widget/PopupMenu$1;

    #@6
    iget-object v1, p0, Landroid/widget/PopupMenu;->mAnchor:Landroid/view/View;

    #@8
    invoke-direct {v0, p0, v1}, Landroid/widget/PopupMenu$1;-><init>(Landroid/widget/PopupMenu;Landroid/view/View;)V

    #@b
    iput-object v0, p0, Landroid/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    #@d
    .line 180
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    #@f
    return-object v0
.end method

.method public getGravity()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->getGravity()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    #@0
    .prologue
    .line 201
    new-instance v0, Landroid/view/MenuInflater;

    #@2
    iget-object v1, p0, Landroid/widget/PopupMenu;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    #@7
    return-object v0
.end method

.method public inflate(I)V
    .locals 2
    .param p1, "menuRes"    # I

    #@0
    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@6
    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    #@9
    .line 209
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/PopupMenu;->mDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 262
    iget-object v0, p0, Landroid/widget/PopupMenu;->mDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

    #@6
    invoke-interface {v0, p0}, Landroid/widget/PopupMenu$OnDismissListener;->onDismiss(Landroid/widget/PopupMenu;)V

    #@9
    .line 260
    :cond_0
    return-void
.end method

.method public onCloseSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    #@0
    .prologue
    .line 284
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Landroid/widget/PopupMenu;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 252
    iget-object v0, p0, Landroid/widget/PopupMenu;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    #@6
    invoke-interface {v0, p2}, Landroid/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 254
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 290
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 4
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 270
    if-nez p1, :cond_0

    #@3
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 272
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 273
    return v3

    #@c
    .line 277
    :cond_1
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper;

    #@e
    iget-object v1, p0, Landroid/widget/PopupMenu;->mContext:Landroid/content/Context;

    #@10
    iget-object v2, p0, Landroid/widget/PopupMenu;->mAnchor:Landroid/view/View;

    #@12
    invoke-direct {v0, v1, p1, v2}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    #@15
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    #@18
    .line 278
    return v3
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setGravity(I)V

    #@5
    .line 128
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupMenu$OnDismissListener;

    #@0
    .prologue
    .line 244
    iput-object p1, p0, Landroid/widget/PopupMenu;->mDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

    #@2
    .line 243
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupMenu$OnMenuItemClickListener;

    #@0
    .prologue
    .line 235
    iput-object p1, p0, Landroid/widget/PopupMenu;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    #@2
    .line 234
    return-void
.end method

.method public show()V
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    #@5
    .line 217
    return-void
.end method

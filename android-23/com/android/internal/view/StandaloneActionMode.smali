.class public Lcom/android/internal/view/StandaloneActionMode;
.super Landroid/view/ActionMode;
.source "StandaloneActionMode.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# instance fields
.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mContext:Landroid/content/Context;

.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mFocusable:Z

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/internal/widget/ActionBarContextView;
    .param p3, "callback"    # Landroid/view/ActionMode$Callback;
    .param p4, "isFocusable"    # Z

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Lcom/android/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    #@5
    .line 46
    iput-object p2, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@7
    .line 47
    iput-object p3, p0, Lcom/android/internal/view/StandaloneActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    #@9
    .line 49
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    #@b
    invoke-virtual {p2}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    #@12
    .line 50
    const/4 v1, 0x1

    #@13
    .line 49
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@19
    .line 51
    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1b
    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@1e
    .line 52
    iput-boolean p4, p0, Lcom/android/internal/view/StandaloneActionMode;->mFocusable:Z

    #@20
    .line 44
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    #@0
    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mFinished:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 100
    return-void

    #@5
    .line 102
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mFinished:Z

    #@8
    .line 104
    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@a
    const/16 v1, 0x20

    #@c
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    #@f
    .line 105
    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    #@11
    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    #@14
    .line 98
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 125
    iget-object v1, p0, Lcom/android/internal/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    #@7
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/view/View;

    #@d
    :cond_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    #@0
    .prologue
    .line 130
    new-instance v0, Landroid/view/MenuInflater;

    #@2
    iget-object v1, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    #@b
    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public invalidate()V
    .locals 2

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    #@2
    iget-object v1, p0, Lcom/android/internal/view/StandaloneActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@4
    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    #@7
    .line 93
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->isTitleOptional()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isUiFocusable()Z
    .locals 1

    #@0
    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mFocusable:Z

    #@2
    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    .line 137
    return-void
.end method

.method public onCloseSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    #@0
    .prologue
    .line 149
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    #@2
    invoke-interface {v0, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/internal/view/StandaloneActionMode;->invalidate()V

    #@3
    .line 154
    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    #@8
    .line 152
    return-void
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 141
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 142
    return v2

    #@8
    .line 145
    :cond_0
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper;

    #@a
    iget-object v1, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@c
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    #@13
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    #@16
    .line 146
    return v2
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 88
    iget-object v1, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    #@6
    .line 89
    if-eqz p1, :cond_0

    #@8
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@a
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@d
    :cond_0
    iput-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    #@f
    .line 87
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 72
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/StandaloneActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    #@b
    .line 71
    return-void

    #@c
    .line 72
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    #@5
    .line 61
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 67
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/StandaloneActionMode;->setTitle(Ljava/lang/CharSequence;)V

    #@b
    .line 66
    return-void

    #@c
    .line 67
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    #@5
    .line 56
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    #@0
    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    #@3
    .line 78
    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    #@8
    .line 76
    return-void
.end method

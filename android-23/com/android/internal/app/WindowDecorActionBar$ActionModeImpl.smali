.class public Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
.super Landroid/view/ActionMode;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private final mActionModeContext:Landroid/content/Context;

.field private mCallback:Landroid/view/ActionMode$Callback;

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

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/android/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/WindowDecorActionBar;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/app/WindowDecorActionBar;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    #@5
    .line 965
    iput-object p2, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    #@7
    .line 966
    iput-object p3, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    #@9
    .line 967
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    #@b
    invoke-direct {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    #@e
    .line 968
    const/4 v1, 0x1

    #@f
    .line 967
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@15
    .line 969
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@17
    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@1a
    .line 964
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    #@0
    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@5
    .line 1033
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    #@7
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@9
    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    .line 1035
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@f
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@12
    .line 1033
    return v0

    #@13
    .line 1034
    :catchall_0
    move-exception v0

    #@14
    .line 1035
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@16
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@19
    .line 1034
    throw v0
.end method

.method public finish()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 984
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@4
    iget-object v0, v0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    #@6
    if-eq v0, p0, :cond_0

    #@8
    .line 986
    return-void

    #@9
    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@b
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get7(Lcom/android/internal/app/WindowDecorActionBar;)Z

    #@e
    move-result v0

    #@f
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@11
    invoke-static {v1}, Lcom/android/internal/app/WindowDecorActionBar;->-get8(Lcom/android/internal/app/WindowDecorActionBar;)Z

    #@14
    move-result v1

    #@15
    invoke-static {v0, v1, v2}, Lcom/android/internal/app/WindowDecorActionBar;->-wrap0(ZZZ)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 996
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@1d
    iput-object p0, v0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    #@1f
    .line 997
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@21
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    #@23
    iput-object v1, v0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    #@25
    .line 1001
    :goto_0
    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    #@27
    .line 1002
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@29
    invoke-virtual {v0, v2}, Lcom/android/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    #@2c
    .line 1005
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2e
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->closeMode()V

    #@35
    .line 1006
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@37
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get6(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/DecorToolbar;

    #@3a
    move-result-object v0

    #@3b
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    #@3e
    move-result-object v0

    #@3f
    .line 1007
    const/16 v1, 0x20

    #@41
    .line 1006
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    #@44
    .line 1008
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@46
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get9(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@49
    move-result-object v0

    #@4a
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@4c
    iget-boolean v1, v1, Lcom/android/internal/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    #@4e
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    #@51
    .line 1010
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@53
    iput-object v3, v0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    #@55
    .line 983
    return-void

    #@56
    .line 999
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    #@58
    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    #@5b
    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1088
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

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
    .line 979
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    #@0
    .prologue
    .line 974
    new-instance v0, Landroid/view/MenuInflater;

    #@2
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    #@7
    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public invalidate()V
    .locals 2

    #@0
    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    iget-object v0, v0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    #@4
    if-eq v0, p0, :cond_0

    #@6
    .line 1019
    return-void

    #@7
    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@9
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@c
    .line 1024
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    #@e
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@10
    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 1026
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@15
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@18
    .line 1014
    return-void

    #@19
    .line 1025
    :catchall_0
    move-exception v0

    #@1a
    .line 1026
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1c
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@1f
    .line 1025
    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    #@0
    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->isTitleOptional()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    .line 1099
    return-void
.end method

.method public onCloseSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    #@0
    .prologue
    .line 1115
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1093
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    #@6
    invoke-interface {v0, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 1095
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1120
    return-void

    #@5
    .line 1122
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    #@8
    .line 1123
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@a
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    #@11
    .line 1118
    return-void
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1103
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1104
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 1107
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 1108
    return v2

    #@e
    .line 1111
    :cond_1
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper;

    #@10
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@12
    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    #@19
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    #@1c
    .line 1112
    return v2
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    #@9
    .line 1042
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@b
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@e
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    #@10
    .line 1040
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get3(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    #@11
    .line 1061
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    #@9
    .line 1046
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get3(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    #@11
    .line 1056
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    #@9
    .line 1051
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    #@0
    .prologue
    .line 1077
    invoke-super {p0, p1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    #@3
    .line 1078
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@5
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    #@c
    .line 1076
    return-void
.end method

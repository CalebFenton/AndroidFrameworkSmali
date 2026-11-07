.class public Lcom/android/internal/app/ToolbarActionBar;
.super Landroid/app/ActionBar;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;,
        Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;,
        Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;
    }
.end annotation


# instance fields
.field private blacklist mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field private blacklist mLastMenuVisibility:Z

.field private blacklist mMenuCallbackSet:Z

.field private final blacklist mMenuClicker:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private final blacklist mMenuInvalidator:Ljava/lang/Runnable;

.field private blacklist mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mToolbarMenuPrepared:Z

.field private blacklist mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDecorToolbar(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToolbarMenuPrepared(Lcom/android/internal/app/ToolbarActionBar;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowCallback(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmToolbarMenuPrepared(Lcom/android/internal/app/ToolbarActionBar;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .registers 6
    .param p1, "toolbar"    # Landroid/widget/Toolbar;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "windowCallback"    # Landroid/view/Window$Callback;

    .line 69
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Lcom/android/internal/app/ToolbarActionBar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ToolbarActionBar$1;-><init>(Lcom/android/internal/app/ToolbarActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    .line 61
    new-instance v0, Lcom/android/internal/app/ToolbarActionBar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ToolbarActionBar$2;-><init>(Lcom/android/internal/app/ToolbarActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuClicker:Landroid/widget/Toolbar$OnMenuItemClickListener;

    .line 70
    new-instance v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;Z)V

    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    .line 71
    new-instance v0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;

    invoke-direct {v0, p0, p3}, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;-><init>(Lcom/android/internal/app/ToolbarActionBar;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 72
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuClicker:Landroid/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p2}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method


# virtual methods
.method public whitelist addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .line 492
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    return-void
.end method

.method public whitelist addTab(Landroid/app/ActionBar$Tab;)V
    .registers 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .line 329
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addTab(Landroid/app/ActionBar$Tab;I)V
    .registers 5
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .line 341
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addTab(Landroid/app/ActionBar$Tab;IZ)V
    .registers 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .line 347
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addTab(Landroid/app/ActionBar$Tab;Z)V
    .registers 5
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .line 335
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist closeOptionsMenu()Z
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public blacklist collapseActionView()Z
    .registers 2

    .line 435
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 436
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->collapseActionView()V

    .line 437
    const/4 v0, 0x1

    return v0

    .line 439
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dispatchMenuVisibilityChanged(Z)V
    .registers 5
    .param p1, "isVisible"    # Z

    .line 500
    iget-boolean v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mLastMenuVisibility:Z

    if-ne p1, v0, :cond_5

    .line 501
    return-void

    .line 503
    :cond_5
    iput-boolean p1, p0, Lcom/android/internal/app/ToolbarActionBar;->mLastMenuVisibility:Z

    .line 505
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 506
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1e

    .line 507
    iget-object v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 506
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 509
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method public whitelist getCustomView()Landroid/view/View;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayOptions()I
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public whitelist getElevation()F
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getElevation()F

    move-result v0

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public whitelist getNavigationItemCount()I
    .registers 2

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getNavigationMode()I
    .registers 2

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSelectedNavigationIndex()I
    .registers 2

    .line 214
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getSelectedTab()Landroid/app/ActionBar$Tab;
    .registers 3

    .line 377
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTabAt(I)Landroid/app/ActionBar$Tab;
    .registers 4
    .param p1, "index"    # I

    .line 383
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTabCount()I
    .registers 2

    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getThemedContext()Landroid/content/Context;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWrappedWindowCallback()Landroid/view/Window$Callback;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public whitelist hide()V
    .registers 3

    .line 408
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setVisibility(I)V

    .line 409
    return-void
.end method

.method public blacklist invalidateOptionsMenu()Z
    .registers 3

    .line 428
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 429
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isShowing()Z
    .registers 2

    .line 413
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isTitleTruncated()Z
    .registers 2

    .line 152
    invoke-super {p0}, Landroid/app/ActionBar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public whitelist newTab()Landroid/app/ActionBar$Tab;
    .registers 3

    .line 323
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 187
    invoke-super {p0, p1}, Landroid/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 188
    return-void
.end method

.method public blacklist onDestroy()V
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 489
    return-void
.end method

.method public blacklist onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 475
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 476
    .local v0, "menu":Landroid/view/Menu;
    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 478
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_11

    :cond_10
    const/4 v2, -0x1

    .line 477
    :goto_11
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 479
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1d

    goto :goto_1e

    :cond_1d
    move v4, v1

    :goto_1e
    invoke-interface {v0, v4}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 480
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    return v1

    .line 482
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_26
    return v1
.end method

.method public blacklist onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 467
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 468
    invoke-virtual {p0}, Lcom/android/internal/app/ToolbarActionBar;->openOptionsMenu()Z

    .line 470
    :cond_a
    return v1
.end method

.method public blacklist openOptionsMenu()Z
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method blacklist populateOptionsMenu()V
    .registers 6

    .line 443
    iget-boolean v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuCallbackSet:Z

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 444
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    new-instance v2, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/app/ToolbarActionBar;Lcom/android/internal/app/ToolbarActionBar-IA;)V

    new-instance v3, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Lcom/android/internal/app/ToolbarActionBar;Lcom/android/internal/app/ToolbarActionBar-IA;)V

    invoke-interface {v0, v2, v3}, Lcom/android/internal/widget/DecorToolbar;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuCallbackSet:Z

    .line 447
    :cond_17
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 448
    .local v0, "menu":Landroid/view/Menu;
    instance-of v2, v0, Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_25

    move-object v2, v0

    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    goto :goto_26

    :cond_25
    move-object v2, v1

    .line 449
    .local v2, "mb":Lcom/android/internal/view/menu/MenuBuilder;
    :goto_26
    if-eqz v2, :cond_2b

    .line 450
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 453
    :cond_2b
    :try_start_2b
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 454
    iget-object v3, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 455
    invoke-interface {v3, v4, v1, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 456
    :cond_3f
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_42
    .catchall {:try_start_2b .. :try_end_42} :catchall_48

    .line 459
    :cond_42
    if-eqz v2, :cond_47

    .line 460
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 463
    :cond_47
    return-void

    .line 459
    :catchall_48
    move-exception v1

    if-eqz v2, :cond_4e

    .line 460
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 462
    :cond_4e
    throw v1
.end method

.method public whitelist removeAllTabs()V
    .registers 3

    .line 365
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .line 496
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 497
    return-void
.end method

.method public whitelist removeTab(Landroid/app/ActionBar$Tab;)V
    .registers 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .line 353
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeTabAt(I)V
    .registers 4
    .param p1, "position"    # I

    .line 359
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist selectTab(Landroid/app/ActionBar$Tab;)V
    .registers 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .line 371
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 285
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    return-void
.end method

.method public whitelist setCustomView(I)V
    .registers 5
    .param p1, "resId"    # I

    .line 96
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 97
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ToolbarActionBar;->setCustomView(Landroid/view/View;)V

    .line 98
    return-void
.end method

.method public whitelist setCustomView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 83
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 84
    return-void
.end method

.method public whitelist setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    .line 88
    if-eqz p1, :cond_5

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method public blacklist setDefaultDisplayHomeAsUpEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 173
    return-void
.end method

.method public whitelist setDisplayHomeAsUpEnabled(Z)V
    .registers 4
    .param p1, "showHomeAsUp"    # Z

    .line 270
    const/4 v0, 0x4

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 271
    return-void
.end method

.method public whitelist setDisplayOptions(I)V
    .registers 3
    .param p1, "options"    # I

    .line 249
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 250
    return-void
.end method

.method public whitelist setDisplayOptions(II)V
    .registers 7
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .line 254
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 255
    .local v0, "currentOptions":I
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    and-int v2, p1, p2

    not-int v3, p2

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/android/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 256
    return-void
.end method

.method public whitelist setDisplayShowCustomEnabled(Z)V
    .registers 4
    .param p1, "showCustom"    # Z

    .line 280
    const/16 v0, 0x10

    if-eqz p1, :cond_6

    move v1, v0

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 281
    return-void
.end method

.method public whitelist setDisplayShowHomeEnabled(Z)V
    .registers 4
    .param p1, "showHome"    # Z

    .line 265
    const/4 v0, 0x2

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 266
    return-void
.end method

.method public whitelist setDisplayShowTitleEnabled(Z)V
    .registers 4
    .param p1, "showTitle"    # Z

    .line 275
    const/16 v0, 0x8

    if-eqz p1, :cond_6

    move v1, v0

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 276
    return-void
.end method

.method public whitelist setDisplayUseLogoEnabled(Z)V
    .registers 3
    .param p1, "useLogo"    # Z

    .line 260
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 261
    return-void
.end method

.method public whitelist setElevation(F)V
    .registers 3
    .param p1, "elevation"    # F

    .line 137
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 138
    return-void
.end method

.method public whitelist setHomeActionContentDescription(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 177
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 178
    return-void
.end method

.method public whitelist setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 167
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method

.method public whitelist setHomeAsUpIndicator(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 162
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(I)V

    .line 163
    return-void
.end method

.method public whitelist setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .line 157
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 158
    return-void
.end method

.method public whitelist setHomeButtonEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 133
    return-void
.end method

.method public whitelist setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 102
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(I)V

    .line 103
    return-void
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 108
    return-void
.end method

.method public whitelist setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .line 197
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    new-instance v1, Lcom/android/internal/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/android/internal/app/NavItemSelectedListener;-><init>(Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 198
    return-void
.end method

.method public whitelist setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 112
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(I)V

    .line 113
    return-void
.end method

.method public whitelist setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .line 117
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 118
    return-void
.end method

.method public whitelist setNavigationMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 310
    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    .line 313
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationMode(I)V

    .line 314
    return-void

    .line 311
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tabs not supported in this configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSelectedNavigationItem(I)V
    .registers 4
    .param p1, "position"    # I

    .line 202
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    .line 205
    nop

    .line 210
    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist setShowHideAnimationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 183
    return-void
.end method

.method public whitelist setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 128
    return-void
.end method

.method public whitelist setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 123
    return-void
.end method

.method public whitelist setSubtitle(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 244
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz p1, :cond_f

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 245
    return-void
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 239
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 240
    return-void
.end method

.method public whitelist setTitle(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 229
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz p1, :cond_f

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 224
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method

.method public blacklist setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 234
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 235
    return-void
.end method

.method public whitelist show()V
    .registers 3

    .line 401
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setVisibility(I)V

    .line 402
    return-void
.end method

.method public blacklist startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

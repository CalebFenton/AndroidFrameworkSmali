.class public Lcom/android/internal/app/ToolbarActionBar;
.super Landroid/app/ActionBar;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ToolbarActionBar$1;,
        Lcom/android/internal/app/ToolbarActionBar$2;,
        Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;,
        Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;,
        Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;
    }
.end annotation


# instance fields
.field private mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field private mLastMenuVisibility:Z

.field private mMenuCallbackSet:Z

.field private final mMenuClicker:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private final mMenuInvalidator:Ljava/lang/Runnable;

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbarMenuPrepared:Z

.field private mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ToolbarActionBar;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/ToolbarActionBar;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    #@2
    return p1
.end method

.method public constructor <init>(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2
    .param p1, "toolbar"    # Landroid/widget/Toolbar;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "windowCallback"    # Landroid/view/Window$Callback;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    #@3
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 54
    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    #@a
    .line 57
    new-instance v0, Lcom/android/internal/app/ToolbarActionBar$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/internal/app/ToolbarActionBar$1;-><init>(Lcom/android/internal/app/ToolbarActionBar;)V

    #@f
    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    #@11
    .line 65
    new-instance v0, Lcom/android/internal/app/ToolbarActionBar$2;

    #@13
    invoke-direct {v0, p0}, Lcom/android/internal/app/ToolbarActionBar$2;-><init>(Lcom/android/internal/app/ToolbarActionBar;)V

    #@16
    .line 64
    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuClicker:Landroid/widget/Toolbar$OnMenuItemClickListener;

    #@18
    .line 73
    new-instance v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-direct {v0, p1, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;Z)V

    #@1e
    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@20
    .line 74
    new-instance v0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;

    #@22
    invoke-direct {v0, p0, p3}, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;-><init>(Lcom/android/internal/app/ToolbarActionBar;Landroid/view/Window$Callback;)V

    #@25
    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    #@27
    .line 75
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@29
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    #@2b
    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    #@2e
    .line 76
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuClicker:Landroid/widget/Toolbar$OnMenuItemClickListener;

    #@30
    invoke-virtual {p1, v0}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    #@33
    .line 77
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@35
    invoke-interface {v0, p2}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    #@38
    .line 72
    return-void
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    #@0
    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 492
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    #@0
    .prologue
    .line 332
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 333
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    #@5
    .line 332
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    #@0
    .prologue
    .line 344
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 345
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    #@5
    .line 344
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    #@0
    .prologue
    .line 350
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 351
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    #@5
    .line 350
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    #@0
    .prologue
    .line 338
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 339
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    #@5
    .line 338
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public collapseActionView()Z
    .locals 1

    #@0
    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 434
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@a
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->collapseActionView()V

    #@d
    .line 435
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 437
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    #@0
    .prologue
    .line 501
    iget-boolean v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mLastMenuVisibility:Z

    #@2
    if-ne p1, v2, :cond_0

    #@4
    .line 502
    return-void

    #@5
    .line 504
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/ToolbarActionBar;->mLastMenuVisibility:Z

    #@7
    .line 506
    iget-object v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    .line 507
    .local v0, "count":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@10
    .line 508
    iget-object v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    #@18
    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    #@1b
    .line 507
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 500
    :cond_1
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getElevation()F
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getElevation()F

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    #@0
    .prologue
    .line 222
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    #@0
    .prologue
    .line 308
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 1

    #@0
    .prologue
    .line 217
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 2

    #@0
    .prologue
    .line 380
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 381
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    #@5
    .line 380
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 386
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 387
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    #@5
    .line 386
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getTabCount()I
    .locals 1

    #@0
    .prologue
    .line 392
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWrappedWindowCallback()Landroid/view/Window$Callback;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    #@2
    return-object v0
.end method

.method public hide()V
    .locals 2

    #@0
    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setVisibility(I)V

    #@7
    .line 408
    return-void
.end method

.method public invalidateOptionsMenu()Z
    .locals 2

    #@0
    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    #@8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@b
    .line 427
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@d
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    #@13
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    #@16
    .line 428
    const/4 v0, 0x1

    #@17
    return v0
.end method

.method public isShowing()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 416
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@3
    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getVisibility()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    #@0
    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/ActionBar;->isTitleTruncated()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 2

    #@0
    .prologue
    .line 326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 327
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    #@5
    .line 326
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 189
    return-void
.end method

.method public onDestroy()V
    .locals 2

    #@0
    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    #@8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@b
    .line 487
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 473
    iget-object v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@4
    invoke-interface {v2}, Lcom/android/internal/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    #@7
    move-result-object v1

    #@8
    .line 474
    .local v1, "menu":Landroid/view/Menu;
    if-eqz v1, :cond_0

    #@a
    .line 476
    if-eqz p2, :cond_1

    #@c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@f
    move-result v2

    #@10
    .line 475
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    #@13
    move-result-object v0

    #@14
    .line 477
    .local v0, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    #@17
    move-result v2

    #@18
    if-eq v2, v3, :cond_2

    #@1a
    move v2, v3

    #@1b
    :goto_1
    invoke-interface {v1, v2}, Landroid/view/Menu;->setQwertyMode(Z)V

    #@1e
    .line 478
    invoke-interface {v1, p1, p2, v4}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    #@21
    .line 483
    .end local v0    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_0
    return v3

    #@22
    .line 476
    :cond_1
    const/4 v2, -0x1

    #@23
    goto :goto_0

    #@24
    .restart local v0    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_2
    move v2, v4

    #@25
    .line 477
    goto :goto_1
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 465
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@4
    move-result v0

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 466
    invoke-virtual {p0}, Lcom/android/internal/app/ToolbarActionBar;->openOptionsMenu()Z

    #@a
    .line 468
    :cond_0
    return v1
.end method

.method public openOptionsMenu()Z
    .locals 1

    #@0
    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->showOverflowMenu()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method populateOptionsMenu()V
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 441
    iget-boolean v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuCallbackSet:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 442
    iget-object v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@7
    new-instance v3, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;

    #@9
    invoke-direct {v3, p0, v0}, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/app/ToolbarActionBar;Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;)V

    #@c
    new-instance v4, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;

    #@e
    invoke-direct {v4, p0, v0}, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Lcom/android/internal/app/ToolbarActionBar;Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;)V

    #@11
    invoke-interface {v2, v3, v4}, Lcom/android/internal/widget/DecorToolbar;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@14
    .line 443
    const/4 v2, 0x1

    #@15
    iput-boolean v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuCallbackSet:Z

    #@17
    .line 445
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@19
    invoke-interface {v2}, Lcom/android/internal/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    #@1c
    move-result-object v1

    #@1d
    .line 446
    .local v1, "menu":Landroid/view/Menu;
    instance-of v2, v1, Lcom/android/internal/view/menu/MenuBuilder;

    #@1f
    if-eqz v2, :cond_1

    #@21
    move-object v2, v1

    #@22
    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    #@24
    move-object v0, v2

    #@25
    .line 447
    .local v0, "mb":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_1
    if-eqz v0, :cond_2

    #@27
    .line 448
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@2a
    .line 451
    :cond_2
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    #@2d
    .line 452
    iget-object v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    #@2f
    const/4 v3, 0x0

    #@30
    invoke-interface {v2, v3, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_4

    #@36
    .line 453
    iget-object v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    #@38
    const/4 v3, 0x0

    #@39
    const/4 v4, 0x0

    #@3a
    invoke-interface {v2, v3, v4, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_4

    #@40
    .line 457
    :goto_0
    if-eqz v0, :cond_3

    #@42
    .line 458
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@45
    .line 440
    :cond_3
    return-void

    #@46
    .line 454
    :cond_4
    :try_start_1
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .line 456
    :catchall_0
    move-exception v2

    #@4b
    .line 457
    if-eqz v0, :cond_5

    #@4d
    .line 458
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@50
    .line 456
    :cond_5
    throw v2
.end method

.method public removeAllTabs()V
    .locals 2

    #@0
    .prologue
    .line 368
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 369
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    #@5
    .line 368
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    #@0
    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 496
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    #@0
    .prologue
    .line 356
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 357
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    #@5
    .line 356
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public removeTabAt(I)V
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 362
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 363
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    #@5
    .line 362
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public requestFocus()Z
    .locals 1

    #@0
    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ToolbarActionBar;->requestFocus(Landroid/view/ViewGroup;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    #@0
    .prologue
    .line 374
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 375
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    #@5
    .line 374
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 287
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@9
    move-result-object v0

    #@a
    .line 100
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@c
    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    #@f
    move-result-object v1

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ToolbarActionBar;->setCustomView(Landroid/view/View;)V

    #@18
    .line 98
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, -0x2

    #@1
    .line 86
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    #@6
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    #@9
    .line 85
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    #@0
    .prologue
    .line 91
    if-eqz p1, :cond_0

    #@2
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@7
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    #@a
    .line 90
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 174
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 273
    if-eqz p1, :cond_0

    #@3
    move v0, v1

    #@4
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    #@7
    .line 272
    return-void

    #@8
    .line 273
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    #@0
    .prologue
    .line 252
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    #@4
    .line 251
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    #@0
    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    #@5
    move-result v0

    #@6
    .line 258
    .local v0, "currentOptions":I
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@8
    and-int v2, p1, p2

    #@a
    not-int v3, p2

    #@b
    and-int/2addr v3, v0

    #@c
    or-int/2addr v2, v3

    #@d
    invoke-interface {v1, v2}, Lcom/android/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    #@10
    .line 256
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    .line 283
    if-eqz p1, :cond_0

    #@4
    move v0, v1

    #@5
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    #@8
    .line 282
    return-void

    #@9
    .line 283
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 268
    if-eqz p1, :cond_0

    #@3
    move v0, v1

    #@4
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    #@7
    .line 267
    return-void

    #@8
    .line 268
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    #@0
    .prologue
    const/16 v1, 0x8

    #@2
    .line 278
    if-eqz p1, :cond_0

    #@4
    move v0, v1

    #@5
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    #@8
    .line 277
    return-void

    #@9
    .line 278
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 263
    if-eqz p1, :cond_0

    #@3
    move v0, v1

    #@4
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    #@7
    .line 262
    return-void

    #@8
    .line 263
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    #@9
    .line 139
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    #@5
    .line 179
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    #@5
    .line 169
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(I)V

    #@5
    .line 164
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 159
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 134
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(I)V

    #@5
    .line 104
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 109
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    new-instance v1, Lcom/android/internal/app/NavItemSelectedListener;

    #@4
    invoke-direct {v1, p2}, Lcom/android/internal/app/NavItemSelectedListener;-><init>(Landroid/app/ActionBar$OnNavigationListener;)V

    #@7
    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@a
    .line 199
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(I)V

    #@5
    .line 114
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 119
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 313
    const/4 v0, 0x2

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Tabs not supported in this configuration"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@e
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationMode(I)V

    #@11
    .line 312
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    #@5
    move-result v0

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    .line 211
    const-string/jumbo v1, "setSelectedNavigationIndex not valid for current navigation mode"

    #@e
    .line 210
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@14
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    #@17
    .line 204
    return-void

    #@18
    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 184
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 129
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 124
    return-void
.end method

.method public setSubtitle(I)V
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    if-eqz p1, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@6
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    #@11
    .line 246
    return-void

    #@12
    .line 247
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    #@5
    .line 241
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    if-eqz p1, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@6
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    #@11
    .line 231
    return-void

    #@12
    .line 232
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    #@5
    .line 226
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    #@5
    .line 236
    return-void
.end method

.method public show()V
    .locals 2

    #@0
    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setVisibility(I)V

    #@6
    .line 401
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    .line 195
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

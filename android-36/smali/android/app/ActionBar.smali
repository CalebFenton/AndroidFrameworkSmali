.class public abstract Landroid/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActionBar$LayoutParams;,
        Landroid/app/ActionBar$TabListener;,
        Landroid/app/ActionBar$Tab;,
        Landroid/app/ActionBar$OnMenuVisibilityListener;,
        Landroid/app/ActionBar$OnNavigationListener;,
        Landroid/app/ActionBar$DisplayOptions;,
        Landroid/app/ActionBar$NavigationMode;
    }
.end annotation


# static fields
.field public static final whitelist DISPLAY_HOME_AS_UP:I = 0x4

.field public static final whitelist DISPLAY_SHOW_CUSTOM:I = 0x10

.field public static final whitelist DISPLAY_SHOW_HOME:I = 0x2

.field public static final whitelist DISPLAY_SHOW_TITLE:I = 0x8

.field public static final greylist DISPLAY_TITLE_MULTIPLE_LINES:I = 0x20

.field public static final whitelist DISPLAY_USE_LOGO:I = 0x1

.field public static final whitelist NAVIGATION_MODE_LIST:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NAVIGATION_MODE_STANDARD:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NAVIGATION_MODE_TABS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract whitelist addTab(Landroid/app/ActionBar$Tab;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist addTab(Landroid/app/ActionBar$Tab;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist addTab(Landroid/app/ActionBar$Tab;IZ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist addTab(Landroid/app/ActionBar$Tab;Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist-max-o closeOptionsMenu()Z
    .registers 2

    .line 1080
    const/4 v0, 0x0

    return v0
.end method

.method public greylist collapseActionView()Z
    .registers 2

    .line 1101
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dispatchMenuVisibilityChanged(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 1066
    return-void
.end method

.method public abstract whitelist getCustomView()Landroid/view/View;
.end method

.method public abstract whitelist getDisplayOptions()I
.end method

.method public whitelist getElevation()F
    .registers 2

    .line 1048
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist getHeight()I
.end method

.method public whitelist getHideOffset()I
    .registers 2

    .line 1005
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist getNavigationItemCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getNavigationMode()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getSelectedNavigationIndex()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getSelectedTab()Landroid/app/ActionBar$Tab;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getSubtitle()Ljava/lang/CharSequence;
.end method

.method public abstract whitelist getTabAt(I)Landroid/app/ActionBar$Tab;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getTabCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getThemedContext()Landroid/content/Context;
    .registers 2

    .line 873
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract whitelist hide()V
.end method

.method public greylist-max-o invalidateOptionsMenu()Z
    .registers 2

    .line 1085
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isHideOnContentScrollEnabled()Z
    .registers 2

    .line 992
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist isShowing()Z
.end method

.method public greylist-max-o isTitleTruncated()Z
    .registers 2

    .line 882
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist newTab()Landroid/app/ActionBar$Tab;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist-max-o onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 1062
    return-void
.end method

.method public greylist-max-o onDestroy()V
    .registers 1

    .line 1110
    return-void
.end method

.method public greylist-max-o onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1095
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1090
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o openOptionsMenu()Z
    .registers 2

    .line 1075
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist removeAllTabs()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract whitelist removeTab(Landroid/app/ActionBar$Tab;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist removeTabAt(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist selectTab(Landroid/app/ActionBar$Tab;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract whitelist setCustomView(I)V
.end method

.method public abstract whitelist setCustomView(Landroid/view/View;)V
.end method

.method public abstract whitelist setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
.end method

.method public greylist-max-o setDefaultDisplayHomeAsUpEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1053
    return-void
.end method

.method public abstract whitelist setDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract whitelist setDisplayOptions(I)V
.end method

.method public abstract whitelist setDisplayOptions(II)V
.end method

.method public abstract whitelist setDisplayShowCustomEnabled(Z)V
.end method

.method public abstract whitelist setDisplayShowHomeEnabled(Z)V
.end method

.method public abstract whitelist setDisplayShowTitleEnabled(Z)V
.end method

.method public abstract whitelist setDisplayUseLogoEnabled(Z)V
.end method

.method public whitelist setElevation(F)V
    .registers 4
    .param p1, "elevation"    # F

    .line 1033
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_6

    .line 1037
    return-void

    .line 1034
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting a non-zero elevation is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHideOffset(I)V
    .registers 4
    .param p1, "offset"    # I

    .line 1018
    if-nez p1, :cond_3

    .line 1022
    return-void

    .line 1019
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting an explicit action bar hide offset is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHideOnContentScrollEnabled(Z)V
    .registers 4
    .param p1, "hideOnContentScroll"    # Z

    .line 978
    if-nez p1, :cond_3

    .line 982
    return-void

    .line 979
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Hide on content scroll is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHomeActionContentDescription(I)V
    .registers 2
    .param p1, "resId"    # I

    .line 962
    return-void
.end method

.method public whitelist setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 942
    return-void
.end method

.method public whitelist setHomeAsUpIndicator(I)V
    .registers 2
    .param p1, "resId"    # I

    .line 923
    return-void
.end method

.method public whitelist setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .line 902
    return-void
.end method

.method public whitelist setHomeButtonEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 862
    return-void
.end method

.method public abstract whitelist setIcon(I)V
.end method

.method public abstract whitelist setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract whitelist setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setLogo(I)V
.end method

.method public abstract whitelist setLogo(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract whitelist setNavigationMode(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setSelectedNavigationItem(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist setShowHideAnimationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1058
    return-void
.end method

.method public whitelist setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 554
    return-void
.end method

.method public whitelist setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 544
    return-void
.end method

.method public abstract whitelist setSubtitle(I)V
.end method

.method public abstract whitelist setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract whitelist setTitle(I)V
.end method

.method public abstract whitelist setTitle(Ljava/lang/CharSequence;)V
.end method

.method public greylist-max-o setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1106
    return-void
.end method

.method public abstract whitelist show()V
.end method

.method public greylist-max-o startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 1070
    const/4 v0, 0x0

    return-object v0
.end method

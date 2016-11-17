.class public abstract Landroid/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActionBar$FollowOutOfActionBar;,
        Landroid/app/ActionBar$LayoutParams;,
        Landroid/app/ActionBar$OnMenuVisibilityListener;,
        Landroid/app/ActionBar$OnNavigationListener;,
        Landroid/app/ActionBar$Tab;,
        Landroid/app/ActionBar$TabListener;
    }
.end annotation


# static fields
.field public static final DISPLAY_HOME_AS_UP:I = 0x4

.field public static final DISPLAY_SHOW_CUSTOM:I = 0x10

.field public static final DISPLAY_SHOW_HOME:I = 0x2

.field public static final DISPLAY_SHOW_TITLE:I = 0x8

.field public static final DISPLAY_TITLE_MULTIPLE_LINES:I = 0x20

.field public static final DISPLAY_USE_LOGO:I = 0x1

.field public static final NAVIGATION_MODE_LIST:I = 0x1

.field public static final NAVIGATION_MODE_STANDARD:I = 0x0

.field public static final NAVIGATION_MODE_TABS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;)V
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;I)V
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;IZ)V
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;Z)V
.end method

.method public collapseActionView()Z
    .locals 1

    #@0
    .prologue
    .line 1068
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 1038
    return-void
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getDisplayOptions()I
.end method

.method public getElevation()F
    .locals 1

    #@0
    .prologue
    .line 1022
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract getHeight()I
.end method

.method public getHideOffset()I
    .locals 1

    #@0
    .prologue
    .line 979
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract getNavigationItemCount()I
.end method

.method public abstract getNavigationMode()I
.end method

.method public abstract getSelectedNavigationIndex()I
.end method

.method public abstract getSelectedTab()Landroid/app/ActionBar$Tab;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public abstract getTabAt(I)Landroid/app/ActionBar$Tab;
.end method

.method public abstract getTabCount()I
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 847
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract hide()V
.end method

.method public invalidateOptionsMenu()Z
    .locals 1

    #@0
    .prologue
    .line 1053
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 966
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract isShowing()Z
.end method

.method public isTitleTruncated()Z
    .locals 1

    #@0
    .prologue
    .line 856
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract newTab()Landroid/app/ActionBar$Tab;
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1034
    return-void
.end method

.method public onDestroy()V
    .locals 0

    #@0
    .prologue
    .line 1086
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1063
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1058
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public openOptionsMenu()Z
    .locals 1

    #@0
    .prologue
    .line 1048
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract removeAllTabs()V
.end method

.method public abstract removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract removeTab(Landroid/app/ActionBar$Tab;)V
.end method

.method public abstract removeTabAt(I)V
.end method

.method public requestFocus()Z
    .locals 1

    #@0
    .prologue
    .line 1082
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected requestFocus(Landroid/view/ViewGroup;)Z
    .locals 8
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1099
    if-eqz p1, :cond_0

    #@4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->hasFocus()Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_1

    #@a
    .line 1132
    :cond_0
    return v6

    #@b
    .line 1100
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_6

    #@11
    move-object v3, p1

    #@12
    .line 1101
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@15
    move-result-object v2

    #@16
    .line 1102
    .local v2, "parent":Landroid/view/ViewParent;
    const/4 v0, 0x0

    #@17
    .line 1103
    .local v0, "container":Landroid/view/ViewGroup;
    :goto_1
    if-eqz v2, :cond_2

    #@19
    instance-of v5, v2, Landroid/view/ViewGroup;

    #@1b
    if-eqz v5, :cond_2

    #@1d
    move-object v4, v2

    #@1e
    .line 1104
    check-cast v4, Landroid/view/ViewGroup;

    #@20
    .line 1105
    .local v4, "vgParent":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_7

    #@26
    .line 1106
    move-object v0, v4

    #@27
    .line 1111
    .end local v0    # "container":Landroid/view/ViewGroup;
    .end local v4    # "vgParent":Landroid/view/ViewGroup;
    :cond_2
    if-eqz v0, :cond_3

    #@29
    .line 1112
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    #@2c
    .line 1114
    :cond_3
    if-eqz v3, :cond_4

    #@2e
    .line 1115
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    #@31
    .line 1117
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    #@34
    .line 1118
    invoke-virtual {p1}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    #@37
    move-result-object v1

    #@38
    .line 1119
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_8

    #@3a
    .line 1120
    new-instance v5, Landroid/app/ActionBar$FollowOutOfActionBar;

    #@3c
    invoke-direct {v5, p1, v0, v3}, Landroid/app/ActionBar$FollowOutOfActionBar;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    #@3f
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@42
    .line 1130
    :cond_5
    :goto_2
    return v7

    #@43
    .line 1100
    .end local v1    # "focused":Landroid/view/View;
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_6
    const/4 v3, 0x0

    #@44
    .local v3, "toolbar":Landroid/view/ViewGroup;
    goto :goto_0

    #@45
    .line 1109
    .end local v3    # "toolbar":Landroid/view/ViewGroup;
    .restart local v0    # "container":Landroid/view/ViewGroup;
    .restart local v2    # "parent":Landroid/view/ViewParent;
    .restart local v4    # "vgParent":Landroid/view/ViewGroup;
    :cond_7
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@48
    move-result-object v2

    #@49
    goto :goto_1

    #@4a
    .line 1123
    .end local v0    # "container":Landroid/view/ViewGroup;
    .end local v4    # "vgParent":Landroid/view/ViewGroup;
    .restart local v1    # "focused":Landroid/view/View;
    :cond_8
    if-eqz v0, :cond_9

    #@4c
    .line 1124
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    #@4f
    .line 1126
    :cond_9
    if-eqz v3, :cond_5

    #@51
    .line 1127
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    #@54
    goto :goto_2
.end method

.method public abstract selectTab(Landroid/app/ActionBar$Tab;)V
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setCustomView(I)V
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1026
    return-void
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setDisplayOptions(I)V
.end method

.method public abstract setDisplayOptions(II)V
.end method

.method public abstract setDisplayShowCustomEnabled(Z)V
.end method

.method public abstract setDisplayShowHomeEnabled(Z)V
.end method

.method public abstract setDisplayShowTitleEnabled(Z)V
.end method

.method public abstract setDisplayUseLogoEnabled(Z)V
.end method

.method public setElevation(F)V
    .locals 2
    .param p1, "elevation"    # F

    #@0
    .prologue
    .line 1007
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p1, v0

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1008
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@7
    const-string/jumbo v1, "Setting a non-zero elevation is not supported in this action bar configuration."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1006
    :cond_0
    return-void
.end method

.method public setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 992
    if-eqz p1, :cond_0

    #@2
    .line 993
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@4
    const-string/jumbo v1, "Setting an explicit action bar hide offset is not supported in this action bar configuration."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 991
    :cond_0
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    #@0
    .prologue
    .line 952
    if-eqz p1, :cond_0

    #@2
    .line 953
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@4
    const-string/jumbo v1, "Hide on content scroll is not supported in this action bar configuration."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 951
    :cond_0
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 936
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 916
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 897
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 876
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 836
    return-void
.end method

.method public abstract setIcon(I)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
.end method

.method public abstract setLogo(I)V
.end method

.method public abstract setLogo(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setNavigationMode(I)V
.end method

.method public abstract setSelectedNavigationItem(I)V
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1030
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 542
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 532
    return-void
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1072
    return-void
.end method

.method public abstract show()V
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    .line 1043
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

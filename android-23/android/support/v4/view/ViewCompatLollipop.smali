.class Landroid/support/v4/view/ViewCompatLollipop;
.super Ljava/lang/Object;
.source "ViewCompatLollipop.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    #@0
    .prologue
    .line 105
    instance-of v2, p1, Landroid/support/v4/view/WindowInsetsCompatApi21;

    #@2
    if-eqz v2, :cond_0

    #@4
    move-object v2, p1

    #@5
    .line 107
    check-cast v2, Landroid/support/v4/view/WindowInsetsCompatApi21;

    #@7
    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompatApi21;->unwrap()Landroid/view/WindowInsets;

    #@a
    move-result-object v1

    #@b
    .line 109
    .local v1, "unwrapped":Landroid/view/WindowInsets;
    invoke-virtual {p0, v1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@e
    move-result-object v0

    #@f
    .line 111
    .local v0, "result":Landroid/view/WindowInsets;
    if-eq v0, v1, :cond_0

    #@11
    .line 113
    new-instance p1, Landroid/support/v4/view/WindowInsetsCompatApi21;

    #@13
    .end local p1    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    invoke-direct {p1, v0}, Landroid/support/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    #@16
    .line 116
    .end local v0    # "result":Landroid/view/WindowInsets;
    .end local v1    # "unwrapped":Landroid/view/WindowInsets;
    .restart local p1    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    :cond_0
    return-object p1
.end method

.method public static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    #@0
    .prologue
    .line 152
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    #@0
    .prologue
    .line 156
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    #@0
    .prologue
    .line 147
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    #@0
    .prologue
    .line 141
    invoke-virtual/range {p0 .. p5}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getElevation(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getZ(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->hasNestedScrollingParent()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isImportantForAccessibility(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->isImportantForAccessibility()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    #@0
    .prologue
    .line 90
    instance-of v2, p1, Landroid/support/v4/view/WindowInsetsCompatApi21;

    #@2
    if-eqz v2, :cond_0

    #@4
    move-object v2, p1

    #@5
    .line 92
    check-cast v2, Landroid/support/v4/view/WindowInsetsCompatApi21;

    #@7
    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompatApi21;->unwrap()Landroid/view/WindowInsets;

    #@a
    move-result-object v1

    #@b
    .line 94
    .local v1, "unwrapped":Landroid/view/WindowInsets;
    invoke-virtual {p0, v1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@e
    move-result-object v0

    #@f
    .line 96
    .local v0, "result":Landroid/view/WindowInsets;
    if-eq v0, v1, :cond_0

    #@11
    .line 98
    new-instance p1, Landroid/support/v4/view/WindowInsetsCompatApi21;

    #@13
    .end local p1    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    invoke-direct {p1, v0}, Landroid/support/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    #@16
    .line 101
    .end local v0    # "result":Landroid/view/WindowInsets;
    .end local v1    # "unwrapped":Landroid/view/WindowInsets;
    .restart local p1    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    :cond_0
    return-object p1
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    #@3
    .line 34
    return-void
.end method

.method static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 78
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    #@3
    .line 77
    return-void
.end method

.method static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 86
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@3
    .line 85
    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "elevation"    # F

    #@0
    .prologue
    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    #@3
    .line 38
    return-void
.end method

.method public static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 120
    invoke-virtual {p0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    #@3
    .line 119
    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/support/v4/view/OnApplyWindowInsetsListener;

    #@0
    .prologue
    .line 56
    new-instance v0, Landroid/support/v4/view/ViewCompatLollipop$1;

    #@2
    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewCompatLollipop$1;-><init>(Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    #@5
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    #@8
    .line 55
    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "transitionName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    #@3
    .line 26
    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationZ"    # F

    #@0
    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    #@3
    .line 46
    return-void
.end method

.method public static startNestedScroll(Landroid/view/View;I)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "axes"    # I

    #@0
    .prologue
    .line 128
    invoke-virtual {p0, p1}, Landroid/view/View;->startNestedScroll(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    #@3
    .line 131
    return-void
.end method

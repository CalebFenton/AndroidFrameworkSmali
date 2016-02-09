.class Landroid/support/v4/widget/DrawerLayoutCompatApi21;
.super Ljava/lang/Object;
.source "DrawerLayoutCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;
    }
.end annotation


# static fields
.field private static final THEME_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 33
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    .line 34
    const v1, 0x1010434

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    .line 33
    sput-object v0, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->THEME_ATTRS:[I

    #@b
    .line 31
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V
    .locals 5
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "gravity"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v0, p1

    #@2
    .line 59
    check-cast v0, Landroid/view/WindowInsets;

    #@4
    .line 60
    .local v0, "wi":Landroid/view/WindowInsets;
    const/4 v1, 0x3

    #@5
    if-ne p2, v1, :cond_1

    #@7
    .line 61
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    #@a
    move-result v1

    #@b
    .line 62
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@e
    move-result v2

    #@f
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@12
    move-result v3

    #@13
    .line 61
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    #@16
    move-result-object v0

    #@17
    .line 67
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    #@1a
    move-result v1

    #@1b
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@1d
    .line 68
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@20
    move-result v1

    #@21
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@23
    .line 69
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    #@26
    move-result v1

    #@27
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@29
    .line 70
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@2c
    move-result v1

    #@2d
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@2f
    .line 58
    return-void

    #@30
    .line 63
    :cond_1
    const/4 v1, 0x5

    #@31
    if-ne p2, v1, :cond_0

    #@33
    .line 64
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@36
    move-result v1

    #@37
    .line 65
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    #@3a
    move-result v2

    #@3b
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@3e
    move-result v3

    #@3f
    .line 64
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    #@42
    move-result-object v0

    #@43
    goto :goto_0
.end method

.method public static configureApplyInsets(Landroid/view/View;)V
    .locals 1
    .param p0, "drawerLayout"    # Landroid/view/View;

    #@0
    .prologue
    .line 38
    instance-of v0, p0, Landroid/support/v4/widget/DrawerLayoutImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 39
    new-instance v0, Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;

    #@6
    invoke-direct {v0}, Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;-><init>()V

    #@9
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    #@c
    .line 40
    const/16 v0, 0x500

    #@e
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    #@11
    .line 37
    :cond_0
    return-void
.end method

.method public static dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 5
    .param p0, "child"    # Landroid/view/View;
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "gravity"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v0, p1

    #@2
    .line 46
    check-cast v0, Landroid/view/WindowInsets;

    #@4
    .line 47
    .local v0, "wi":Landroid/view/WindowInsets;
    const/4 v1, 0x3

    #@5
    if-ne p2, v1, :cond_1

    #@7
    .line 48
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    #@a
    move-result v1

    #@b
    .line 49
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@e
    move-result v2

    #@f
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@12
    move-result v3

    #@13
    .line 48
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    #@16
    move-result-object v0

    #@17
    .line 54
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@1a
    .line 45
    return-void

    #@1b
    .line 50
    :cond_1
    const/4 v1, 0x5

    #@1c
    if-ne p2, v1, :cond_0

    #@1e
    .line 51
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@21
    move-result v1

    #@22
    .line 52
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    #@25
    move-result v2

    #@26
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@29
    move-result v3

    #@2a
    .line 51
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    #@2d
    move-result-object v0

    #@2e
    goto :goto_0
.end method

.method public static getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 78
    sget-object v1, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->THEME_ATTRS:[I

    #@2
    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@7
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v1

    #@b
    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@e
    .line 80
    return-object v1

    #@f
    .line 81
    :catchall_0
    move-exception v1

    #@10
    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@13
    .line 81
    throw v1
.end method

.method public static getTopInset(Ljava/lang/Object;)I
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 74
    if-eqz p0, :cond_0

    #@2
    check-cast p0, Landroid/view/WindowInsets;

    #@4
    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    .restart local p0    # "insets":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

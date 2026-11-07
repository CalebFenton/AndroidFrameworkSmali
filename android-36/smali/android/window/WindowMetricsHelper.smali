.class public final Landroid/window/WindowMetricsHelper;
.super Ljava/lang/Object;
.source "WindowMetricsHelper.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBoundsExcludingNavigationBarAndCutout(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;
    .registers 5
    .param p0, "windowMetrics"    # Landroid/view/WindowMetrics;

    .line 44
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 45
    .local v0, "windowInsets":Landroid/view/WindowInsets;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 46
    .local v1, "result":Landroid/graphics/Rect;
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 47
    return-object v1
.end method

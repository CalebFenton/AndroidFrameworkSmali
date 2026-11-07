.class public Lcom/android/internal/widget/NotificationVanishingFrameLayout;
.super Landroid/widget/FrameLayout;
.source "NotificationVanishingFrameLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method private blacklist allChildrenGone()Z
    .registers 6

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;->getChildCount()I

    move-result v0

    .line 62
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1a

    .line 63
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 64
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_17

    .line 65
    const/4 v3, 0x0

    return v3

    .line 62
    .end local v2    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 68
    .end local v1    # "i":I
    :cond_1a
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 52
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;->allChildrenGone()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 53
    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 54
    .local v0, "zeroSpec":I
    invoke-super {p0, v0, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 55
    .end local v0    # "zeroSpec":I
    goto :goto_14

    .line 56
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 58
    :goto_14
    return-void
.end method

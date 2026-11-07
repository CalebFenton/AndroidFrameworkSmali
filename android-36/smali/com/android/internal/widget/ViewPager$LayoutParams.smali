.class public Lcom/android/internal/widget/ViewPager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field blacklist childIndex:I

.field public blacklist gravity:I

.field public blacklist isDecor:Z

.field blacklist needsMeasure:Z

.field blacklist position:I

.field blacklist widthFactor:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 2859
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2840
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 2860
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2863
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2840
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 2865
    invoke-static {}, Lcom/android/internal/widget/ViewPager;->-$$Nest$sfgetLAYOUT_ATTRS()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2866
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    .line 2867
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2868
    return-void
.end method

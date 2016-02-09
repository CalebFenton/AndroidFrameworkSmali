.class public Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field dimPaint:Landroid/graphics/Paint;

.field dimWhenOffset:Z

.field slideable:Z

.field public weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 1395
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    .line 1396
    const v1, 0x1010181

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    .line 1395
    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->ATTRS:[I

    #@b
    .line 1394
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 1419
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@4
    .line 1403
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@7
    .line 1418
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 1423
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@3
    .line 1403
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@6
    .line 1422
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1440
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 1403
    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@6
    .line 1442
    sget-object v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->ATTRS:[I

    #@8
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 1443
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@10
    move-result v1

    #@11
    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@13
    .line 1444
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@16
    .line 1439
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@0
    .prologue
    .line 1435
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@3
    .line 1403
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@6
    .line 1436
    iget v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@8
    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@a
    .line 1434
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1427
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 1403
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@6
    .line 1426
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    #@0
    .prologue
    .line 1431
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@3
    .line 1403
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@6
    .line 1430
    return-void
.end method

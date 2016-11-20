.class public Landroid/widget/FrameLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "FrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final UNSPECIFIED_GRAVITY:I = -0x1


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 447
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@3
    .line 436
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@6
    .line 446
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    #@0
    .prologue
    .line 463
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@3
    .line 436
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@6
    .line 464
    iput p3, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@8
    .line 462
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 439
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 436
    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@6
    .line 441
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout_Layout:[I

    #@8
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 442
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@10
    move-result v1

    #@11
    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@13
    .line 443
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@16
    .line 438
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 468
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 436
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@6
    .line 467
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    #@0
    .prologue
    .line 472
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@3
    .line 436
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@6
    .line 471
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/FrameLayout$LayoutParams;

    #@0
    .prologue
    .line 482
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@3
    .line 436
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@6
    .line 484
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@8
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@a
    .line 481
    return-void
.end method

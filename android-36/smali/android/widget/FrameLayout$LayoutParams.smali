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
.field public static final whitelist UNSPECIFIED_GRAVITY:I = -0x1


# instance fields
.field public whitelist gravity:I


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 460
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 446
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 461
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .line 476
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 446
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 477
    iput p3, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 478
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 452
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 446
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 454
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 455
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 456
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 457
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 481
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 482
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 485
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 446
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 486
    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/widget/FrameLayout$LayoutParams;

    .line 495
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 446
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 497
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 498
    return-void
.end method

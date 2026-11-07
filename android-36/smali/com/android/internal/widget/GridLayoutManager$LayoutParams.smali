.class public Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
.super Lcom/android/internal/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final blacklist INVALID_SPAN_ID:I = -0x1


# instance fields
.field blacklist mSpanIndex:I

.field blacklist mSpanSize:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1020
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 1012
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1013
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1021
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1016
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1012
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1013
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1017
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1028
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1012
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1013
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1029
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1024
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1012
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1013
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1025
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 1032
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Lcom/android/internal/widget/RecyclerView$LayoutParams;)V

    .line 1012
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1013
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1033
    return-void
.end method


# virtual methods
.method public blacklist getSpanIndex()I
    .registers 2

    .line 1050
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return v0
.end method

.method public blacklist getSpanSize()I
    .registers 2

    .line 1060
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return v0
.end method

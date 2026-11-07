.class public abstract Lcom/android/internal/widget/RecyclerView$ItemDecoration;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemDecoration"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getItemOffsets(Landroid/graphics/Rect;ILcom/android/internal/widget/RecyclerView;)V
    .registers 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9838
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9839
    return-void
.end method

.method public blacklist getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .registers 6
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p4, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9862
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;ILcom/android/internal/widget/RecyclerView;)V

    .line 9864
    return-void
.end method

.method public blacklist onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;)V
    .registers 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9808
    return-void
.end method

.method public blacklist onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .registers 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9799
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;)V

    .line 9800
    return-void
.end method

.method public blacklist onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;)V
    .registers 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9829
    return-void
.end method

.method public blacklist onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .registers 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9820
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;)V

    .line 9821
    return-void
.end method

.class public interface abstract Lcom/android/internal/view/ScrollCaptureViewHelper;
.super Ljava/lang/Object;
.source "ScrollCaptureViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final blacklist DOWN:I = 0x1

.field public static final blacklist UP:I = -0x1


# virtual methods
.method public abstract blacklist onAcceptSession(Landroid/view/View;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation
.end method

.method public blacklist onComputeScrollBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/android/internal/view/ScrollCaptureViewHelper;, "Lcom/android/internal/view/ScrollCaptureViewHelper<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 83
    .local v0, "bounds":Landroid/graphics/Rect;
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2e

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 84
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->inset(IIII)V

    .line 87
    :cond_2e
    return-object v0
.end method

.method public abstract blacklist onPrepareForEnd(Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public abstract blacklist onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation
.end method

.method public abstract blacklist onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation
.end method

.class final Lcom/android/internal/widget/ViewGroupFader$DefaultViewBoundsProvider;
.super Ljava/lang/Object;
.source "ViewGroupFader.java"

# interfaces
.implements Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewGroupFader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultViewBoundsProvider"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist provideBounds(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 146
    invoke-virtual {p2, p3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 147
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 148
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 152
    .local v0, "parentGlobalVisibleBounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 153
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 154
    return-void
.end method

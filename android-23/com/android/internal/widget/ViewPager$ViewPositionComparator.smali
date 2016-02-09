.class Lcom/android/internal/widget/ViewPager$ViewPositionComparator;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 4
    .param p1, "lhs"    # Landroid/view/View;
    .param p2, "rhs"    # Landroid/view/View;

    #@0
    .prologue
    .line 2830
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@6
    .line 2831
    .local v0, "llp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@c
    .line 2832
    .local v1, "rlp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v2, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    #@e
    iget-boolean v3, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    #@10
    if-eq v2, v3, :cond_1

    #@12
    .line 2833
    iget-boolean v2, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    #@14
    if-eqz v2, :cond_0

    #@16
    const/4 v2, 0x1

    #@17
    :goto_0
    return v2

    #@18
    :cond_0
    const/4 v2, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 2835
    :cond_1
    iget v2, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->position:I

    #@1c
    iget v3, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->position:I

    #@1e
    sub-int/2addr v2, v3

    #@1f
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2829
    check-cast p1, Landroid/view/View;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/view/View;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

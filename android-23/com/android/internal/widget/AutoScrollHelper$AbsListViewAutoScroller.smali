.class public Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;
.super Lcom/android/internal/widget/AutoScrollHelper;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbsListViewAutoScroller"
.end annotation


# instance fields
.field private final mTarget:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "target"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    .line 875
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    #@3
    .line 877
    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    #@5
    .line 874
    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .locals 1
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 888
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .locals 10
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 893
    iget-object v6, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    #@3
    .line 894
    .local v6, "target":Landroid/widget/AbsListView;
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCount()I

    #@6
    move-result v3

    #@7
    .line 895
    .local v3, "itemCount":I
    if-nez v3, :cond_0

    #@9
    .line 896
    return v9

    #@a
    .line 899
    :cond_0
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getChildCount()I

    #@d
    move-result v0

    #@e
    .line 900
    .local v0, "childCount":I
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    #@11
    move-result v1

    #@12
    .line 901
    .local v1, "firstPosition":I
    add-int v4, v1, v0

    #@14
    .line 903
    .local v4, "lastPosition":I
    if-lez p1, :cond_1

    #@16
    .line 905
    if-lt v4, v3, :cond_3

    #@18
    .line 906
    add-int/lit8 v7, v0, -0x1

    #@1a
    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@1d
    move-result-object v5

    #@1e
    .line 907
    .local v5, "lastView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@21
    move-result v7

    #@22
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getHeight()I

    #@25
    move-result v8

    #@26
    if-gt v7, v8, :cond_3

    #@28
    .line 908
    return v9

    #@29
    .line 911
    .end local v5    # "lastView":Landroid/view/View;
    :cond_1
    if-gez p1, :cond_2

    #@2b
    .line 913
    if-gtz v1, :cond_3

    #@2d
    .line 914
    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@30
    move-result-object v2

    #@31
    .line 915
    .local v2, "firstView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@34
    move-result v7

    #@35
    if-ltz v7, :cond_3

    #@37
    .line 916
    return v9

    #@38
    .line 922
    .end local v2    # "firstView":Landroid/view/View;
    :cond_2
    return v9

    #@39
    .line 925
    :cond_3
    const/4 v7, 0x1

    #@3a
    return v7
.end method

.method public scrollTargetBy(II)V
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    #@0
    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    #@2
    invoke-virtual {v0, p2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    #@5
    .line 881
    return-void
.end method

.class final Landroid/view/FocusFinder$FocusSorter;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FocusSorter"
.end annotation


# instance fields
.field private greylist-max-o mLastPoolRect:I

.field private greylist-max-o mRectByView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRectPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRtlMult:I

.field private greylist-max-o mSidesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTopsComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$SFWWxJIrnv6QBRO9qDmpANwH2lM(Landroid/view/FocusFinder$FocusSorter;Landroid/view/View;Landroid/view/View;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/FocusFinder$FocusSorter;->lambda$new$1(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$pVuVuJcKVYPBDabzZb1jjl4unTY(Landroid/view/FocusFinder$FocusSorter;Landroid/view/View;Landroid/view/View;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/FocusFinder$FocusSorter;->lambda$new$0(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    .line 801
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 803
    new-instance v0, Landroid/view/FocusFinder$FocusSorter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/FocusFinder$FocusSorter$$ExternalSyntheticLambda0;-><init>(Landroid/view/FocusFinder$FocusSorter;)V

    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mTopsComparator:Ljava/util/Comparator;

    .line 818
    new-instance v0, Landroid/view/FocusFinder$FocusSorter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/view/FocusFinder$FocusSorter$$ExternalSyntheticLambda1;-><init>(Landroid/view/FocusFinder$FocusSorter;)V

    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mSidesComparator:Ljava/util/Comparator;

    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/view/View;Landroid/view/View;)I
    .registers 8
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .line 804
    if-ne p1, p2, :cond_4

    .line 805
    const/4 v0, 0x0

    return v0

    .line 808
    :cond_4
    iget-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 809
    .local v0, "firstRect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 811
    .local v1, "secondRect":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 812
    .local v2, "result":I
    if-nez v2, :cond_21

    .line 813
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    return v3

    .line 815
    :cond_21
    return v2
.end method

.method private synthetic blacklist lambda$new$1(Landroid/view/View;Landroid/view/View;)I
    .registers 8
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .line 819
    if-ne p1, p2, :cond_4

    .line 820
    const/4 v0, 0x0

    return v0

    .line 823
    :cond_4
    iget-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 824
    .local v0, "firstRect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 826
    .local v1, "secondRect":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 827
    .local v2, "result":I
    if-nez v2, :cond_21

    .line 828
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    return v3

    .line 830
    :cond_21
    iget v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRtlMult:I

    mul-int/2addr v3, v2

    return v3
.end method


# virtual methods
.method public greylist-max-o sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V
    .registers 13
    .param p1, "views"    # [Landroid/view/View;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "root"    # Landroid/view/ViewGroup;
    .param p5, "isRtl"    # Z

    .line 834
    sub-int v0, p3, p2

    .line 835
    .local v0, "count":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    .line 836
    return-void

    .line 838
    :cond_6
    iget-object v1, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    if-nez v1, :cond_11

    .line 839
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 841
    :cond_11
    const/4 v1, 0x1

    if-eqz p5, :cond_16

    const/4 v2, -0x1

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    iput v2, p0, Landroid/view/FocusFinder$FocusSorter;->mRtlMult:I

    .line 842
    iget-object v2, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "i":I
    :goto_1f
    if-ge v2, v0, :cond_2e

    .line 843
    iget-object v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 845
    .end local v2    # "i":I
    :cond_2e
    move v2, p2

    .restart local v2    # "i":I
    :goto_2f
    if-ge v2, p3, :cond_53

    .line 846
    iget-object v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    iget v4, p0, Landroid/view/FocusFinder$FocusSorter;->mLastPoolRect:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/view/FocusFinder$FocusSorter;->mLastPoolRect:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 847
    .local v3, "next":Landroid/graphics/Rect;
    aget-object v4, p1, v2

    invoke-virtual {v4, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 848
    aget-object v4, p1, v2

    invoke-virtual {p4, v4, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 849
    iget-object v4, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    aget-object v5, p1, v2

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    .end local v3    # "next":Landroid/graphics/Rect;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 853
    .end local v2    # "i":I
    :cond_53
    iget-object v2, p0, Landroid/view/FocusFinder$FocusSorter;->mTopsComparator:Ljava/util/Comparator;

    invoke-static {p1, p2, v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 855
    iget-object v2, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    aget-object v3, p1, p2

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 856
    .local v2, "sweepBottom":I
    move v3, p2

    .line 857
    .local v3, "rowStart":I
    add-int/lit8 v4, p2, 0x1

    .line 858
    .local v4, "sweepIdx":I
    :goto_67
    if-ge v4, p3, :cond_8d

    .line 859
    iget-object v5, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 860
    .local v5, "currRect":Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-lt v6, v2, :cond_84

    .line 862
    sub-int v6, v4, v3

    if-le v6, v1, :cond_80

    .line 863
    iget-object v6, p0, Landroid/view/FocusFinder$FocusSorter;->mSidesComparator:Ljava/util/Comparator;

    invoke-static {p1, v3, v4, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 865
    :cond_80
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 866
    move v3, v4

    goto :goto_8a

    .line 869
    :cond_84
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 858
    .end local v5    # "currRect":Landroid/graphics/Rect;
    :goto_8a
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 873
    :cond_8d
    sub-int v5, v4, v3

    if-le v5, v1, :cond_96

    .line 874
    iget-object v1, p0, Landroid/view/FocusFinder$FocusSorter;->mSidesComparator:Ljava/util/Comparator;

    invoke-static {p1, v3, v4, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 877
    :cond_96
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/FocusFinder$FocusSorter;->mLastPoolRect:I

    .line 878
    iget-object v1, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 879
    return-void
.end method

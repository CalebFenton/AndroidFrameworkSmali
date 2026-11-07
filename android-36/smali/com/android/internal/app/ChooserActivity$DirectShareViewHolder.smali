.class Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DirectShareViewHolder"
.end annotation


# instance fields
.field private blacklist mCellCountPerRow:I

.field private final blacklist mCellVisibility:[Z

.field private blacklist mDirectShareCurrHeight:I

.field private blacklist mDirectShareMaxHeight:I

.field private blacklist mDirectShareMinHeight:I

.field private blacklist mHideDirectShareExpansion:Z

.field private final blacklist mListAdapterSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/app/ChooserListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mParent:Landroid/view/ViewGroup;

.field private final blacklist mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewGroup;Ljava/util/List;IILjava/util/function/Supplier;)V
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p3, "cellCountPerRow"    # I
    .param p4, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;II",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/app/ChooserListAdapter;",
            ">;)V"
        }
    .end annotation

    .line 3851
    .local p2, "rows":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewGroup;>;"
    .local p5, "listAdapterSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/internal/app/ChooserListAdapter;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, p3

    invoke-direct {p0, v0, p1, p4}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;-><init>(ILandroid/view/View;I)V

    .line 3840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    .line 3841
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    .line 3842
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    .line 3843
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    .line 3853
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mParent:Landroid/view/ViewGroup;

    .line 3854
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mRows:Ljava/util/List;

    .line 3855
    iput p3, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellCountPerRow:I

    .line 3856
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, p3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellVisibility:[Z

    .line 3857
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellVisibility:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 3858
    iput-object p5, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mListAdapterSupplier:Ljava/util/function/Supplier;

    .line 3859
    return-void
.end method

.method private blacklist updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V
    .registers 14
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "yDiff"    # I
    .param p3, "newHeight"    # I

    .line 3961
    if-eqz p1, :cond_67

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_67

    if-nez p2, :cond_b

    goto :goto_67

    .line 3966
    :cond_b
    const/4 v0, 0x0

    .line 3967
    .local v0, "foundExpansion":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_62

    .line 3968
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3970
    .local v2, "child":Landroid/view/View;
    if-eqz v0, :cond_1d

    .line 3971
    invoke-virtual {v2, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_5f

    .line 3973
    :cond_1d
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5f

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    if-eqz v3, :cond_5f

    .line 3974
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3976
    .local v3, "widthSpec":I
    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3978
    .local v4, "heightSpec":I
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 3979
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3980
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    .line 3981
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 3980
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 3983
    const/4 v0, 0x1

    .line 3967
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "widthSpec":I
    .end local v4    # "heightSpec":I
    :cond_5f
    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 3988
    .end local v1    # "i":I
    :cond_62
    if-eqz v0, :cond_66

    .line 3989
    iput p3, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    .line 3991
    :cond_66
    return-void

    .line 3962
    .end local v0    # "foundExpansion":Z
    :cond_67
    :goto_67
    return-void
.end method


# virtual methods
.method public blacklist addView(ILandroid/view/View;)Landroid/view/ViewGroup;
    .registers 5
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 3862
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRowByIndex(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 3863
    .local v0, "row":Landroid/view/ViewGroup;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3864
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCells:[Landroid/view/View;

    aput-object p2, v1, p1

    .line 3866
    return-object v0
.end method

.method blacklist collapse(Lcom/android/internal/widget/RecyclerView;)V
    .registers 4
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;

    .line 3956
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V

    .line 3958
    return-void
.end method

.method blacklist expand(Lcom/android/internal/widget/RecyclerView;)V
    .registers 4
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;

    .line 3951
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V

    .line 3953
    return-void
.end method

.method public blacklist getMeasuredRowHeight()I
    .registers 2

    .line 3893
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    return v0
.end method

.method public blacklist getMinRowHeight()I
    .registers 2

    .line 3897
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    return v0
.end method

.method public blacklist getRow(I)Landroid/view/ViewGroup;
    .registers 3
    .param p1, "rowNumber"    # I

    .line 3878
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getRowByIndex(I)Landroid/view/ViewGroup;
    .registers 4
    .param p1, "index"    # I

    .line 3874
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mRows:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellCountPerRow:I

    div-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    .line 3870
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist handleScroll(Lcom/android/internal/widget/RecyclerView;III)V
    .registers 10
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "y"    # I
    .param p3, "oldy"    # I
    .param p4, "maxTargetsPerRow"    # I

    .line 3924
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 3925
    .local v0, "notExpanded":Z
    :goto_a
    if-eqz v0, :cond_22

    .line 3926
    iget-boolean v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    if-eqz v1, :cond_11

    .line 3927
    return-void

    .line 3932
    :cond_11
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mListAdapterSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserListAdapter;

    .line 3933
    .local v1, "adapter":Lcom/android/internal/app/ChooserListAdapter;
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v3

    .line 3934
    .local v3, "validTargets":I
    if-gt v3, p4, :cond_22

    .line 3935
    iput-boolean v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    .line 3936
    return-void

    .line 3940
    .end local v1    # "adapter":Lcom/android/internal/app/ChooserListAdapter;
    .end local v3    # "validTargets":I
    :cond_22
    sub-int v1, p3, p2

    int-to-float v1, v1

    const v2, 0x3f47ae14    # 0.78f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 3942
    .local v1, "yDiff":I
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    .line 3943
    .local v2, "prevHeight":I
    add-int v3, v2, v1

    iget v4, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3944
    .local v3, "newHeight":I
    iget v4, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3945
    sub-int v1, v3, v2

    .line 3947
    invoke-direct {p0, p1, v1, v3}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V

    .line 3948
    return-void
.end method

.method public blacklist measure()V
    .registers 4

    .line 3882
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3883
    .local v1, "spec":I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 3884
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 3886
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    .line 3887
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    if-lez v0, :cond_25

    .line 3888
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    goto :goto_27

    :cond_25
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    :goto_27
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    .line 3889
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    .line 3890
    return-void
.end method

.method public blacklist setViewVisibility(II)V
    .registers 8
    .param p1, "i"    # I
    .param p2, "visibility"    # I

    .line 3901
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 3902
    .local v0, "v":Landroid/view/View;
    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_14

    .line 3903
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellVisibility:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 3904
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3905
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_46

    .line 3906
    :cond_14
    const/4 v2, 0x4

    if-ne p2, v2, :cond_46

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellVisibility:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_46

    .line 3907
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellVisibility:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 3909
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_48

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 3910
    .local v2, "fadeAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3911
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3912
    new-instance v1, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder$1;-><init>(Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3917
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 3919
    .end local v2    # "fadeAnim":Landroid/animation/ValueAnimator;
    :cond_46
    :goto_46
    return-void

    nop

    :array_48
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

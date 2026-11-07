.class public abstract Landroid/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterView$OnItemClickListener;,
        Landroid/widget/AdapterView$OnItemLongClickListener;,
        Landroid/widget/AdapterView$OnItemSelectedListener;,
        Landroid/widget/AdapterView$SelectionNotifier;,
        Landroid/widget/AdapterView$AdapterDataSetObserver;,
        Landroid/widget/AdapterView$AdapterContextMenuInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final whitelist INVALID_POSITION:I = -0x1

.field public static final whitelist INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final whitelist ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final whitelist ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final greylist-max-o SYNC_FIRST_POSITION:I = 0x1

.field static final greylist-max-o SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final greylist-max-o SYNC_SELECTED_POSITION:I


# instance fields
.field greylist-max-o mBlockLayoutRequests:Z

.field greylist-max-p mDataChanged:Z

.field private greylist-max-o mDesiredFocusableInTouchModeState:Z

.field private greylist-max-o mDesiredFocusableState:I

.field private greylist-max-o mEmptyView:Landroid/view/View;

.field greylist mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field greylist-max-o mInLayout:Z

.field greylist-max-o mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private greylist-max-o mLayoutHeight:I

.field greylist mNeedSync:Z

.field greylist mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field greylist mNextSelectedRowId:J

.field greylist-max-o mOldItemCount:I

.field greylist mOldSelectedPosition:I

.field greylist-max-o mOldSelectedRowId:J

.field greylist mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field greylist-max-o mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field greylist mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private greylist-max-o mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field greylist mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field greylist-max-o mSelectedRowId:J

.field private greylist-max-o mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field greylist-max-o mSpecificTop:I

.field greylist-max-o mSyncHeight:J

.field greylist-max-o mSyncMode:I

.field greylist mSyncPosition:I

.field greylist-max-o mSyncRowId:J


# direct methods
.method public static synthetic blacklist $r8$lambda$DRYzBtyMvTFi6lHvT9cMpR4jgZc(Landroid/widget/AdapterView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AdapterView;->lambda$performAccessibilityActionsOnSelected$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingSelectionNotifier(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchOnItemSelected(Landroid/widget/AdapterView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AdapterView;->dispatchOnItemSelected()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 248
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 249
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 252
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 253
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 256
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 257
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 260
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 91
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 101
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 134
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 163
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 170
    iput-wide v1, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 176
    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 183
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 215
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 221
    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 232
    const/16 v1, 0x10

    iput v1, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    .line 245
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 263
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_2b

    .line 264
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setImportantForAccessibility(I)V

    .line 267
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFocusable()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    .line 268
    iget v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    if-ne v2, v1, :cond_38

    .line 270
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(I)V

    .line 272
    :cond_38
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AdapterView;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic blacklist access$100(Landroid/widget/AdapterView;)Landroid/os/Parcelable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AdapterView;

    .line 55
    invoke-virtual {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o dispatchOnItemSelected()V
    .registers 1

    .line 946
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-direct {p0}, Landroid/widget/AdapterView;->fireOnSelected()V

    .line 947
    invoke-direct {p0}, Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    .line 948
    return-void
.end method

.method private greylist-max-o fireOnSelected()V
    .registers 8

    .line 951
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_5

    .line 952
    return-void

    .line 954
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    .line 955
    .local v4, "selection":I
    if-ltz v4, :cond_1e

    .line 956
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    .line 957
    .local v3, "v":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 958
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    .line 957
    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 959
    .end local v3    # "v":Landroid/view/View;
    goto :goto_24

    .line 960
    :cond_1e
    move-object v2, p0

    iget-object v0, v2, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 962
    :goto_24
    return-void
.end method

.method private greylist-max-o isScrollableForAccessibility()Z
    .registers 6

    .line 1034
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1035
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 1036
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    .line 1037
    .local v2, "itemCount":I
    if-lez v2, :cond_1d

    .line 1038
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_1b

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_1d

    :cond_1b
    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    nop

    .line 1037
    :goto_1e
    return v1

    .line 1040
    .end local v2    # "itemCount":I
    :cond_1f
    return v1
.end method

.method private synthetic blacklist lambda$performAccessibilityActionsOnSelected$0()V
    .registers 2

    .line 972
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private greylist-max-o performAccessibilityActionsOnSelected()V
    .registers 3

    .line 965
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 966
    return-void

    .line 968
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 969
    .local v0, "position":I
    if-ltz v0, :cond_1b

    .line 972
    new-instance v1, Landroid/widget/AdapterView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/AdapterView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/AdapterView;)V

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 974
    :cond_1b
    return-void
.end method

.method private greylist-max-o updateEmptyStatus(Z)V
    .registers 9
    .param p1, "empty"    # Z

    .line 777
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 778
    const/4 p1, 0x0

    .line 781
    :cond_7
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_31

    .line 782
    iget-object v2, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_19

    .line 783
    iget-object v2, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 784
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_1c

    .line 787
    :cond_19
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 793
    :goto_1c
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_2f

    .line 794
    iget v3, p0, Landroid/widget/AdapterView;->mLeft:I

    iget v4, p0, Landroid/widget/AdapterView;->mTop:I

    iget v5, p0, Landroid/widget/AdapterView;->mRight:I

    iget v6, p0, Landroid/widget/AdapterView;->mBottom:I

    const/4 v2, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    move-object v2, v1

    goto :goto_3e

    .line 793
    :cond_2f
    move-object v2, p0

    goto :goto_3e

    .line 797
    :cond_31
    move-object v2, p0

    iget-object v3, v2, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_3b

    iget-object v3, v2, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 798
    :cond_3b
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 800
    :goto_3e
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 489
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 502
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 530
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 515
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist canAnimate()Z
    .registers 2

    .line 1045
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method greylist-max-o checkFocus()V
    .registers 7

    .line 758
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 759
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_f

    goto :goto_11

    :cond_f
    move v3, v2

    goto :goto_12

    :cond_11
    :goto_11
    move v3, v1

    .line 760
    .local v3, "empty":Z
    :goto_12
    if-eqz v3, :cond_1d

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_1d

    :cond_1b
    move v4, v2

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v4, v1

    .line 764
    .local v4, "focusable":Z
    :goto_1e
    if-eqz v4, :cond_26

    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v5, :cond_26

    move v5, v1

    goto :goto_27

    :cond_26
    move v5, v2

    :goto_27
    invoke-super {p0, v5}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 765
    if-eqz v4, :cond_2f

    iget v5, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    goto :goto_30

    :cond_2f
    move v5, v2

    :goto_30
    invoke-super {p0, v5}, Landroid/view/ViewGroup;->setFocusable(I)V

    .line 766
    iget-object v5, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v5, :cond_44

    .line 767
    if-eqz v0, :cond_41

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_40

    goto :goto_41

    :cond_40
    move v1, v2

    :cond_41
    :goto_41
    invoke-direct {p0, v1}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 769
    :cond_44
    return-void
.end method

.method greylist-max-o checkSelectionChanged()V
    .registers 5

    .line 1118
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_e

    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 1119
    :cond_e
    invoke-virtual {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    .line 1120
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 1121
    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 1126
    :cond_19
    iget-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-eqz v0, :cond_22

    .line 1127
    iget-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {v0}, Landroid/widget/AdapterView$SelectionNotifier;->run()V

    .line 1129
    :cond_22
    return-void
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 979
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 980
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    .line 981
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 982
    const/4 v1, 0x1

    return v1

    .line 984
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method protected whitelist dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 837
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 838
    return-void
.end method

.method protected whitelist dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 829
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 830
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 1295
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1297
    const-string/jumbo v0, "scrolling:firstPosition"

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1298
    const-string v0, "list:nextSelectedPosition"

    iget v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1299
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    long-to-float v0, v0

    const-string v1, "list:nextSelectedRowId"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 1300
    const-string v0, "list:selectedPosition"

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1301
    const-string v0, "list:itemCount"

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1302
    return-void
.end method

.method greylist-max-o findSyncPosition()I
    .registers 18

    .line 1140
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1142
    .local v1, "count":I
    const/4 v2, -0x1

    if-nez v1, :cond_8

    .line 1143
    return v2

    .line 1146
    :cond_8
    iget-wide v3, v0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1147
    .local v3, "idToMatch":J
    iget v5, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1150
    .local v5, "seed":I
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v3, v6

    if-nez v6, :cond_13

    .line 1151
    return v2

    .line 1155
    :cond_13
    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1156
    add-int/lit8 v7, v1, -0x1

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x64

    add-long/2addr v7, v9

    .line 1163
    .local v7, "endTime":J
    move v9, v5

    .line 1166
    .local v9, "first":I
    move v10, v5

    .line 1169
    .local v10, "last":I
    const/4 v11, 0x0

    .line 1179
    .local v11, "next":Z
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v12

    .line 1180
    .local v12, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v12, :cond_2f

    .line 1181
    return v2

    .line 1184
    :cond_2f
    :goto_2f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    cmp-long v13, v13, v7

    if-gtz v13, :cond_6b

    .line 1185
    invoke-interface {v12, v5}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v13

    .line 1186
    .local v13, "rowId":J
    cmp-long v15, v13, v3

    if-nez v15, :cond_40

    .line 1188
    return v5

    .line 1191
    :cond_40
    add-int/lit8 v15, v1, -0x1

    const/16 v16, 0x1

    if-ne v10, v15, :cond_49

    move/from16 v15, v16

    goto :goto_4a

    :cond_49
    move v15, v6

    .line 1192
    .local v15, "hitLast":Z
    :goto_4a
    if-nez v9, :cond_4d

    goto :goto_4f

    :cond_4d
    move/from16 v16, v6

    .line 1194
    .local v16, "hitFirst":Z
    :goto_4f
    if-eqz v15, :cond_54

    if-eqz v16, :cond_54

    .line 1196
    goto :goto_6b

    .line 1199
    :cond_54
    if-nez v16, :cond_66

    if-eqz v11, :cond_5b

    if-nez v15, :cond_5b

    goto :goto_66

    .line 1205
    :cond_5b
    if-nez v15, :cond_61

    if-nez v11, :cond_2f

    if-nez v16, :cond_2f

    .line 1207
    :cond_61
    add-int/lit8 v9, v9, -0x1

    .line 1208
    move v5, v9

    .line 1210
    const/4 v11, 0x1

    goto :goto_2f

    .line 1201
    :cond_66
    :goto_66
    add-int/lit8 v10, v10, 0x1

    .line 1202
    move v5, v10

    .line 1204
    const/4 v11, 0x0

    goto :goto_2f

    .line 1215
    .end local v13    # "rowId":J
    .end local v15    # "hitLast":Z
    .end local v16    # "hitFirst":Z
    :cond_6b
    :goto_6b
    return v2
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1004
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-class v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public whitelist getCount()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 619
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public whitelist getEmptyView()Landroid/view/View;
    .registers 2

    .line 718
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getFirstVisiblePosition()I
    .registers 2

    .line 671
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public whitelist getItemAtPosition(I)Ljava/lang/Object;
    .registers 4
    .param p1, "position"    # I

    .line 809
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 810
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_e

    if-gez p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v1, 0x0

    :goto_f
    return-object v1
.end method

.method public whitelist getItemIdAtPosition(I)J
    .registers 5
    .param p1, "position"    # I

    .line 814
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 815
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_e

    if-gez p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_10

    :cond_e
    :goto_e
    const-wide/high16 v1, -0x8000000000000000L

    :goto_10
    return-wide v1
.end method

.method public whitelist getLastVisiblePosition()I
    .registers 3

    .line 681
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final whitelist getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .line 312
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final whitelist getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2

    .line 383
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final whitelist getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2

    .line 430
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public whitelist getPositionForView(Landroid/view/View;)I
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 639
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    move-object v0, p1

    .line 642
    .local v0, "listItem":Landroid/view/View;
    :goto_1
    const/4 v1, -0x1

    :try_start_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v3, v2

    .local v3, "v":Landroid/view/View;
    if-eqz v2, :cond_13

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_f} :catch_2f

    if-nez v2, :cond_13

    .line 643
    move-object v0, v3

    goto :goto_1

    .line 648
    .end local v3    # "v":Landroid/view/View;
    :cond_13
    nop

    .line 650
    if-eqz v0, :cond_2e

    .line 652
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    .line 653
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v2, :cond_2e

    .line 654
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 655
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v1, v3

    return v1

    .line 653
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 661
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_2e
    return v1

    .line 645
    :catch_2f
    move-exception v2

    .line 647
    .local v2, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method public whitelist getSelectedItem()Ljava/lang/Object;
    .registers 4

    .line 603
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 604
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 605
    .local v1, "selection":I
    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_17

    if-ltz v1, :cond_17

    .line 606
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 608
    :cond_17
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getSelectedItemId()J
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 589
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public whitelist getSelectedItemPosition()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 580
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract whitelist getSelectedView()Landroid/view/View;
.end method

.method greylist-max-o handleDataChanged()V
    .registers 7

    .line 1049
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1050
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1052
    .local v1, "found":Z
    const/4 v2, 0x0

    if-lez v0, :cond_3d

    .line 1057
    iget-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1d

    .line 1060
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1064
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v3

    .line 1065
    .local v3, "newPos":I
    if-ltz v3, :cond_1d

    .line 1067
    invoke-virtual {p0, v3, v4}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v5

    .line 1068
    .local v5, "selectablePos":I
    if-ne v5, v3, :cond_1d

    .line 1070
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1071
    const/4 v1, 0x1

    .line 1075
    .end local v3    # "newPos":I
    .end local v5    # "selectablePos":I
    :cond_1d
    if-nez v1, :cond_3d

    .line 1077
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 1080
    .restart local v3    # "newPos":I
    if-lt v3, v0, :cond_27

    .line 1081
    add-int/lit8 v3, v0, -0x1

    .line 1083
    :cond_27
    if-gez v3, :cond_2a

    .line 1084
    const/4 v3, 0x0

    .line 1088
    :cond_2a
    invoke-virtual {p0, v3, v4}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    .line 1089
    .local v4, "selectablePos":I
    if-gez v4, :cond_34

    .line 1091
    invoke-virtual {p0, v3, v2}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    .line 1093
    :cond_34
    if-ltz v4, :cond_3d

    .line 1094
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1095
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1096
    const/4 v1, 0x1

    .line 1100
    .end local v3    # "newPos":I
    .end local v4    # "selectablePos":I
    :cond_3d
    if-nez v1, :cond_4f

    .line 1102
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1103
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1104
    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1105
    iput-wide v4, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1106
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1107
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1110
    :cond_4f
    invoke-virtual {p0}, Landroid/widget/AdapterView;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 1111
    return-void
.end method

.method greylist-max-o isInFilterMode()Z
    .registers 2

    .line 728
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o lookForSelectablePosition(IZ)I
    .registers 3
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 1227
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 893
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 894
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 895
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1021
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1022
    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1023
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1024
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_17

    .line 1025
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 1027
    :cond_17
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1028
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1029
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1030
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1031
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1010
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1011
    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1012
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1013
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_17

    .line 1014
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 1016
    :cond_17
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 570
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    .line 571
    return-void
.end method

.method public whitelist onProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .registers 3
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 1313
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 1314
    return-void
.end method

.method protected blacklist onProvideStructure(Landroid/view/ViewStructure;II)V
    .registers 6
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "viewFor"    # I
    .param p3, "flags"    # I

    .line 1320
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onProvideStructure(Landroid/view/ViewStructure;II)V

    .line 1322
    const/4 v0, 0x1

    if-eq p2, v0, :cond_9

    const/4 v0, 0x2

    if-ne p2, v0, :cond_19

    .line 1324
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1325
    .local v0, "adapter":Landroid/widget/Adapter;
    if-nez v0, :cond_10

    return-void

    .line 1327
    :cond_10
    invoke-interface {v0}, Landroid/widget/Adapter;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1328
    .local v1, "options":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_19

    .line 1329
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setAutofillOptions([Ljava/lang/CharSequence;)V

    .line 1332
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v1    # "options":[Ljava/lang/CharSequence;
    :cond_19
    return-void
.end method

.method public greylist-max-o onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 990
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 992
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 993
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 995
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 996
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 997
    const/4 v1, 0x1

    return v1

    .line 999
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist performItemClick(Landroid/view/View;IJ)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 328
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_13

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->playSoundEffect(I)V

    .line 330
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "position":I
    .end local p3    # "id":J
    .local v3, "view":Landroid/view/View;
    .local v4, "position":I
    .local v5, "id":J
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 331
    const/4 p1, 0x1

    .local p1, "result":Z
    goto :goto_17

    .line 333
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "position":I
    .end local v5    # "id":J
    .local p1, "view":Landroid/view/View;
    .restart local p2    # "position":I
    .restart local p3    # "id":J
    :cond_13
    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "position":I
    .end local p3    # "id":J
    .restart local v3    # "view":Landroid/view/View;
    .restart local v4    # "position":I
    .restart local v5    # "id":J
    const/4 p1, 0x0

    .line 336
    .local p1, "result":Z
    :goto_17
    if-eqz v3, :cond_1d

    .line 337
    const/4 p2, 0x1

    invoke-virtual {v3, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 339
    :cond_1d
    return p1
.end method

.method greylist-max-o rememberSyncState()V
    .registers 6

    .line 1262
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5e

    .line 1263
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1264
    iget v1, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 1265
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v2, 0x0

    if-ltz v1, :cond_2f

    .line 1267
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1268
    .local v0, "v":Landroid/view/View;
    iget-wide v3, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1269
    iget v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1270
    if-eqz v0, :cond_2c

    .line 1271
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1273
    :cond_2c
    iput v2, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1274
    .end local v0    # "v":Landroid/view/View;
    goto :goto_5e

    .line 1276
    :cond_2f
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1277
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1278
    .local v2, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v3, :cond_4c

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_4c

    .line 1279
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    goto :goto_50

    .line 1281
    :cond_4c
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1283
    :goto_50
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1284
    if-eqz v1, :cond_5c

    .line 1285
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1287
    :cond_5c
    iput v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1290
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "adapter":Landroid/widget/Adapter;, "TT;"
    :cond_5e
    :goto_5e
    return-void
.end method

.method public whitelist removeAllViews()V
    .registers 3

    .line 565
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 543
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeViewAt(I)V
    .registers 4
    .param p1, "index"    # I

    .line 555
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist selectionChanged()V
    .registers 3

    .line 919
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    .line 921
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v1, :cond_13

    iget-object v1, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    .line 922
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 923
    :cond_13
    iget-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v1, :cond_20

    iget-boolean v1, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v1, :cond_1c

    goto :goto_20

    .line 935
    :cond_1c
    invoke-direct {p0}, Landroid/widget/AdapterView;->dispatchOnItemSelected()V

    goto :goto_36

    .line 928
    :cond_20
    :goto_20
    iget-object v1, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-nez v1, :cond_2c

    .line 929
    new-instance v1, Landroid/widget/AdapterView$SelectionNotifier;

    invoke-direct {v1, p0, v0}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView-IA;)V

    iput-object v1, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    goto :goto_31

    .line 931
    :cond_2c
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 933
    :goto_31
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 939
    :cond_36
    :goto_36
    iget-object v0, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 940
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_45

    .line 941
    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 943
    :cond_45
    return-void
.end method

.method public abstract whitelist setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public whitelist setEmptyView(Landroid/view/View;)V
    .registers 5
    .param p1, "emptyView"    # Landroid/view/View;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 697
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 700
    const/4 v0, 0x1

    if-eqz p1, :cond_e

    .line 701
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_e

    .line 702
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 705
    :cond_e
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 706
    .local v1, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v1, :cond_1c

    invoke-interface {v1}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 707
    .local v0, "empty":Z
    :cond_1c
    :goto_1c
    invoke-direct {p0, v0}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 708
    return-void
.end method

.method public whitelist setFocusable(I)V
    .registers 6
    .param p1, "focusable"    # I

    .line 733
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 734
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-nez v2, :cond_e

    goto :goto_10

    :cond_e
    move v2, v1

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v2, 0x1

    .line 736
    .local v2, "empty":Z
    :goto_11
    iput p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    .line 737
    and-int/lit8 v3, p1, 0x11

    if-nez v3, :cond_19

    .line 738
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 741
    :cond_19
    if-eqz v2, :cond_21

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_21
    move v1, p1

    :cond_22
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusable(I)V

    .line 742
    return-void
.end method

.method public whitelist setFocusableInTouchMode(Z)V
    .registers 7
    .param p1, "focusable"    # Z

    .line 746
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 747
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_f

    goto :goto_11

    :cond_f
    move v3, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v3, v2

    .line 749
    .local v3, "empty":Z
    :goto_12
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 750
    if-eqz p1, :cond_18

    .line 751
    iput v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    .line 754
    :cond_18
    if-eqz p1, :cond_23

    if-eqz v3, :cond_22

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_23

    :cond_22
    move v1, v2

    :cond_23
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 755
    return-void
.end method

.method greylist setNextSelectedPositionInt(I)V
    .registers 4
    .param p1, "position"    # I

    .line 1247
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1248
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1250
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_18

    if-ltz p1, :cond_18

    .line 1251
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1252
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1254
    :cond_18
    return-void
.end method

.method public whitelist setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 820
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 303
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 304
    return-void
.end method

.method public whitelist setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 372
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 373
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setLongClickable(Z)V

    .line 375
    :cond_a
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 376
    return-void
.end method

.method public whitelist setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 425
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 426
    return-void
.end method

.method greylist setSelectedPositionInt(I)V
    .registers 4
    .param p1, "position"    # I

    .line 1236
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1237
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1238
    return-void
.end method

.method public abstract whitelist setSelection(I)V
.end method

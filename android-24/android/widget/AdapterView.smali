.class public abstract Landroid/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterView$AdapterContextMenuInfo;,
        Landroid/widget/AdapterView$AdapterDataSetObserver;,
        Landroid/widget/AdapterView$OnItemClickListener;,
        Landroid/widget/AdapterView$OnItemLongClickListener;,
        Landroid/widget/AdapterView$OnItemSelectedListener;,
        Landroid/widget/AdapterView$SelectionNotifier;
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
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method static synthetic -set0(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)Landroid/widget/AdapterView$SelectionNotifier;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 1

    #@0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/AdapterView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/AdapterView;->dispatchOnItemSelected()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 234
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 238
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 242
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v1, -0x1

    #@1
    const-wide/high16 v2, -0x8000000000000000L

    #@3
    const/4 v0, 0x0

    #@4
    .line 246
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@7
    .line 69
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@9
    .line 85
    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    #@b
    .line 95
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    #@d
    .line 127
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    #@f
    .line 154
    iput v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    #@11
    .line 159
    iput-wide v2, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    #@13
    .line 165
    iput v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@15
    .line 170
    iput-wide v2, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    #@17
    .line 202
    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    #@19
    .line 207
    iput-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    #@1b
    .line 231
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    #@1d
    .line 249
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getImportantForAccessibility()I

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_0

    #@23
    .line 250
    const/4 v0, 0x1

    #@24
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setImportantForAccessibility(I)V

    #@27
    .line 245
    :cond_0
    return-void
.end method

.method private dispatchOnItemSelected()V
    .locals 0

    #@0
    .prologue
    .line 920
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-direct {p0}, Landroid/widget/AdapterView;->fireOnSelected()V

    #@3
    .line 921
    invoke-direct {p0}, Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    #@6
    .line 919
    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    #@0
    .prologue
    .line 925
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 926
    return-void

    #@5
    .line 928
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    #@8
    move-result v3

    #@9
    .line 929
    .local v3, "selection":I
    if-ltz v3, :cond_1

    #@b
    .line 930
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    .line 931
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@11
    .line 932
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@14
    move-result-object v1

    #@15
    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    #@18
    move-result-wide v4

    #@19
    move-object v1, p0

    #@1a
    .line 931
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    #@1d
    .line 924
    .end local v2    # "v":Landroid/view/View;
    :goto_0
    return-void

    #@1e
    .line 934
    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@20
    invoke-interface {v0, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    #@23
    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 6

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1007
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@5
    move-result-object v0

    #@6
    .line 1008
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_3

    #@8
    .line 1009
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    #@b
    move-result v1

    #@c
    .line 1010
    .local v1, "itemCount":I
    if-lez v1, :cond_2

    #@e
    .line 1011
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    #@11
    move-result v4

    #@12
    if-gtz v4, :cond_0

    #@14
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    #@17
    move-result v4

    #@18
    add-int/lit8 v5, v1, -0x1

    #@1a
    if-ge v4, v5, :cond_1

    #@1c
    .line 1010
    :cond_0
    :goto_0
    return v2

    #@1d
    :cond_1
    move v2, v3

    #@1e
    .line 1011
    goto :goto_0

    #@1f
    :cond_2
    move v2, v3

    #@20
    .line 1010
    goto :goto_0

    #@21
    .line 1013
    .end local v1    # "itemCount":I
    :cond_3
    return v3
.end method

.method private performAccessibilityActionsOnSelected()V
    .locals 2

    #@0
    .prologue
    .line 939
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v1, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 940
    return-void

    #@d
    .line 942
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    #@10
    move-result v0

    #@11
    .line 943
    .local v0, "position":I
    if-ltz v0, :cond_1

    #@13
    .line 945
    const/4 v1, 0x4

    #@14
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    #@17
    .line 938
    :cond_1
    return-void
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .param p1, "empty"    # Z

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/16 v2, 0x8

    #@2
    const/4 v1, 0x0

    #@3
    .line 757
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 758
    const/4 p1, 0x0

    #@a
    .line 761
    .end local p1    # "empty":Z
    :cond_0
    if-eqz p1, :cond_3

    #@c
    .line 762
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 763
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    #@12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@15
    .line 764
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setVisibility(I)V

    #@18
    .line 773
    :goto_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 774
    iget v2, p0, Landroid/widget/AdapterView;->mLeft:I

    #@1e
    iget v3, p0, Landroid/widget/AdapterView;->mTop:I

    #@20
    iget v4, p0, Landroid/widget/AdapterView;->mRight:I

    #@22
    iget v5, p0, Landroid/widget/AdapterView;->mBottom:I

    #@24
    move-object v0, p0

    #@25
    invoke-virtual/range {v0 .. v5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    #@28
    .line 756
    :cond_1
    :goto_1
    return-void

    #@29
    .line 767
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    #@2c
    goto :goto_0

    #@2d
    .line 777
    :cond_3
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    #@2f
    if-eqz v0, :cond_4

    #@31
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    #@33
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    #@36
    .line 778
    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    #@39
    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 469
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "addView(View) is not supported in AdapterView"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 482
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "addView(View, int) is not supported in AdapterView"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 510
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 495
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "addView(View, LayoutParams) is not supported in AdapterView"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected canAnimate()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 1018
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@9
    if-lez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method checkFocus()V
    .locals 6

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 738
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@5
    move-result-object v0

    #@6
    .line 739
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    #@8
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_3

    #@e
    :cond_0
    move v1, v5

    #@f
    .line 740
    .local v1, "empty":Z
    :goto_0
    if-eqz v1, :cond_4

    #@11
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    #@14
    move-result v2

    #@15
    .line 744
    .local v2, "focusable":Z
    :goto_1
    if-eqz v2, :cond_5

    #@17
    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    #@19
    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    #@1c
    .line 745
    if-eqz v2, :cond_1

    #@1e
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    #@20
    :cond_1
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    #@23
    .line 746
    iget-object v3, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 747
    if-eqz v0, :cond_6

    #@29
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    #@2c
    move-result v3

    #@2d
    :goto_3
    invoke-direct {p0, v3}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    #@30
    .line 737
    :cond_2
    return-void

    #@31
    .end local v1    # "empty":Z
    .end local v2    # "focusable":Z
    :cond_3
    move v1, v4

    #@32
    .line 739
    goto :goto_0

    #@33
    .restart local v1    # "empty":Z
    :cond_4
    move v2, v5

    #@34
    .line 740
    goto :goto_1

    #@35
    .restart local v2    # "focusable":Z
    :cond_5
    move v3, v4

    #@36
    .line 744
    goto :goto_2

    #@37
    :cond_6
    move v3, v5

    #@38
    .line 747
    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    #@0
    .prologue
    .line 1091
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@2
    iget v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    #@8
    iget-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    #@a
    cmp-long v0, v0, v2

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1092
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    #@11
    .line 1093
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@13
    iput v0, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    #@15
    .line 1094
    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    #@17
    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    #@19
    .line 1099
    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 1100
    iget-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    #@1f
    invoke-virtual {v0}, Landroid/widget/AdapterView$SelectionNotifier;->run()V

    #@22
    .line 1090
    :cond_2
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 952
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    #@4
    move-result-object v0

    #@5
    .line 953
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 954
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@10
    move-result v1

    #@11
    .line 953
    if-eqz v1, :cond_0

    #@13
    .line 955
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 957
    :cond_0
    return v2
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 817
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    #@3
    .line 816
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 809
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    #@3
    .line 808
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 1266
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 1268
    const-string/jumbo v0, "scrolling:firstPosition"

    #@6
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@b
    .line 1269
    const-string/jumbo v0, "list:nextSelectedPosition"

    #@e
    iget v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    #@10
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@13
    .line 1270
    const-string/jumbo v0, "list:nextSelectedRowId"

    #@16
    iget-wide v2, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    #@18
    long-to-float v1, v2

    #@19
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    #@1c
    .line 1271
    const-string/jumbo v0, "list:selectedPosition"

    #@1f
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@21
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@24
    .line 1272
    const-string/jumbo v0, "list:itemCount"

    #@27
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@29
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@2c
    .line 1265
    return-void
.end method

.method findSyncPosition()I
    .locals 20

    #@0
    .prologue
    .line 1113
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    #@2
    iget v3, v0, Landroid/widget/AdapterView;->mItemCount:I

    #@4
    .line 1115
    .local v3, "count":I
    if-nez v3, :cond_0

    #@6
    .line 1116
    const/16 v16, -0x1

    #@8
    return v16

    #@9
    .line 1119
    :cond_0
    move-object/from16 v0, p0

    #@b
    iget-wide v10, v0, Landroid/widget/AdapterView;->mSyncRowId:J

    #@d
    .line 1120
    .local v10, "idToMatch":J
    move-object/from16 v0, p0

    #@f
    iget v13, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    #@11
    .line 1123
    .local v13, "seed":I
    const-wide/high16 v16, -0x8000000000000000L

    #@13
    cmp-long v16, v10, v16

    #@15
    if-nez v16, :cond_1

    #@17
    .line 1124
    const/16 v16, -0x1

    #@19
    return v16

    #@1a
    .line 1128
    :cond_1
    const/16 v16, 0x0

    #@1c
    move/from16 v0, v16

    #@1e
    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    #@21
    move-result v13

    #@22
    .line 1129
    add-int/lit8 v16, v3, -0x1

    #@24
    move/from16 v0, v16

    #@26
    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    #@29
    move-result v13

    #@2a
    .line 1131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2d
    move-result-wide v16

    #@2e
    const-wide/16 v18, 0x64

    #@30
    add-long v4, v16, v18

    #@32
    .line 1136
    .local v4, "endTime":J
    move v6, v13

    #@33
    .line 1139
    .local v6, "first":I
    move v9, v13

    #@34
    .line 1142
    .local v9, "last":I
    const/4 v12, 0x0

    #@35
    .line 1152
    .local v12, "next":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@38
    move-result-object v2

    #@39
    .line 1153
    .local v2, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v2, :cond_3

    #@3b
    .line 1154
    const/16 v16, -0x1

    #@3d
    return v16

    #@3e
    .line 1174
    .local v7, "hitFirst":Z
    .local v8, "hitLast":Z
    .local v14, "rowId":J
    :cond_2
    add-int/lit8 v9, v9, 0x1

    #@40
    .line 1175
    move v13, v9

    #@41
    .line 1177
    const/4 v12, 0x0

    #@42
    .line 1157
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@45
    move-result-wide v16

    #@46
    cmp-long v16, v16, v4

    #@48
    if-gtz v16, :cond_5

    #@4a
    .line 1158
    invoke-interface {v2, v13}, Landroid/widget/Adapter;->getItemId(I)J

    #@4d
    move-result-wide v14

    #@4e
    .line 1159
    .restart local v14    # "rowId":J
    cmp-long v16, v14, v10

    #@50
    if-nez v16, :cond_4

    #@52
    .line 1161
    return v13

    #@53
    .line 1164
    :cond_4
    add-int/lit8 v16, v3, -0x1

    #@55
    move/from16 v0, v16

    #@57
    if-ne v9, v0, :cond_6

    #@59
    const/4 v8, 0x1

    #@5a
    .line 1165
    .restart local v8    # "hitLast":Z
    :goto_1
    if-nez v6, :cond_7

    #@5c
    const/4 v7, 0x1

    #@5d
    .line 1167
    .restart local v7    # "hitFirst":Z
    :goto_2
    if-eqz v8, :cond_8

    #@5f
    if-eqz v7, :cond_8

    #@61
    .line 1188
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_5
    const/16 v16, -0x1

    #@63
    return v16

    #@64
    .line 1164
    .restart local v14    # "rowId":J
    :cond_6
    const/4 v8, 0x0

    #@65
    .restart local v8    # "hitLast":Z
    goto :goto_1

    #@66
    .line 1165
    :cond_7
    const/4 v7, 0x0

    #@67
    .restart local v7    # "hitFirst":Z
    goto :goto_2

    #@68
    .line 1172
    :cond_8
    if-nez v7, :cond_2

    #@6a
    if-eqz v12, :cond_9

    #@6c
    if-eqz v8, :cond_2

    #@6e
    .line 1178
    :cond_9
    if-nez v8, :cond_a

    #@70
    if-nez v12, :cond_3

    #@72
    if-nez v7, :cond_3

    #@74
    .line 1180
    :cond_a
    add-int/lit8 v6, v6, -0x1

    #@76
    .line 1181
    move v13, v6

    #@77
    .line 1183
    const/4 v12, 0x1

    #@78
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 977
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-class v0, Landroid/widget/AdapterView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    #@0
    .prologue
    .line 599
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@2
    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 698
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    #@0
    .prologue
    .line 651
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@2
    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 789
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@4
    move-result-object v0

    #@5
    .line 790
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    #@7
    if-gez p1, :cond_1

    #@9
    :cond_0
    :goto_0
    return-object v1

    #@a
    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    .line 794
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@3
    move-result-object v0

    #@4
    .line 795
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    #@6
    if-gez p1, :cond_1

    #@8
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    #@a
    :goto_0
    return-wide v2

    #@b
    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    #@e
    move-result-wide v2

    #@f
    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    #@0
    .prologue
    .line 661
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    #@5
    move-result v1

    #@6
    add-int/2addr v0, v1

    #@7
    add-int/lit8 v0, v0, -0x1

    #@9
    return v0
.end method

.method public final getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    #@0
    .prologue
    .line 292
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@2
    return-object v0
.end method

.method public final getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    #@0
    .prologue
    .line 363
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    #@2
    return-object v0
.end method

.method public final getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    #@0
    .prologue
    .line 410
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@2
    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v6, -0x1

    #@1
    .line 619
    move-object v3, p1

    #@2
    .line 622
    .local v3, "listItem":Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@5
    move-result-object v4

    #@6
    check-cast v4, Landroid/view/View;

    #@8
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_0

    #@a
    invoke-virtual {v4, p0}, Landroid/view/View;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_1

    #@10
    .line 630
    :cond_0
    if-eqz v3, :cond_3

    #@12
    .line 632
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    #@15
    move-result v0

    #@16
    .line 633
    .local v0, "childCount":I
    const/4 v2, 0x0

    #@17
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    #@19
    .line 634
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5, v3}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_2

    #@23
    .line 635
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@25
    add-int/2addr v5, v2

    #@26
    return v5

    #@27
    .line 623
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    :cond_1
    move-object v3, v4

    #@28
    goto :goto_0

    #@29
    .line 625
    .end local v4    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    #@2a
    .line 627
    .local v1, "e":Ljava/lang/ClassCastException;
    return v6

    #@2b
    .line 633
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v0    # "childCount":I
    .restart local v2    # "i":I
    .restart local v4    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 641
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    :cond_3
    return v6
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 583
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@4
    move-result-object v0

    #@5
    .line 584
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    #@8
    move-result v1

    #@9
    .line 585
    .local v1, "selection":I
    if-eqz v0, :cond_0

    #@b
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    #@e
    move-result v2

    #@f
    if-lez v2, :cond_0

    #@11
    if-ltz v1, :cond_0

    #@13
    .line 586
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 588
    :cond_0
    return-object v3
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    #@0
    .prologue
    .line 569
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    #@2
    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    #@0
    .prologue
    .line 560
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    #@2
    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-wide/high16 v8, -0x8000000000000000L

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, -0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 1022
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@7
    .line 1023
    .local v0, "count":I
    const/4 v1, 0x0

    #@8
    .line 1025
    .local v1, "found":Z
    if-lez v0, :cond_4

    #@a
    .line 1030
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 1033
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    #@10
    .line 1037
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    #@13
    move-result v2

    #@14
    .line 1038
    .local v2, "newPos":I
    if-ltz v2, :cond_0

    #@16
    .line 1040
    invoke-virtual {p0, v2, v7}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    #@19
    move-result v3

    #@1a
    .line 1041
    .local v3, "selectablePos":I
    if-ne v3, v2, :cond_0

    #@1c
    .line 1043
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    #@1f
    .line 1044
    const/4 v1, 0x1

    #@20
    .line 1048
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_0
    if-nez v1, :cond_4

    #@22
    .line 1050
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    #@25
    move-result v2

    #@26
    .line 1053
    .restart local v2    # "newPos":I
    if-lt v2, v0, :cond_1

    #@28
    .line 1054
    add-int/lit8 v2, v0, -0x1

    #@2a
    .line 1056
    :cond_1
    if-gez v2, :cond_2

    #@2c
    .line 1057
    const/4 v2, 0x0

    #@2d
    .line 1061
    :cond_2
    invoke-virtual {p0, v2, v7}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    #@30
    move-result v3

    #@31
    .line 1062
    .restart local v3    # "selectablePos":I
    if-gez v3, :cond_3

    #@33
    .line 1064
    invoke-virtual {p0, v2, v5}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    #@36
    move-result v3

    #@37
    .line 1066
    :cond_3
    if-ltz v3, :cond_4

    #@39
    .line 1067
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    #@3c
    .line 1068
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    #@3f
    .line 1069
    const/4 v1, 0x1

    #@40
    .line 1073
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_4
    if-nez v1, :cond_5

    #@42
    .line 1075
    iput v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@44
    .line 1076
    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    #@46
    .line 1077
    iput v6, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    #@48
    .line 1078
    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    #@4a
    .line 1079
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    #@4c
    .line 1080
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    #@4f
    .line 1083
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    #@52
    .line 1021
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    #@0
    .prologue
    .line 708
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    #@0
    .prologue
    .line 1200
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 873
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    .line 874
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    #@5
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@8
    .line 872
    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 994
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 995
    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    #@6
    move-result v1

    #@7
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    #@a
    .line 996
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 997
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@10
    .line 998
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    #@13
    move-result v1

    #@14
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    #@17
    .line 1000
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    #@1e
    .line 1001
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    #@21
    move-result v1

    #@22
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    #@25
    .line 1002
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    #@28
    move-result v1

    #@29
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    #@2c
    .line 1003
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    #@2f
    move-result v1

    #@30
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    #@33
    .line 993
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 983
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 984
    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    #@6
    move-result v1

    #@7
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    #@a
    .line 985
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 986
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@10
    .line 987
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    #@13
    move-result v1

    #@14
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    #@17
    .line 982
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 550
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    #@6
    .line 549
    return-void
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 963
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 965
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    #@9
    move-result-object v0

    #@a
    .line 966
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@d
    .line 968
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@10
    .line 969
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    #@13
    .line 970
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 972
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    #@0
    .prologue
    .line 308
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 309
    const/4 v0, 0x0

    #@5
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->playSoundEffect(I)V

    #@8
    .line 310
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@a
    move-object v1, p0

    #@b
    move-object v2, p1

    #@c
    move v3, p2

    #@d
    move-wide v4, p3

    #@e
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    #@11
    .line 311
    const/4 v6, 0x1

    #@12
    .line 316
    .local v6, "result":Z
    :goto_0
    if-eqz p1, :cond_0

    #@14
    .line 317
    const/4 v0, 0x1

    #@15
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@18
    .line 319
    :cond_0
    return v6

    #@19
    .line 313
    .end local v6    # "result":Z
    :cond_1
    const/4 v6, 0x0

    #@1a
    .restart local v6    # "result":Z
    goto :goto_0
.end method

.method rememberSyncState()V
    .locals 6

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1233
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    #@5
    move-result v2

    #@6
    if-lez v2, :cond_1

    #@8
    .line 1234
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    #@a
    .line 1235
    iget v2, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    #@c
    int-to-long v2, v2

    #@d
    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    #@f
    .line 1236
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@11
    if-ltz v2, :cond_2

    #@13
    .line 1238
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@15
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@17
    sub-int/2addr v2, v3

    #@18
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    #@1b
    move-result-object v1

    #@1c
    .line 1239
    .local v1, "v":Landroid/view/View;
    iget-wide v2, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    #@1e
    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    #@20
    .line 1240
    iget v2, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    #@22
    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    #@24
    .line 1241
    if-eqz v1, :cond_0

    #@26
    .line 1242
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@29
    move-result v2

    #@2a
    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    #@2c
    .line 1244
    :cond_0
    iput v4, p0, Landroid/widget/AdapterView;->mSyncMode:I

    #@2e
    .line 1232
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    #@2f
    .line 1247
    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    #@32
    move-result-object v1

    #@33
    .line 1248
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@36
    move-result-object v0

    #@37
    .line 1249
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@39
    if-ltz v2, :cond_4

    #@3b
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@3d
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    #@40
    move-result v3

    #@41
    if-ge v2, v3, :cond_4

    #@43
    .line 1250
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@45
    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    #@48
    move-result-wide v2

    #@49
    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    #@4b
    .line 1254
    :goto_1
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@4d
    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    #@4f
    .line 1255
    if-eqz v1, :cond_3

    #@51
    .line 1256
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@54
    move-result v2

    #@55
    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    #@57
    .line 1258
    :cond_3
    iput v5, p0, Landroid/widget/AdapterView;->mSyncMode:I

    #@59
    goto :goto_0

    #@5a
    .line 1252
    :cond_4
    const-wide/16 v2, -0x1

    #@5c
    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    #@5e
    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    #@0
    .prologue
    .line 545
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 523
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 535
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method selectionChanged()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 898
    iput-object v1, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    #@3
    .line 900
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 901
    iget-object v0, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    #@9
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@10
    move-result v0

    #@11
    .line 900
    if-eqz v0, :cond_2

    #@13
    .line 902
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    #@15
    if-nez v0, :cond_1

    #@17
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    #@19
    if-eqz v0, :cond_4

    #@1b
    .line 907
    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    #@1d
    if-nez v0, :cond_3

    #@1f
    .line 908
    new-instance v0, Landroid/widget/AdapterView$SelectionNotifier;

    #@21
    invoke-direct {v0, p0, v1}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)V

    #@24
    iput-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    #@26
    .line 912
    :goto_0
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    #@28
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    #@2b
    .line 895
    :cond_2
    :goto_1
    return-void

    #@2c
    .line 910
    :cond_3
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    #@2e
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@31
    goto :goto_0

    #@32
    .line 914
    :cond_4
    invoke-direct {p0}, Landroid/widget/AdapterView;->dispatchOnItemSelected()V

    #@35
    goto :goto_1
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .param p1, "emptyView"    # Landroid/view/View;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v1, 0x1

    #@1
    .line 677
    iput-object p1, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    #@3
    .line 680
    if-eqz p1, :cond_0

    #@5
    .line 681
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 682
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@e
    .line 685
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@11
    move-result-object v0

    #@12
    .line 686
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    #@14
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    #@17
    move-result v1

    #@18
    .line 687
    .local v1, "empty":Z
    :cond_1
    invoke-direct {p0, v1}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    #@1b
    .line 676
    return-void
.end method

.method public setFocusable(Z)V
    .locals 4
    .param p1, "focusable"    # Z

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 713
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@4
    move-result-object v0

    #@5
    .line 714
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    #@7
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_3

    #@d
    :cond_0
    const/4 v1, 0x1

    #@e
    .line 716
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    #@10
    .line 717
    if-nez p1, :cond_1

    #@12
    .line 718
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    #@14
    .line 721
    :cond_1
    if-eqz p1, :cond_2

    #@16
    if-eqz v1, :cond_4

    #@18
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    #@1b
    move-result v2

    #@1c
    :cond_2
    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    #@1f
    .line 712
    return-void

    #@20
    .line 714
    .end local v1    # "empty":Z
    :cond_3
    const/4 v1, 0x0

    #@21
    .restart local v1    # "empty":Z
    goto :goto_0

    #@22
    .line 721
    :cond_4
    const/4 v2, 0x1

    #@23
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 726
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@5
    move-result-object v0

    #@6
    .line 727
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    #@8
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    #@b
    move-result v4

    #@c
    if-nez v4, :cond_3

    #@e
    :cond_0
    const/4 v1, 0x1

    #@f
    .line 729
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    #@11
    .line 730
    if-eqz p1, :cond_1

    #@13
    .line 731
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    #@15
    .line 734
    :cond_1
    if-eqz p1, :cond_4

    #@17
    if-eqz v1, :cond_2

    #@19
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    #@1c
    move-result v2

    #@1d
    :cond_2
    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    #@20
    .line 725
    return-void

    #@21
    .line 727
    .end local v1    # "empty":Z
    :cond_3
    const/4 v1, 0x0

    #@22
    .restart local v1    # "empty":Z
    goto :goto_0

    #@23
    :cond_4
    move v2, v3

    #@24
    .line 734
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1218
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    #@2
    .line 1219
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    #@8
    .line 1221
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    iget v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    #@e
    if-nez v0, :cond_0

    #@10
    if-ltz p1, :cond_0

    #@12
    .line 1222
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    #@14
    .line 1223
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    #@16
    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    #@18
    .line 1217
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    .line 800
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    #@0
    .prologue
    .line 283
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@2
    .line 282
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    #@0
    .prologue
    .line 352
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLongClickable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 353
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setLongClickable(Z)V

    #@a
    .line 355
    :cond_0
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    #@c
    .line 351
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    #@0
    .prologue
    .line 405
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@2
    .line 404
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1208
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@2
    .line 1209
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    #@8
    .line 1207
    return-void
.end method

.method public abstract setSelection(I)V
.end method

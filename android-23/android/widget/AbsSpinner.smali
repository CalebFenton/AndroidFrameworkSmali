.class public abstract Landroid/widget/AbsSpinner;
.super Landroid/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSpinner$SavedState;,
        Landroid/widget/AbsSpinner$RecycleBin;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method static synthetic -wrap0(Landroid/widget/AbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    #@0
    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    #@4
    .line 44
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    #@6
    .line 45
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    #@8
    .line 46
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    #@a
    .line 47
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    #@c
    .line 48
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@13
    .line 50
    new-instance v0, Landroid/widget/AbsSpinner$RecycleBin;

    #@15
    invoke-direct {v0, p0}, Landroid/widget/AbsSpinner$RecycleBin;-><init>(Landroid/widget/AbsSpinner;)V

    #@18
    iput-object v0, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@1a
    .line 58
    invoke-direct {p0}, Landroid/widget/AbsSpinner;->initAbsSpinner()V

    #@1d
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 62
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 44
    iput v4, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    #@6
    .line 45
    iput v4, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    #@8
    .line 46
    iput v4, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    #@a
    .line 47
    iput v4, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    #@c
    .line 48
    new-instance v3, Landroid/graphics/Rect;

    #@e
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v3, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@13
    .line 50
    new-instance v3, Landroid/widget/AbsSpinner$RecycleBin;

    #@15
    invoke-direct {v3, p0}, Landroid/widget/AbsSpinner$RecycleBin;-><init>(Landroid/widget/AbsSpinner;)V

    #@18
    iput-object v3, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@1a
    .line 71
    invoke-direct {p0}, Landroid/widget/AbsSpinner;->initAbsSpinner()V

    #@1d
    .line 74
    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    #@1f
    .line 73
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@22
    move-result-object v0

    #@23
    .line 76
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    #@26
    move-result-object v2

    #@27
    .line 77
    .local v2, "entries":[Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    #@29
    .line 78
    new-instance v1, Landroid/widget/ArrayAdapter;

    #@2b
    .line 79
    const v3, 0x1090008

    #@2e
    .line 78
    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    #@31
    .line 80
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    #@34
    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    #@37
    .line 81
    invoke-virtual {p0, v1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@3a
    .line 84
    .end local v1    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3d
    .line 69
    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    #@0
    .prologue
    .line 91
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setFocusable(Z)V

    #@4
    .line 92
    const/4 v0, 0x0

    #@5
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setWillNotDraw(Z)V

    #@8
    .line 90
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    #@0
    .prologue
    .line 248
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@2
    .line 249
    const/4 v1, -0x1

    #@3
    .line 250
    const/4 v2, -0x2

    #@4
    .line 248
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@7
    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 473
    const-class v0, Landroid/widget/AbsSpinner;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    #@0
    .prologue
    .line 326
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2
    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 332
    iget v0, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    #@2
    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    #@0
    .prologue
    .line 305
    iget v0, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    #@2
    if-lez v0, :cond_0

    #@4
    iget v0, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 306
    iget v0, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    #@a
    iget v1, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    #@c
    sub-int/2addr v0, v1

    #@d
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 308
    :cond_0
    const/4 v0, 0x0

    #@13
    return-object v0
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 167
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v6

    #@4
    .line 171
    .local v6, "widthMode":I
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@6
    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingLeft:I

    #@8
    iget v10, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    #@a
    if-le v8, v10, :cond_5

    #@c
    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingLeft:I

    #@e
    :goto_0
    iput v8, v9, Landroid/graphics/Rect;->left:I

    #@10
    .line 173
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@12
    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingTop:I

    #@14
    iget v10, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    #@16
    if-le v8, v10, :cond_6

    #@18
    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingTop:I

    #@1a
    :goto_1
    iput v8, v9, Landroid/graphics/Rect;->top:I

    #@1c
    .line 175
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@1e
    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingRight:I

    #@20
    iget v10, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    #@22
    if-le v8, v10, :cond_7

    #@24
    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingRight:I

    #@26
    :goto_2
    iput v8, v9, Landroid/graphics/Rect;->right:I

    #@28
    .line 177
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@2a
    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingBottom:I

    #@2c
    iget v10, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    #@2e
    if-le v8, v10, :cond_8

    #@30
    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingBottom:I

    #@32
    :goto_3
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    #@34
    .line 180
    iget-boolean v8, p0, Landroid/widget/AbsSpinner;->mDataChanged:Z

    #@36
    if-eqz v8, :cond_0

    #@38
    .line 181
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->handleDataChanged()V

    #@3b
    .line 184
    :cond_0
    const/4 v2, 0x0

    #@3c
    .line 185
    .local v2, "preferredHeight":I
    const/4 v3, 0x0

    #@3d
    .line 186
    .local v3, "preferredWidth":I
    const/4 v1, 0x1

    #@3e
    .line 188
    .local v1, "needsMeasuring":Z
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemPosition()I

    #@41
    move-result v4

    #@42
    .line 189
    .local v4, "selectedPosition":I
    if-ltz v4, :cond_3

    #@44
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@46
    if-eqz v8, :cond_3

    #@48
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@4a
    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    #@4d
    move-result v8

    #@4e
    if-ge v4, v8, :cond_3

    #@50
    .line 191
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@52
    invoke-virtual {v8, v4}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    #@55
    move-result-object v5

    #@56
    .line 192
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_1

    #@58
    .line 194
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@5a
    const/4 v9, 0x0

    #@5b
    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@5e
    move-result-object v5

    #@5f
    .line 196
    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    #@62
    move-result v8

    #@63
    if-nez v8, :cond_1

    #@65
    .line 197
    const/4 v8, 0x1

    #@66
    invoke-virtual {v5, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@69
    .line 201
    :cond_1
    if-eqz v5, :cond_3

    #@6b
    .line 203
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@6d
    invoke-virtual {v8, v4, v5}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    #@70
    .line 205
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@73
    move-result-object v8

    #@74
    if-nez v8, :cond_2

    #@76
    .line 206
    const/4 v8, 0x1

    #@77
    iput-boolean v8, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    #@79
    .line 207
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7c
    move-result-object v8

    #@7d
    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@80
    .line 208
    const/4 v8, 0x0

    #@81
    iput-boolean v8, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    #@83
    .line 210
    :cond_2
    invoke-virtual {p0, v5, p1, p2}, Landroid/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    #@86
    .line 212
    invoke-virtual {p0, v5}, Landroid/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    #@89
    move-result v8

    #@8a
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@8c
    iget v9, v9, Landroid/graphics/Rect;->top:I

    #@8e
    add-int/2addr v8, v9

    #@8f
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@91
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    #@93
    add-int v2, v8, v9

    #@95
    .line 213
    invoke-virtual {p0, v5}, Landroid/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    #@98
    move-result v8

    #@99
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@9b
    iget v9, v9, Landroid/graphics/Rect;->left:I

    #@9d
    add-int/2addr v8, v9

    #@9e
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@a0
    iget v9, v9, Landroid/graphics/Rect;->right:I

    #@a2
    add-int v3, v8, v9

    #@a4
    .line 215
    const/4 v1, 0x0

    #@a5
    .line 219
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_4

    #@a7
    .line 221
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@a9
    iget v8, v8, Landroid/graphics/Rect;->top:I

    #@ab
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@ad
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    #@af
    add-int v2, v8, v9

    #@b1
    .line 222
    if-nez v6, :cond_4

    #@b3
    .line 223
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@b5
    iget v8, v8, Landroid/graphics/Rect;->left:I

    #@b7
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@b9
    iget v9, v9, Landroid/graphics/Rect;->right:I

    #@bb
    add-int v3, v8, v9

    #@bd
    .line 227
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    #@c0
    move-result v8

    #@c1
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    #@c4
    move-result v2

    #@c5
    .line 228
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    #@c8
    move-result v8

    #@c9
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    #@cc
    move-result v3

    #@cd
    .line 230
    const/4 v8, 0x0

    #@ce
    invoke-static {v2, p2, v8}, Landroid/widget/AbsSpinner;->resolveSizeAndState(III)I

    #@d1
    move-result v0

    #@d2
    .line 231
    .local v0, "heightSize":I
    const/4 v8, 0x0

    #@d3
    invoke-static {v3, p1, v8}, Landroid/widget/AbsSpinner;->resolveSizeAndState(III)I

    #@d6
    move-result v7

    #@d7
    .line 233
    .local v7, "widthSize":I
    invoke-virtual {p0, v7, v0}, Landroid/widget/AbsSpinner;->setMeasuredDimension(II)V

    #@da
    .line 234
    iput p2, p0, Landroid/widget/AbsSpinner;->mHeightMeasureSpec:I

    #@dc
    .line 235
    iput p1, p0, Landroid/widget/AbsSpinner;->mWidthMeasureSpec:I

    #@de
    .line 166
    return-void

    #@df
    .line 172
    .end local v0    # "heightSize":I
    .end local v1    # "needsMeasuring":Z
    .end local v2    # "preferredHeight":I
    .end local v3    # "preferredWidth":I
    .end local v4    # "selectedPosition":I
    .end local v7    # "widthSize":I
    :cond_5
    iget v8, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    #@e1
    goto/16 :goto_0

    #@e3
    .line 174
    :cond_6
    iget v8, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    #@e5
    goto/16 :goto_1

    #@e7
    .line 176
    :cond_7
    iget v8, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    #@e9
    goto/16 :goto_2

    #@eb
    .line 178
    :cond_8
    iget v8, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    #@ed
    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    move-object v0, p1

    #@2
    .line 425
    check-cast v0, Landroid/widget/AbsSpinner$SavedState;

    #@4
    .line 427
    .local v0, "ss":Landroid/widget/AbsSpinner$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@7
    move-result-object v1

    #@8
    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@b
    .line 429
    iget-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    #@d
    const-wide/16 v4, 0x0

    #@f
    cmp-long v1, v2, v4

    #@11
    if-ltz v1, :cond_0

    #@13
    .line 430
    iput-boolean v6, p0, Landroid/widget/AbsSpinner;->mDataChanged:Z

    #@15
    .line 431
    iput-boolean v6, p0, Landroid/widget/AbsSpinner;->mNeedSync:Z

    #@17
    .line 432
    iget-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    #@19
    iput-wide v2, p0, Landroid/widget/AbsSpinner;->mSyncRowId:J

    #@1b
    .line 433
    iget v1, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    #@1d
    iput v1, p0, Landroid/widget/AbsSpinner;->mSyncPosition:I

    #@1f
    .line 434
    const/4 v1, 0x0

    #@20
    iput v1, p0, Landroid/widget/AbsSpinner;->mSyncMode:I

    #@22
    .line 435
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    #@25
    .line 424
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    #@0
    .prologue
    .line 412
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 413
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/AbsSpinner$SavedState;

    #@6
    invoke-direct {v0, v1}, Landroid/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 414
    .local v0, "ss":Landroid/widget/AbsSpinner$SavedState;
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemId()J

    #@c
    move-result-wide v2

    #@d
    iput-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    #@f
    .line 415
    iget-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    #@11
    const-wide/16 v4, 0x0

    #@13
    cmp-long v2, v2, v4

    #@15
    if-ltz v2, :cond_0

    #@17
    .line 416
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemPosition()I

    #@1a
    move-result v2

    #@1b
    iput v2, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    #@1d
    .line 420
    :goto_0
    return-object v0

    #@1e
    .line 418
    :cond_0
    const/4 v2, -0x1

    #@1f
    iput v2, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    #@21
    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 344
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    #@2
    .line 345
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    #@4
    .line 346
    new-instance v4, Landroid/graphics/Rect;

    #@6
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@9
    iput-object v4, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    #@b
    .line 347
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    #@d
    .line 350
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    #@10
    move-result v1

    #@11
    .line 351
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    #@13
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    #@15
    .line 352
    invoke-virtual {p0, v3}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v0

    #@19
    .line 353
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_1

    #@1f
    .line 354
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@22
    .line 355
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_1

    #@28
    .line 356
    iget v4, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    #@2a
    add-int/2addr v4, v3

    #@2b
    return v4

    #@2c
    .line 351
    :cond_1
    add-int/lit8 v3, v3, -0x1

    #@2e
    goto :goto_0

    #@2f
    .line 360
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    #@30
    return v4
.end method

.method recycleAllViews()V
    .locals 6

    #@0
    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    #@3
    move-result v0

    #@4
    .line 255
    .local v0, "childCount":I
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@6
    .line 256
    .local v4, "recycleBin":Landroid/widget/AbsSpinner$RecycleBin;
    iget v3, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    #@8
    .line 259
    .local v3, "position":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@b
    .line 260
    invoke-virtual {p0, v1}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v5

    #@f
    .line 261
    .local v5, "v":Landroid/view/View;
    add-int v2, v3, v1

    #@11
    .line 262
    .local v2, "index":I
    invoke-virtual {v4, v2, v5}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    #@14
    .line 259
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 253
    .end local v2    # "index":I
    .end local v5    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    #@0
    .prologue
    .line 320
    iget-boolean v0, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 321
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    #@7
    .line 319
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 145
    iput-boolean v0, p0, Landroid/widget/AbsSpinner;->mDataChanged:Z

    #@4
    .line 146
    iput-boolean v0, p0, Landroid/widget/AbsSpinner;->mNeedSync:Z

    #@6
    .line 148
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->removeAllViewsInLayout()V

    #@9
    .line 149
    iput v2, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    #@b
    .line 150
    const-wide/high16 v0, -0x8000000000000000L

    #@d
    iput-wide v0, p0, Landroid/widget/AbsSpinner;->mOldSelectedRowId:J

    #@f
    .line 152
    invoke-virtual {p0, v2}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    #@12
    .line 153
    invoke-virtual {p0, v2}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    #@15
    .line 154
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->invalidate()V

    #@18
    .line 144
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/Adapter;

    #@0
    .prologue
    .line 102
    check-cast p1, Landroid/widget/SpinnerAdapter;

    #@2
    .end local p1    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@5
    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    #@0
    .prologue
    .line 103
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 104
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@6
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@8
    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@b
    .line 105
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    #@e
    .line 108
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@10
    .line 110
    const/4 v1, -0x1

    #@11
    iput v1, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    #@13
    .line 111
    const-wide/high16 v2, -0x8000000000000000L

    #@15
    iput-wide v2, p0, Landroid/widget/AbsSpinner;->mOldSelectedRowId:J

    #@17
    .line 113
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@19
    if-eqz v1, :cond_3

    #@1b
    .line 114
    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    #@1d
    iput v1, p0, Landroid/widget/AbsSpinner;->mOldItemCount:I

    #@1f
    .line 115
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@21
    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    #@24
    move-result v1

    #@25
    iput v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    #@27
    .line 116
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkFocus()V

    #@2a
    .line 118
    new-instance v1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    #@2c
    invoke-direct {v1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    #@2f
    iput-object v1, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@31
    .line 119
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@33
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@35
    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@38
    .line 121
    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    #@3a
    if-lez v1, :cond_2

    #@3c
    const/4 v0, 0x0

    #@3d
    .line 123
    .local v0, "position":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    #@40
    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    #@43
    .line 126
    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    #@45
    if-nez v1, :cond_1

    #@47
    .line 128
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkSelectionChanged()V

    #@4a
    .line 138
    .end local v0    # "position":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    #@4d
    .line 102
    return-void

    #@4e
    .line 121
    :cond_2
    const/4 v0, -0x1

    #@4f
    .restart local v0    # "position":I
    goto :goto_0

    #@50
    .line 132
    .end local v0    # "position":I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkFocus()V

    #@53
    .line 133
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    #@56
    .line 135
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkSelectionChanged()V

    #@59
    goto :goto_1
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    #@0
    .prologue
    .line 278
    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    #@3
    .line 279
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    #@6
    .line 280
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->invalidate()V

    #@9
    .line 277
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    #@0
    .prologue
    .line 271
    if-eqz p2, :cond_1

    #@2
    iget v1, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    #@4
    if-gt v1, p1, :cond_1

    #@6
    .line 272
    iget v1, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    #@8
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    #@b
    move-result v2

    #@c
    add-int/2addr v1, v2

    #@d
    add-int/lit8 v1, v1, -0x1

    #@f
    if-gt p1, v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    .line 273
    .local v0, "shouldAnimate":Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsSpinner;->setSelectionInt(IZ)V

    #@15
    .line 269
    return-void

    #@16
    .line 272
    .end local v0    # "shouldAnimate":Z
    :cond_0
    const/4 v0, 0x0

    #@17
    .restart local v0    # "shouldAnimate":Z
    goto :goto_0

    #@18
    .line 271
    .end local v0    # "shouldAnimate":Z
    :cond_1
    const/4 v0, 0x0

    #@19
    .restart local v0    # "shouldAnimate":Z
    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    #@0
    .prologue
    .line 292
    iget v1, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    #@2
    if-eq p1, v1, :cond_0

    #@4
    .line 293
    const/4 v1, 0x1

    #@5
    iput-boolean v1, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    #@7
    .line 294
    iget v1, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    #@9
    sub-int v0, p1, v1

    #@b
    .line 295
    .local v0, "delta":I
    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    #@e
    .line 296
    invoke-virtual {p0, v0, p2}, Landroid/widget/AbsSpinner;->layout(IZ)V

    #@11
    .line 297
    const/4 v1, 0x0

    #@12
    iput-boolean v1, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    #@14
    .line 291
    .end local v0    # "delta":I
    :cond_0
    return-void
.end method

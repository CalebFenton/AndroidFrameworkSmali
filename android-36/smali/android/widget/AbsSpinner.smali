.class public abstract Landroid/widget/AbsSpinner;
.super Landroid/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSpinner$RecycleBin;,
        Landroid/widget/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;


# instance fields
.field greylist-max-o mAdapter:Landroid/widget/SpinnerAdapter;

.field private greylist-max-o mDataSetObserver:Landroid/database/DataSetObserver;

.field greylist-max-o mHeightMeasureSpec:I

.field final greylist-max-o mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

.field greylist-max-o mSelectionBottomPadding:I

.field greylist-max-o mSelectionLeftPadding:I

.field greylist-max-o mSelectionRightPadding:I

.field greylist-max-o mSelectionTopPadding:I

.field final greylist-max-o mSpinnerPadding:Landroid/graphics/Rect;

.field private greylist-max-o mTouchFrame:Landroid/graphics/Rect;

.field greylist-max-o mWidthMeasureSpec:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const-class v0, Landroid/widget/AbsSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/AbsSpinner;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 49
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 50
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 51
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Landroid/widget/AbsSpinner$RecycleBin;-><init>(Landroid/widget/AbsSpinner;)V

    iput-object v0, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 62
    invoke-direct {p0}, Landroid/widget/AbsSpinner;->initAbsSpinner()V

    .line 63
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 49
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 50
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 51
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 52
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 54
    new-instance v1, Landroid/widget/AbsSpinner$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsSpinner$RecycleBin;-><init>(Landroid/widget/AbsSpinner;)V

    iput-object v1, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 77
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getImportantForAutofill()I

    move-result v1

    if-nez v1, :cond_24

    .line 78
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSpinner;->setImportantForAutofill(I)V

    .line 81
    :cond_24
    invoke-direct {p0}, Landroid/widget/AbsSpinner;->initAbsSpinner()V

    .line 83
    sget-object v1, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 85
    .local v6, "a":Landroid/content/res/TypedArray;
    sget-object v4, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v3, "context":Landroid/content/Context;
    .local v5, "attrs":Landroid/util/AttributeSet;
    .local v7, "defStyleAttr":I
    .local v8, "defStyleRes":I
    invoke-virtual/range {v2 .. v8}, Landroid/widget/AbsSpinner;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 88
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 89
    .local p1, "entries":[Ljava/lang/CharSequence;
    if-eqz p1, :cond_4e

    .line 90
    new-instance p2, Landroid/widget/ArrayAdapter;

    const p3, 0x1090008

    invoke-direct {p2, v3, p3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 92
    .local p2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const p3, 0x1090009

    invoke-virtual {p2, p3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 93
    invoke-virtual {p0, p2}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 96
    .end local p2    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_4e
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/AbsSpinner;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsSpinner;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private greylist-max-o initAbsSpinner()V
    .registers 2

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setFocusable(Z)V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setWillNotDraw(Z)V

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist autofill(Landroid/view/autofill/AutofillValue;)V
    .registers 5
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 499
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 501
    :cond_7
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 502
    sget-object v0, Landroid/widget/AbsSpinner;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " could not be autofilled into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void

    .line 506
    :cond_2a
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getListValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 507
    return-void
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

    .line 378
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 381
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->handleDataChanged()V

    .line 382
    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 260
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 494
    const-class v0, Landroid/widget/AbsSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getAdapter()Landroid/widget/Adapter;
    .registers 2

    .line 40
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/SpinnerAdapter;
    .registers 2

    .line 340
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public whitelist getAutofillType()I
    .registers 2

    .line 511
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getAutofillValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    .line 516
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forList(I)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method greylist-max-o getChildHeight(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method greylist-max-o getChildWidth(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public whitelist getCount()I
    .registers 2

    .line 345
    iget v0, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    return v0
.end method

.method public whitelist getSelectedView()Landroid/view/View;
    .registers 3

    .line 318
    iget v0, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_12

    .line 319
    iget v0, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 321
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract greylist-max-o layout(IZ)V
.end method

.method protected whitelist onMeasure(II)V
    .registers 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 179
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 183
    .local v0, "widthMode":I
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/AbsSpinner;->mPaddingLeft:I

    iget v3, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    if-le v2, v3, :cond_f

    iget v2, p0, Landroid/widget/AbsSpinner;->mPaddingLeft:I

    goto :goto_11

    .line 184
    :cond_f
    iget v2, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    :goto_11
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 185
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/AbsSpinner;->mPaddingTop:I

    iget v3, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    if-le v2, v3, :cond_1e

    iget v2, p0, Landroid/widget/AbsSpinner;->mPaddingTop:I

    goto :goto_20

    .line 186
    :cond_1e
    iget v2, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    :goto_20
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 187
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/AbsSpinner;->mPaddingRight:I

    iget v3, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    if-le v2, v3, :cond_2d

    iget v2, p0, Landroid/widget/AbsSpinner;->mPaddingRight:I

    goto :goto_2f

    .line 188
    :cond_2d
    iget v2, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    :goto_2f
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 189
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/AbsSpinner;->mPaddingBottom:I

    iget v3, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    if-le v2, v3, :cond_3c

    iget v2, p0, Landroid/widget/AbsSpinner;->mPaddingBottom:I

    goto :goto_3e

    .line 190
    :cond_3c
    iget v2, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    :goto_3e
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 192
    iget-boolean v1, p0, Landroid/widget/AbsSpinner;->mDataChanged:Z

    if-eqz v1, :cond_47

    .line 193
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->handleDataChanged()V

    .line 196
    :cond_47
    const/4 v1, 0x0

    .line 197
    .local v1, "preferredHeight":I
    const/4 v2, 0x0

    .line 198
    .local v2, "preferredWidth":I
    const/4 v3, 0x1

    .line 200
    .local v3, "needsMeasuring":Z
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .line 201
    .local v4, "selectedPosition":I
    const/4 v5, 0x0

    if-ltz v4, :cond_b0

    iget-object v6, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v6, :cond_b0

    iget-object v6, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v6}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_b0

    .line 203
    iget-object v6, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v6, v4}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v6

    .line 204
    .local v6, "view":Landroid/view/View;
    const/4 v7, 0x1

    if-nez v6, :cond_76

    .line 206
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 208
    invoke-virtual {v6}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_76

    .line 209
    invoke-virtual {v6, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 213
    :cond_76
    if-eqz v6, :cond_b0

    .line 215
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v6}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 217
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_8e

    .line 218
    iput-boolean v7, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 219
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iput-boolean v5, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 222
    :cond_8e
    invoke-virtual {p0, v6, p1, p2}, Landroid/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 224
    invoke-virtual {p0, v6}, Landroid/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v1, v7, v8

    .line 225
    invoke-virtual {p0, v6}, Landroid/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v2, v7, v8

    .line 227
    const/4 v3, 0x0

    .line 231
    .end local v6    # "view":Landroid/view/View;
    :cond_b0
    if-eqz v3, :cond_c8

    .line 233
    iget-object v6, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int v1, v6, v7

    .line 234
    if-nez v0, :cond_c8

    .line 235
    iget-object v6, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int v2, v6, v7

    .line 239
    :cond_c8
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 240
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 242
    invoke-static {v1, p2, v5}, Landroid/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v6

    .line 243
    .local v6, "heightSize":I
    invoke-static {v2, p1, v5}, Landroid/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v5

    .line 245
    .local v5, "widthSize":I
    invoke-virtual {p0, v5, v6}, Landroid/widget/AbsSpinner;->setMeasuredDimension(II)V

    .line 246
    iput p2, p0, Landroid/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 247
    iput p1, p0, Landroid/widget/AbsSpinner;->mWidthMeasureSpec:I

    .line 248
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 446
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsSpinner$SavedState;

    .line 448
    .local v0, "ss":Landroid/widget/AbsSpinner$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 450
    iget-wide v1, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_25

    .line 451
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSpinner;->mDataChanged:Z

    .line 452
    iput-boolean v1, p0, Landroid/widget/AbsSpinner;->mNeedSync:Z

    .line 453
    iget-wide v1, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/widget/AbsSpinner;->mSyncRowId:J

    .line 454
    iget v1, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsSpinner;->mSyncPosition:I

    .line 455
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsSpinner;->mSyncMode:I

    .line 456
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    .line 458
    :cond_25
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .line 433
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 434
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/AbsSpinner$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 435
    .local v1, "ss":Landroid/widget/AbsSpinner$SavedState;
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    .line 436
    iget-wide v2, v1, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1e

    .line 437
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v1, Landroid/widget/AbsSpinner$SavedState;->position:I

    goto :goto_21

    .line 439
    :cond_1e
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/AbsSpinner$SavedState;->position:I

    .line 441
    :goto_21
    return-object v1
.end method

.method public whitelist pointToPosition(II)I
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 357
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 358
    .local v0, "frame":Landroid/graphics/Rect;
    if-nez v0, :cond_d

    .line 359
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 360
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 363
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    move-result v1

    .line 364
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_2f

    .line 365
    invoke-virtual {p0, v2}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 366
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 367
    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 368
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 369
    iget v4, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v2

    return v4

    .line 364
    .end local v3    # "child":Landroid/view/View;
    :cond_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 373
    .end local v2    # "i":I
    :cond_2f
    const/4 v2, -0x1

    return v2
.end method

.method greylist-max-o recycleAllViews()V
    .registers 7

    .line 266
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    move-result v0

    .line 267
    .local v0, "childCount":I
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 268
    .local v1, "recycleBin":Landroid/widget/AbsSpinner$RecycleBin;
    iget v2, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    .line 271
    .local v2, "position":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_17

    .line 272
    invoke-virtual {p0, v3}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 273
    .local v4, "v":Landroid/view/View;
    add-int v5, v2, v3

    .line 274
    .local v5, "index":I
    invoke-virtual {v1, v5, v4}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 271
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 276
    .end local v3    # "i":I
    :cond_17
    return-void
.end method

.method public whitelist requestLayout()V
    .registers 2

    .line 333
    iget-boolean v0, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_7

    .line 334
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 336
    :cond_7
    return-void
.end method

.method greylist-max-o resetList()V
    .registers 4

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSpinner;->mDataChanged:Z

    .line 158
    iput-boolean v0, p0, Landroid/widget/AbsSpinner;->mNeedSync:Z

    .line 160
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->removeAllViewsInLayout()V

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    .line 162
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/widget/AbsSpinner;->mOldSelectedRowId:J

    .line 164
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 165
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 166
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->invalidate()V

    .line 167
    return-void
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .line 115
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_e

    .line 116
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 117
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    .line 120
    :cond_e
    iput-object p1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    .line 123
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/widget/AbsSpinner;->mOldSelectedRowId:J

    .line 125
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_4b

    .line 126
    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsSpinner;->mOldItemCount:I

    .line 127
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    .line 128
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkFocus()V

    .line 130
    new-instance v1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 131
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 133
    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    if-lez v1, :cond_3d

    const/4 v0, 0x0

    .line 135
    .local v0, "position":I
    :cond_3d
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 136
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 138
    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    if-nez v1, :cond_4a

    .line 140
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkSelectionChanged()V

    .line 143
    .end local v0    # "position":I
    :cond_4a
    goto :goto_54

    .line 144
    :cond_4b
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkFocus()V

    .line 145
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    .line 147
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkSelectionChanged()V

    .line 150
    :goto_54
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    .line 151
    return-void
.end method

.method public whitelist setSelection(I)V
    .registers 2
    .param p1, "position"    # I

    .line 290
    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 291
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    .line 292
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->invalidate()V

    .line 293
    return-void
.end method

.method public whitelist setSelection(IZ)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .line 283
    if-eqz p2, :cond_12

    iget v0, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    if-gt v0, p1, :cond_12

    iget v0, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    .line 284
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 285
    .local v1, "shouldAnimate":Z
    :goto_13
    invoke-virtual {p0, p1, v1}, Landroid/widget/AbsSpinner;->setSelectionInt(IZ)V

    .line 286
    return-void
.end method

.method greylist-max-o setSelectionInt(IZ)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .line 304
    iget v0, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    if-eq p1, v0, :cond_14

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 306
    iget v0, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v0

    .line 307
    .local v0, "delta":I
    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 308
    invoke-virtual {p0, v0, p2}, Landroid/widget/AbsSpinner;->layout(IZ)V

    .line 309
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 311
    .end local v0    # "delta":I
    :cond_14
    return-void
.end method
